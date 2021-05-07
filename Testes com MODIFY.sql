create database teste;
USE teste;

create table nomes(
  id_teste smallint(6) not null auto_increment,
  nome varchar(30) not null,
  nasc date,
  
  primary key (id_teste)
);

DROP TABLE nomes;

ALTER TABLE nomes
ADD sobrenome varchar(20);

ALTER TABLE nomes
MODIFY sobrenome varchar(50) not null after nome;

ALTER TABLE nomes
DROP COLUMN sobrenome;

INSERT INTO nomes Values(DEFAULT,'raian',20021111);

SELECT * FROM nomes;

ALTER TABLE nomes
ADD COLUMN sobrenome varchar(10);

ALTER TABLE nomes
MODIFY sobrenome varchar(30) not null;

DESC nomes;

# Como fazer para adicionar uma coluna com atributo not null em uma tabela que ja possue informaçoes? 