-- create database cadastro;
-- create table pessoas (
-- id int not null auto_increment,
-- nome varchar (30) not null,
-- nascimento date,
-- sexo enum ('M', 'F'),
-- peso decimal (5,2),
-- altura decimal (3,2), 
-- nacionalidade varchar (20) default 'Brasil',
-- primary key (id)
-- );

-- insert into pessoas
-- (id, nome, nascimento, sexo, peso, altura, nacionalidade)
-- values
-- ('2', 'Cynthia', '1984-05-05', 'F', '63.2', '1.70', 'Brasil');

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Mauro', '1954-07-01', 'M', '63', '1.68', 'Brasil'),
('4', 'Gidalti', '1956--8-02', 'F', '67', '1.56', default);


describe pessoas;
alter table pessoas
add column profissao varchar (10);
desc pessoas;

alter table pessoas
drop column profissao;
alter table pessoas
add column profissao varchar (10) after nome;
alter table pessoas
add column codigo int first;

alter table pessoas
modify column profissao varchar (20) not null default '';

desc pessoas;

alter table pessoas
modify column profissao varchar (20) not null default '-';

alter table pessoas
drop column profissao;

alter table pessoas
add column profissao varchar (20) not null default 'nda';
desc pessoas; 

alter table pessoas
change column profissao escolaridade varchar (20);