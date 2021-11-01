		-- Autor: Letícia Ferreira da Silva
		     -- Data: 01/11/2021 
                            -- Atividade 1
			
/*Crie um banco de dados para um serviço de RH de uma empresa,onde o sistema trabalhará com as informações dos 
funcionaries desta empresa.*/ 

create database db_rh;

/*Crie uma tabela de funcionaries e utilizando a habilidade de abstração e 
determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.q*/

 create table  tb_funcionarios(
id bigint(20) auto_increment,
nome varchar(40) not null,
profissão varchar (40) not null,
horas_trabalhadas_dia int (2) not null,
salario bigint (20) not null,
primary key (id)
);

/*Popule esta tabela com até 5 dados;*/
select * from tb_funcionarios;
insert into tb_funcionarios( nome, profissão, horas_trabalhadas_dia, salario)
values ("Renata", "Gerente", 8, 7000),
       ("Lucas", "Secretário", 8, 4000),
       ("Vanessa", "desenvolvedora Jr.", 9, 3500),
       ("Jessica", "Administradora", 8, 4400),
       ("Larissa", "desenvolvedora senior", 9, 10000);

-- truncate table apaga os dados da tabela mas não a estrutura
-- select count * conta quantas linhas tem na tabela 
-- update tb_funcionarios 
-- order by 
/*Faça um select que retorne os funcionaries com o salário maior do que 2000.*/
select* from tb_funcionarios where salario > 2000;
/*Faça um select que retorne os funcionaries com o salário menor do que 4000.*/
select * from tb_funcionarios where salario < 4000;
-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_funcionarios set salario = 4500 where id = 3;