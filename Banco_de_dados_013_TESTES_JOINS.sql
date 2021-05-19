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

/*Inner join: retorna os registros em comum entre as duas tabelas.
  No exemplo abaixo quero ver os nomes semelhantes nas duas tabelas*/
Select a.nome,b.nome
FROM TabelaA as a
inner join TabelaB as b
on a.nome = b.nome;

/*left join: retorna todos os registros da tabela que está a esquerda do 
inner(coloque em uma linha para ver qual e da esquerda ou direita)porem mesmo assim
contina retornado os que estão em comum entre as duas tabelas porem tera todos 
os registros que tem na tabela da esquerda*/
select a.nome,b.nome
from TabelaA as a
left join TabelaB as b
on a.nome = b.nome;

/*right join: segue a mesma logica do left join porem 
o right joinn faz com o lado direito, seleciona todos em comum e todos 
que tem no lado  direito do join*/
select a.nome,b.nome
from TabelaA as a
right join TabelaB as b
on a.nome = b.nome;
