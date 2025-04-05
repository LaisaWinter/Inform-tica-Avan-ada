/*
*Cria uma tabela de pedidos (é preciso ter no mínimo 8 colunas e uma delas ser do tipo enum)
*Inserção de 5 registros nesta tabela
*Alteração de registro (pendente demonstrar)
*Deleção de registro (pendente demonstrar)
*/
CREATE TYPE laisa.pedido AS ENUM
('PR', 'SC',...);

create table laisa.pedido (
identificador serial not null primary key,
numero_do_pedido varchar (20) not null,
item varchar (50) not null,
quantidade integer not null,
tipo_pagamento laisa.tipo_pagamento not null,
endereco_de_entrega varchar (100) not null,
data_de_entrega date not null,
dados_complementares varchar(50) not null
)

CREATE TYPE laisa.tipo_pagamento AS ENUM
('Débito', 'Crédito', 'PIX', 'Boleto');

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
'2102',
'Açai',
'4',
'PIX',
'Rua Alcides de Franca',
'2020-02-05',
'Por gentileza enviar guardanapos'
)

SELECT * FROM laisa.pedido;
------------------------------------------------------------------------------------------

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
'2103',
'Pizza',
'1',
'Débito',
'Rua Carolina Herrera',
'2020-02-27',
'Não acrescentar orégano'
)

SELECT * FROM laisa.pedido;
-----------------------------------------------------------------------------------------------

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

'2104',
'Esfirras',
'5',
'Crédito',
'Rua Professor Rodrigues da Silva',
'2020-03-31',
'Peço que enviem saches de ketchup e maionese'
)

SELECT * FROM laisa.pedido;
-----------------------------------------------------------------------------------------
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
'2105',
'Bolo',
'2',
'Boleto',
'Rua Arco Íris',
'2020-04-24',
'Massa 50% cacau conforme combinamos'
)

SELECT * FROM laisa.pedido;
------------------------------------------------------------------------------------------
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
'2106',
'Pastel',
'10',
'PIX',
'Rua Argentino de Freitas',
'2020-06-05',
'Cinco míni pásteis e cinco no tamanho P'
)

SELECT * FROM laisa.pedido;
--------------------------------------------------------------------------------------------------
