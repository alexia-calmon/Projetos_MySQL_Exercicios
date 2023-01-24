create database db_pizzaria_legal;

use db_pizzaria_legal;

drop table tb_pizzas;
drop table tb_categorias;

create table tb_categorias (
id bigint auto_increment primary key,
categoria varchar(255)
);

select * from tb_categorias;

create table tb_pizzas (
id bigint auto_increment primary key,
nome varchar(255), 
categoria_sabor bigint,
valor decimal(4,2),
foreign key (categoria_sabor) references tb_categorias(id)
);

select * from tb_pizzas;

insert into tb_categorias (categoria)
values ("salgada");

insert into tb_categorias (categoria)
values ("doce");

insert into tb_categorias (categoria)
values ("meia a meio");

insert into tb_categorias (categoria)
values ("picante");

insert into tb_categorias (categoria)
values ("frutas");

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Quatro Queijos", 1, 30.30); 

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Fricasse", 1, 25.45); 

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Coração", 1, 35.90); 

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Açaí", 2, 30.50); 

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Moranguinho", 2, 40.20); 

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Banana", 5, 45.10); 

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Chocolate com pimenta", 3, 40.20); 

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Acarajé", 4, 50.30); 

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Portugues", 4, 55.00); 

insert into tb_pizzas (nome, categoria_sabor, valor)
values ("Picanha Mexicana", 4, 50.00); 

/*06*/
select * from tb_pizzas where valor > 45.00;

/*07*/
select * from tb_pizzas where valor > 50.00 and valor < 100.00;

/*08*/
select * from tb_pizzas where nome like "%M%";

/*09*/
select nome, categoria_sabor, valor from tb_pizzas 
inner join tb_categorias on tb_pizzas.id = tb_pizzas.categoria_sabor;
 
/*10*/

select * from tb_categorias inner join tb_pizzas 
on tb_pizzas.categoria_sabor  = tb_categorias.id
where tb_categorias.id = 3 and tb_categorias.id = 3;