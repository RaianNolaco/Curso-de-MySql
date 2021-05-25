use cadastro;

desc gafanhotos;

#adicionando uma coluna nova na tabela gafanhotos , esse novo campo ser uma chave estrangeira
alter table gafanhotos
add column cursoPreferido int;

describe gafanhotos;
describe cursos;

/*Declarando que o campo cursopreferido será uma chave estrangeira vinda 
da tabela cursos*/
alter table gafanhotos 
add foreign key (cursopreferido)
references cursos(idcurso); 

desc gafanhotos;

select * from gafanhotos;
select * from cursos;

/*Definindo um curso preferido para um aluno
ou seja dando um valor a nova culuna da 
tabela gafanhotos*/
update gafanhotos
set cursopreferido = 6
where id = 1;

/*Updates feitos diretamete pelo workbench*/
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '22' WHERE (`id` = '2');
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '12' WHERE (`id` = '3');
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '7' WHERE (`id` = '4');
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '1' WHERE (`id` = '5');
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '8' WHERE (`id` = '6');
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '4' WHERE (`id` = '7');
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '5' WHERE (`id` = '8');
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '3' WHERE (`id` = '9');
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '30' WHERE (`id` = '10');
UPDATE `cadastro`.`gafanhotos` SET `cursoPreferido` = '22' WHERE (`id` = '11');

use cadastro;

/*erro de inegridade referencial esse erro acontece pois existe um relacionamento referente 
ao registro que estou tentando apagar*/
delete from cursos
where idcurso = 6;

select * from gafanhotos;

delete from cursos
where idcurso = 28;

select nome,cursopreferido from gafanhotos;

select nome,ano from cursos;

/**O inner join serve para juntar tabelas como no exemplo , porem ai da algo errado pos 
ele vai juntar todos os alunos que tem cursos preferidos com todos os cursos e não é isso que queremos*/
select gafanhotos.nome,gafanhotos.cursopreferido,cursos.nome,cursos.ano
from gafanhotos join cursos;


/*Para não acontecer isso existe a clausula on que serve para filtrar o join,como no exemplo aqui ele ira mostrar os campos aonde 
tem chave primaria e estrangeira*/
select gafanhotos.nome,gafanhotos.cursopreferido,cursos.nome,cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;

/*Relembrnado que o AS serve para dar apelidos para as tabelas 
para que fique mais facil trabalhar com elas*/
select g.nome,g.cursopreferido,c.nome,c.ano
from gafanhotos as g join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

/*o left aouter join mostra todos os registros da tabela ao esquerdo(gafanhotos) dele
mesmo que não tenham relação com a outra tabela
porem ele preencera como null*/
select g.nome,g.cursopreferido,c.nome,c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;

/*já o left outer join da preferencia aos cursos do lado a tabela que esta 
ao direito(cursos) dele*/
select g.nome,g.cursopreferido,c.nome,c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido;


