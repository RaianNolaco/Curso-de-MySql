
USE cadastro;

SHOW TABLES;

DESCRIBE pessoas;

DESCRIBE pessoas;

INSERT INTO pessoas (nome, nascimento, sexo, peso, altura, nacionalidade)
VALUE ('Godofredo','1984-01-02','M','78.5','1.83','Brasil');

SELECT * FROM pessoas;

INSERT INTO pessoas(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES ('Maria','1999-12-30','F','55.2','1.65','Portugal');

SELECT * FROM pessoas;


INSERT INTO pessoas(nome, nascimento, sexo, peso, altura)
VALUES ('josé','1999-12-30','M','55.2','1.65');

SELECT * FROM pessoas;

INSERT INTO pessoas(id_pessoa, nome, nascimento, sexo, peso, altura, nacionalidade) 
VALUE(DEFAULT, 'Creuza','1920-08-30','F','50.2','1.62', DEFAULT);

SELECT * FROM pessoas;

INSERT INTO pessoas 
VALUES (DEFAULT,'Adalgilza','1930-11-02','F','63.2','1.75','Irlanda');

SELECT * FROM pessoas;

INSERT INTO pessoas VALUES 
(DEFAULT,'Caio','1987-09-20','M','60.2','1.60','Estados Unidos'),
(DEFAULT,'Kepilyn','2000-09-03','M','63.5','1.70','India');

INSERT INTO pessoas VALUE 
(DEFAULT,'Natalia','2002-02-02','F','60.4','1.60','Italia');

SELECT * FROM pessoas;

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

DESC pessoas;

ALTER TABLE pessoas 
DROP COLUMN profissao;

ALTER TABLE pessoas
ADD COLUMN profissao VARCHAR(20) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN teste int first;

ALTER TABLE pessoas
DROP COLUMN teste;

ALTER TABLE pessoas
ADD teste int;


ALTER TABLE pessoas
DROP COLUMN teste;

ALTER TABLE pessoas 
MODIFY COLUMN profissao VARCHAR(20) DEFAULT '';

SELECT * FROM pessoas;

ALTER TABLE pessoas
CHANGE profissao emprego varchar(30) DEFAULT '';

ALTER TABLE pessoas
RENAME TO galerinha;

SELECT * FROM galerinha;
