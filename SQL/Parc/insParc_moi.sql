-- Insertion table Segment --

INSERT INTO Segment
(indIP, nomSegment, etage)
VALUES 
('130.120.80','Brin RDC',NULL);
INSERT INTO Segment 
(indIP, nomSegment, etage)
VALUES 
('130.120.81','Brin 1er étage',NULL);
INSERT INTO Segment 
(indIP, nomSegment, etage)
VALUES 
('130.120.82','Brin 2e étage',NULL);

-- Insertion table Salle --

INSERT INTO Salle 
(nSalle, nomSalle, nbPoste, indIP)
VALUES
('s01', 'Salle 1', '3', '130.120.80');

INSERT INTO Salle 
(nSalle, nomSalle, nbPoste, indIP)
VALUES
('s02', 'Salle 2', '2', '130.120.80');

INSERT INTO Salle 
(nSalle, nomSalle, nbPoste, indIP)
VALUES
('s03', 'Salle 3', '2', '130.120.80');

INSERT INTO Salle 
(nSalle, nomSalle, nbPoste, indIP)
VALUES
('s11', 'Salle 11', '2', '130.120.81');

INSERT INTO Salle 
(nSalle, nomSalle, nbPoste, indIP)
VALUES
('s12', 'Salle 12', '1', '130.120.81');

INSERT INTO Salle 
(nSalle, nomSalle, nbPoste, indIP)
VALUES
('s21', 'Salle 21', '2', '130.120.82');

INSERT INTO Salle 
(nSalle, nomSalle, nbPoste, indIP)
VALUES
('s22', 'Salle 22', '0', '130.120.83');

INSERT INTO Salle 
(nSalle, nomSalle, nbPoste, indIP)
VALUES
('s23', 'Salle 23', '0', '130.120.83');










