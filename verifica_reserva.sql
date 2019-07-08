DROP TRIGGER IF EXISTS reserva_de_usuario ON passageiro;
CREATE OR REPLACE FUNCTION verifica_reserva() RETURNS TRIGGER AS $$
BEGIN
	IF (EXISTS (SELECT * FROM reserva WHERE reserva.usuario_id=NEW.usuario_id AND reserva.carona_id=NEW.carona_id)) THEN
        RETURN NEW;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER reserva_de_usuario
BEFORE INSERT ON passageiro
FOR EACH ROW
EXECUTE PROCEDURE verifica_reserva();



DROP TRIGGER IF EXISTS atualizacao_de_reserva ON reserva;
CREATE OR REPLACE FUNCTION confere_reserva() RETURNS TRIGGER AS $$
BEGIN
    IF (EXISTS (SELECT * FROM passageiro WHERE passageiro.usuario_id=NEW.usuario_id AND passageiro.carona_id=NEW.carona_id)) THEN
        RAISE EXCEPTION 'Não pode alterar reserva com viagem em andamento';
    END IF;
    IF (EXISTS (SELECT * FROM reserva WHERE reserva.usuario_id=NEW.usuario_id AND reserva.carona_id=NEW.carona_id AND reserva.id!=NEW.id)) THEN
        RAISE EXCEPTION 'Reserva já existente';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER atualizacao_de_reserva
BEFORE UPDATE ON reserva
FOR EACH ROW
EXECUTE PROCEDURE confere_reserva();



