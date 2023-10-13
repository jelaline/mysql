CREATE DATABASE Empresarial;

USE Empresarial;


CREATE TABLE Funcionarios(
FuncionariosID INT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
Cargo VARCHAR(50) NOT NULL,
DataContratacao DATE NOT NULL,
Salario DECIMAL(10,2),
IdDepartamento INT,
FOREIGN KEY (IdDepartamento) REFERENCES Departamentos(DepartamentosID)
);

CREATE TABLE Dependentes(
DependentesID INT PRIMARY KEY,
Nome VARCHAR(50),
DataNascimento DATE,
FuncionariosID INT, 
FOREIGN KEY (FuncionariosID) REFERENCES Funcionarios(FuncionariosID) 
);

CREATE TABLE Departamentos(
DepartamentosID INT PRIMARY KEY,
Nome VARCHAR(50)
);

INSERT INTO Departamentos (DepartamentosID, Nome) VALUES
(1, 'Financeiro'),
(2, 'Logistico'),
(3, 'TI');

INSERT INTO Funcionarios (FuncionariosID, Nome, Cargo, DataContratacao, Salario, IdDepartamento) VALUES
(1, 'Jessica', 'Empresaria', '2023-11-27', 5000.00, 1),
(2, 'Marcelo', 'Vendedor', '2023-08-14', 6000.00, 2),
(3, 'Michelle', 'Desenvolvedora', '2021-10-15', 7000.00, 3);

INSERT INTO Dependentes (DependentesID, Nome, DataNascimento, FuncionariosID)
VALUES
(1, 'José', '2000-01-15', 1),
(2, 'Carlos', '2005-03-20', 1),
(3, 'Marta', '2010-06-10', 2);

SELECT
f.Nome AS NomeFuncionario,
d.Nome AS NomeDepartamento,
dp.Nome AS NomeDependente
FROM Funcionarios f
INNER JOIN Departamentos d ON f.IdDepartamento = d.DepartamentosID
LEFT JOIN Dependentes dp ON f.FuncionariosID = dp.FuncionariosID;






