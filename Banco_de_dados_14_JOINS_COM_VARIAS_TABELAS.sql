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