                         -- Atividade 2
            -- Autor: Letícia Ferreira da Silva
		           -- Data: 01/11/2021 
-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as 
-- informações dos produtos deste ecommerce. 
create database db_ecommerce;
/*Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos 
para se trabalhar com o serviço deste ecommerce.*/
create table tb_ecommerce(
id bigint(20) auto_increment,
produtos varchar(40) not null,
preços decimal(7,2) not null,
quantidade_vendas bigint(10) not null,
estoque bigint(4) not null,
primary key(id)
);
-- Popule esta tabela com até 8 dados;
select * from tb_ecommerce;
insert into tb_ecommerce (produtos, preços, quantidade_vendas, estoque)
values ("camisetas m", 200.00, 5, 10),
       ("regatas m", 250.00, 3, 8),
       ("croppets m", 300.00, 9, 5),
       ("jeans 38", 900.00, 10, 6),
       ("camisetas p", 200.00, 10, 8),
       ("regatas p", 250.00, 9, 3),
       ("croppets p", 300.00, 10, 2),
       ("jeans 40 ", 900.00, 5, 9);
-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from tb_ecommerce where preços > 500;
-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from tb_ecommerce where preços < 500;
-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_ecommerce set produtos = "regatas g" where id = 2;


