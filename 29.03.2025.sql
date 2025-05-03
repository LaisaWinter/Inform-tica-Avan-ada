/*Altera uma tabela alterando uma coluna exemplo: altera coluna valor para tipo float*/
ALTER TABLE laisa.imovel ALTER COLUMN valor float;

/*Altera uma tabela removendo uma coluna exemplo: coluna valor */
ALTER TABLE laisa.imovel DROP COLUMN valor;

/*Altera uma tabela alterando o nome de uma coluna exemplo: coluna valor para valor_aluguel*/
ALTER TABLE laisa.imovel RENAME COLUMN valor TO valor_aluguel;

/*ALtera uma tabela adicionando uma coluna exemplo: coluna_nova varchar(30) not null*/
ALTER TABLE laisa.imovel ADD COLUMN coluna_nova varchar (30) not null;

/*Cria um tipo ENUM(Lista de valores) com o nome finalidades e valores venda e locação */
CREATE TYPE laisa.finalidades AS ENUM ('Venda','Locação');
--------------------------------------------------------------------------------------------------------

CREATE TYPE laisa.uf AS ENUM
    ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO');
);

ALTER TABLE laisa.cidade ALTER COLUMN estado TYPE laisa.uf;

ALTER TABLE laisa.cidade DROP COLUMN estado;

ALTER TABLE laisa.cidade ADD COLUMN estado laisa.uf not null;
------------------------------------------------------------------------------------------------------------------

INSERT INTO laisa.cidade (
   nome,
   estado,
   populacao
) VALUES (
   'União da Vitória',
   'PR',
    40000
);

SELECT * FROM laisa.cidade;

INSERT INTO laisa.cidade (
  nome, 
  estado,
  populacao
) VALUES (
  'Porto União',
  'SC',
   40000
);

DELETE FROM laisa.cidade where identificador in (2, 4);
------------------------------------------------------------------------------------------------------

CREATE TABLE laisa.empresa (
    identificador serial not null primary key,
	cnpj varchar (20) unique not null,
	razao_social varchar(80) not null unique,
	nome_fantasia varchar(80),
	quantidade_colaborador integer not null,
	endereco varchar(200) not null,
	cep varchar(8) not null,
	geat_place_to_work boolean not null default false,
	data_abertura date not null, /* 2025-03-29 */
	faturamento float not null /*150 .50 */
)

    INSERT INTO laisa.empresa (
	cnpj,
	razao_social,
	nome_fantasia ,
	quantidade_colaborador ,
	endereco ,
	cep ,
	geat_place_to_work ,
	data_abertura,
	faturamento
	)

	VALUES (
    '19407411000124',
	'Luís e Evelyn Telecomunicações Ltda',
	'Luv Telecom',
	1000,
	'Rua Catarina Bressan Scarpin',
	'81220430',
	true,
	'2020-02-01',
	50.000
	)

	SELECT * FROM laisa.empresa;
------------------------------------------------------------------------------------------------

  INSERT INTO laisa.empresa (
	cnpj,
	razao_social,
	nome_fantasia ,
	quantidade_colaborador ,
	endereco ,
	cep ,
	geat_place_to_work ,
	data_abertura,
	faturamento
	)

	VALUES (
    '20740901000127',
	'Gabrielly e Murilo Fotografias Ltda',
	'Gaab Fotografias',
	5,
	'Rua Cajuri',
	'89040005',
	true,
	'2020-09-20',
	2.000
	)

	SELECT * FROM laisa.empresa;

	-------------------------------------------------------------------------------------------------

	 INSERT INTO laisa.empresa (
	cnpj,
	razao_social,
	nome_fantasia ,
	quantidade_colaborador ,
	endereco ,
	cep ,
	geat_place_to_work ,
	data_abertura,
	faturamento
	)

	VALUES (
    '78211567000102',
	'Bruna e Raquel Vidros ME',
	'BR Vidros',
	150,
	'Quadra 303 Sul Alameda 8',
	'77015394',
	true,
	'2020-09-05',
	60.000
	)

	SELECT * FROM laisa.empresa;
	----------------------------------------------------------------------------------------------
