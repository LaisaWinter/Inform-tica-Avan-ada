/*
1.Tabela: Curso
is_curso (PK)
nome_curso
carga_horaria

2. Tabela: Aluno 
id_aluno
nome
email

3, Tabela Matricula
id_matricula (PK)
id_aluno (FK -> Aluno. id_aluno)
id_curso (FK -> Curso. id_curso)
data_matricula
*/

CREATE TABLE laisa.curso (
    id serial primary key,
	nome_curso varchar (50),
	carga_horaria integer 
	)

CREATE TABLE laisa.aluno (
    id serial primary key,
	nome varchar (50),
	email varchar (80)
	)

CREATE TABLE laisa.matricula(
    id serial primary key,
	data_matricula date,
	id_aluno integer,
	     constraint fk_aluno
	     foreign key (id_aluno)
	     REFERENCES aluno (id),
    id_curso integer,
	     constraint fk_curso
		 foreign key (id_curso)
		 REFERENCES curso (id)
		 )
		 
INSERT INTO laisa.curso (
nome_curso,
carga_horaria
)

VALUES (
'Técnico em Estética',
'8'
)

INSERT INTO laisa.aluno (
nome,
email
)

VALUES (
'Isabela',
'isabela@gmail.com'
)

INSERT INTO laisa.matricula (
data_matricula
)

VALUES (
'2004/02/05'
)
