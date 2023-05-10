CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (200) NOT NULL,
idade INT,
nota1 INT,
nota2 INT,
nota3 INT
);

INSERT INTO tb_alunos(nome, idade, nota1, nota2, nota3) VALUES 
("Ricardo", 7, 10, 8, 9),
("Amanda", 8, 8, 9, 10),
("Beatriz", 10, 8, 8, 7),
("Diogo", 9, 7, 9, 9),
("Eduardo", 10, 7, 10, 8);

select * from tb_alunos;

select * from tb_alunos where nota1 || nota2 || nota3 >= 7;
select * from tb_alunos where nota1 || nota2 || nota3 <= 7;

update tb_alunos set idade = 10 where id = 4;