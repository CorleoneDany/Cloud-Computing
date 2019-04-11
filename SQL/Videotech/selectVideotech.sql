-- 1)idenfiant acteur le plus élévé (validé) 

SELECT MAX(ident_acteur) from acteur;

-- 2)Film francais (validé)

SELECT * FROM film WHERE pays=1;

-- 3)Sélectionner le nom du film, la date de sortie, le nom du réalisateur, le nom des acteurs, leur
--date de naissance, ainsi que le budget du film. Le tout trié en ordre descendant par titre du
--film et nom des acteurs. (pas de contrainte primaire et étrangère)

SELECT titre, date_sortie, nom as nom_realisateur, nom as nom_acteur,date_naissance as date_naissance_r, date_naissance as date_naissance_a, budget from film,acteur,statistique,realisateur
WHERE film.ident_film=statistique.ident_film AND
realisateur.ident_realisateur=film.ident_realisateur; 

-- 4)Nombre d'acteur (validé)
SELECT COUNT(*)  FROM acteur;

-- 6)casting le plus chère (validé)

SELECT titre,MAX(budget) FROM film,statistique;
--WHERE film.ident_film=statistique.ident_film;

-- 7) 2 film différent (validé)

SELECT * FROM acteur 
WHERE nb_film>2; 

-- 8) Realisateur et acteur (validé)

SELECT * FROM acteur,realisateur
WHERE acteur.nom=realisateur.nom AND
acteur.prenom=realisateur.prenom;

-- 9) film commencant par un S (validé)

SELECT titre,ident_acteur,nom,prenom FROM film,acteur
WHERE titre LIKE 'S%';

-- 10) nombre acteur entre 1948 et 1978(validé)

SELECT ident_acteur,nom,prenom,nb_jour_tournage FROM acteur,casting
WHERE acteur.ident_acteur=casting.ident_acteur AND 
date_naissance BETWEEN '1948-01-01' AND '1978-12-31'; 

-- 11) film dont réalisateur commence par LUC et entre 01/01/85 et le 30/05/1995 (validé)

SELECT ident_film,titre,nom,prenom,date_sortie FROM film,realisateur
WHERE prenom='LUC';

-- 12) calculer le nombre de jours passées depuis la sortie du film 

