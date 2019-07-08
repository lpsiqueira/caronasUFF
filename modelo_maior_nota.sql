CREATE OR REPLACE FUNCTION descobre_maior_nota() RETURNS varchar as $$
DECLARE
	cur_modelos CURSOR FOR SELECT ID, nome from modelo_carro;
	media_maxima float;
	media_atual float;
	nome_modelo varchar;
BEGIN
	media_maxima = 0;
	for modelo in cur_modelos LOOP
		SELECT AVG(NOTA) into media_atual FROM CARONA
		WHERE CARONA.CARRO_ID IN (SELECT ID 
								  FROM CARRO 
								  WHERE CARRO.MODELO_ID = modelo.id);
		if(media_atual > media_maxima) THEN
			media_maxima = media_atual;
			nome_modelo = modelo.nome;
		END IF;
	END LOOP;
	return nome_modelo;
END;
$$ language plpgsql;

SELECT descobre_maior_nota();
		
