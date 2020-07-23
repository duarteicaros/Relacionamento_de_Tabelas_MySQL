create database db_ecommerce2;

use db_ecommerce2;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(20) not null,
    estoque boolean,
    primary key (id)
);

create table tb_produtos(
	id int auto_increment,
    nome varchar(25) not null,
    valor float(5.2),
    quantidade int (4),
    categoria_id bigint not null,
    primary key (id),
    foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(nome, estoque) values ("Eletronico", true);
insert into tb_categoria(nome, estoque) values ("Decoração", true);
insert into tb_categoria(nome, estoque) values ("Ojetos", true);

insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Quadro decorativo", 129.98, 5, 2 );
insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Iphone X", 3899.00, 8, 1 );
insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Caixinha de Som", 215.00, 85, 1 );
insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Caneca Vingadores", 59.99, 45, 3 );
insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Tapete Karate KID", 268.99, 34,2 );
insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Nootebook Dell", 2654.89, 7, 1);
insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Fone de Ouvido", 99.99, 189, 1);
insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Vaso de Flor", 43.56, 47, 2 );
insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Xbox 360", 988.99, 12, 1 );
insert into tb_produtos(nome, valor, quantidade, categoria_id) values("Playstation", 999.89, 33, 1 );

select * from tb_produtos;
select * from tb_categoria;

select * from tb_produtos where valor > 2000;
select * from tb_produtos where valor between 1000 and 2000;
select * from tb_produtos where nome like "%c%";
select tb_produtos.nome, tb_categoria.nome from tb_produtos
	inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;
select tb_produtos.nome, tb_produtos.quantidade, tb_categoria.nome from tb_produtos
	inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.nome = "Eletronico";
