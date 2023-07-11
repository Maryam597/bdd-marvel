### Les requêtes

Merci de me fournir ce jeu de requêtes pour tester la bdd :
- les titres et dates de sortie des films du plus récent au plus ancien
- les noms, prénoms et âges des acteurs ou actrices de plus de 30 ans dans l'ordre alphabétique
- la liste des actrices ou acteurs principaux pour un film donné
- la liste des films pour une actrice ou un acteur donné


- ajouter un film

```sql
INSERT INTO `Actors` (`ID_Actors_Actors`, `Actors_Last_Name_Actors`, `Actors_First_Name_Actors`, `Actors_Roles_Actors`, `Actors_Date_of_Birth_Actors`) VALUES (NULL, 'Evans', 'Chris', 'Captain America', '1981-06-13');

```

- ajouter une actrice ou un acteur

```sql
INSERT INTO `Movies` (`ID_Movies_Movies`, `Movies_Title_Movies`, `Movies_Duration_Movies`, `Movies_Date_of_Release_Movies`) VALUES (NULL, 'Captain America', '02:04:50', '2011-07-19');
```

- modifier un film
```sql
UPDATE Movies SET `Movies_Title_Movies`= 'Captain America 1' WHERE `ID_Movies_Movies` = 18;
```

- supprimer une actrice ou un acteur
```sql
DELETE FROM `Actors` WHERE `ID_Actors_Actors` = 12
```

- afficher les 3 derniers acteurs/actrices ajouté(e)s
​