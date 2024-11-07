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