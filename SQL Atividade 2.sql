CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (100) NOT NULL,
quantidade INT NOT NULL,
preco DECIMAL NOT NULL,
categoria VARCHAR (50) NOT NULL,
cor VARCHAR (20) NOT NULL
);

INSERT INTO tb_produtos(nome, quantidade, preco, categoria, cor) VALUES 
("Monitor", 30, 1550.00, "informatica", "preto"),
("Teclado", 50, 150.00, "informatica", "preto"),
("Toalha", 30, 25.00, "banho", "branca"),
("Lençol", 80, 50.00, "cama", "branco"),
("Toalha", 30, 25.00, "banho", "rosa"),
("Travesseiro", 30, 75.00, "banho", "preto"),
("Bola", 50, 15.00, "brinquedos", "colorida"),
("Boneca", 20, 45.00, "brinquedos", "");

select * from tb_produtos;

select * from tb_produtos where preco >= 500;
select * from tb_produtos where preco < 500;

update tb_produtos set cor = "amarelo" where id = 5;