CREATE database Empresa;

USE Empresa;


CREATE TABLE Clientes(
Id INT auto_increment PRIMARY KEY,
Nome varchar (255) NOT NULL,
Email VARCHAR (255) NOT NULL unique,
Telefone VARCHAR (22) NOT NULL,
Id_Endereco INT,
foreign key(Id_Endereco) REFERENCES Endereco(Id)
);

CREATE TABLE Enderecos (
Id int auto_increment primary key,
Logradouro VARCHAR (255) NOT NULL,
Cep VARCHAR (11) NOT NULL,
Numero VARCHAR (5),
Complemento VARCHAR (255),
Cidade VARCHAR (255)
);

