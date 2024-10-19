-- Table client 
CREATE TABLE client ( 
    id_client INT AUTO_INCREMENT PRIMARY KEY, 
    nom_client VARCHAR(45) NOT NULL, 
    age INT, cp_client INT ); 
-- Table paye 
CREATE TABLE paye ( 
    id_recus INT AUTO_INCREMENT PRIMARY KEY, 
    jour DATE NOT NULL, 
    id_client INT, 
    FOREIGN KEY (id_client) REFERENCES client(id_client) ); 
-- Table achat 
CREATE TABLE achat ( 
    id_achat INT AUTO_INCREMENT PRIMARY KEY, 
    jour DATE NOT NULL, 
    id_client INT, 
    id_focaccia INT, 
    FOREIGN KEY (id_client) REFERENCES client(id_client), 
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ); 
-- Table menu 
CREATE TABLE menu ( 
    id_menu INT AUTO_INCREMENT PRIMARY KEY, 
    nom_menu VARCHAR(45) NOT NULL, 
    prix_menu FLOAT NOT NULL ) ; 
-- Table focaccia 
CREATE TABLE focaccia ( 
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY, 
    nom_focaccia VARCHAR(45) NOT NULL, 
    prix_focaccia FLOAT NOT NULL, 
    list_ingrédient VARCHAR (200),
    id_recette INT , 
    FOREIGN KEY (id_recette) REFERENCES recette(id_recette) ); 
-- Table recette 
CREATE TABLE recette ( 
    id_recette INT AUTO_INCREMENT PRIMARY KEY, 
    id_focaccia INT, 
    id_ingredient INT, 
FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia), 
FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient) ); 
-- Table ingredient 
CREATE TABLE ingredient ( 
id_ingredient INT AUTO_INCREMENT PRIMARY KEY, 
nom_ingredient VARCHAR(45) NOT NULL ); 
-- Table boisson 
CREATE TABLE boisson ( 
    id_boisson INT AUTO_INCREMENT PRIMARY KEY, 
    nom_boisson VARCHAR(45) NOT NULL, 
    id_marque INT, FOREIGN KEY (id_marque) REFERENCES marque(id_marque) ); 
-- Table marque 
CREATE TABLE marque ( 
    id_marque INT AUTO_INCREMENT PRIMARY KEY, 
    nom_marque VARCHAR(45) NOT NULL);
