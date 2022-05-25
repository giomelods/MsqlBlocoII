create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table  tb_categoria (
id bigint auto_increment,
nome varchar(60),
marca varchar(250),
primary key (id) 
);

INSERT INTO tb_categoria (nome, marca) 
values ("Carne", "Best Beef"),
("Linguica", "Lory"),
("Tripa", "Aurora"),
("Salsicha", "Perdigão"),
("Liguica Calabresa", "Aurora");

create table tb_produto(
id bigint auto_increment,
prod varchar(60),
preco decimal (6,2),
fabricacao date,
validade date,
kilos bigint (250),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
    );
    
    insert into tb_produto (prod, preco , fabricacao, validade, kilos, categoria_id)
	values ("Alcatra", 80.00, "2022-08-02" , "2023-08-02", 70, 1),
    ("Toscana" , 30.00, "2022-08-02" , "2022-08-12", 5, 2),
	("Seca" , 25.00, "2022-08-02" , "2023-06-02", 2, 3),
    ("Hot dog" , 20.00, "2022-08-02" , "2024-05-02", 1, 4),
	("Linguado" , 80.00, "2022-08-02" , "2021-04-02", 50, 5),
    ("Moida" , 30.00, "2022-08-02" , "2022-03-02", 5, 1);
    
     SELECT * FROM tb_produto;
  
  select * from tb_produto where preco > 50 ORDER BY preco;

 select * from tb_produto where preco BETWEEN 50 AND 150 ORDER BY preco;

select * from tb_produto where prod like "%C%";

SELECT * from tb_produto inner JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id;

SELECT * from tb_produto inner JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id where tb_categoria.nome ="linguica";
