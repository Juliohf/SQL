create database db_cidade_dos_vegetais;

use db_cidade_dos_vegetais;

create table tb_categorias(
id bigint primary key auto_increment,
nome varchar(255),
tipo varchar(255)
);

create table tb_produtos(
id bigint primary key auto_increment,
nome varchar(255),
preco decimal(10,2),
quantidade int,
validade date,
categoria_id bigint not null,
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_categorias(nome,tipo)
Values
("Frutas", "Frescas"),
("Verduras", "Frescas"),
("Legumes", "Frescas"),
("Temperos", "Condimentos"),
("Conservas", "Processadas");

insert into tb_produtos (nome,preco,quantidade,validade,categoria_id)
values ("Maçã", 2.99, 100, '2024-07-15', 1),
("Alface", 19.50, 80, '2024-07-10', 2),
("Cenoura", 33.25, 60, '2024-07-12', 3),
("Pimenta Preta", 20.75, 50, '2024-07-08', 4),
("Pepino em Conserva", 59.99, 30, '2024-08-01', 5),
("Pimenta Calabresa", 149.79, 120, '2024-07-20', 4),
("Palmito", 22.49, 70, '2024-07-18', 5),
("Batata", 29.99, 50, '2024-07-25', 3);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 50 and 150;
select * from tb_produtos where nome like "%c%";

select tb_produtos.nome, preco, quantidade, tb_categorias.nome
from tb_produtos inner join tb_categorias
on categoria_id = tb_categorias.id;

select tb_produtos.nome, preco, quantidade, tb_categorias.nome
from tb_produtos inner join tb_categorias
on categoria_id = tb_categorias.id
where tb_categorias.nome = "Legumes";