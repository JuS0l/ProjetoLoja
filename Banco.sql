create database EcomLoja1;

/*drop database EcomLoja1;*/

use EcomLoja1;

create table produto(
Id int primary key auto_increment,
Nome varchar(50),
Descricao varchar(100),
Preco decimal(10,2),
ImageUrl varchar(255),
Estoque int
);

create table pedido(
Id int primary key auto_increment,
DataPedido datetime,
Total decimal(10,2),
Status varchar(100),
Endereco varchar(100),
FormaPagamento varchar(100),
Frete decimal (10,2)
);

create table ItemPedido(
Id int primary key auto_increment,
PedidoId int,
ProdutoId int,
Quantidade int,
PrecoUnitario decimal (10,2)
);

select * from produto;
select * from pedido;
select * from ItemPedido;

insert into produto(Nome,Descricao,Preco,ImageUrl,Estoque)values('Jogo1','Descricao Jogo-1',150.00, 'images/jogo1.jpg',10);
insert into produto(Nome,Descricao,Preco,ImageUrl,Estoque)values('Luva de Pedreiro','Descricao Jogo-3',1.00, 'images/jogo3.jpg',10);

select * from produto;