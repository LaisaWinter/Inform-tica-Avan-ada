CREATE TABLE laisa.pais (
id smallserial primary key,
nome (varchar)
);

CREATE TABLE laisa.estado (
id serial primary key,
nome varchar (100),
id_pais smallint,
CONSTRAINT fk_pais
FOREIGN KEY (id_pais)
REFERENCES laisa.pais (id)
);

CREATE TABLE laisa.cidade (
id serial primary key,
nome varchar (150),
id_estado integer
CONSTRAINT fk_estado
FOREIGN KEY (id_estado)
REFERENCES laisa.estado (id)

INSERT INTO laisa.pais (nome) VALUES 
('Brasil'),
('Argentina'),
('Portugal');

INSERT INTO laisa.estado (nome, id_estado) VALUES 
('São paulo', 1),
('Rio de Janeiro', 1)
('Buenos Aires', 2),
('Coedoba', 2),
('Lisboa', 3),
('Porto', 3);

INSERT INTO laisa.cidade (nome, id_estado) VALUES
('São Paulo', 1),
('Campinas', 1),
('Rio de Janeiro', 2),
('Niterói', 2),
('Buenos Aires', 3),
('La Plata', 3),
(1Cordoba', 4)
('Villa Carlos Paz', 4),
('Lisboa', 5)
('Porto', 5);
