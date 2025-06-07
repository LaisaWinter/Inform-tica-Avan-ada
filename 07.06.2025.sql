CREATE TABLE laisa.cliente (
   id serial primary key,
   nome varchar (50),
   idade integer,
   data_de_nascimento date,
   endereco varchar (50)
)

CREATE TABLE laisa.produto (
  id serial primary key,
  nome varchar (50),
  marca varchar (50),
  endereco_fabricante varchar (100)
)


CREATE TABLE laisa.pedido (
id serial primary key,
nome varchar (50)
);

ALTER TABLE laisa.pedido ADD COLUMN id_cliente integer;


ALTER TABLE laisa.pedido ADD constraint fk_cliente foreign key (id_cliente) REFERENCES laisa.cliente (id);

ALTER TABLE  laisa.pedido ADD COLUMN id_produto integer;

ALTER TABLE  laisa.pedido ADD constraint fk_produto foreign key (id_produto) REFERENCES laisa.produto (id);

SELECT * FROM laisa.pedido


INSERT INTO laisa.cliente(
nome,
idade,
data_de_nascimento,
endereco
)

VALUES (
'Laísa Winter',
'21',
'2004-02-02',
'Rua Wenceslau Braz'
)

INSERT INTO laisa.cliente(
nome,
idade,
data_de_nascimento,
endereco
)

VALUES (
'Mariana Da Luz',
'22',
'2006-06-03',
'Avenida João Pessoa'
)

SELECT * FROM laisa.cliente

INSERT INTO laisa.produto (
nome,
marca,
endereco_fabricante
)

VALUES (
'Notebook',
'Dell',
'Rua Falcão de Matos'
)

INSERT INTO laisa.produto (
nome,
marca,
endereco_fabricante
)

VALUES (
'Celular',
'Samsung',
'Martins das Flores'
)

SELECT * FROM laisa.produto

INSERT INTO laisa.pedido(
	nome, id_cliente, id_produto)
	VALUES ('Isabela', 2, 1);

SELECT * FROM laisa.pedido

/*Exemplo (professor)*/
SELECT pe.nome, po.nome, c.nome FROM laisa.pedido pe 
	INNER JOIN laisa.produto po ON pe.id_produto = po.id 
	INNER JOIN laisa.cliente c ON pe.id_cliente = c.id
