create database amazonia;

use amazonia;

create table produtos(
id bigint auto_increment,
nome Varchar(255) not null,
preco decimal(10,2),
disponivel boolean,
qt_estoque bigint,
data_validade date,
primary key (id)
);

insert into produtos(nome,preco,disponivel,qt_estoque,data_validade)
values("abacate",39.99,true,50,"2024-11-20"),
	("limão",5.00,true,100,"2024-07-09"),
    ("maça",9.50,true,45,"2024-06-28"),
    ("pitaya",17.00,false,0,"2024-06-20"),
    ("goiaba", 3.50, TRUE, 150, "2024-12-31"),
("banana", 2.25, TRUE, 200, "2024-11-15"),
("laranja", 4.10, TRUE, 120, "2024-10-20"),
("uva", 6.75, FALSE, 0, "2024-07-05");

select * from produtos;

select * from produtos where preco > 500;

select * from produtos where preco < 500;

update produtos set nome = "abacaxi" where id = 1;

select * from produtos where id = 1;


