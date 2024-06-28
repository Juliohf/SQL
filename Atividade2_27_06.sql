create database db_pizzaria_legal;

use db_pizzaria_legal;


create table tb_categorias(
id bigint primary key auto_increment,
tipo varchar(255),
salgada boolean
);

create table tb_pizzas(
id bigint primary key auto_increment,
sabor varchar(255),
tamanho char,
preco decimal(10,2),
massa varchar(255),
categorias_id bigint not null,
foreign key (categorias_id) references tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, salgada) 
VALUES ("Vegetariana", TRUE),
("Carnívora", TRUE),
("Frutos do Mar", TRUE),
("Queijo", TRUE),
("Doce", FALSE);

INSERT INTO tb_pizzas (sabor, tamanho, preco, massa, categorias_id) 
VALUES ("Margherita", "M", 29.99, "Tradicional", 1), 
("Pepperoni", "G", 34.99, "Tradicional", 2),   
("Camarão", "P", 39.99, "Fina", 3),           
("Quatro Queijos", "M", 32.99, "Tradicional", 4),
("Frango com Catupiry", "G", 36.99, "Integral", 2), 
("Portuguesa", "M", 33.99, "Tradicional", 2),   
("Calabresa", "P", 28.99, "Fina", 2),           
("Chocolate", "M", 25.99, "Doce", 5);         

select * from tb_pizzas where preco > 45.00;
select * from tb_pizzas where preco between 30 and 100; -- nao tinha pizza de 50

select * from tb_pizzas where sabor like "%m%";

select sabor, tamanho, preco, tb_categorias.tipo
from tb_pizzas inner join tb_categorias
on tb_pizzas.categorias_id = tb_categorias.id;

select sabor, tamanho, preco, tb_categorias.tipo
from tb_pizzas inner join tb_categorias
on tb_pizzas.categorias_id = tb_categorias.id
where tb_categorias.tipo = "Carnívora";



