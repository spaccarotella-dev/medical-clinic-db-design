CREATE DATABASE studio_medico;
USE studio_medico;

CREATE TABLE medici(
	codice_medico CHAR (16),
    nome VARCHAR(100),
    specializzazione VARCHAR (255),
    
	PRIMARY KEY (codice_medico)
);

CREATE TABLE pazienti(
	codice_paziente CHAR (16),
    nome VARCHAR (100),
    cognome VARCHAR (100),
    
    PRIMARY KEY (codice_paziente) 
);
CREATE TABLE ambulatori(
	codice_ambulatorio CHAR (16),
    nome VARCHAR (30),
    piano TINYINT,
    
    PRIMARY KEY (codice_ambulatorio)
);

CREATE TABLE visite(
	codice_prenotazione CHAR (16),
    data DATE,
    ora TIME,
    id_paziente CHAR (16),
    id_medico CHAR (16),
    id_ambulatorio CHAR (16),
    
    PRIMARY KEY (codice_prenotazione),
    FOREIGN KEY (id_paziente) REFERENCES pazienti(codice_paziente),
    FOREIGN KEY (id_medico) REFERENCES medici (codice_medico),   
    FOREIGN KEY (id_ambulatorio) REFERENCES ambulatori(codice_ambulatorio)
);

CREATE TABLE pagamenti(
	codice_pagamento CHAR(16),
    data DATE,
    importo DECIMAL(8,2),
    id_visita CHAR (16) UNIQUE,
    
    PRIMARY KEY (codice_pagamento),
    FOREIGN KEY (id_visita) REFERENCES visite (codice_prenotazione)
);
