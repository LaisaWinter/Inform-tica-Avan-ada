/*
* 1- Criação de tabela com nome e colunas (10) de escolha de vocês (obs: pelo menos 1 coluna deve ser do tipo enum)
* 2- Alterar 1 coluna da tabela (preferência de vocês também) (Alter Table)
* 3- Deletar 1 coluna da tabela (preferência de vocês também)
* 4- Inserir 5 registros na tabela criada
* 5- Alterar 5 registros criados (preferência de vocês também) (UpDate)
* 6- Deletar 3 registros (preferência de vocês também)
* 7- Consultar os registros que sobraram.
*/


/* nome da coluna - tipo do dado - caracteristica
varchar -> texto no geral
integer -> numero inteiro
float -> numero quebrado
boolean -> verdadeiro/faso
date -> datas
char -> caracter único
*/

/* 1- Criação de tabela com nome e colunas (10) de escolha de vocês (obs: pelo menos 1 coluna deve ser do tipo enum)*/
create table laisa.ficha_anamnese (
identificador serial not null primary key,
nome varchar (80) not null,
data_nascimento date not null,
profissao varchar (30) not null,
telefone varchar (30) not null,
e_whats boolean not null default false,
genero laisa.genero not null,
CPF varchar (50),
RG varchar (30),
endereco varchar (80)
lentes_contato not null default false,
)

/*1- (obs: pelo menos 1 coluna deve ser do tipo enum)*/
CREATE TYPE laisa.genero AS ENUM ('Feminino','Masculino');


/*4- Inserir 5 registros na tabela criada (todos os registros abaixo criados)*/
INSERT INTO laisa.ficha_anamnese (
nome,
data_nascimento,
profissao,
telefone,
e_whats,
genero,
CPF,
RG,
endereco,
lentes_contato
)

VALUES (
'Mariana Gonçalves',
'2005-02-27',
'Advogada',
'11998082050',
true,
'Feminino',
'01856318988',
'47586995',
'Rua Alcides dos Santos',
false
)

INSERT INTO laisa.ficha_anamnese (
nome,
data_nascimento,
profissao,
telefone,
e_whats,
genero,
CPF,
RG,
endereco,
lentes_contato
)

VALUES (
'João da Silva',
'2005-04-28',
'Engenheiro',
'11998082050',
true,
'Masculino',
'0596687789',
'88956214',
'João Pessoa',
false
)


INSERT INTO laisa.ficha_anamnese (
nome,
data_nascimento,
profissao,
telefone,
e_whats,
genero,
CPF,
RG,
endereco,
lentes_contato
)

VALUES (
'Helena da Luz',
'2000-01-23',
'Auxiliar Administrativo',
'33966584412',
false,
'Feminino',
'55866977852',
'52269871',
'São Joaquim',
false
)

INSERT INTO laisa.ficha_anamnese (
nome,
data_nascimento,
profissao,
telefone,
e_whats,
genero,
CPF,
RG,
endereco,
lentes_contato
)

VALUES (
'Maju de Oliveira',
'2000-09-25',
'Arquiteta',
'42988586798',
true,
'Feminino',
'05955877698',
'66987891',
'Rosa Gonçalves da Silva',
false
)

INSERT INTO laisa.ficha_anamnese (
nome,
data_nascimento,
profissao,
telefone,
e_whats,
genero,
CPF,
RG,
endereco,
lentes_contato
)

VALUES (
'Pedro Winter',
'2001-03-03',
'Eletrecista',
'2195587746',
true,
'Masculino',
'08566455970',
'77748956',
'Bento da Rocha',
false
)

/*5- Alterar 5 registros criados (preferência de vocês também) UpDate */
UPDATE laisa.ficha_anamnese SET cpf = '05966877892' WHERE identificador = 7;

UPDATE laisa.ficha_anamnese SET profissao = 'Costureira' WHERE identificador = 8;

UPDATE laisa.ficha_anamnese SET nome = 'Pedro Miguel Winter' WHERE identificador = 10;

UPDATE laisa.ficha_anamnese SET data_nascimento = '1999-09-25' WHERE identificador = 9

UPDATE laisa.ficha_anamnese SET endereco = 'São Joaquim Batista' WHERE identificador = 8;


/*2- Alterar 1 coluna da tabela (preferência de vocês também) (Alter Table)*/
ALTER TABLE laisa.ficha_anamnese RENAME COLUMN nome TO nome_completo;

/*Acrescentado coluna "lentes_contato"*/
ALTER TABLE laisa.ficha_anamnese ADD column lentes_contato boolean default false;

/*6- Deletar 1 coluna da tabela (preferência de vocês também)*/
DELETE FROM laisa.ficha_anamnese where identificador in (4)
/*Deletado colunas: 1,3,4,5,6 */



SELECT * FROM laisa.ficha_anamnese;
