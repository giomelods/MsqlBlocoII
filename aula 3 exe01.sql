-- Criação do Banco de dados
create database db_generation_game_online;

-- Seleciona o Banco de dados para conseguirmos fazer as requisições
use db_generation_game_online;

-- Criação da primeira tabela, tabela de classes

create table tb_classes(
 id bigint auto_increment,
 nome varchar(250) not null,
 arma varchar(250),
 habilidade varchar(250),
 primary key (id)
 );
 
 -- Inserção dos dados na tabela de classes, lembrando que cada valor corresponde a uma coluna da tabela
 
 insert into tb_classes (nome, arma, habilidade) 
 values ("Feiticeiro",  "Cajado" , "Rajadão"),
("Arqueiro", "Arco e Flecha" , "Tempestade de flechas"),
("Curandeiro", "Poções", "Cura"),
("Homem de ferro", "Armadura" , "Voar"),
("Thor", "Martelo", "Força") ; 

-- Lista todas as informações da tabela de classes
select * from tb_classes;

-- Cria da segunda tabela, tabela de personagens
create table tb_personagens(
id bigint auto_increment,
nome varchar(100),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),

-- na criação da foreign key, é importante colocar a chave estrangeira do mesmo tipo de dado da chave primaria da tabela que você quer relacionar, no caso, bigint
foreign key (classe_id) references tb_classes(id)
);

-- Inserção de dados da tabela personagem
insert into tb_personagens (nome, nivel, ataque, defesa, classe_id) 
values ("Gio", 500, 3000, 1200, 2),
("Danila", 300, 1500, 500, 1),
("Curaprox", 800, 2500, 4000, 3),
("Petra", 400, 1500, 500, 1),
("Lune", 400, 3500, 500, 2),
("El", 1000, 2000, 5000, 3),
("Bibi", 5000, 10000, 15000, 2),
("Xabu", 6000,1222,1500,2),
("Buiu",200,1888,1600,1);

-- selects e joins

-- lista todos os personagens
select * from tb_personagens;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagens where ataque > 2000;

-- Faça um select trazendo  os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagens where defesa between 1000 and 2000;

-- Faça um select  utilizando LIKE buscando os personagens com a letra C.
-- Na parte onde temos o %, ele pode ser usado da forma "c%", indicando que procuramos nomes que começem com a letra C, ou da forma "c%", indicando que procuramos nomes que terminem com C. Usando "%c%" indicamos que queremos dados que contenham a letra C.
select * from tb_personagens where nome like "%c%";

-- Faça um um select com Inner join entre  tabela classe e personagem.
select * from tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são curandeiro).
select * from tb_personagens 
inner join tb_classes on tb_classes.id = tb_personagens.id
where tb_classes.id = 3;

