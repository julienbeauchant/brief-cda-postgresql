# Merise
#### Méthode d'étude et de réalisation informatique pour les systèmes d'entreprise
<br>

**1. Origine du Merise :** 
- Développé en France dans les années 1970.
<br>

**2. Qu'est-ce que la Merise ?**
- La Merise est une méthode de modélisation de bases de données et d'application informatiques.
<br>

**3. A quoi sert la Merise ?**
- Elle est utilisée pour concevoir, structurer et formaliser des bases de données et des applications informatiques, en s’appuyant sur des modèles conceptuels.
<br>

**4. Quels types de modèles conceptuels existe-il ?**
- **MCD : Modèle conceptuel des données**  
    - Le MCD est le modèle de plus haut niveau dans Merise, représentant de manière abstraite les données essentielles et leurs relations sans se préoccuper des aspects techniques. Il utilise des entités et des associations pour formaliser les informations importantes du système. Le MCD est principalement utilisé pour comprendre la structure des données de manière conceptuelle.
<br>

- **MLD : Modèle logique des données**
    - Le MLD est une adaptation du MCD aux contraintes du SGBD (système de gestion de bases de données) choisi, comme MySQL ou PostgreSQL. Dans le MLD, on définit les tables, les clés primaires, les clés étrangères et les types de données des champs. Ce modèle est davantage orienté vers l’implémentation sans pour autant dépendre d’une technologie spécifique.
<br>

- **MPD : Modèle physique des données**
    - Le MPD est la concrétisation du MLD dans un langage de base de données, tel que SQL. Ce modèle prend en compte les contraintes physiques, comme l’optimisation des index, la gestion des performances et les contraintes spécifiques du serveur de base de données choisi. Le MPD aboutit à la création réelle des tables, des index et des relations.
