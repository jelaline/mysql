CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    NomeProduto VARCHAR(255),
    Descricao TEXT,
    Preco DECIMAL(10, 2)
);


CREATE TABLE Comentarios (
    ComentarioID INT PRIMARY KEY,
    ProdutoID INT,
    Autor VARCHAR(255),
    TextoComentario TEXT,
    DataComentario DATE,
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);


INSERT INTO Produtos (ProdutoID, NomeProduto, Descricao, Preco) VALUES
(1, 'perfume', 'lilly', 50.00),
(2, 'camisa', 'camisa do bahia', 75.00),
(3, 'calça', 'jeans claro', 100.00),
(4, 'relogio', 'Rolex', 120.00),
(5, 'tênis', 'all star', 90.00);


INSERT INTO Comentarios (ComentarioID, ProdutoID, Autor, TextoComentario, DataComentario) VALUES
(1, 1, 'Jessica', 'melhor perfume 2023', '2023-10-05'),
(2, 1, 'Michelle', 'mais barato do mercado', '2023-10-06'),
(3, 3, 'Caroline', 'melhor calça jeans', '2023-10-07'),
(4, 4, 'Manu', 'preço mais caro de relogio', '2023-10-08'),
(5, 2, 'Henrique', 'promo da camisa do tricolor', '2023-10-09');

SELECT p.ProdutoID, p.NomeProduto, COUNT(c.ComentarioID) AS NumeroComentarios
FROM Produtos p
LEFT JOIN Comentarios c ON p.ProdutoID = c.ProdutoID
GROUP BY p.ProdutoID, p.NomeProduto;