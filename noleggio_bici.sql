.header on
.mode column


DROP TABLE IF EXISTS Utenti;
CREATE TABLE Utenti
(
    ID_Utente INTEGER PRIMARY KEY,
    Nome TEXT NOT NULL,
    Cognome TEXT NOT NULL,
    Data_Nascita DATE,
    CF TEXT(16) NOT NULL UNIQUE,
    TEL TEXT(10),
    Indirizzo TEXT NOT NULL,
    Città TEXT NOT NULL,
    CAP INTEGER(5) NOT NULL UNIQUE,
    email TEXT,
    Num_CreditC INTEGER(16) NOT NULL UNIQUE,
    Scad_CreditC DATE NOT NULL,
    CVV INTEGER(3) NOT NULL
);

INSERT INTO Utenti(Nome,Cognome,CF,Indirizzo,Città,CAP,Num_CreditC,Scad_CreditC,CVV) VALUES ("Tal","dei Tali","TADTLI99R23F275Y","Via San Carlo, 98/F","Napoli","80123","4023987415453007",DATE('2022-03-22'),"452");

SELECT * FROM Utenti;


DROP TABLE IF EXISTS Biciclette;
CREATE TABLE Biciclette
(
    ID_Bicicletta INTEGER PRIMARY KEY,
    RFID TEXT(20) NOT NULL UNIQUE
);

INSERT INTO Biciclette(RFID) VALUES ("S936H1-846D,9366TD 25F");

SELECT * FROM Biciclette;