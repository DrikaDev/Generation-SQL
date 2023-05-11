create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id BIGINT PRIMARY key AUTO_INCREMENT,
classe varchar (100) not null,
genero varchar (1) not null
);

INSERT INTO tb_classes(classe, genero) VALUES 
("Guerreiro", "M"),
("Cavaleiro", "M"),
("Arqueiro", "F"),
("Caçador", "F"),
("Mago", "M"),
("Bruxa", "F"),
("Curandeira", "F");

Select * from tb_classes;
delete from tb_classes where id = 13;

create table tb_personagens(
id BIGINT primary key AUTO_INCREMENT,
nome varchar (100) not null,
idade varchar (20) not null,
pet varchar (100) not null,
dano varchar (20) not null
);

INSERT INTO tb_personagens(nome, idade, pet, dano) VALUES 
("Ludovic", "Adulto", "Lobo", "altíssimo"),
("Gregory", "Criança", "Guaxinim", "baixo"),
("Eleonora", "Adulto", "Águia", "médio"),
("Gaspar", "Adulto", "Cão", "alto"),
("Verônica", "Adolescente", "Cavalo", "médio"),
("Serena", "Idosa", "Coruja", "baixo"),
("Galileo", "Idoso", "Morcego", "alto"),
("Pietro", "Adolescente", "Urso", "altíssimo");

Select * from tb_personagens;

ALTER TABLE tb_classes ADD personagens_id BIGINT;
ALTER TABLE tb_classes ADD CONSTRAINT fk_classes_personagens FOREIGN KEY(personagens_id) REFERENCES tb_personagens(id);
alter table tb_classes drop FOREIGN KEY fk_classes_personagens;
aLTER tABLE tb_classes dROP personagens_id;

alter table tb_personagens add classes_id bigint;
alter table tb_personagens add constraint fk_personagens_classes foreign key(classes_id) references tb_classes(id);

insert into tb_personagens (classes_id) values();

uPDATE tb_personagens sET classes_id = 1 wHERE id = 2;
uPDATE tb_personagens sET classes_id = 1 wHERE id = 6;
uPDATE tb_personagens sET classes_id = 2 wHERE id = 3;
uPDATE tb_personagens sET classes_id = 2 wHERE id = 5;
uPDATE tb_personagens sET classes_id = 4 wHERE id = 4;
uPDATE tb_personagens sET classes_id = 4 wHERE id = 7;
uPDATE tb_personagens sET classes_id = 3 wHERE id = 4;
uPDATE tb_personagens sET classes_id = 3 wHERE id = 7;
uPDATE tb_personagens sET classes_id = 4 wHERE id = 1;
uPDATE tb_personagens sET classes_id = 4 wHERE id = 8;

select * from tb_personagens where classes_id > 3;
select * from tb_personagens where classes_id between 1 and 3;
select * from tb_personagens where nome like "G%";
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id;
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes_id where tb_classes.classe = "Cavaleiro";

