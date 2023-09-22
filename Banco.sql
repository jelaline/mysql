CREATE DATABASE Banco;

USE Banco;

CREATE TABLE Clientes(
Cpf VARCHAR(11) PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Telefone VARCHAR(30) NOT NULL,
Email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE ContasBancarias(
NumeroConta INT PRIMARY KEY,
Agencia VARCHAR(50),
CpfCliente VARCHAR(11),
TipoConta VARCHAR (50),
Saldo DECIMAL(10,2),
FOREIGN KEY (CpfCliente) REFERENCES Clientes (Cpf)
);

INSERT INTO Clientes (Cpf, Nome, Telefone, Email) VALUES
('12345678901', 'Michelle', '(11) 1234-5678', 'joao@gmail.com'),
('23456789012', 'Jessica', '(22) 9876-5432', 'jessica@gmail.com'),
('34567890123', 'Pedro Oliveira', '(33) 6543-2109', 'pedro@gmail.com'),
('45678901234', 'Ana Pereira', '(44) 8765-4321', 'ana@gmail.com'),
('56789012345', 'Lucas Rodrigues', '(55) 4321-9876', 'lucas@gmail.com');

INSERT INTO ContasBancarias (NumeroConta, Agencia, CpfCliente, TipoConta, Saldo) VALUES
(1, '0004', '12345678901', 'Corrente', 1000.00),
(2, '0005', '23456789012', 'Poupança', 5000.00),
(3, '0006', '34567890123', 'Corrente', 1500.00),
(4, '0007', '45678901234', 'Poupança', 2000.00),
(5, '0008', '56789012345', 'Corrente', 3000.00);

SELECT 
C.nome AS 'Nome do Cliente',
 CB.saldo AS 'Saldo'
FROM Clientes C
JOIN ContasBancarias CB
 ON C.cpf = CB.CpfCliente;



