/*
* Criação de tabela com nome e colunas (10) de escolha de vocês (obs: pelo menos 1 coluna deve ser do tipo enum)
* Alterar 1 coluna da tabela (preferência de vocês também) (Alter Table)
* Deletar 1 coluna da tabela (preferência de vocês também)
* Inserir 5 registros na tabela criada
* Alterar 5 registros criados (preferência de vocês também) (UpDate)
* Deletar 3 registros (preferência de vocês também)
* Consultar os registros que sobraram.
*/


/* nome da coluna - tipo do dado - caracteristica
varchar -> texto no geral
integer -> numero inteiro
float -> numero quebrado
boolean -> verdadeiro/faso
date -> datas
char -> caracter único
*/


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

CREATE TYPE laisa.genero AS ENUM ('Feminino','Masculino');

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

/*dar continuidade aqui*/

ALTER TABLE laisa.ficha_anamnese ADD column lentes_contato boolean default false;

DELETE FROM laisa.ficha_anamnese where identificador in (4)



SELECT * FROM laisa.ficha_anamnese;
