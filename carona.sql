create table CARONA (
	ID INTEGER,
	MOTORISTA_ID INTEGER,
	CARRO_ID INTEGER,
	ORIGEM INTEGER,
	DESTINO INTEGER,
	VAGAS INTEGER,
	DIA DATE,
	HORARIO TIME,
	NOTA INTEGER,

	CONSTRAINT CARONA_PK PRIMARY KEY (ID)
);

insert into CARONA (ID, MOTORISTA_ID, CARRO_ID, ORIGEM, DESTINO, VAGAS, DIA, HORARIO, NOTA) values (1, 'Alasteir', 'Farleigh', 'afarleigh0@google.com.br', 'Male', 3, '05/03/2019', '19:38', 3.4);
insert into CARONA (ID, MOTORISTA_ID, CARRO_ID, ORIGEM, DESTINO, VAGAS, DIA, HORARIO, NOTA) values (2, 'Gerrie', 'Cattermoul', 'gcattermoul1@jiathis.com', 'Male', 4, '01/12/2019', '02:52', 3.2);
insert into CARONA (ID, MOTORISTA_ID, CARRO_ID, ORIGEM, DESTINO, VAGAS, DIA, HORARIO, NOTA) values (3, 'Broddie', 'Aloshikin', 'baloshikin2@tinypic.com', 'Male', 2, '07/08/2019', '20:44', 3.4);
insert into CARONA (ID, MOTORISTA_ID, CARRO_ID, ORIGEM, DESTINO, VAGAS, DIA, HORARIO, NOTA) values (4, 'Yvonne', 'Darville', 'ydarville3@netvibes.com', 'Female', 3, '29/05/2019', '06:08', 3.8);
insert into CARONA (ID, MOTORISTA_ID, CARRO_ID, ORIGEM, DESTINO, VAGAS, DIA, HORARIO, NOTA) values (5, 'Keeley', 'Charpling', 'kcharpling4@google.ca', 'Female', 1, '19/10/2019', '03:37', 4.4);
