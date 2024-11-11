# 🔄 Politique de rétention

#### La politique de rétention est essentielle pour assurer que les données sauvegardées sont disponibles en cas de problème.

**Fréquence des Sauvegardes :**

- **Sauvegardes complètes :** Une fois par jour, pour capturer l’état complet de la base de données.

- **Horodatage :** Chaque fichier de sauvegarde est horodaté pour faciliter la gestion des versions.

**Durée de Conservation :**

- **Sauvegardes journalières :** Conservées pendant 7 jours pour pouvoir restaurer rapidement en cas de problème récent.

- **Sauvegardes hebdomadaires :** Conservées pendant un mois, ce qui permet de revenir à un état plus ancien si nécessaire.

- **Sauvegardes mensuelles :** Conservées pendant un an pour répondre aux besoins de restauration à long terme.

**Menaces :**

- **Pertes de données :** des suppressions accidentelles ou des erreurs peuvent compromettre la base de données en production.

- **Corruption des données :** en cas de panne matérielle ou de problème logiciel, les données peuvent être corrompues.

- **Cyberattaques :** des attaques malveillantes peuvent détruire ou altérer les données.

**Mesures de Protection :**

- **Chiffrement des sauvegardes :** assurez-vous que les sauvegardes sont chiffrées pour éviter tout accès non autorisé.

- **Redondance des sauvegardes :** stockez les sauvegardes sur des serveurs ou supports distincts pour réduire les risques de perte unique.

- **Tests réguliers de restauration :** effectuez régulièrement des tests pour vous assurer que les sauvegardes peuvent être restaurées sans problème.

#!/bin/bash

**Variables de configuration :**

```
DB_NAME="au_bon_deal"
DB_USER="julien"
BACKUP_DIR="/path/to/backup/directory"
DATE=$(date +'%Y-%m-%d')
BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_backup_$DATE.sql"
```

**Création d'un répertoire de sauvegarde s'il n'existe pas :**

```
mkdir -p $BACKUP_DIR
```

**Exécution de la commande pg_dump pour sauvegarder la base de données :**

```
pg_dump -U $DB_USER -F c -b -v -f $BACKUP_FILE $DB_NAME
```

**Message de confirmation :**

```
echo "Sauvegarde réalisée : $BACKUP_FILE"
```

<!-- 
-U $DB_USER : spécifie l’utilisateur de la base de données.
-F c : choisit le format compressé pour réduire la taille de la sauvegarde.
-b : inclut les blobs (binary large objects) s’il y en a dans la base de données.
-v : active le mode verbeux pour des messages de progression. -->

**Utiliser cron pour exécuter le script automatiquement à intervalles réguliers :**

```

```