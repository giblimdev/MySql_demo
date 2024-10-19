-- insrtion de boison.csv mis en forme
LOAD DATA INFILE 'boisson.csv'
INTO TABLE boisson
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_boisson, nom_boisson,id_marque)
-- insrtion de focaccia.csv mis en forme
LOAD DATA INFILE 'focaccia.csv'
INTO TABLE focaccia
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_focaccia, nom_focaccia, prix_focaccia, list_ingrédient);

-- insrtion de focaccia.csv mis en forme
LOAD DATA INFILE 'ingredient.csv'
INTO TABLE ingredient
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_ingredient, nom_ingredient)	
-- insrtion de marque.csv mis en forme
LOAD DATA INFILE 'marque.csv'
INTO TABLE marque
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(id_marque, nom_marque)	