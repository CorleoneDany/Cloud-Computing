CREATE DATABASE IF NOT EXISTS immobilier CHARACTER SET 'utf8';
USE immobilier;

CREATE TABLE IF NOT EXISTS agence (
  idAgence int(6) NOT NULL AUTO_INCREMENT,
  nom varchar(100) NOT NULL,
  adresse varchar(100) NOT NULL,
  CONSTRAINT PK_agence PRIMARY KEY (idAgence)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

CREATE TABLE IF NOT EXISTS demande (
  idDemande int(5) NOT NULL AUTO_INCREMENT,
  idPersonne int(3) NOT NULL,
  genre varchar(100) NOT NULL,
  ville varchar(100) NOT NULL,
  budget int(7) NOT NULL,
  superficie int(5) NOT NULL,
  categorie varchar(100) NOT NULL,
  CONSTRAINT PK_demande PRIMARY KEY (idDemande)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

CREATE TABLE IF NOT EXISTS logement (
  idLogement int(4) NOT NULL AUTO_INCREMENT,
  genre varchar(100) NOT NULL,
  ville varchar(100) NOT NULL,
  prix int(7) NOT NULL,
  superficie int(5) NOT NULL,
  categorie varchar(100) NOT NULL,
  CONSTRAINT PK_logement PRIMARY KEY (idLogement)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS logement_agence (
  idLogementAgence int(5) NOT NULL AUTO_INCREMENT,
  idAgence int(6) NOT NULL,
  idLogement int(4) NOT NULL,
  frais int(7) NOT NULL,
  CONSTRAINT PK_logementAgence PRIMARY KEY (idLogementAgence)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

CREATE TABLE IF NOT EXISTS logement_personne (
  idLogementPersonne int(5) NOT NULL AUTO_INCREMENT,
  idPersonne int(3) NOT NULL,
  idLogement int(4) NOT NULL,
  PRIMARY KEY (idLogementPersonne)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

CREATE TABLE IF NOT EXISTS personne (
  idPersonne int(3) NOT NULL AUTO_INCREMENT,
  prenom varchar(100) NOT NULL,
  CONSTRAINT PK_personne PRIMARY KEY (idPersonne)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;

-- ajout des contraintes
ALTER TABLE demande ADD
	CONSTRAINT FK_demande_personne FOREIGN KEY (idPersonne)
		REFERENCES personne(idPersonne);

ALTER TABLE logement_agence ADD
	CONSTRAINT FK_logementAgence_agence FOREIGN KEY (idAgence)
		REFERENCES agence(idAgence);
		
ALTER TABLE logement_agence ADD
	CONSTRAINT FK_logementAgence_logement FOREIGN KEY (idlogement)
		REFERENCES logement(idLogement);
		
ALTER TABLE logement_personne ADD
	CONSTRAINT FK_logementPersonne_personne FOREIGN KEY (idPersonne)
		REFERENCES personne(idPersonne);
		
ALTER TABLE logement_personne ADD
	CONSTRAINT FK_logementpersonne_logement FOREIGN KEY (idlogement)
		REFERENCES logement(idLogement);

ALTER TABLE logement_personne ADD
		CONSTRAINT U_logementPersonne_idLogement UNIQUE (idLogement);

-- insertion des valeurs dans les tables
INSERT INTO agence (idAgence, nom, adresse) VALUES
(257400, 'logic-immo', 'rue logic'),
(383505, 'century21', 'rue century'),
(504585, 'laforet', 'rue laforet'),
(544688, 'fnaim', 'rue fnaim'),
(608870, 'orpi', 'rue orpi'),
(654178, 'foncia', 'rue foncia'),
(654658, 'guy-hoquet', 'rue guy-hoquet'),
(654893, 'seloger', 'rue seloger'),
(692702, 'bouygues immobilier', 'rue bouygues');

INSERT INTO personne (idPersonne, prenom) VALUES
(1, 'william'),
(2, 'gaetan'),
(3, 'mehdi'),
(4, 'charles'),
(5, 'brigitte'),
(6, 'sarah'),
(7, 'lucas'),
(8, 'quentin'),
(9, 'patrick'),
(10, 'emmanuel'),
(11, 'elodie'),
(12, 'agathe'),
(13, 'valentine'),
(14, 'charlotte'),
(15, 'alice'),
(16, 'samuel'),
(17, 'mathieu'),
(18, 'noemie'),
(19, 'simon'),
(20, 'florian'),
(21, 'clement'),
(22, 'yvon'),
(23, 'lea'),
(24, 'chloe'),
(25, 'camille'),
(26, 'alexandre'),
(27, 'julie'),
(28, 'leo'),
(29, 'antoine'),
(30, 'lola'),
(31, 'celia'),
(32, 'anna'),
(33, 'caroline'),
(34, 'adele'),
(35, 'sabrina'),
(36, 'nathalie'),
(37, 'franck'),
(38, 'tom'),
(39, 'johan'),
(40, 'priscillia'),
(41, 'assia'),
(42, 'nathan'),
(43, 'aurore'),
(44, 'marie'),
(45, 'oceane'),
(46, 'enzo'),
(47, 'ines'),
(48, 'hugo'),
(49, 'jonathan'),
(50, 'axelle'),
(51, 'morgane'),
(52, 'melissa'),
(53, 'kevin'),
(54, 'ophelie'),
(55, 'victoria'),
(56, 'alexis'),
(57, 'robin');

INSERT INTO demande (idDemande, idPersonne, genre, ville, budget, superficie, categorie) VALUES
(1, 1, 'appartement', 'paris', 530000, 120, 'vente'),
(2, 3, 'appartement', 'bordeaux', 120000, 18, 'vente'),
(3, 4, 'appartement', 'bordeaux', 145000, 21, 'vente'),
(4, 5, 'appartement', 'bordeaux', 172000, 26, 'vente'),
(5, 6, 'appartement', 'lyon', 450000, 55, 'vente'),
(6, 7, 'appartement', 'paris', 600000, 55, 'vente'),
(7, 9, 'appartement', 'paris', 371000, 40, 'vente'),
(8, 13, 'appartement', 'paris', 253000, 25, 'vente'),
(9, 16, 'appartement', 'paris', 162000, 15, 'vente'),
(10, 19, 'appartement', 'paris', 720000, 80, 'vente'),
(11, 22, 'appartement', 'lyon', 680, 20, 'location'),
(12, 25, 'appartement', 'lyon', 558000, 65, 'vente'),
(13, 27, 'appartement', 'paris', 490, 15, 'location'),
(14, 28, 'appartement', 'paris', 1100000, 100, 'vente'),
(15, 31, 'appartement', 'paris', 145000, 15, 'vente'),
(16, 32, 'appartement', 'lyon', 123800, 21, 'vente'),
(17, 35, 'appartement', 'lyon', 690000, 70, 'vente'),
(18, 37, 'appartement', 'lyon', 1500, 100, 'location'),
(19, 43, 'appartement', 'paris', 600, 20, 'location'),
(20, 44, 'appartement', 'paris', 750, 30, 'location'),
(21, 45, 'appartement', 'bordeaux', 680, 30, 'location'),
(22, 46, 'appartement', 'bordeaux', 413000, 40, 'vente'),
(23, 47, 'appartement', 'bordeaux', 700, 45, 'location'),
(24, 48, 'appartement', 'paris', 495000, 40, 'vente'),
(25, 49, 'appartement', 'paris', 650000, 60, 'vente'),
(26, 50, 'appartement', 'lyon', 110000, 12, 'vente'),
(27, 51, 'appartement', 'lyon', 500, 17, 'location'),
(28, 52, 'appartement', 'paris', 800, 40, 'location'),
(29, 53, 'appartement', 'paris', 850, 50, 'location'),
(30, 54, 'appartement', 'paris', 377500, 40, 'vente'),
(31, 55, 'appartement', 'paris', 630, 20, 'location');

INSERT INTO logement (idLogement, genre, ville, prix, superficie, categorie) VALUES
(5067, 'appartement', 'paris', 685000, 61, 'vente'),
(5089, 'appartement', 'paris', 115000, 15, 'vente'),
(5091, 'maison', 'paris', 1510000, 130, 'vente'),
(5122, 'appartement', 'bordeaux', 550, 17, 'location'),
(5189, 'appartement', 'lyon', 420, 14, 'location'),
(5245, 'appartement', 'paris', 360000, 40, 'vente'),
(5246, 'appartement', 'paris', 970, 35, 'location'),
(5249, 'appartement', 'lyon', 110000, 16, 'vente'),
(5269, 'appartement', 'bordeaux', 171500, 33, 'vente'),
(5278, 'appartement', 'paris', 802000, 90, 'vente'),
(5324, 'appartement', 'lyon', 1090, 31, 'location'),
(5336, 'appartement', 'bordeaux', 229600, 27, 'vente'),
(5378, 'appartement', 'bordeaux', 121900, 26, 'vente'),
(5412, 'appartement', 'paris', 1680, 40, 'location'),
(5636, 'appartement', 'paris', 370000, 37, 'vente'),
(5661, 'appartement', 'bordeaux', 248600, 36, 'vente'),
(5723, 'maison', 'bordeaux', 370600, 45, 'vente'),
(5770, 'appartement', 'paris', 339000, 38, 'vente'),
(5778, 'appartement', 'bordeaux', 228600, 43, 'vente'),
(5779, 'appartement', 'paris', 1310000, 105, 'vente'),
(5786, 'appartement', 'paris', 570, 20, 'location'),
(5860, 'appartement', 'bordeaux', 98000, 18, 'vente'),
(5869, 'appartement', 'lyon', 683600, 60, 'vente'),
(5873, 'appartement', 'lyon', 676700, 65, 'vente'),
(5898, 'appartement', 'paris', 1890, 40, 'location'),
(5961, 'appartement', 'bordeaux', 2650, 45, 'location'),
(5963, 'appartement', 'paris', 520000, 60, 'vente'),
(5964, 'appartement', 'paris', 280000, 38, 'vente');

INSERT INTO logement_agence (idLogementAgence, idAgence, idLogement, frais) VALUES
(1, 257400, 5067, 34250),
(2, 383505, 5067, 30000),
(3, 257400, 5089, 5750),
(4, 692702, 5089, 7623),
(5, 654178, 5091, 75500),
(6, 544688, 5091, 56050),
(7, 654893, 5122, 700),
(8, 608870, 5189, 350),
(9, 257400, 5245, 18856),
(10, 544688, 5245, 14230),
(11, 608870, 5246, 800),
(12, 257400, 5249, 5500),
(13, 608870, 5249, 7625),
(14, 257400, 5269, 9500),
(15, 544688, 5269, 8575),
(16, 544688, 5278, 25689),
(17, 608870, 5278, 40100),
(18, 544688, 5324, 600),
(19, 544688, 5336, 9542),
(20, 608870, 5336, 11480),
(21, 504585, 5378, 8652),
(22, 608870, 5378, 6095),
(23, 257400, 5412, 680),
(24, 544688, 5636, 18500),
(25, 608870, 5636, 13654),
(26, 654893, 5661, 9462),
(27, 654178, 5661, 11656),
(28, 608870, 5723, 16233),
(29, 504585, 5723, 19654),
(30, 692702, 5770, 13655),
(31, 654178, 5770, 16950),
(32, 383505, 5778, 11430),
(33, 654658, 5778, 12655),
(34, 654178, 5779, 65500),
(35, 654658, 5779, 45032),
(36, 654178, 5786, 898),
(37, 383505, 5786, 520),
(38, 257400, 5860, 4900),
(39, 654658, 5860, 8905),
(40, 544688, 5869, 23685),
(41, 654893, 5869, 34180),
(42, 257400, 5873, 33835),
(43, 257400, 5898, 900),
(44, 383505, 5898, 250),
(45, 692702, 5898, 1300),
(46, 257400, 5961, 1240),
(47, 504585, 5961, 300),
(48, 692702, 5961, 890),
(49, 257400, 5963, 27542),
(50, 692702, 5963, 26000),
(51, 383505, 5963, 18455);

INSERT INTO logement_personne (idLogementPersonne, idPersonne, idLogement) VALUES
(1, 40, 5067),
(2, 41, 5089),
(3, 42, 5091),
(4, 2, 5122),
(5, 39, 5189),
(6, 7, 5245),
(7, 8, 5246),
(8, 10, 5249),
(9, 18, 5269),
(10, 21, 5278),
(11, 17, 5324),
(12, 36, 5336),
(13, 20, 5378),
(14, 29, 5412),
(15, 24, 5636),
(16, 34, 5661),
(17, 14, 5723),
(18, 57, 5770),
(19, 26, 5778),
(20, 56, 5779),
(21, 12, 5786),
(22, 11, 5860),
(23, 23, 5869),
(24, 38, 5873),
(25, 33, 5898),
(26, 15, 5961),
(27, 30, 5963),
(28, 56, 5964);

-- requetes de selection

-- affichez le nom des agences
select nom from agence;

-- affichez le numéro de l'agence "ORPI"
select idAgence from agence where nom='orpi';

-- affichez le premier enregistrement de la table logement
select * from logement order by idLogement limit 0,1;

-- affichez le nombre de logements (alias : Nombre_de_logement)
select count(*) as 'Nombre_de_logement' from logement;

-- affichez les logements à vendre à moins de 150000 euros 
-- dans l'ordre croissant des prix

select * from logement 
	where categorie='vente' 
	and prix < 150000 order by prix;


-- affichez le nombre de logements à la location (alias : nombre)
select count(idLogement) as 'nombre' from logement where categorie='location';


-- affichez les villes différentes recherchées par 
-- les personnes demandeuses d'un logement

select distinct ville from demande;


-- afficher le nombre de biens à vendre par ville
select ville, count(ville) from demande
where categorie='vente' group by ville;

-- quelles sont les id des logements destinés à la location ?
select idlogement from logement where categorie='location';

-- quels sont les id des logements entre 20 et 30 m2 ?
select idlogement from logement where superficie between 20 and 30;

-- quel est le prix vendeur(hors commission) du logement le moins cher
-- à vendre (alias : prix minimum)
select min(prix) as 'prix minimum' from logement 
where categorie = 'vente';

-- dans quel ville se trouve les maisons à vendre ?
select genre, ville from logement where genre='maison';

-- l'agence orpi souhaite diminuer les frais qu'elle applique
-- sur le logement ayant l'id "5246".
-- passer les frais de ce logement de 800 euros à 730 euros
update logement_agence set frais='730'
where idLoement= 5246 
and idAgence = (select idAgence from agence where nom = 'orpi');

-- quels sont les logements gérés par l'agence "laforet"
select idlogement from logement_agence 
where idAgence = (select idAgence from agence where nom='laforet');

select idLogement from logement_agence la, agence a 
where la.idAgence = a.idAgence
and nom='laforet';

select idLogement from logement_agence la inner join agence a
on la.idAgence = a.idAgence where nom='laforet';

-- affichez le nombre de propriétaires dans la ville de paris
select count(distinct(lp.idPersonne))
from logement_personne lp, logement l
where lp.idLogement=l.idLogement and l.ville = 'paris';
-- afficher les infos des trois premieres personnes 
-- souhaitant acheter un logement
select p.*, d.*
from personne p inner join demande d on p.idPersonne=d.idPersonne
and d.categorie='vente' limit 0,3;

-- affichez le prénom du vendeur pour le logement ayantrt
--  la référence "5770"
select p.prenom
from logement_personne lp, personne p 
where lp.idPersonne=p.idPersonne and lp.idLogement = 5770;

-- affichez les prénoms des personnes souhaitant accéder à un logement
-- sur la ville de lyon
select prenom
from personne p, demande d
where p.idpersonne=d.idpersonne
and ville='lyon';

--affichez les prénoms des personnes souhaitant accéder
-- à un logement  en location sur la ville de paris
select prenom
from personne p, demande d
where p.idpersonne=d.idpersonne
and categorie='location'
and ville='paris';

-- affichez les prénoms des personnes souhaitant acheter un 
-- logement de la plus grande à la plus petite superficie
select prenom
from personne p, demande d
where p.idpersonne=d.idpersonne
and categorie='vente'
order by 'superficie';

-- Quel sont les prix finaux proposés par les agences pour 
-- la maison à la vente ayant la référence « 5091 » ? (Alias : prix frais d'agence inclus) 
select l.idlogement, prix+frais prix_frais_d_agence_inclus
from logement l, logement_agence la
where l.idlogement=la.idlogement
and categorie='vente'
and l.idlogement=5091;

-- Indiquez les frais ajoutés par l’agence immobilière 
-- pour le logement ayant la référence « 5873 » ?
select l.idlogement, frais
from logement l, logement_agence la
where l.idlogement=la.idlogement
and categorie='vente'
and l.idlogement=5873;

-- Si l’ensemble des logements étaient vendus ou loués demain, 
--  quel serait le bénéfice généré grâce aux frais d’agence et pour 
-- chaque agence (Alias : benefice, classement : par ordre croissant des gains)
select nom, sum(frais)
from agence a, logement_agence la
where a.idagence=la.idagence
group by a.nom;

-- Affichez les id des biens en location, les prix, suivis des 
-- frais d’agence (classement : dans l’ordre croissant des prix)
select l.idLogement, prix, frais
from logement_agence la, logement l
where la.idlogement=l.idlogement
and categorie='location'
order by prix;

-- Quel est le prénom du propriétaire proposant le logement le moins cher à louer ?
select l.idLogement, prix, prenom
from logement_agence la, logement l, personne p
where la.idlogement=l.idlogement=p.idpersonne
and categorie='location'
and prix=(
  select min(prix)
  from logement
);

-- Affichez le prénom et la ville où se trouve le logement de chaque propriétaire
select prenom, l.idlogement, ville
from logement l, personne p, logement_personne lp
where l.idlogement=lp.idlogement
and p.idpersonne=lp.idpersonne;

-- Quel est l’agence immobilière s’occupant de la plus grande gestion de logements répertoriés à Paris ? 
-- (alias : nombre, classement : trié par ordre décroissant)
select nom, ville, count(la.idlogement) nombre
from agence a, logement l, logement_agence la
where a.idagence=la.idagence
and  l.idlogement=la.idlogement
and ville='paris'
group by nom
order by nombre desc;


-- Affichez le prix et le prénom des vendeurs dont les logements sont proposés à 130000 euros 
-- ou moins en prix final avec frais appliqués par les agences 
-- (alias : prix final, classement : ordre croissant des prix finaux)
select l.idlogement, (l.prix+la.frais) prix_final, prenom
from personne p, logement l, logement_agence la, logement_personne lp
where  l.idlogement=la.idlogement
and p.idpersonne=lp.idpersonne
and (l.prix+la.frais)<=130000
order by (l.prix+la.frais);

-- Affichez le nombre de logements à la vente dans la ville de recherche 
-- de « hugo » (alias : nombre)

select l.ville, count(l.idlogement) nombre
from logement l
where l.ville=(
  select d.ville
  from personne p, demande d
  where p.idpersonne=d.idpersonne
  and p.prenom='hugo'
)
group by ville;

-- Affichez le nombre de logements à la vente dans la ville de recherche de « hugo » et dans la superficie minimum 
-- qu’il attend ou dans une superficie supérieure (alias : nombre)

select l.ville, count(l.idlogement) nombre
from logement l, demande d, personne p
where l.ville=(
  select d.ville
)
and l.superficie>=(
  select d.superficie
)
and d.idpersonne=p.idpersonne
and p.prenom='hugo'
group by l.ville;

-- Affichez le nombre d’opportunités d’achats dans la ville de recherche de « hugo » 
-- dans la superficie minimum qu’il attend ou dans une superficie supérieure et 
-- en prenant en compte tous ses autres critères de sélection (alias : nombre)

select l.ville, count(l.idlogement) nombre
from logement l, demande d, personne p
where l.ville=(
  select d.ville
)
and l.superficie>=(
  select d.superficie
)
and l.prix<=(
  select d.budget
)
and l.categorie='vente'
and d.idpersonne=p.idpersonne
and p.prenom='hugo'
group by l.ville;

-- Affichez les prénoms des personnes souhaitant accéder à un logement en location 
-- sur la ville de Paris

select p.prenom
from personne p, demande d
where p.idpersonne=d.idpersonne
and ville='Paris'
and categorie='location';

-- En prenant en compte le « fichier client » avec leurs critères de sélection 
-- répertoriés sur la table « demande », quelle est l’agence immobilière susceptible 
-- de faire le plus de ventes ? (alias : nombre)


-- Affichez les prénoms des personnes cherchant un logement ainsi que les noms des agences 
-- (s’occupant de la gestion des logements) pour une mise en relation dans le cadre d'une 
-- susceptible location immobilière (tout en affichant les informations qui permettront 
-- de mettre en évidence une première année d'éventuels contrats, voir résultat)  


-- Affichez les prénoms des acheteurs potentiels, les prénoms des vendeurs ainsi que les 
-- agences s’occupant de la gestion de leurs logements pour une mise en relation dans le 
-- cadre d'une susceptible vente immobilière (tout en affichant les informations qui 
-- permettront de mettre en évidence cette éventuelle transaction, voir résultat)



-- Supprimer la personne n°idPersonne 13 (Valentine)



-- Afficher toutes les demandes enregistrées avec la personne à l'origine de la demande 
-- (Afficher également les demandes d'anciennes personnes n'existant plus dans notre 
-- base de données)



-- Afficher toutes les personnes enregistrées avec leur demandes correspondantes 
-- (Afficher également les personnes n'ayant pas formulé de demandes)



-- Affichez toutes les personnes enregistrées avec leur demandes correspondantes 
-- (Afficher également les personnes n'ayant pas formulé de demandes ainsi que les 
-- demandes d'anciennes personnes n'existant plus dans notre base de données)



-- Afficher la liste des personnes ayant plusieurs logements à vendre


-- Afficher la liste des personnes avec le logement qu'elles vendent, 
-- ou la demande de logement qu'elles recherchent



-- Afficher la liste des personnes ayant à la fois un logement à vendre ou louer et 
-- une demande d'achat ou de location.
select p.idpersonne, p.prenom
from demande d, personne p, logement l, logement_agence la
where p.idpersonne=d.idpersonne
and l.idlogement=la.idlogement
and d.categorie=('vente' or 'location')
group by p.idpersonne;
/* il manque ue condition ou une jointure externe ?*/








