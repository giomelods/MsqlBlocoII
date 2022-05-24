create database db_RH;

use db_RH;

create table tb_colaboradores(

id bigint auto_increment,
nome varchar(20) not null,
idade int,
admissao date,
cargo varchar(250),
salario decimal (8,2),
primary key (id)
);

insert into tb_colaboradores(nome, idade, admissao, cargo ,salario) values ("Nina", 22, "2022-04-22", "Estagiária", "1400.00");
insert into tb_colaboradores(nome, idade, admissao, cargo ,salario) values ("Giovanna", 22, "2022-05-22", "Diretora", "6400.00");
insert into tb_colaboradores(nome, idade, admissao, cargo ,salario) values ("Kaique", 22, "2022-02-20", "Supervisor", "3400.00");
insert into tb_colaboradores(nome, idade, admissao, cargo ,salario) values ("Enzo", 22, "2022-01-02", "Diretor", "5400.00");
insert into tb_colaboradores(nome, idade, admissao, cargo ,salario) values ("Maria", 22, "2022-04-17", "Estagiária", "1400.00");


select * from tb_colaboradores;
select * from tb_colaboradores where salario > 2000.00;
select * from tb_colaboradores where salario < 2000.00;

update tb_colaboradores set salario = 2300.00 where id = 1;
update tb_colaboradores set cargo = "Assistente" where id = 1;

