CREATE TABLE laisa.estado (
    id serial primary key,
    nome varchar (50)
);

CREATE TABLE laisa.cidade (
    identificador serial primary key,
    nome varchar (100),
	id_estado integer,
	    constraint fk_estado
		foreign key (id_estado)
		REFERENCES estado (id)
);

INSERT INTO laisa.estado(
    nome)
	VALUES ('Paraná');
	
INSERT INTO laisa.estado(
    nome)
	VALUES ('Santa Catarina');

SELECT * FROM estado;

INSERT INTO laisa.cidade(
    nome, id_estado)
    VALUES ('União da Vitória', 1);

INSERT INTO laisa.cidade(
    nome, id_estado)
    VALUES ('Porto União', 2);

SELECT * FROM cidade;

-----------------------------------------------------------------------------

/*1 passo: Cria tabela de País
2 passo: alter table adicionando a coluna id_pais
3 passo: alter table adisicionando contraint
         add constraint fk_tests_students
         foreing key (highestStudent_id)
         REFERENCES students (student_id);
4 passo: inserir 2 registros na tabela de pais
5 passo: inserir 2 registros na tabela de estado*/

CREATE TABLE laisa.pais (
id serial primary key,
nome varchar (50)
);

ALTER TABLE laisa.estado ADD COLUMN id_pais integer;

ALTER TABLE laisa.estado ADD constraint fk_pais 
   foreign key (id_pais)
   REFERENCES laisa.pais (id);

INSERT INTO laisa.pais(
nome)
VALUES ('Brasil');

INSERT INTO laisa.pais(
nome)
VALUES ('Estados Unidos');

INSERT INTO laisa.estado(
    nome,  id_pais)
    VALUES ('São Paulo',1);

INSERT INTO laisa.estado(
    nome,  id_pais)
    VALUES ('Rio Grande do Sul',2);

-----------------------------------------------------------------------
