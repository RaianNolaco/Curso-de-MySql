use cadastro;

select * from gafanhotos; 

#esxercici 1 : Selecionar todas as mulheres da tabela gafanhotos 
select * from gafanhotos
where sexo = 'F';

#exercicios 2 : selecionar todos aqueles que nasceram entra 1 de janeiro de 2000 ate os que nasceram 
#em 31 de dezembro de 2015
select * from gafanhotos 
where nascimento between '2000-01-01' and  '2015-12-31'; 

#exericicio 3: selecionar todos os homens que são programadores
select * from gafanhotos 
where sexo = 'M' and profissao = 'programador';

#exercicio 4: selecionar todas mulheres brasileiras que começam com J
select * from gafanhotos
where sexo = 'F' and nome like 'j%' and nacionalidade = 'Brasil'; 

#execicio 5: uma lista de homens que não nasceram no brasil,pesam menos de 100kg e que tem silva no nome
select nome,nacionalidade from gafanhotos 
where nome like '%silva' and nacionalidade != 'Brasil' and peso < 100 and sexo = 'M';

#exercicio 6:a maior altura dentre os homens brasileiro
select max(altura) from gafanhotos 
where nacionalidade = 'brasil' and sexo = 'M';

#exercicio 7: media do peso de todos gafanhotos 
select avg(peso) from gafanhotos;

#exercicio 8: peso da mulher mais magra dentre as mulheres que nasceram fora do brasil
#e que nasceram dentre 01 de janeiro de 1990 e 31 de dezembro de 2000
select min(peso) from gafanhotos 
where sexo = 'F' and nacionalidade != 'brasil' and nascimento between '1990-01-01' and '2000-12-31';

#exercico 9 : quantas mulheres são mais altas que 1.90?
select count(*) from gafanhotos 
where sexo = 'F' and altura > 1.90;
