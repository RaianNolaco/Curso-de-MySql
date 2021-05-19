/*Ambiete de testes DevMedia*/
drop database teste;

create database teste_join;

#Criando tabelas 
create table TabelaA(
 nome varchar(50) null
);

create table TabelaB(
 nome varchar(50) null
);

#inserindo valores
insert into TabelaA values 
('Fernanda'),('Josefa'),
('Luiz'),('Fernando');

insert into TabelaB values
('Carlos'),('Manoel'),
('Luiz'),('Fernando');

