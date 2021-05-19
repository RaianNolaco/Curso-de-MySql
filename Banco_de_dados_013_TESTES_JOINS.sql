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

/*Inner join = retorna os registros em comum entre as duas tabelas.
  No exemplo abaixo quero ver os nomes semelhantes nas duas tabelas*/
Select a.nome,b.nome
FROM TabelaA as A
inner join TabelaB as b
on a.nome = b.nome;