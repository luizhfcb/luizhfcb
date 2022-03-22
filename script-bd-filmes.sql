
DROP TABLE IF EXISTS AVALIACAO;
DROP TABLE IF EXISTS ATOR_FILME;
DROP TABLE IF EXISTS FILME;
DROP TABLE IF EXISTS ATOR;
DROP TABLE IF EXISTS USUARIO;
DROP TABLE IF EXISTS GENERO;

CREATE TABLE USUARIO (
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (50),
	dt_nasc DATE,
	sexo CHAR(1),
	email VARCHAR(50)
);

CREATE TABLE GENERO (
	id_genero INT AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR (50)
);

CREATE TABLE FILME (
	id_filme INT AUTO_INCREMENT PRIMARY KEY,
	nome_filme VARCHAR (50),
	ano INT,
	genero_id INT,
	CONSTRAINT filme_genero_id_fk FOREIGN KEY (genero_id) REFERENCES GENERO (id_genero)
);

CREATE TABLE ATOR (
	id_ator INT AUTO_INCREMENT PRIMARY KEY,
	nome_ator VARCHAR (50),
	dt_nasc DATE,
	origem VARCHAR (25)
);

CREATE TABLE ATOR_FILME (
	ator_id INT,
	filme_id INT,
	personagem VARCHAR(50),
	PRIMARY KEY (filme_id, ator_id, personagem),
	CONSTRAINT filme_ator_ator_id_fk FOREIGN KEY (ator_id) REFERENCES ATOR (id_ator),
	CONSTRAINT filme_ator_filme_id_fk FOREIGN KEY (filme_id) REFERENCES FILME (id_filme)
	
);

CREATE TABLE AVALIACAO (
	usuario_id INT,
	filme_id INT,
	avaliacao INT,
	PRIMARY KEY (usuario_id, filme_id),
	CONSTRAINT avaliacao_usuario_id_fk FOREIGN KEY (usuario_id) REFERENCES USUARIO (id_usuario),
	CONSTRAINT avaliacao_filme_id_fk FOREIGN KEY (filme_id) REFERENCES FILME (id_filme)
);
	
INSERT INTO USUARIO VALUES (1,'Cristovão Colombo', '01-10-1981', 'M', 'cristovao_navegador@caravela.com.it');
INSERT INTO USUARIO VALUES (2,'Napoleão Bonaparte', '1970-08-15', 'M', 'boninho_imperador@guerra.com.fr');
INSERT INTO USUARIO VALUES (3,'Joana Darc', '1981-01-16', 'F', 'joana_heroina@guerra.com.fr');
INSERT INTO USUARIO VALUES (4,'Cleópatra Thea', '1950-08-12', 'F', 'cleo_de_alexandria@reino.com.eg');
INSERT INTO USUARIO VALUES (5,'Vasco da Gama', '1972-03-15', 'M', 'vasco@caravela.com.pt');
INSERT INTO USUARIO VALUES (6,'Ernesto Che Guevara', '1979-01-14', 'M', 'viva_che@revolucao.com.ar');

INSERT INTO GENERO VALUES(1,'Drama');
INSERT INTO GENERO VALUES(2,'Comédia');
INSERT INTO GENERO VALUES(3,'Suspense');
INSERT INTO GENERO VALUES(4,'Ação');
INSERT INTO GENERO VALUES(5,'Avantura');
INSERT INTO GENERO VALUES(6,'Terror');

INSERT INTO FILME VALUES (1,'O Grande Dragão Branco', 1988, 4);
INSERT INTO FILME VALUES (2,'Os Mercenários II', 2012, 4);
INSERT INTO FILME VALUES (3,'Rambo: Programado para Matar', 1982, 4);
INSERT INTO FILME VALUES (4,'Braddock - O super comando', 1984, 4);
INSERT INTO FILME VALUES (5,'O Turista', 2010, 3);
INSERT INTO FILME VALUES (6,'Um Sonho de Liberdade', 1994, 1);
INSERT INTO FILME VALUES (7,'À Espera de um Milagre', 1999, 1);
INSERT INTO FILME VALUES (8,'Forrest Gump', 1994, 1);
INSERT INTO FILME VALUES (9,'Ghost: Do Outro Lado da Vida', 1990, 1);
INSERT INTO FILME VALUES (10,'Piratas do Caribe I', 2003, 5);
INSERT INTO FILME VALUES (11,'Esposa de Mentirinha', 2011, 2);
INSERT INTO FILME VALUES (12,'Seven', 1995, 3);
INSERT INTO FILME VALUES (13,'Missão Impossível', 1996, 4);
INSERT INTO FILME VALUES (14,'Hitch: Conselheiro Amoroso', 2005, 2);
INSERT INTO FILME VALUES (15,'Como se fosse a primeira vez', 2004, 2);
INSERT INTO FILME VALUES (16,'Vanilla Sky', 2001, 1);
INSERT INTO FILME VALUES (17,'A Lenda do Zorro', 2005, 5);


INSERT INTO ATOR VALUES (1,'Jean-Claude Van Damme', '1980-10-01', 'Bélgica');
INSERT INTO ATOR VALUES (2,'Sylvester Stallone', '1970-08-15', 'EUA');
INSERT INTO ATOR VALUES (3,'Chuck Norris', '1981-01-16', 'EUA');
INSERT INTO ATOR VALUES (4,'Arnold Schwarzenegger', '1950-08-12', 'Austria');
INSERT INTO ATOR VALUES (5,'Morgan Freeman', '1972-03-15', 'EUA');
INSERT INTO ATOR VALUES (6,'Matt Damon', '1970-10-08', 'EUA');
INSERT INTO ATOR VALUES (7,'Tom Hanks', '1956-07-09', 'EUA');
INSERT INTO ATOR VALUES (8,'Angelina Jolie', '1975-07-04', 'EUA');
INSERT INTO ATOR VALUES (9,'Penelope Cruz', '1974-04-05', 'Espanha');
INSERT INTO ATOR VALUES (10,'Whoopi Goldberg', '1955-11-13', 'EUA');
INSERT INTO ATOR VALUES (11,'Tom Cruise', '1962-07-03', 'EUA');
INSERT INTO ATOR VALUES (12,'Deemi Moore', '1962-11-11', 'EUA');
INSERT INTO ATOR VALUES (13,'Johnny Depp', '1963-06-09', 'EUA');
INSERT INTO ATOR VALUES (14,'Catherine Zeta-Jones', '1969-09-25', 'Gales');
INSERT INTO ATOR VALUES (15,'Antonio Banderas', '1960-08-10', 'Espanha');
INSERT INTO ATOR VALUES (16,'Will Smith', '1968-09-25', 'EUA');
INSERT INTO ATOR VALUES (17,'Adam Sandler', '1966-09-09', 'EUA');


INSERT INTO ATOR_FILME VALUES (1,1,'Frank Dux');
INSERT INTO ATOR_FILME VALUES (2,3,'Rambo');
INSERT INTO ATOR_FILME VALUES (3,4,'Braddock');
INSERT INTO ATOR_FILME VALUES (5,6,'Ellis Boyd Red');
INSERT INTO ATOR_FILME VALUES (8,5,'Elise Clifton-Ward');
INSERT INTO ATOR_FILME VALUES (13,5,'Frank Tupelo');
INSERT INTO ATOR_FILME VALUES (7,8,'Forrest Gump');
INSERT INTO ATOR_FILME VALUES (12,9,'Molly Jensen');
INSERT INTO ATOR_FILME VALUES (7,7,'Paul Edgecomb');
INSERT INTO ATOR_FILME VALUES (10,9,'Oda Mae Brown');
INSERT INTO ATOR_FILME VALUES (17,11,'Danny');
INSERT INTO ATOR_FILME VALUES (13,10,'Jack Sparrow');
INSERT INTO ATOR_FILME VALUES (17,15,'Henry Roth');
INSERT INTO ATOR_FILME VALUES (9,16,'Sofia');
INSERT INTO ATOR_FILME VALUES (11,16,'David Aames');
INSERT INTO ATOR_FILME VALUES (11,13,'Ethan Hunt');
INSERT INTO ATOR_FILME VALUES (14,17,'Elena De La Vega');
INSERT INTO ATOR_FILME VALUES (16,14,'Alex Hitch');
INSERT INTO ATOR_FILME VALUES (5,12,'William Somerset');
INSERT INTO ATOR_FILME VALUES (15,17,'Don Alejandro');
INSERT INTO ATOR_FILME VALUES (1,2,'Jean Vilain');
INSERT INTO ATOR_FILME VALUES (2,2,'Barney Ross');
INSERT INTO ATOR_FILME VALUES (3,2,'Booker');
INSERT INTO ATOR_FILME VALUES (4,2,'Trench');

INSERT INTO AVALIACAO VALUES (1,6,4);
INSERT INTO AVALIACAO VALUES (2,5,4);
INSERT INTO AVALIACAO VALUES (3,4,4);
INSERT INTO AVALIACAO VALUES (4,3,3);
INSERT INTO AVALIACAO VALUES (5,2,5);
INSERT INTO AVALIACAO VALUES (6,1,5);
INSERT INTO AVALIACAO VALUES (1,7,2);
INSERT INTO AVALIACAO VALUES (1,8,3);
INSERT INTO AVALIACAO VALUES (2,9,4);
INSERT INTO AVALIACAO VALUES (3,10,2);
INSERT INTO AVALIACAO VALUES (3,1,4);
INSERT INTO AVALIACAO VALUES (6,3,4);
INSERT INTO AVALIACAO VALUES (4,4,2);
INSERT INTO AVALIACAO VALUES (4,12,4);
INSERT INTO AVALIACAO VALUES (5,15,3);
INSERT INTO AVALIACAO VALUES (2,1,3);
INSERT INTO AVALIACAO VALUES (1,9,3);
INSERT INTO AVALIACAO VALUES (2,8,5);
INSERT INTO AVALIACAO VALUES (3,16,5);
INSERT INTO AVALIACAO VALUES (4,11,3);
INSERT INTO AVALIACAO VALUES (5,11,4);
INSERT INTO AVALIACAO VALUES (6,12,5);
INSERT INTO AVALIACAO VALUES (6,13,4);
INSERT INTO AVALIACAO VALUES (2,17,5);
INSERT INTO AVALIACAO VALUES (4,16,3);







	
	
