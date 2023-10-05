CREATE DATABASE Eventos;

USE Eventos;

CREATE TABLE Evento(
EventoID INT PRIMARY KEY,
NomeEvento VARCHAR(255),
DataEvento DATE,
Localizacao VARCHAR(255)
);


CREATE TABLE Participantes(
ParticipanteID INT PRIMARY KEY,
NomeParticipante VARCHAR(255),
Email VARCHAR(255),
Telefone VARCHAR(30)
);


CREATE TABLE InscricoesEventos(
InscricaoID INT PRIMARY KEY,
EventoID INT,
ParticipanteID INT,
FOREIGN KEY (EventoID) REFERENCES Evento(EventoID),
FOREIGN KEY (ParticipanteID) REFERENCES Participantes(ParticipanteID)
);

INSERT INTO Evento (EventoID, NomeEvento, DataEvento, Localizacao) VALUES
(1, 'desfile', '2023-11-01', 'São Paulo'),
(2, 'carnaval', '2023-02-26', 'Salvador'),
(3, 'ssa fest', '2023-09-27', 'Parque de Exposição'),
(4, 'arraia do galinho', '2024-06-25', 'Wet'),
(5, 'forro do lago', '2024-06-24', 'Santo Antonio de Jesus');

INSERT INTO Participantes (ParticipanteID, NomeParticipante, Email, Telefone) VALUES
(1, 'Jessica', 'jessica@gmail.com', '71 3533-2345'),
(2, 'Ivete', 'ivete@gmail.com', '75 3456-8765'),
(3, 'Polly', 'polly@gmail.com', '75 4567-3456'),
(4, 'Ana Castela', 'anac@gmail.com', '71 3789-2345'),
(5, 'Wesley', 'wesley@gmail.com', '71 3213-8765');

INSERT INTO InscricoesEventos (InscricaoID, EventoID, ParticipanteID) VALUES
(5, 4, 5),
(2, 1, 2),
(3, 2, 2),
(4, 3, 4),
(1,1,1);

SELECT e.NomeEvento, p.NomeParticipante
FROM Evento e
JOIN InscricoesEventos ie ON e.EventoID = ie.EventoID
JOIN Participantes p ON ie.ParticipanteID = p.ParticipanteID;



