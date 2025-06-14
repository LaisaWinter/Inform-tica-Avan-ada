/* Autores -> Livros -> Empréstimo*/
/*Leitores -> Empréstimo*/

    CREATE TABLE laisa.leitores (
    id serial primary key,
    nome varchar (50),
	endereco varchar (80),
	idade integer,
	CPF varchar (50),
	RG varchar (30)
	)

	CREATE TABLE laisa.autores (
    id serial primary key,
    nome varchar (50),
	telefone varchar (30),
	profissao varchar (50),
	endereco varchar (80),
	genero laisa.genero
	)
	
	CREATE TYPE laisa.genero AS ENUM ('Feminino','Masculino');

	CREATE TABLE laisa.livros (
    id serial primary key,
	nome varchar (50),
	paginas integer,
	genero varchar (50),
	data_lancamento date,
	telefone varchar (80),
	id_autores integer,
	    constraint fk_autores
		foreign key (id_autores)
		REFERENCES autores (id)
	)

	CREATE TABLE laisa.emprestimo (
	id serial primary key,
	nome varchar (50),
	CPF varchar (50),
	RG varchar (50),
	data_emprestimo date,
	telefone varchar (50),
	id_livro integer,
	    constraint fk_livro
		foreign key (id_livro)
		REFERENCES livros (id),
	id_leitores integer,
	    constraint fk_leitores
		foreign key (id_leitores)
		REFERENCES leitores (id)
	)

	INSERT INTO laisa.leitores (
    nome,
	endereco,
	idade,
	CPF,
	RG
	)

	VALUES (
    'Isabela da Silva',
	'Rua Rosa Miranda',
	'21',
	'01856318988',
	'99965874'
	)

	INSERT INTO laisa.autores (
	nome,
    telefone,
	profissao,
	endereco,
	genero
	)

	VALUES (
    'Colleen Hoover',
	'42998082050',
	'Escritora',
	'Rua Marianna Rudolpho',
	'Feminino'
	)

	INSERT INTO laisa.livros (
	nome,
	paginas,
	genero,
	data_lancamento,
	telefone
	)

	VALUES (
    'Verity',
	'600',
	'Drama',
	'2005-02-27',
	'19998082050'
	)

	INSERT INTO laisa.emprestimo (
	nome,
	CPF,
	RG,
	data_emprestimo,
	telefone
    )

	VALUES (
    'Mariana Gonçalves',
	'04855655970',
	'56899758',
	'2017-08-22',
	'47988596325'
	)

	SELECT livros.nome AS "nome do livro", autores.nome AS "nome do autor" FROM laisa.livros INNER JOIN laisa.autores ON autores.id = livros.id_autores;

	UPDATE laisa.livros SET id_autores = 1;
