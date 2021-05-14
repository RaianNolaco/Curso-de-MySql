use cadastro;

select * from cursos
where nome = 'PHP';

/*
------------------------------------------------------------
operador LIKE faz persquisas por termos parecidos como
por exemplo eu coloco nome LIKE 'P%' ele vai me mostrar todos os
registros que começam com a letra P
considere o LIKE como um operador.*/
select * from cursos
where nome like 'P%';


/*
---------------------------------------------- 
o caractere % faz toda a diferença no comando
Quando o % esta na frente do termo pesquisado ele vai procurar 
por registros que começem com o termo 
Quando o % esta antes do termo ele ira pesquisar por registos que
terminam com o termo pesquisado 
E se eu usar o % antes e depois usando %termo% ele ira pesqusar 
por todos os registos que posuem o termo neles seja no inicio,meio ou fim
*/
select * from cursos
where nome like 'a%';

select * from cursos 
Where nome like '%a';

select * from cursos
where nome like '%a%';

/*NOT LIKE 
quando se tem not like ele vai pesquisar por registos que não tem o termo
NOT LIKE '%a%';  me manda todos os regstros que não possuem A dentre seus nomes
*/
select * from cursos 
where nome not like '%a%';

select * from cursos
where nome like 'ph%p';

select * from cursos
where nome like 'ph%p%';

/*
O operador _ exige que tenho algo no locar 
por exemplo do ph%p_ vai me der todos os resultados 
que começem co ph terminem com p + algum carater a mesma coisa 
quando o _ esta no inicio
o _ obriga que tenha algo no local se tiver 1 _  será obrigatorio ter algo ali
se tiver 2 _ _ será obrigatorio ter 2 coisas ali
*/
select * from cursos
where nome like 'ph%p_';

select * from cursos
where nome like '_ySQL';

select * from cursos
where nome like 'p__t%';

select * from gafanhotos 
where nome like '%silva%';

select * from gafanhotos
where nome like '%silva';

/*DISTINCT mostra apenas 1 vez cada ragistro diferente 
no eceplo de baixo ele ira mostrar apenas 1 vez 
cada carga horaria
*/
select distinct carga from cursos;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select distinct ano from cursos
order by ano;

/*CONT() conta a quantidade de registos que tenho na coluna que eu escolhi */
select count(nome) from cursos;	

select * from cursos 
where carga > 40;

select count(*) from cursos 
where carga > 40;

select count(*) from gafanhotos
where nacionalidade  = 'EUA';


select max(carga) from cursos;

/*O comando MAX() e MIN() pegam os valores maximos e minimos assim como nos exeplos*/
select nome, max(totaulas)from cursos 
where ano = 2016;

select *, min(totaulas) from cursos 
where ano = 2016;

#Sum() fa a soma de todos os registos na coluna selecionada (des de que sejam valores numericos)
select sum(totaulas) from cursos;

select sum(totaulas) from cursos
where ano = 2016;

# AVG() tira a media de todos os registos na coluna selecionada (des de que sejam valores numericos)
select avg(totaulas) from cursos;

select avg(totaulas) from cursos
where ano = 2016;