CREATE DATABASE Escola;

USE Escola;

CREATE TABLE Escolas(
EscolaID INT PRIMARY KEY AUTO_INCREMENT,
Nome_Escola VARCHAR(255) NOT NULL,
Endereco VARCHAR(255) NOT NULL,
Telefone VARCHAR (25) NOT NULL
);

CREATE TABLE Alunos (
Matricula INT PRIMARY KEY,
Nome_Aluno VARCHAR(60),
Data_Nascimento DATE,
Endereco VARCHAR(255),
Telefone VARCHAR(25),
EscolaID INT,
FOREIGN KEY (EscolaID) REFERENCES Escolas(EscolaID)
);

INSERT INTO Escolas (Nome_Escola, endereco, telefone) VALUES 
('Sete de Setembro', 'Paripe', '123-456-7890'),
('Nelson Mandela', 'Periperi', '987-654-3210'),
('Barros Barreto', 'Paripe', '111-222-3333'),
('Central', 'Pituba', '444-555-6666'),
('Costa e Silva', 'Ribeira', '777-888-9999');

INSERT INTO alunos (matricula, Nome_Aluno, Data_Nascimento, endereco, telefone, EscolaID) VALUES
(1113, 'Jessica', '1998-11-27', 'Rua Marechal', '(71)98765-3421', 1),
(2121, 'Gabriel', '2001-02-02', 'Rua da penha', '(71)96463-6323', 2),
(3232, 'Vanessa', '2002-03-03', 'Avenida Luiz', '(75)96463-3632', 3),
(2323, 'Guilherme', '2003-04-04', 'Campo Grande', '(75)97645-4232', 4),
(5456, 'Marcos', '2004-05-05', 'Costa Azul', '(71)98746-4632', 5);

SELECT e.Nome_Escola, COUNT(a.Matricula) AS NumeroDeAlunos
FROM Escolas e
LEFT JOIN Alunos a ON e.EscolaID = a.EscolaID
GROUP BY e.EscolaID, e.Nome_Escola;



