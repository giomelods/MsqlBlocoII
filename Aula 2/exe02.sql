create database Ecommerce;

use Ecommerce;

create table produtos(
id bigint auto_increment,
nome varchar(200) not null,
atributos varchar(200),
valor decimal not null,
primary key (id)
);

insert into produtos(nome, atributos, valor) values ("Batom", "vermelho impulse", 350);
insert into produtos(nome, atributos, valor) values ("Blush", "rosa com glitter", 200);
insert into produtos(nome, atributos, valor) values ("Lápis de olho", "Preto", 800);
insert into produtos(nome, atributos, valor) values ("Pó compacto", "Pele escura",90);
insert into produtos(nome, atributos, valor) values ("Cílios", "Imã", 800);


select * from produtos;

select * from produtos where valor > 500;

select * from produtos where valor < 500;

update produtos set valor = 500 where id = 2;

select * from produtos