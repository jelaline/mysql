CREATE DATABASE Livraria;

SHOW DATABASES;


USE Livraria;

CREATE TABLE Livros(
Id INT AUTO_INCREMENT,
Autor VARCHAR (255) NOT NULL,
Sexo_Autor ENUM ('MASCULINO', 'FEMININO') NOT NULL,
Numero_Paginas INT NOT NULL,
Editora VARCHAR (255) NOT NULL,
Valor_Capa FLOAT NOT NULL,
Valor_Kindle FLOAT NOT NULL,
Ano_Publicacao INT NOT NULL,
PRIMARY KEY (Id)
);


INSERT INTO Livros VALUES
(DEFAULT, 'Robert T Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, '2018'),
(DEFAULT, 'Carlos S Dweck', 'Feminino', 312, 'Objetiva', 38.99, 14.95, '2017'),
(DEFAULT, 'Dale Carnegie', 'Masculino', 256, 'Sextante', 38.99, 33.24, '2019'),
(DEFAULT, 'Willian P Young', 'Masculino', 240, 'Arqueiro', 35.99, 17.90, '2008'),
(DEFAULT, 'Charles Duhigg', 'Masculino', 408, 'Objetiva', 42.99, 29.90, '2012'),
(DEFAULT, 'Robert C Martin', 'Masculino', 425, 'Alta Books', 91.99, 87.39, '2009'),
(DEFAULT, 'Greg Mckeown', 'Masculino', 272, 'Sextante', 53.58, 33.24, '2015'),
(DEFAULT, 'Nathalia Arcuri', 'Feminino', 176, 'Sextante', 32.86, 17.09, '2018'),
(DEFAULT, 'Simon Sinek', 'Masculino', 256, 'Sextante', 50.58, 24.90, '2018'),
(DEFAULT, 'Paulo Coelho', 'Masculino', 206, 'Paralela', 24.70, 14.70, '2017');


SELECT * FROM Livros;

