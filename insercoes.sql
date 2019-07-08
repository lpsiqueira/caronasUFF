INSERT INTO LUGAR VALUES(1, 'São Domingos', NULl);
INSERT INTO CAMPUS VALUES(1, 'Rua nao sei das quantas', 'Praia Vermelha');
INSERT INTO LUGAR VALUES(2, 'Praia Vermelha', 1);

INSERT INTO USUARIO VALUES(1, 'Joao', 'das Neves', '123321321', 1, 'emailqualquer@mail.com');
INSERT INTO MODELO_CARRO VALUES(1, 'CARRAO', 'BMW');
INSERT INTO CARRO VALUES(1, 'ABC-1234', 1, 1);
INSERT INTO MOTORISTA VALUES(1,1);



insert into carona values(1, 1, 1, 1, 1, 1, '23/10/2015', '22:32', 5); //dá erro com o trigger de verificaçao de campus
insert into carona values(2, 1, 1, 2, 1, 1, '05/07/2019', '22:32', 5);
INSERT INTO USUARIO values(2, 'Lucas', 'Luis', '321321321', 1, 'outroemail@mail.com');
insert into reserva(id, usuario_id, carona_id) values(1,2,1);
INSERT INTO passageiro(id, usuario_id, carona_id) values(1,2,1);
