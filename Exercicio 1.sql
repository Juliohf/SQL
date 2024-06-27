create database rh_empresa;

use rh_empresa;

create table colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
nascimento date,
clt boolean,
salario double,
primary key (id)
);

insert into colaboradores(nome,idade,nascimento,clt,salario)
values ('Ana', 30, '1993-05-15', TRUE, 1500.00),
('Ney', 45, '1979-11-22', TRUE, 2200.45),
('Joao', 25, '1998-02-10', FALSE, 4000.10),
('Marilia', 38, '1986-07-08', TRUE, 2400),
('Lucas', 29, '1994-09-19', FALSE, 3690.75);

SELECT * FROM COLABORADORES WHERE SALARIO > 2000;
SELECT * FROM COLABORADORES WHERE SALARIO < 2000;

update colaboradores set salario = 2500 where id =2;

SELECT * FROM COLABORADORES WHERE SALARIO > 2000;

