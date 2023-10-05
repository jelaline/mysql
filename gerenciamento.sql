CREATE DATABASE Gerenciamento;

USE Gerenciamento;

CREATE TABLE Cursos (
    CursoID INT PRIMARY KEY,
    NomeCurso VARCHAR(255),
    Professor VARCHAR(255),
    DataInicio DATE,
    DataFim DATE
);


CREATE TABLE Alunos (
    Matricula INT PRIMARY KEY,
    NomeAluno VARCHAR(255),
    DataNascimento DATE,
    Endereco VARCHAR(255),
    Telefone VARCHAR(20)
);


CREATE TABLE Inscricoes (
    InscricaoID INT PRIMARY KEY,
    MatriculaAluno INT,
    CursoID INT,
    FOREIGN KEY (MatriculaAluno) REFERENCES Alunos(Matricula),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);


INSERT INTO Cursos (CursoID, NomeCurso, Professor, DataInicio, DataFim) VALUES
(1, 'Matemática', 'Jessica', '2023-01-01', '2023-05-30'),
(2, 'Desenvolvimento de Sistemas', 'Carlos', '2023-02-01', '2023-06-30'),
(3, 'Design', 'Ana', '2023-03-01', '2023-07-30'),
(4, 'Inglês', 'Maria', '2023-04-01', '2023-08-30'),
(5, 'Direito', 'Raiza', '2023-05-01', '2023-09-30');


INSERT INTO Alunos (Matricula, NomeAluno, DataNascimento, Endereco, Telefone) VALUES
(1, 'Paulo', '2000-01-01', 'Rua da Penha', '(71)98556-7815'),
(2, 'Ricardo', '2001-02-01', 'Rua Margarida', '(71)98675-5564'),
(3, 'Henrique', '2002-03-01', 'Avenida Luis', '(75)97653-4221'),
(4, 'Julia', '2003-04-01', 'Santo Inacio', '(75)98765-7654'),
(5, 'Amanda', '2004-05-01', 'Paripe', '(75)98657-3112');


INSERT INTO Inscricoes (InscricaoID, MatriculaAluno, CursoID) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 2, 2),
(4, 3, 4),
(5, 4, 5);


SELECT c.NomeCurso, a.NomeAluno
FROM Alunos a
JOIN Inscricoes i ON a.Matricula = i.MatriculaAluno
JOIN Cursos c ON i.CursoID = c.CursoID;