/*  cliente, produto, pedido*/

CREATE TABLE laisa.cliente (
   id serial primary key,
   nome varchar (50),
   endereco varchar (50),
   idade integer
   );
   

CREATE TABLE laisa.produto (
  id serial primary key,
  nome varchar (50),
  marca varchar (50),
  endereco_fabricante varchar (100),
  id_cliente integer,
  CONSTRAINT fk_cliente
  FOREIGN KEY (id_cliente)
  REFERENCES laisa.cliente (id)
  );

CREATE TABLE laisa.pedido (
  id serial primary key,
  numero_do_pedido varchar (20),
  item varchar (50),
  quantidade integer,
  id_produto integer,
  CONSTRAINT fk_produto
  FOREIGN KEY (id_produto)
  REFERENCES laisa.produto (id)
);


INSERT INTO laisa.cliente (
nome,
endereco,
idade
)

VALUES (
'Isabela',
'Rua João Pessoa',
'17'
)

INSERT INTO laisa.produto(
nome,
marca,
endereco_fabricante
)

VALUES (
'Tenis',
'Nike',
'Rua Alcides fernandes'
)

INSERT INTO laisa.pedido (
numero_do_pedido,
item,
quantidade
)

VALUES (
'100'
'Calcado'
'1'
)
