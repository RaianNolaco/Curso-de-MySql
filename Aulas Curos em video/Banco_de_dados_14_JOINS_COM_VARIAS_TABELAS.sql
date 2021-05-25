use cadastro;

/*creando uma tabela filho entre gafanhotos e cursos
por que  mmuitos alunos podem assistir muitas aulas 
e muitas aulas podem ser assitidas por muitos alunou ou seja
e um relacionamento N-N quando temos esse tipo de 
relacionamento surge uma tabela filho*/
create table gafanhoto_assiste_curso(
   id int not null auto_increment,
   data date,
   idgafanhoto int,
   idcurso int,
 
  primary key (id),
  foreign key (idgafanhoto) references gafanhotos (id),
  foreign key (idcurso) references cursos (idcurso)

)default charset = utf8;

insert into gafanhoto_assiste_curso value
(default,'2014-03-01','1','2');

select * from gafanhoto_assiste_curso;

insert into gafanhoto_assiste_curso value 
(default,'2015-12-22','3','6'),
(default,'2014-01-01','22','12'),
(default,'2016-05-12','1','19');

/*fazendp um select na tabela gafanhotos e gafanhoto_assiste_curso 
usando o join para juntar as duas tabelas em apenas 1 select
o AS serve para apelidar a tabela */
select  g.nome, idcurso from gafanhotos as g 
join gafanhoto_assiste_curso as a
on g.id = a.idgafanhoto
order by g.nome;

/*Aqui temos um join com 3 tabelas , gafanhotos,cursos e a tabela filho entre elas
desta forma podemos fazer um select mais claro e mais objetivo*/
select g.nome,c.nome from gafanhotos as g
join gafanhoto_assiste_curso as a
on g.id = a.idgafanhoto
join cursos as c
on a.idcurso = c.idcurso;

-- Aula final do curso --
