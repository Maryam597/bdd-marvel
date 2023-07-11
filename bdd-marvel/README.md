### Les requêtes

- les titres et dates de sortie des films du plus récent au plus ancien

```sql
SELECT Movies_Title_Movies, Movies_Date_of_Release_Movies FROM `Movies` order by Movies_Date_of_Release_Movies ASC;
```



- les noms, prénoms et âges des acteurs ou actrices de plus de 30 ans dans l'ordre alphabétique

```sql
SELECT Actors_Last_Name_Actors, Actors_First_Name_Actors, 
TIMESTAMPDIFF(YEAR, Actors_Date_of_Birth_Actors, CURDATE()) AS Age
FROM Actors
WHERE TIMESTAMPDIFF(YEAR, Actors_Date_of_Birth_Actors, CURDATE()) > 30
ORDER BY Actors_Last_Name_Actors, Actors_First_Name_Actors;
```



- la liste des actrices ou acteurs principaux pour un film donné

```sql
SELECT `Actors`.*, `Played_in_`.*, `Movies`.*
FROM `Actors` 
    LEFT JOIN `Played_in_` ON `Played_in_`.`ID_Actors_Actors` = `Actors`.`ID_Actors_Actors` 
    LEFT JOIN `Movies` ON `Played_in_`.`ID_Movies_Movies` = `Movies`.`ID_Movies_Movies`
       WHERE `Played_in_`.`Role` = 'Main'AND `Movies_Title_Movies` = 'Iron Man';
```



- la liste des films pour une actrice ou un acteur donné

```sql
SELECT `Movies`.*, `Played_in_`.*, `Actors`.*
FROM `Movies` 
    LEFT JOIN `Played_in_` ON `Played_in_`.`ID_Movies_Movies` = `Movies`.`ID_Movies_Movies` 
    LEFT JOIN `Actors` ON `Played_in_`.`ID_Actors_Actors` = `Actors`.`ID_Actors_Actors`
       WHERE `Actors_Last_Name_Actors` = 'Rudd';
```



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
​```sql
SELECT * FROM `Actors` ORDER BY `ID_Actors_Actors` DESC LIMIT 3
```