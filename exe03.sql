create database db_Registro;

use db_Registro;

create table tb_Estudantes(
id bigint auto_increment,
nome varchar(250) not null,
atributos varchar(250),
nota double not null,
primary key (id)
);

insert into tb_Estudantes(nome, atributos, nota) values ("Giovanna", "Excelente", 10);
insert into tb_Estudantes(nome, atributos, nota) values ("Enzo", "Comunicativo", 8.0);
insert into tb_Estudantes(nome, atributos, nota) values ("Gus", "Prestativo", 8.5);
insert into tb_Estudantes(nome, atributos, nota) values ("Késsia", "Focada", 10);
insert into tb_Estudantes(nome, atributos, nota) values ("Bruno", "Regular", 5.0);
insert into tb_Estudantes(nome, atributos, nota) values ("Jacy", "Gentil", 8.6);
insert into tb_Estudantes(nome, atributos, nota) values ("Kaique", "Precisa de Atenção", 3.5);
insert into tb_Estudantes(nome, atributos, nota) values ("Wasllen", "Comunicativo", 7.0);

select * from tb_Estudantes;

select * from tb_Estudantes where nota > 7;

select * from tb_Estudantes where nota < 7;

update tb_Estudantes set nota = 7.5 where id = 7;

select * from tb_Estudantes