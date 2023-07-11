DROP TABLE IF EXISTS Actors;

CREATE TABLE Actors (
    ID_Actors_Actors INT AUTO_INCREMENT NOT NULL,
    Actors_Last_Name_Actors VARCHAR(255),
    Actors_First_Name_Actors VARCHAR(255),
    Actors_Roles_Actors VARCHAR(255),
    Actors_Date_of_Birth_Actors DATE,
    PRIMARY KEY (ID_Actors_Actors)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Movies;

CREATE TABLE Movies (
    ID_Movies_Movies INT AUTO_INCREMENT NOT NULL,
    Movies_Title_Movies VARCHAR(255),
    Movies_Duration_Movies TIME,
    Movies_Date_of_Release_Movies DATE,
    PRIMARY KEY (ID_Movies_Movies)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
    ID_Users_Users INT AUTO_INCREMENT NOT NULL,
    Users_First_Name_Users VARCHAR(255),
    Users_Last_Name_Users VARCHAR(255),
    Users_Email_Address_Users VARCHAR(255),
    Users_Password_Users VARCHAR(255),
    Users_Role_Users VARCHAR(255),
    Users_Favourite_Movies_Users VARCHAR(255),
    PRIMARY KEY (ID_Users_Users)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Directors;

CREATE TABLE Directors (
    ID_Directors_Directors INT AUTO_INCREMENT NOT NULL,
    Directors_Last_Name_Directors VARCHAR(255),
    Directors_First_Name_Directors VARCHAR(255),
    PRIMARY KEY (ID_Directors_Directors)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Played_in_;

CREATE TABLE Played_in_ (
    ID_Actors_Actors INT AUTO_INCREMENT NOT NULL,
    ID_Movies_Movies INT NOT NULL,
    PRIMARY KEY (ID_Actors_Actors, ID_Movies_Movies)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Watched_Movies;

CREATE TABLE Watched_Movies (
    ID_Movies_Movies INT AUTO_INCREMENT NOT NULL,
    ID_Users_Users INT NOT NULL,
    PRIMARY KEY (ID_Movies_Movies, ID_Users_Users)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Movies_Directed;

CREATE TABLE Movies_Directed (
    ID_Movies_Movies INT AUTO_INCREMENT NOT NULL,
    ID_Directors_Directors INT NOT NULL,
    PRIMARY KEY (ID_Movies_Movies, ID_Directors_Directors)
) ENGINE = InnoDB;

ALTER TABLE
    Played_in_
ADD
    CONSTRAINT FK_Played_in__ID_Actors_Actors FOREIGN KEY (ID_Actors_Actors) REFERENCES Actors (ID_Actors_Actors);

ALTER TABLE
    Played_in_
ADD
    CONSTRAINT FK_Played_in__ID_Movies_Movies FOREIGN KEY (ID_Movies_Movies) REFERENCES Movies (ID_Movies_Movies);

ALTER TABLE
    Watched_Movies
ADD
    CONSTRAINT FK_Watched_Movies_ID_Movies_Movies FOREIGN KEY (ID_Movies_Movies) REFERENCES Movies (ID_Movies_Movies);

ALTER TABLE
    Watched_Movies
ADD
    CONSTRAINT FK_Watched_Movies_ID_Users_Users FOREIGN KEY (ID_Users_Users) REFERENCES Users (ID_Users_Users);

ALTER TABLE
    Movies_Directed
ADD
    CONSTRAINT FK_Movies_Directed_ID_Movies_Movies FOREIGN KEY (ID_Movies_Movies) REFERENCES Movies (ID_Movies_Movies);

ALTER TABLE
    Movies_Directed
ADD
    CONSTRAINT FK_Movies_Directed_ID_Directors_Directors FOREIGN KEY (ID_Directors_Directors) REFERENCES Directors (ID_Directors_Directors);