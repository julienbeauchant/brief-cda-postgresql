-- Connexion à postgresql en tant qu'utilisateur par défaut : 

psql postgres 

-- Création de la base de données au bon deal : 

CREATE DATABASE au_bon_deal;

-- Création d'un utilisateur et de son mot de passe : 

CREATE USER julien WITH PASSWORD 'au_bon_deal_password';

-- Accord du privilège de création de rôle à l'utilisateur julien : 

ALTER USER julien WITH CREATEROLE;

-- Quitter l'interface psql : 

\q

-- Connexion à la base de données au_bon_deal avec l'identifiant julien en utilisant pgcli :

pgcli -U julien -d au_bon_deal

-- Création d'un rôle admin : 

CREATE ROLE administrator;

-- Attribution du rôle à l'utilisateur Julien : 

GRANT administrator TO julien;

-- Création de la table Users :

CREATE TABLE Users (
    user_UUID UUID PRIMARY KEY,
    user_pseudo VARCHAR(100) NOT NULL,
    username VARCHAR(100) NOT NULL,
    user_password VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

-- Création de la table Products : 

CREATE TABLE Products (
    product_UUID UUID PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    product_description TEXT,
    product_price DECIMAL(10, 2) NOT NULL,
    product_quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

-- Création de la table Orders :

CREATE TABLE Orders (
    order_number SERIAL PRIMARY KEY,
    order_total_cost_ht DECIMAL(10, 2) NOT NULL,
    order_total_quantity INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deliver_at TIMESTAMP,
    user_UUID UUID NOT NULL,
    FOREIGN KEY (user_UUID) REFERENCES Users(user_UUID)
);

-- Création de la table de jointure belong pour les relations entre Products et Orders :

CREATE TABLE belong (
    product_UUID UUID NOT NULL,
    order_number INT NOT NULL,
    PRIMARY KEY (product_UUID, order_number),
    FOREIGN KEY (product_UUID) REFERENCES Products(product_UUID),
    FOREIGN KEY (order_number) REFERENCES Orders(order_number)
);

-- Accord des privilèges au rôle admin : 

GRANT SELECT, UPDATE ON TABLE Users, Products, Orders, belong TO administrator;


--> UUID PRIMARY KEY : permet de générer des identifiants uniques 
--> VARCHAR(100) : type de données pour stocker du texte avec une limite de 100 caractères
--> NOT NULL : contrainte pour s’assurer qu’aucune valeur est NULL
--> TIMESTAMP : type de données pour les dates et heures
--> DEFAULT CURRENT_TIMESTAMP : applique par défaut la date et l’heure actuelles lors de l’insertion d’une nouvelle modification
--> TEXT : type de données pour du texte sans limite de caractères
--> DECIMAL(10, 2) : précise 10 chiffres au total, dont 2 chiffres après la virgule
--> INT : type de données pour les entiers
--> SERIAL PRIMARY KEY : type de données pour générer des identifiants uniques en auto-incrémentation
--> FOREIGN KEY : assure que les valeurs d’une colonne existent dans une colonne de référence d’une autre table
--> REFERENCES : associe la clé étrangère à la clé primaire d’une autre table
