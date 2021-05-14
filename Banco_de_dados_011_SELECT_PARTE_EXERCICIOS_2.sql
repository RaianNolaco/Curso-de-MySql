use cadastro;

select * from gafanhotos;

/*Exercícios*/

/*Exercício 1: Uma lista de profissões dos alunos e a quantidade de alunos que trabalham lá*/
select profissao,count(*) from gafanhotos
group by profissao;

/*Exercício 2: lista de quantos homens e mulheres que nasceram depois de 01 de janeiro de 2005*/
select sexo,count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/*Exercício 3: Selecionar pais que os alunos nasceram que não seja o brasil, porem mostrar 
aqueles países que tem 3 ou mais alunos */
select nacionalidade, count(*) from gafanhotos
where nacionalidade !='brasil'
group by nacionalidade
having count(nacionalidade) >= 3 ;

/*Exercício 4: uma lista de pessoas que pesam mais de 100kg e que estão acima de media de altura de todos os alunos*/
select altura, count(*) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos)
order by altura desc;


