create database db_recursos_humanos;

use db_recursos_humanos;

create table tb_colaboradores(
id int primary key auto_increment,
nome varchar (200) not null,
CPF varchar (14) not null,
email varchar (100) not null,
dt_nascimento date not null,
salario decimal not null
);

insert into tb_colaboradores (nome, CPF, email, dt_nascimento, salario) values ("Adriana Gutierrez", "12345678900", "drika@gmail.com", '1979-07-07', 5500);
insert into tb_colaboradores (nome, CPF, email, dt_nascimento, salario) values ("Ana Rosa A. Fernandes", "23456789011", "ana_rosa@gmail.com", '1985-03-05', 3500);
insert into tb_colaboradores (nome, CPF, email, dt_nascimento, salario) values ("Felipe Sousa Silva", "34556789022", "felipe_s@hotmail.com", '1986-05-07', 1500);
insert into tb_colaboradores (nome, CPF, email, dt_nascimento, salario) values ("Gabriela Souza", "45678912333", "gabyyy@gmail.com", '1990-03-07', 4800);
insert into tb_colaboradores (nome, CPF, email, dt_nascimento, salario) values ("Giovanni Dias Fexina", "56789012344", "giovanni_dias@hotmail.com", '1990-08-02', 1800);
insert into tb_colaboradores (nome, CPF, email, dt_nascimento, salario) values ("Wesley Moreira Gaspar", "67890123455", "wesley@gmail.com", '1987-03-04', 2000);

select * from tb_colaboradores;

alter table tb_colaboradores add salario decimal not null;

select * from tb_colaboradores where salario > 2000; 
select * from tb_colaboradores where salario <= 2000;

update tb_colaboradores set salario = 6000 where id = 1;

