
--Create an "animals" table with columns for:
--species, name, age, was fed (yes/no), their favorite food

CREATE TABLE "animals" (
id INTEGER PRIMARY KEY,
species TEXT NOT NULL,
name TEXT NOT NULL,
age INTEGER NOT NULL,
was_fed INTEGER NOT NULL,
favorite_food TEXT NOT NULL
);



--Populate the table with some animals you like

  INSERT INTO animals
(species, name, age, was_fed, favorite_food)
VALUES
("Tiger", "Sandokan", 15, 0, "zookeepers"),
("Lion", "Simba", 9, 1, "zebras"),
("Giraffe", "Bridget", 20, 0, "leaves"),
("Zebra", "Blacky&Whitey", 5, 1, "grass"),
("Monkey", "Abu", 2, 1, "bananas");



--animals table
SELECT * FROM animals;



--Update some properties of the animal - anything you like

UPDATE animals SET age=15 WHERE id=3
UPDATE animals SET was_fed=0 WHERE id=5;
UPDATE animals SET name="Abuuu" WHERE species='Monkey'




--Remove one of the animals - they are being transfered to a different zoo 
--bye bye Tiger, now zookeepers are safe
DELETE FROM animals WHERE species = "Tiger";



--Remove the column for their favourite_food, you don't need that information anymore
ALTER TABLE animals DROP COLUMN favourite_food;


--Start tracking where the animals are from, call it origin
ALTER TABLE animals ADD COLUMN origin TEXT;

-- add a city for a couple animals.
UPDATE animals SET origin = "Tirana" WHERE id=2
UPDATE animals SET origin = "Vlora" WHERE id=3
UPDATE animals SET origin = "Prishtina" WHERE id=4
UPDATE animals SET origin = "Shkup" WHERE id=5



-- Challenge - Can you feed all the animals using just one command?
UPDATE animals set was_fed=1