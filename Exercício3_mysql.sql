                     -- Atividade 3
           -- Autor: Letícia Ferreira da Silva
		           -- Data: 01/11/2021 
/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as 
informações dos estudantes deste registro dessa escola.*/ 
create database db_escola;
/*Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos 
relevantes dos estudantes para se trabalhar com o serviço dessa escola.*/
create table tb_estudante(
id bigint(10) auto_increment,
nome varchar (30) not null,
idade int(10) not null,
ano varchar (30) not null,
ra bigint (20) not null,
media decimal(5,2) not null,
primary key (id)
);
-- Popule esta tabela com até 8 dados;
select * from tb_estudante; 
insert into tb_estudante ( nome, idade, ano, ra, media)
values ( "Amanda", 10, "quarto ano" , 20201, 9.6),
       ( "Beatriz", 10, "quarto ano" , 20202, 9.8),
       ( "Carlos", 10, "quarto ano" , 20203, 8.6),
       ( "Daniel", 11, "quarto ano" , 20204, 9.9),
       ( "Ester", 10, "quarto ano" , 20205, 10.0),
       ( "Fatima", 10, "quarto ano" , 20206, 8.8),
       ( "Gabriel", 10, "quarto ano" , 20207, 8.9),
       ( "Heitor", 11, "quarto ano" , 20208, 8.9);
-- Faça um select que retorne o/as estudantes  com a nota maior do que 8.
select * from tb_estudante where media >8;
-- Faça um select que retorne o/as estudantes  com a nota menor do que 9.
select * from tb_estudante where media< 9;
-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_estudante set nome = "Fátima" where id = 6;

