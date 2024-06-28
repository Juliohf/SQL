create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias (
id Bigint primary key auto_increment,
nome varchar(255),
generico boolean
);

create table tb_produtos(
id Bigint primary key auto_increment,
nome varchar(255),
preco decimal(10,2),
quantidade int,
tarja_preta boolean,
categoria_id bigint not null,
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_categorias(nome,generico)
values ("Analgesicos", TRUE),
("Antibioticos", FALSE),
("Antifúngicos", FALSE),
("Anti-inflamatórios", TRUE),
("Vitaminas", TRUE);

INSERT INTO tb_produtos (nome, preco, quantidade, tarja_preta, categoria_id)
 VALUES ("Pulmocitron 300mg", 24.99, 50, FALSE, 1),
("Neurozen 1000mg", 89.50, 80, FALSE, 2),
("Dermogel 50g", 21.75, 100, FALSE, 3),
("Gastrorapida 10mg", 82.25, 30, TRUE, 4),
("Oftalmax 500mg", 97.99, 60, FALSE, 5),
("Cardiovita 250mg", 29.99, 40, FALSE, 1),
("Renoclear 200mg", 55.50, 70, TRUE, 2),
("Ossolux 1500mg", 12.25, 90, FALSE, 3);

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 5.00 and 60.0;

select * from tb_produtos where nome like "%c%";

select tb_produtos.nome, preco, quantidade, tb_categorias.nome, tb_categorias.generico
from tb_produtos inner join tb_categorias
on categoria_id = tb_categorias.id;

select tb_produtos.nome, preco, quantidade, tb_categorias.nome
from tb_produtos inner join tb_categorias
on categoria_id = tb_categorias.id
where tb_categorias.nome = "Analgesicos";



