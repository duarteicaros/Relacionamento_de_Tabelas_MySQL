create database db_RH2;

use db_RH2;

create table tb_cargo(
	id bigint auto_increment,
    função varchar(30) not null,
    horario varchar(20),
    bloco varchar(1),
    primary key (id)
);

create table tb_funcionario(
	id int (3) auto_increment,
	nome varchar(40) not null,
	email varchar(40) not null,
	endereço varchar(60),
	telefone varchar(15),
	salario float(6),
    cargo_id bigint not null,
	primary key (id),
    foreign key (cargo_id) references tb_cargo (id)
);

select * from tb_funcionario;
select * from tb_cargo;

insert into tb_cargo(função, horario, bloco) values ("Supervisor" , "Mutino", "A");
insert into tb_cargo(função, horario, bloco) values ("Supervisor" , "Noturno", "A");
insert into tb_cargo(função, horario, bloco) values ("Desenvolvedor" , "Mutino", "A");
insert into tb_cargo(função, horario, bloco) values ("Desenvolvedor" , "Noturno", "A");
insert into tb_cargo(função, horario, bloco) values ("Coordenador" , "Matutino", "B");

insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Ícaro Duarte", "icarodua@gmail.com", "R. Maria de Castro, 88", "11-94906-5241", 2020,5);
insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Guilherme", "gui@gmail.com", "R. Astolfo de Freitas, 10", "11-94523-8541", 2120,1);
insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Luane", "luane@gmail.com", "R. Astoufinho, 86", "11-94906-8524", 2200,2);
insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Bruno Willinas", "williansbruno@gmail.com", "R. Kurama, 27", "11-94587-5241", 2560,3);
insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Matheus Alexandrino", "matheusale@gmail.com", "R. Maria, 13", "11-94569-5951", 2654,4);
insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Maurício", "maurício@gmail.com", "R. Oficina de Lazaro, 33", "11-94572-4530", 1865,1);
insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Evelyn", "evelyn@gmail.com", "Av. Paulo Oracio, 1123", "11-97458-5856", 1456,2);
insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Claudia", "claudia@gmail.com", "R. Euclides da Cunha, 54", "11-97236-5854", 2400,3);
insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Marcelo", "botacasaco@gmail.com", "R. Metre Lee, 100", "11-96587-5413", 2863,4);
insert into tb_funcionario(nome, email, endereço, telefone, salario, cargo_id)
values ("Lucas", "lucao@gmail.com", "R. do Samba, 20", "11-9854-6985", 2456,1);

select * from tb_funcionario;

select nome, salario from tb_funcionario where salario >2000;
select nome, salario from tb_funcionario where salario between 1000 and 2000;
select * from tb_funcionario where nome like "%C%";
select tb_funcionario.nome, tb_funcionario.salario, tb_cargo.função from tb_funcionario
inner join tb_cargo on tb_cargo.id = tb_funcionario.cargo_id;
select tb_funcionario.nome, tb_cargo.função, tb_cargo.bloco from tb_funcionario
	inner join tb_cargo on tb_cargo.id = tb_funcionario.cargo_id
where tb_cargo.função = "Supervisor";