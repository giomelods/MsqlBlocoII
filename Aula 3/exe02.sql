create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
id bigint auto_increment,
Borda  varchar(250) ,
Recheio  varchar(250) ,
Tamanho  varchar(250) ,
validade date ,
acompanhamento  varchar(250), 
primary key (id)
);

insert into tb_categorias ( Borda, Recheio, Tamanho, validade, acompanhamento)
values  ("Doce", "Chocolate", "Mini" , "2022-05-26" , "batata frita"),
("Salgada", "Queijo", "Grande" , "2022-07-26" , "Suco"),
("Salgada", "Cremily", "Pequeno" , "2022-08-26" , "Refri"),
("Doce", "sem", "mini" , "2022-02-26" , "Cerveja"),
("Salgada", "Catupiry", "Família" , "2022-04-26" , "Água");

SELECT * FROM tb_categorias;

create table tb_pizzas (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

insert into tb_pizzas (nome, quantidade , preco, categoria_id)
values ("4 queijos" ,2, 30.60, 2),
("RomeuJulieta" , 1, 15.80 , 1),
("GenUva", 2 , 90.00, 1),
("Mussarela" ,3, 50.60, 2),
("Calabresa" , 1, 70.80 , 2),
("Merengue", 2 , 95.00, 1);

SELECT * FROM tb_pizzas;

select * from tb_pizzas where preco > 45;

select * from tb_pizzas where preco between 50 and 100;

select * from tb_pizzas where nome like "%m%";

SELECT * from tb_pizzas inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id;
-- puxei a pizza salgada
SELECT * from tb_pizzas inner join tb_categorias 
on tb_pizzas.categoria_id = tb_categorias.id where tb_pizzas.categoria_id =2;