create DATABASE db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table  tb_categoria (
id bigint auto_increment,
nome varchar(60),
descricao varchar(250),
primary key (id) 
);

INSERT INTO tb_categoria (nome, descricao) 
VALUES ("Programação","Programe nas principais linguagens e plataformas"),
 ("Front-end","Desenvolva sites e webapps com HTML, CSS e JavaScript"),
 ("Data Science","Aprenda a trabalhar com dados. Do Excel ao Python e Machine Learning"),
 ("UX & Design","Crie designs de qualidade através de aulas dinâmicas com conceitos e ferramentas nos principais softwares do mercado"),
  ("Mobile","Crie aplicativos móveis para as principais plataformas, smartphones e tablets");
  
create table tb_curso(
id bigint auto_increment,
nome varchar(255),
descricao varchar(255),
duracao varchar(10),
preco decimal(8,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
    );
    
	INSERT INTO tb_curso (nome ,descricao, duracao, preco, categoria_id)
values ("Java","Java JRE e JDK: Escreva o seu primeiro código com Eclipse","8h",99.9,1),
("C++","Avançando com C++: Entenda melhor a linguagem","10h",89.9,1),
("HTML5 e CSS3","HTML5 e CSS3 parte 1: A primeira página da Web","8h",59.9,2),
("React","Fundamentos de React: escrevendo com Typescript","12h",79.9,2),
("Machine Learning","Regressão: Implemente uma rede neural com numpy","7h",39.9,3),
("MySQL","Administração do MySQL: Segurança e otimização do banco","16h",123.9,3),
("UI - User Interface","Adobe XD: Design visual de um site mobile","10h",59.9,4),
("UX - User Experience","Fundamentos de UX: Entenda a experiência de usuário","8h",49.9,4),
("Flutter","Fundamentos de Flutter: Crie o seu primeiro App","15h",75.9,5),
 ("React Native","React Native com Expo: Navegação com menu e suporte às telas","8h",60.9,5);
 
     SELECT * FROM tb_curso;
  
  select * from tb_curso where preco > 500 ORDER BY preco;

 select * from tb_curso where preco BETWEEN 600 AND 1000 ORDER BY preco;

select * from tb_curso where nome like "%J%";

SELECT * from tb_curso inner JOIN tb_categoria 
ON tb_curso.categoria_id = tb_categoria.id;

SELECT * from tb_curso inner JOIN tb_categoria 
ON tb_curso.categoria_id = tb_categoria.id where tb_categoria.nome ="Front-end";