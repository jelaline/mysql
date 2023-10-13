CREATE DATABASE Sistema;

USE Sistema;

CREATE TABLE Clientes(
ClienteID INT PRIMARY KEY,
Nome VARCHAR(50) NOT NULL,
DataNascimento DATE NOT NULL,
Telefone VARCHAR(20) NOT NULL
);

CREATE TABLE Endereco(
EnderecoID INT PRIMARY KEY,
Logradouro VARCHAR(255),
Numero VARCHAR(45),
Cidade VARCHAR(50)
);

CREATE TABLE Sistemas(
SistemaID INT PRIMARY KEY,
EnderecoID INT,
ClientesID INT,
FOREIGN KEY (EnderecoID) REFERENCES Endereco(EnderecoID),
FOREIGN KEY (ClientesID) REFERENCES Clientes(ClienteID)
);

INSERT INTO Clientes (ClienteID, Nome, DataNascimento, Telefone)
VALUES (1, 'Jessica', '1998-11-27', '7198556-9876');

INSERT INTO Clientes (ClienteID, Nome, DataNascimento, Telefone)
VALUES (2, 'Marcos', '1997-05-15', '7196543-7864');

INSERT INTO Clientes (ClienteID, Nome, DataNascimento, Telefone)
VALUES (3, 'Raiza', '1996-09-30', '7598754-6543');

INSERT INTO Endereco (EnderecoID, Logradouro, Numero, Cidade)
VALUES (1, 'Rua da penha', '125', 'Salvador');

INSERT INTO Endereco (EnderecoID, Logradouro, Numero, Cidade)
VALUES (2, 'Rua Jardim', '456', 'RIo de Janeiro');

INSERT INTO Sistemas (SistemaID, ClienteID, EnderecoID)
VALUES (1, 1, 1); 

INSERT INTO Sistemas (SistemaID, ClienteID, EnderecoID)
VALUES (2, 1, 2); 

INSERT INTO Sistema (SistemaID, ClienteID, EnderecoID)
VALUES (3, 2, 1); 

INSERT INTO Sistemas (SistemaID, ClienteID, EnderecoID)
VALUES (4, 3, 2);

SELECT C.Nome AS NomeDoCliente
FROM Clientes C
JOIN Sistemas S ON C.ClienteID = S.ClientesID
GROUP BY C.ClienteID, C.Nome
HAVING COUNT(S.EnderecoID) = 2;







