DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Euan Bell');
INSERT INTO people (name) VALUES ('Pauline Cairns');
INSERT INTO people (name) VALUES ('Yang Chen');
INSERT INTO people (name) VALUES ('Ruairidh Grass');
INSERT INTO people (name) VALUES ('Hannah Green');
INSERT INTO people (name) VALUES ('Hamish Hoad');
INSERT INTO people (name) VALUES ('Andrew Laughlin');
INSERT INTO people (name) VALUES ('Jo Malo');
INSERT INTO people (name) VALUES ('Duncan Marjoribanks');
INSERT INTO people (name) VALUES ('Juan Mata Ruiz');
INSERT INTO people (name) VALUES ('Paul McPhail Stevenson');
INSERT INTO people (name) VALUES ('Sarah Murphy');
INSERT INTO people (name) VALUES ('Katy Preston');
INSERT INTO people (name) VALUES ('Richard Ramson');
INSERT INTO people (name) VALUES ('Iain Rogerson');
INSERT INTO people (name) VALUES ('Davinda Sanders');
INSERT INTO people (name) VALUES ('Joe Stafford');
INSERT INTO people (name) VALUES ('Daniel Stewart');
INSERT INTO people (name) VALUES ('Luis Tejero');
INSERT INTO people (name) VALUES ('Colin Tindle');
INSERT INTO people (name) VALUES ('Rachel Westwater');
INSERT INTO people (name) VALUES ('Andrew Smith');
INSERT INTO people (name) VALUES ('Zsolt Podoba-Szalai');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '19:55');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '18:40');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '16:35');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '22:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '23:10');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '12:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '14:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '14:45');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '20:40');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '13:50');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '21:30');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '17:55');

--## Questions

--1. Return ALL the data in the 'movies' table.
SELECT * FROM movies;

--2. Return ONLY the name column from the 'people' table
SELECT name FROM people;

--3.Oops! Someone at CodeClan spelled Davina's name wrong! Change it to reflect the proper spelling (change 'Davinda Sanders' to 'Davina Sanders').
UPDATE people SET name = 'Davina Sanders' WHERE name = 'Davinda Sanders';
--SELECT * FROM people;

--4. Return ONLY your name from the 'people' table.
SELECT name FROM people WHERE name = 'Juan Mata Ruiz';

--5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
--SELECT * FROM movies;

--6. Create a new entry in the 'people' table with the name of one of the instructors.
INSERT INTO people (name) VALUES ('Sandy');
--SELECT name FROM people;

--7. Zsolt, has decided to hijack our movie evening, Remove him from the table of people.
DELETE FROM people WHERE name = 'Zsolt Podoba-Szalai';
--SELECT * FROM people

--8. Somehow the list of people includes two people named 'Andrew'. Change these entries to the proper names ('Jeff 4', 'Jeff 5')
UPDATE people SET name = 'Jeff 4' WHERE name = 'Andrew Laughlin';
UPDATE people SET name = 'Jeff 5' WHERE name = 'Andrew Smith';
--SELECT name FROM people;

--9. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies(title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2018, '00:00');
--SELECT * FROM movies

--10. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 18:55 to 21:30
UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';
--SELECT * FROM movies

--## Extension

--1. Research how to delete multiple entries from your table in a single command.

DELETE FROM movies WHERE id > 4;
--SELECT * FROM movies
DELETE FROM movies WHERE year IN ('2013', '2016');
--SELECT * FROM movies
