create database cadastro;
create table pessoas (
nome varchar (30) not null,
nascimento date,
sexo enum ('M','F'),
peso decimal (3,2),
altura decimal (5,2),
nacionalidade varchar (20) default 'Brasil'
);

describe pessoas;

alter table cadastro.pessoas add column `id` int(10) unsigned primary KEY AUTO_INCREMENT;

alter table cadastro.pessoas add column `newid` int(10) unsigned primary KEY AUTO_INCREMENT;

ALTER TABLE pessoas MODIFY id INT NOT NULL;

ALTER TABLE pessoas DROP PRIMARY KEY;

ALTER TABLE pessoas MODIFY id INT NOT NULL primary KEY AUTO_INCREMENT;
