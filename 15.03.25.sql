/* nome da coluna - tipo do dado - caracteristica
varchar -> texto no geral
integer -> numero inteiro
float -> numero quebrado
boolean -> verdadeiro/faso
date -> datas
char -> caracter único
*/

create table laisa.cidade (
   identificador serial not null primary key,
   nome varchar(100) not null,
   estado varchar (50) not null,
   populacao integer not null
)

create table laisa.pessoa (
identificador serial not null primary key,
nome varchar(100) not null,
idade integer not null,
data_de_nascimento date not null,
endereco varchar not null
)
