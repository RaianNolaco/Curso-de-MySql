CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE cadastro;

CREATE TABLE pessoas(
   id_pessoa INT NOT NULL AUTO_INCREMENT,
   nome VARCHAR(30) NOT NULL,
   nascimento DATE ,
   sexo ENUM('M', 'F'),
   peso DECIMAL(5,2),
   altura DECIMAL(3,2),
   nacionalidade VARCHAR(20) DEFAULT 'Brasil',
   
   PRIMARY KEY (id_pessoa)
)DEFAULT CHARSET = utf8; 

DESCRIBE pessoas;