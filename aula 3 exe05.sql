create DATABASE db_construindo_vidas;

use db_construindo_vidas;

create table  tb_categoria (
id bigint auto_increment,
nome varchar(60),
descricao varchar(250),
primary key (id) 
);

INSERT INTO tb_categoria (nome, descricao) 
VALUES ("Material de Construção","Escolher os materiais adequados para sua casa"),
 ("Ferramentas","Para trabalhos em casa e profissional"),
 ("Tintas e Acessórios","Para pintar a casa"),
 ("Materiais Elétricos","Realização de instalações elétricas"),
("Materiais Hidráulicos","Para assegurar conforto e segurança");


create table tb_produto(
id bigint auto_increment,
prod varchar(60) not null,
descricao varchar (255),
marca varchar (255),
preco decimal(8,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
    );
    
	INSERT INTO tb_produto (prod ,descricao, marca, preco, categoria_id)
values ("Cimento","Cimento CP II F 32 Todas as Obras 50kg Votoran","Votoran",48.89,1),
("Argamassa","Argamassa ACIII Interno e Externo Branco 20kg Votoran","Votoran",62.90,1),
("Telha","Telha de PVC Plan Cerâmica 2,42x0,88m Precon","Precon",130.90,1),
("Bloco Cerâmico","Bloco Cerâmico Vedação 14x19x29cm Cerâmica Nova Conquista","Nova Conquista",5.89,1),
("Colher de Pedreiro","Colher de Pedreiro Canto Reto 6.4/7'' (160mm) com Cabo de Plástico Bimaterial","Dexter",30.90,2),
("Alicate","Alicate Corte Diagonal 6''","Dexter",43.90,2);

    
     SELECT * FROM tb_produto;
  
  select * from tb_produto where preco > 100 ORDER BY preco;

 select * from tb_produto where preco BETWEEN 70 AND 150 ORDER BY preco;

select * from tb_produto where prod like "%C%";

SELECT * from tb_produto inner JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id;

SELECT * from tb_produto inner JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id where tb_categoria.nome ="Ferramentas";