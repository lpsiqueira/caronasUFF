DROP TRIGGER IF EXISTS reserva_de_usuario ON passageiro;
CREATE OR REPLACE FUNCTION verifica_reserva() RETURNS TRIGGER AS $$
DECLARE
    reserva_usuario_id int;
    reserva_carona_id int;
BEGIN
	SELECT usuario_id INTO reserva_usuario_id FROM reserva WHERE reserva.usuario_id=NEW.usuario_id;
	SELECT carona_id INTO reserva_carona_id FROM reserva WHERE reserva.carona_id=NEW.carona_id;
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



