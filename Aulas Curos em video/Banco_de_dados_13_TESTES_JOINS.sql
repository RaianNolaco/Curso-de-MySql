/*Ambiete de testes DevMedia*/

drop database teste_join;

create database teste_join;

use teste_join;

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

/*INNER JOIN: retorna os registros em comum entre as duas tabelas.
  No exemplo abaixo quero ver os nomes semelhantes nas duas tabelas*/
Select a.nome,b.nome
FROM TabelaA as a
inner join TabelaB as b
on a.nome = b.nome;

/*LEFT JOIN: retorna todos os registros da tabela que está a esquerda do 
JOIN (coloque em uma linha para ver qual e da esquerda ou direita)porem mesmo assim
contina retornado os que estão em comum entre as duas tabelas porem tera todos 
os registros que tem na tabela da esquerda*/
select a.nome,b.nome
from TabelaA as a
left join TabelaB as b
on a.nome = b.nome;

/*RIGHT JOIN: segue a mesma logica do LEFT JOIN porem 
o RIGHT JOIN faz com o lado direito, seleciona todos em comum e todos 
que tem no lado  direito do JOIN*/
select a.nome,b.nome
from TabelaA as a
right join TabelaB as b
on a.nome = b.nome;

/*OUTER JOIN(ou full outer join ou full join): ele pega todos os registros
tanto da tabela da esquerda quanto da tabela da direita isso no SQl
porem no MySql para fazermos um outer join prescisamos ultilizar
um LEFT JOIN e um RIGHT JOIN e juntalos usando a clausula UNION ALL*/
select * from TabelaA as a
left join TabelaB as b
on a.nome = b.nome
union all
select *from TabelaA as a
right join TabelaB as b
on b.nome = a.nome
where a.nome is null;

