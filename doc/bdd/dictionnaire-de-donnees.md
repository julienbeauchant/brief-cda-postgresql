# 📖 Dictionnaire de données

<hr>

## Utilisateurs

| Nom du Champ               | Type de Données    | Contrainte              | Description                                     |
|----------------------------|--------------------|-------------------------|-------------------------------------------------|
| `user_uuid`                | UUID              | PRIMARY KEY             | Identifiant unique de l'utilisateur             |
| `user_pseudo`              | VARCHAR(100)      | NOT NULL                | Pseudo de l'utilisateur                         |
| `username`                 | VARCHAR(100)      | UNIQUE, NOT NULL        | Identifiant unique utilisé par l'utilisateur    |
| `user_password`                 | VARCHAR(100)      | NOT NULL        | Mot de passe utilisé par l'utilisateur    |
| `created_at` | TIMESTAMP         | NOT NULL                | Date de création du mot de passe                |

<hr>

## Commandes

| Nom du Champ               | Type de Données    | Contrainte              | Description                                     |
|----------------------------|--------------------|-------------------------|-------------------------------------------------|
| `order_number`             | SERIAL            | PRIMARY KEY             | Numéro unique de la commande                    |
| `order_total_cost_ht`      | NUMERIC(10,2)    | NOT NULL                | Coût total HT de la commande                    |
| `order_total_quantity`     | INTEGER           | NOT NULL                | Quantité totale de produits dans la commande    |
| `created_at`               | TIMESTAMP         | NOT NULL                | Date de création de la commande                 |
| `deliver_at`               | TIMESTAMP         |                         | Date de livraison prévue pour la commande       |
| `user_uuid`                | UUID              | FOREIGN KEY             | Référence à l'identifiant de l'utilisateur      |

<hr>