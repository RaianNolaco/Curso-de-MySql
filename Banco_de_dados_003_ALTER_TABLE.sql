use cadastro;

DROP TABLE cursos;

CREATE TABLE cusos(
  nome       varchar(30) not null unique, 
  discricao  text,
  carga      int unsigned,
  totalaulas int unsigned,
  ano        year default '2021'
)DEFAULT CHARSET = utf8;

ALTER TABLE cusos
RENAME TO cursos;

ALTER TABLE cursos
ADD COLUMN id_curso int first;

desc cursos;

#add  chave primaria
ALTER TABLE cursos
ADD PRIMARY KEY(id_curso);

SELECT * FROM galerinha;
desc cursos;

