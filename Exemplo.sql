-- Maria Fernanda --
CREATE DATABASE loja_virtual;
USE loja_virtual;
CREATE TABLE clientes (
id_cliente INT auto_increment PRIMARY KEY,
nome VARCHAR(100),
email varchar(100),
telefone varchar(100),
data_cadastro date
);
alter table clientes ADD cpf VARCHAR(14);
ALTER TABLE clientes MODIFY telefone VARCHAR(20);
ALTER table clientes RENAME TO consumidores;

create table pedidos (
    id_pedido INT auto_increment primary key,
    data_pedido DATE,
    valor_total DECIMAL(10,2) check (valor_total >0),
    id_cliente int,
    foreign key (id_cliente)references consumidores(id_cliente)
    );