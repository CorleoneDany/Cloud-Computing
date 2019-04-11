ALTER TABLE Segment ADD(nbSalle TINYINT(2) DEFAULT 0,
nbPoste TINYINT(2) DEFAULT 0 
);

ALTER TABLE Logiciel ADD(nbInstall TINYINT(2) DEFAULT 0);

ALTER TABLE Poste ADD(nbLog TINYINT(2) DEFAULT 0);

ALTER TABLE Salle MODIFY COLUMN nomSalle VARCHAR(30);

ALTER TABLE Segment MODIFY COLUMN nomSegment VARCHAR(15);

ALTER TABLE Segment MODIFY COLUMN nomSegment VARCHAR(14);

-- Erreur : Data truncated for column 'nomSegment' at row 2 --

ALTER TABLE Poste ADD 
CONSTRAINT indIP FOREIGN KEY 
REFERENCES Segment(indIP);  