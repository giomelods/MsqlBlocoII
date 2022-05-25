create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categoria (
id bigint auto_increment,
nome varchar(60),
descricao varchar(250),
primary key (id) 
);

INSERT INTO tb_categoria (nome, descricao) 
VALUES ("Medicamentos Genéricos","Medicamentos são produtos desenvolvidos em laboratório"),
 ("Beleza E Higiene","Cuidado com a Beleza e Higiene Pessoal para garantir a saúde do corpo e nosso bem estar"),
 ("Mamãe E Bebê"," Produtos variados para cuidar da saúde e bem estar da mãe e o do bebê"),
 ("Dermaclub","Um clube para quem ama cuidar da pele."),
("Teste Covid-19","Testes para Covid-19");


CREATE TABLE tb_produto (

	id bigint auto_increment,
    Produto varchar(70),
    descricao varchar(250),
    marca varchar(50),
    preco decimal(8,2),
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria(id)
    );
    
    
    INSERT INTO tb_produto (Produto, descricao, marca, preco, categoria_id)
VALUES ("Cimegripe","Cimegripe 400mg Cimed 20 Cápsulas","Cimed",15,1),
 ("Sabonete Líquido","Kit Sabonete Líquido Darrow Actine 140ml + 60ml","Darrow",70,2),
 ("Creme Dental","Creme Dental Oral-B 123 Menta Suave 70g","Oral-B",20.50,2),
 ("Fralda","Lenços Umedecidos Pampers Aroma de Aloe Vera 192 Unidades","Pampers",80,3),
 ("Hipoglós","Creme Preventivo de Assaduras Hipoglós Original 45g","Hipoglós",20,3),
 ("Protetor Solar","Protetor Solar Facial La Roche-Posay Anthelios Hydraox FPS60 Sem Cor 50g","Anthelios",90,4),
 ("Creme Hidratante","Creme Hidratante Corporal CeraVe Hidratação 24h e Textura Cremosa 50g","CeraVe",34,4),
  ("Teste Antígeno Swab","Teste rápido que tem por finalidade identificar a presença ou não de partículas do vírus (antígeno) causador da Covid-19","Antígeno Swab",120,5);
  
  SELECT * FROM tb_produto;
  
  select * from tb_produto where preco > 50 ORDER BY preco;

 select * from tb_produto where preco BETWEEN 5 AND 60 ORDER BY preco;

select * from tb_produto where produto like "%C%";

SELECT * from tb_produto inner JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id;
-- categoria mamãe e bebê
SELECT * from tb_produto inner JOIN tb_categoria 
ON tb_produto.categoria_id = tb_categoria.id where tb_categoria.nome="Mamãe E Bebê";

