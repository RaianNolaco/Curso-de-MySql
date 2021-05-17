DROP DATABASE valorant;

CREATE DATABASE valorant;

USE valorant;

create table classe(
	id_classe smallint auto_increment,
    nome      varchar(30),
    descricao varchar(200),
    
    constraint pk_id_classe primary key (id_classe)
);

create table agentes(
  id_agente     smallint auto_increment,
  nome          varchar(30) unique,
  codenome      varchar(20) unique,
  sexo          enum ('M','F'),
  nacionalidade varchar(20),
  descricao     varchar(200),
  id_classe     smallint unique not null,
  
  constraint pk_id_agente primary key (id_agente),
  constraint fk_id_classe foreign key (id_classe) references classe (id_classe)
);

create table mapas(
  id_mapa     smallint auto_increment,
  nome        varchar(30),
  localizacao varchar(30),
  
  constraint pk_id_mapa primary key (id_mapa)
);

create table armas(
	id_arma smallint auto_increment,
	nome    varchar(30),
	tipo    varchar(30),
	alcance varchar(20),
    
    constraint pk_id_classe primary key (id_arma)
);