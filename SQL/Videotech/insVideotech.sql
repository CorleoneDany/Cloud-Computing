-- Insertion données table film

INSERT INTO FILM 
VALUES ('1','SUBWAY','POLICIER','DRAME','1985-10-04','1','1','GAUMONT','Contre les aventures de la population souterraine dans les couloirs du métro parisien.');
INSERT INTO FILM 
VALUES ('2','NIKITA','DRAME','ROMANTIQUE','1990-02-21','1','1','GAUMONT','Nikita condamnée à la prison à perpétuité est contrainte à travailler secrètement pour le gouvernement en tant que
agent hautement qualifié des services secrets.');
INSERT INTO FILM
VALUES ('3','STAR WARS 6 - LE RETOUR DU JEDI','ACTION','SF','1983-10-19','2','2','20th Century Fox','L’empire galactique est plus puissant que jamais : la construction de la nouvelle arme, l’Etoile de la Mort, menace
l’univers tout entier.');
INSERT INTO FILM
VALUES ('4','AVATAR','ACTION','SF','2009-10-16','2','3','20th Century Fox','Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus
profond.');
INSERT INTO FILM
VALUES ('5','BIENVENUECHEZ LES CH’TIS','COMEDIE','','2008-02-27','1','4','PATHE','Philippe Abrams, directeur de la poste de Salon-de-Provence, est muté dans le Nord.');

-- Insertion données table acteur

INSERT INTO ACTEUR
VALUES ('1','ADJANI','ISABELLE','1955-06-27','42','1');
INSERT INTO ACTEUR
VALUES ('2','LAMBERT','CRISTOPHE','1957-03-29','64','1');
INSERT INTO ACTEUR
VALUES ('3','BOHNRINGER','RICHARD','1942-06-16','132','1');
INSERT INTO ACTEUR
VALUES ('4','GALABRU','MICHEL','1922-10-27','277','1');
INSERT INTO ACTEUR
VALUES ('5','PARILLAUD','ANNE','1960-05-06','35','1');
INSERT INTO ACTEUR
VALUES ('6','FORD','HARRISON','1942-06-13','64','2');
INSERT INTO ACTEUR
VALUES ('7','FISHER','CARRIE','1956-10-21','74','2');
INSERT INTO ACTEUR
VALUES ('8','SALDANA','ZOE','1978-06-19','31','2');
INSERT INTO ACTEUR
VALUES ('9','WEAVER','SIGOURNEY','1949-10-08','66','2');
INSERT INTO ACTEUR
VALUES ('10','RENO','JEAN','1948-06-30','75','1');
INSERT INTO ACTEUR
VALUES ('11','BOON','DANY','1966-06-26','23','1');
INSERT INTO ACTEUR
VALUES ('12','MERAD','KAD','1964-03-27','55','3');

-- Insertion données table statistique 

INSERT INTO STATISTIQUE
VALUES ('1','104','2917562','390659','1272637','2,6');
INSERT INTO STATISTIQUE 
VALUES ('2','118','3787845','5017971','0','7,6');
INSERT INTO STATISTIQUE
VALUES ('3','133','4263000','191648000','472000000','32');
INSERT INTO STATISTIQUE
VALUES ('4','170','12018251','760505847','2946271769','237');
INSERT INTO STATISTIQUE
VALUES ('5','100','21000000','0','245000000','11');

-- Insertion données table statistique 

INSERT INTO REALISATEUR 
VALUES ('1','BESSON','LUC','1959-03-18','40','99','1');
INSERT INTO REALISATEUR 
VALUES ('2','LUCAS','GEORGES','1944-05-14','79','64','2');
INSERT INTO REALISATEUR 
VALUES ('3','CAMERON','JAMES','1954-08-16','22','23','2');
INSERT INTO REALISATEUR 
VALUES ('4','BOON','DANY','1966-06-26','5','1','1');

-- Insertion données table casting

INSERT INTO CASTING 
VALUES ('1','1','HELENA','100');
INSERT INTO CASTING 
VALUES ('1','2','FRED','100');
INSERT INTO CASTING 
VALUES ('1','3','INSPECTEUR GESBERG','NULL');
INSERT INTO CASTING 
VALUES ('1','4','LE FLEURISTE','35');
INSERT INTO CASTING 
VALUES ('1','10','LE BATTEUR','20');
INSERT INTO CASTING 
VALUES ('2','5','NIKITA','68');
INSERT INTO CASTING 
VALUES ('2','10','VICTOR LE NETTOYEUR','9');
INSERT INTO CASTING 
VALUES ('3','6','HAN SOLO','201');
INSERT INTO CASTING 
VALUES ('3','7','PRINCESSE LEIA','203');
INSERT INTO CASTING 
VALUES ('4','8','NEYTIRI','50');
INSERT INTO CASTING 
VALUES ('4','9','DR. GRACE AUGUSTINE','45');
INSERT INTO CASTING 
VALUES ('5','10','ANTOINE BAILLEUL','125');
INSERT INTO CASTING 
VALUES ('5','11','PHILIPPE ABRAMS','126');