
TASK 1  
  
INSERT INTO "film" ("title","release_year", "rental_rate", 
					"rental_duration", "rating", "language_id")
					VALUES ('The Godfather', 1972, 4.99, 14, 'PG-13', '1');
					
					
SELECT * FROM "film"
ORDER BY "film_id" DESC
LIMIT 1;

TASK 2
  
INSERT INTO "actor" ("first_name", "last_name")
VALUES ('Morgan', 'Freeman'),('Gary','Oldman'),('Christian','Bale');

SELECT * FROM "actor"
ORDER BY "actor_id" DESC
LIMIT 3;


SELECT MAX ("film_id") FROM "film";
SELECT MAX ("actor_id") FROM "actor"; -- 203

INSERT INTO "film_actor" ("film_id",
"actor_id")
VALUES (1001, 201),
       (1001, 202),
       (1001, 203);

SELECT * FROM "film_actor"
ORDER BY "film_id" DESC,
"actor_id" DESC
LIMIT 3;

TASK 3

INSERT INTO "inventory" ("film_id",
"store_id")
VALUES (1001,1);

SELECT * FROM "inventory"
ORDER BY "film_id" DESC,
"store_id" ASC
LIMIT 1;

Conclusion

SELECT film.title, inventory.store_id, actor.first_name ||' '|| actor.last_name as fullname
from film
JOIN inventory USING(film_id)
JOIN film_actor USING (film_id)
JOIN actor USING (actor_id)
WHERE film.title LIKE '%The%Godfather%';
