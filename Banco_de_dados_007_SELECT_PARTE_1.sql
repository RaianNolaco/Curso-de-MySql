show databases;
use cadastro;

show tables;

describe cursos;
describe gafanhotos;

select * from cursos;
select * from gafanhoto;

#ordem alfabetica A --> Z
select * from cursos
order by nome;

#desc significa descendente e asc ascenente 
#ordem crecente  = order by coluna ou order by coluna asc
#ordem decrecente  = order by coluna desc
#ordem alfabetica reversa Z --> alter
Select * from cursos
order by nome desc;

#select de colunas expecificas
select nome,carga,ano from cursos;

select nome,carga,ano from cursos
order by ano;

# seleciona por linhas so ira mostrar as 
#linhas em que ano é igual a 2016 em ordem alfabetica
select * from cursos
where ano = 2016	
order by nome; 

#result set = resultado de um select 
#se pode sempre estar mesclado os selects
select nome,ano from cursos
where carga = 40
order by idcurso;

select nome,descricao,carga from cursos
where ano = 2016
order by nome;

#podermos usar operadores relacionarias
#(== -> igual)
#(!= ou <> -> diferente)
#(< -> menor que )
#(> -> maior que)
#(<= -> menor igual que)
#(>= -> menor igual que)

select nome,descricao,ano from cursos
where ano <= 2015
order by ano,nome;

select nome,descricao,ano from cursos
where ano >= 2015
order by ano,nome;

select nome,descricao,ano from cursos
where ano != 2015
order by ano,nome;
 
select nome,descricao,ano from cursos
where ano < 2015
order by ano,nome;

select nome,descricao,ano from cursos
where ano <> 2015
order by ano,nome;

#BETWEEN
#between significa entre entrão ele pesquisa os cursos entre 2010 e 2015
select nome,ano from cursos
Where ano between 2010 and 2015
order by ano asc;

#IN
#O in faz pesquisas epecificas 
#então aqui ele ira pesquisar cursos que estão em 2010 e 2015 apenas esses 2 anos
select nome,ano from cursos
where ano in (2010,2015)
order by ano;


#Podemos usar operdores logicos
#AND  = é
#OR   = ou
#NOT  = não
select nome,carga,totaulas from cursos
Where carga > 35 and totaulas < 30;

select nome,carga,total from cursos
where carga > 35 or tataulas < 30;

#Comando Select é um comando do tipo DQL(date query language) 