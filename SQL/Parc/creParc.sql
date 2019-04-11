create database if not exists parc character set 'utf8';

use parc;

CREATE TABLE IF NOT EXISTS Segment(
	indIP      varchar(11),   
	nomSegment varchar(20) NOT NULL,   
	etage 	   tinyint(1),   
	CONSTRAINT pk_Segment PRIMARY KEY (indIP)
)engine=innodb default charset=utf8; 

CREATE TABLE IF NOT EXISTS Salle  (
	nSalle     varchar(7),   
	nomSalle   varchar(20) NOT NULL,   
	nbPoste    TINYINT(2),   
	indIP      varchar(11),   
	CONSTRAINT pk_salle PRIMARY KEY (nSalle)
)engine=innodb default charset=utf8; 

CREATE TABLE IF NOT EXISTS Poste  (
	nPoste     varchar(7),   
	nomPoste   varchar(20) NOT NULL,   
	indIP      varchar(11),   
	ad         varchar(3),   
	typePoste  varchar(9),   
	nSalle     varchar(7),   
	CONSTRAINT pk_Poste PRIMARY KEY (nPoste),   
	CONSTRAINT ck_ad    CHECK (ad BETWEEN '000' AND '255')
)engine=innodb default charset=utf8; 	

CREATE TABLE IF NOT EXISTS Logiciel  (
	nLog       varchar(5),   
	nomLog     varchar(20) NOT NULL,   
	dateAch    DATETIME,   
	version    varchar(7),   
	typeLog    varchar(9),   
	prix       DECIMAL(6,2),   
	CONSTRAINT pk_Logiciel PRIMARY KEY (nLog),   
	CONSTRAINT ck_prix     CHECK (prix >= 0)
)engine=innodb default charset=utf8;  

CREATE TABLE IF NOT EXISTS Installer  (
	nPoste     varchar(7),   
	nLog       varchar(5),   
	numIns     INTEGER(5) AUTO_INCREMENT,   
	dateIns    TIMESTAMP DEFAULT NOW(),   
	delai      DECIMAL(8,2),   
	CONSTRAINT pk_Installer PRIMARY KEY(numIns)
)engine=innodb default charset=utf8; 
	
CREATE TABLE IF NOT EXISTS Types  (
	typeLP   varchar(9), 
	nomType varchar(20),   
	CONSTRAINT pk_types PRIMARY KEY(typeLP)
)engine=innodb default charset=utf8; 	