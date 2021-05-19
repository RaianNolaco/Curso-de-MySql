USE cadastro;

select * from gafanhotos;
select * from cursos;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

#ele seleciona os valores e agrupo com outros valores semelhantes
select carga from cursos
group by carga;

select carga ,count(*) from cursos
group by carga;

select totaulas, count(*) from cursos
group by totaulas;

select * from cursos
where totaulas = 30;

#pega da tebala curso aquantidade dos cursos que tem total da aulas igual a 30  e separa por carga horario
select carga ,count(carga) from cursos 
where totaulas = 30
group by carga;

select * from cursos
where tataulas > 20;

#having e como um where porem so reconheçe valores vindos de um group by
select ano,count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*);


/*Esse select mostra os anos que tiverem cursos com total de aulas maior que 30
  e depois está agrupando por ano e selecionando apenas aqueles feitos depois de 2013
*/
select ano,count(*) from cursos
where totaulas > 30
group by ano 
having ano > 2013
order by count(*) desc;

select avg(carga) from cursos;

/*seleciona carga e o ano dos cursos feitos depois de 2015 agrupa pela cararga horaria
e mostro apenas aqueles feitos depois de 2016 que tem a carga maior que a media de horas 
de um cursos normal
*/	
select carga,ano,count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga)  from cursos);