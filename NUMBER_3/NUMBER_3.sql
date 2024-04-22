/*  (a).entities include
TV Series
Episode
Actor
Director
Employment (linking entity between Actor/Director and TV Series)
Transmission*/


/*CREATE TABLE TV_Series (
    series_id INT PRIMARY KEY,
    series_name VARCHAR(255),
    release_date DATE,
    genre VARCHAR(255)
);*/


/*CREATE TABLE Episode (
    episode_id INT PRIMARY KEY,
    episode_name VARCHAR(255),
    air_date DATE,
    duration INT,
    series_id INT,
    FOREIGN KEY (series_id) REFERENCES TV_Series(series_id)
);
*/
--SELECT * FROM Episode;

/*CREATE TABLE Actor (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(255),
    date_of_birth DATE,
    gender VARCHAR(10)
);*/
--SELECT * FROM  Actor;
/*CREATE TABLE Director (
    director_id INT PRIMARY KEY,
    director_name VARCHAR(255),
    date_of_birth DATE,
    gender VARCHAR(10)
);*/
/*
CREATE TABLE Employment (
    employment_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    series_id INT,
    actor_id INT,
    director_id INT,
    FOREIGN KEY (series_id) REFERENCES TV_Series(series_id),
    FOREIGN KEY (actor_id) REFERENCES Actor(actor_id),
    FOREIGN KEY (director_id) REFERENCES Director(director_id)
);


SELECT * FROM  Director;*/

/*CREATE TABLE Transmission (
    transmission_id INT PRIMARY KEY,
    transmission_date DATE,
    episode_id INT,
    FOREIGN KEY (episode_id) REFERENCES Episode(episode_id)
);*/
SELECT * FROM   Transmission;



/*(d).A primary key is a column or a set of columns that uniquely identifies each record in a table.
It enforces entity integrity by ensuring that no duplicate or null values are allowed in this column(s).
Example:
In a table Students, student_id might be the primary key, ensuring each student has a unique identifier.

/*A foreign key is a column or a set of columns in a table that establishes a link between data in two tables.
It enforces referential integrity by ensuring that the values in the foreign key column(s) of one table match the
values in the primary key column(s) of another table.

example

    FOREIGN KEY (series_id) REFERENCES TV_Series(series_id),
    FOREIGN KEY (actor_id) REFERENCES Actor(actor_id),
    FOREIGN KEY (director_id) REFERENCES Director(director_id)