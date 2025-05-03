INSERT INTO

/*
*UPDATE {laisa do schema}.{laisa da tabela} SET {laisa da coluna} = {valor novo} WHERE {alguma condição}
*/

UPDATE laisa.cidade SET populacao = 60000 WHERE identificador = 1;

/*
*DELETE FROM  {laisa do schema}.{laisa da tabela} WHERE {alguma condição}
*/

DELETE FROM laisa.cidade; /*DELETAR COMANDO*/

SELECT * FROM laisa.cidade

-------------------------------------------------------------------------------------------------

/*PARA INSERIR UMA COLUNA*/
INSERT INTO laisa.cidade (nome, populacao, estado) VALUES ('Teste', 5, 'SC')

-------------------------------------------------------------------------------------------------
/*
* Exercicio
* 5 atualizações e 5 deleções
*/


UPDATE laisa.pedido SET quantidade = 8 WHERE identificador = 1;

DELETE FROM laisa.pedido WHERE identificador = 1;

INSERT INTO laisa.pedido (
numero_do_pedido,
item,
quantidade,
tipo_pagamento,
endereco_de_entrega,
data_de_entrega,
dados_complementares
)

VALUES (
'2107',
'Pão de Queijo',
'5',
'PIX',
'Rua João Pessoa',
'2020-02-21',
'Sem informações'
)

UPDATE laisa.pedido SET tipo_pagamento = 'Crédito' WHERE identificador = 4;

DELETE FROM laisa.pedido WHERE identificador = 4;

INSERT INTO laisa.pedido (
numero_do_pedido,
item,
quantidade,
tipo_pagamento,
endereco_de_entrega,
data_de_entrega,
dados_complementares
)

VALUES (
'3002',
'Churros',
'3',
'Boleto',
'Rua Rosa Maria de Souza',
'2020-08-22',
'Sabores:2 doce de leite, 1 chocolate'
)

UPDATE laisa.pedido SET numero_do_pedido = 3455 WHERE identificador = 2;

DELETE FROM laisa.pedido WHERE identificador = 2;

INSERT INTO laisa.pedido (
numero_do_pedido,
item,
quantidade,
tipo_pagamento,
endereco_de_entrega,
data_de_entrega,
dados_complementares
)

VALUES (
'3003',
'Pizza',
'2',
'Boleto',
'Rua Alcides de Franca',
'2020-09-02',
'Não acrescentar orégano'
)

DELETE FROM laisa.pedido WHERE identificador = 9;

DELETE FROM laisa.pedido WHERE identificador = 3;

INSERT INTO laisa.pedido (
numero_do_pedido,
item,
quantidade,
tipo_pagamento,
endereco_de_entrega,
data_de_entrega,
dados_complementares
)

VALUES (
'3004',
'Esfirras',
'4',
'Crédito',
'Rua Alcides de Franca',
'2020-03-28',
'Enviar saches de maionese'
)

UPDATE laisa.pedido SET numero_do_pedido = 3005 WHERE identificador = 5;

DELETE FROM laisa.pedido WHERE identificador = 5;

INSERT INTO laisa.pedido (
numero_do_pedido,
item,
quantidade,
tipo_pagamento,
endereco_de_entrega,
data_de_entrega,
dados_complementares
)

VALUES (
'3005',
'Pizza',
'2',
'Boleto',
'Rua Alcides de Franca',
'2020-09-02',
'Não acrescentar orégano'
)

UPDATE laisa.pedido SET quantidade = 1 WHERE identificador = 8;

SELECT * FROM laisa.pedido ORDER BY identificador ASC;
