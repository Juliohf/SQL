create database escola;

use escola;

create table estudantes(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
media_semestre double,
turma char(2),
telefone varchar(9),
primary key (id)
);

insert into estudantes(nome,idade,media_semestre,turma,telefone)
values ("Douglas", 18, 8.5, "8A", "953456789"),
("Victor", 15, 7.9, "7B", "987654321"),
("Rhaissa", 14, 8.2, "9C", "956123789"),
("Alexander", 12, 9.0, "8A", "989456123"),
("Rodrigo", 11, 8.7, "7B", "921654987"),
("Wallace", 12, 7.5, "9C", "954321987"),
("Camila", 13, 8.8, "8A", "947258369"),
("Yuri", 15, 8.3, "7B", "963852741");

select * from estudantes;

select * from estudantes where media_semestre > 7.0;

select * from estudantes where media_semestre < 7.0;

update estudantes set media_semestre = 6.9 where id= 7;
update estudantes set media_semestre = 6.9 where id= 8;

select * from estudantes where media_semestre < 7.0;
