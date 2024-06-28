create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
tipo varchar(255),
spec varchar(255),
primary key (id)
);

create table tb_personagens(
id bigint auto_increment,
nome varchar(255),
arma varchar(255),
ataque bigint,
defesa bigint,
classe_id bigint not null,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_classes(tipo,spec)
values ("melee", "Guerreiro"),
("melee", "Ladino"),
("ranged", "Mago"),
("ranged", "Arqueiro"),
("melee", "Paladino");

INSERT INTO tb_personagens (nome, arma, ataque, defesa, classe_id)
 VALUES ("Yuri", "Espada", 1000, 800, 1),  
("Camila", "Adaga", 8000, 600, 2),      
("Douglas", "Varinha", 1200, 4000, 3),  
("Marilia", "Arco", 9000, 7000, 4),      
("Victor", "Machado", 1100, 9000, 1),   
("Rhaissa", "Espada", 9500, 6500, 2),  
("Rodrigo", "Cetro", 1150, 5000, 3),  
("Lucas", "Arco", 8500, 7500, 4);    


select * from tb_personagens where ataque > 2000;
select * from tb_personagens where defesa between 1000 and 2000;
select * from tb_personagens where nome like "%c%";

select nome, arma, tb_classes.tipo, tb_classes.spec
from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id;

select tb_personagens.nome, tb_personagens.arma, tb_classes.spec
from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id
where tb_classes.spec = "Arqueiro";







