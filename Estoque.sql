CREATE DATABASE Estoque;

USE Estoque;

CREATE TABLE Produtos(
ProdutoID INT PRIMARY KEY,
Nome_Produto VARCHAR(50) NOT NULL,
Descricao VARCHAR(255) NOT NULL,
PrecoUnico DECIMAL(10,2) NOT NULL,
Estoque_Minimo INT NOT NULL
);

CREATE TABLE Fornecedores(
FornecedorID INT PRIMARY KEY,
NomeFornecedor VARCHAR(50),
Endereco VARCHAR(255),
Telefone VARCHAR(30),
Email VARCHAR(50) UNIQUE,
ProdutoID INT,
FOREIGN KEY (ProdutoID) REFERENCES Produtos (ProdutoID)
);


INSERT INTO Produtos (ProdutoID, Nome_Produto, Descricao, PrecoUnico, Estoque_Minimo)
VALUES 
(1, 'Camiseta', 'Camiseta de algodão preta', 29.99, 50),
(2, 'Calça Jeans', 'Calça jeans azul clara', 49.99, 30),
(3, 'Tênis esportivo', 'Tênis esportivo para corrida', 79.99, 20),
(4, 'Bolsa de couro', 'Bolsa de couro marrom com alças douradas', 89.99, 15),
(5, 'Relógio de pulso', 'Relógio de pulso analógico com pulseira de aço', 129.99, 10);

INSERT INTO Fornecedores (FornecedorID, NomeFornecedor, Endereco, Telefone, Email, ProdutoID)
VALUES 
(1, 'Michelle', 'Rua da penha', '(11) 1234-5678', 'michelle@gmail.com', 1),
(2, 'Carlos', 'Rua marechal', '(22) 9876-5432', 'carlos@gmail.com', 2),
(3, 'Jessica', 'Rua Castelo', '(33) 1111-2222', 'jessica@gmail.com', 3),
(4, 'Ana', 'Rua conceição', '(44) 3333-4444', 'ana@gmail.com', 4),
(5, 'Beatriz', 'Rua Imperatriz', '(55) 5555-6666', 'beatriz@gmail.com', 5);

SELECT Produtos.ProdutoID, Produtos.Nome_Produto, Produtos.Descricao, Produtos.PrecoUnico, Produtos.Estoque_Minimo,
Fornecedores.FornecedorID, Fornecedores.NomeFornecedor, Fornecedores.Endereco, Fornecedores.Telefone, Fornecedores.Email
FROM Produtos
INNER JOIN Fornecedores ON Produtos.ProdutoID = Fornecedores.ProdutoID;


