
    -- Créer la base de données
CREATE DATABASE tifosi;
USE tifosi;

-- Table client
CREATE TABLE client (
  id_client INT AUTO_INCREMENT PRIMARY KEY,
  nom_client VARCHAR(45),
  age INT,
  cp_client INT
);

-- Table paye
CREATE TABLE paye (
  id_recus INT AUTO_INCREMENT PRIMARY KEY,
  jour DATE,
  id_client INT,
  FOREIGN KEY (id_client) REFERENCES client(id_client)
);

-- Table achat
CREATE TABLE achat (
  id_achat INT AUTO_INCREMENT PRIMARY KEY,
  jour DATE,
  id_client INT,
  id_focaccia INT,
  FOREIGN KEY (id_client) REFERENCES client(id_client),
  FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

-- Table menu
CREATE TABLE menu (
  id_menu INT AUTO_INCREMENT PRIMARY KEY,
  nom_menu VARCHAR(45),
  prix_menu FLOAT
);

-- Table focaccia
CREATE TABLE focaccia (
  id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
  nom_focaccia VARCHAR(45),
  prix_focaccia FLOAT,
  id_recette INT,
  FOREIGN KEY (id_recette) REFERENCES recette(id_recette)
);

-- Table recette
CREATE TABLE recette (
  id_recette INT AUTO_INCREMENT PRIMARY KEY,
  id_focaccia INT,
  id_ingredient INT,
  FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
  FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);

-- Table ingredient
CREATE TABLE ingredient (
  id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
  nom_ingredient VARCHAR(45)
);

-- Table boisson
CREATE TABLE boisson (
  id_boisson INT AUTO_INCREMENT PRIMARY KEY,
  nom_boisson VARCHAR(45),
  id_marque INT,
  FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

-- Table marque
CREATE TABLE marque (
  id_marque INT AUTO_INCREMENT PRIMARY KEY,
  nom_marque VARCHAR(45)
); 
--boisson.csv : 
id_boisson;nom_boisson;;marque
1;Coca-cola zéro;;Coca-cola
2;Coca-cola original;;Coca-cola
3;Fanta citron;;Coca-cola
4;Fanta orange;;Coca-cola
5;Capri-sun;;Coca-cola
6;Pepsi;;Pepsico
7;Pepsi Max Zéro;;Pepsico
8;Lipton zéro citron;;Pepsico
9;Lipton Peach;;Pepsico
10;Monster energy ultra gold;;Monster
11;Monster energy ultra blue;;Monster
12;Eau de source ;;Cristalline

demande : importation des donnée boisson.csv
import les données id_boison, nom_boison dans la table boisson. et
import marque 

Requête SQL :
LOAD DATA INFILE 'boisson.csv'INTO TABLE `boisson`
FIELDS TERMINATED BY ';'ENCLOSED BY '"'LINES TERMINATED BY '\n';

MySQL a répondu : Documentation

#1452 - Cannot add or update a child row: a foreign key constraint fails (`tifosi`.`boisson`, CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`))