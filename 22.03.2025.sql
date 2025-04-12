/* nome da coluna - tipo do dado - caracteristica
varchar -> texto no geral
integer -> numero inteiro
float -> numero quebrado
boolean -> verdadeiro/faso
date -> datas
char -> caracter único
*/

create table laisa.produto (
  identificador serial not null primary key,
  nome varchar (80) not null,
  marca varchar (80) not null,
  categoria varchar (50) not null,
  peso float not null,
  perecivel boolean default false,
  custo float not null, 
  lote varchar (12) not null, 
  codigo_barra varchar (50) not null unique,
  data_validade date not null,
  data_fabricacao date not null,
  dados_complementares varchar (255),
  endereco_fabricante varchar (100) not null  
);

alter table laisa.produto alter column categoria type varchar (100);

alter table laisa.produto rename column codigo_barra to codigo_de_barra;

create table laisa.imovel (
 identificador serial not null primary key,
 nome varchar (80) not null,
 tipo varchar (50) not null,
 cidade varchar (20) not null,
 data_inauguracao date not null,
 endereco varchar (100) not null,
 andares integer not null,
 elevador boolean default false,
 quantidade_elevador integer not null,
 bloco varchar (50)
);

CREATE TYPE finalidade AS ENUM ('Venda' , 'Locação' );
CREATE TYPE estado AS ENUM ('PR', 'SC', 'RS');
