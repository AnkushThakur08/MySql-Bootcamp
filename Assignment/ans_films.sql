-- TODO: Q1

-- SELECT Category.name,  Film.release_year, Film_category.category_id, COUNT(name)
-- FROM ((Film_category
-- INNER JOIN Film ON Film_category.film_id = Film.film_id)
-- INNER JOIN Category ON Film_category.category_id = Category.category_id)
-- WHERE release_year = 2018
-- GROUP BY name;


-- SELECT Category.name, Category.category_id, Film.release_year, Film.film_id,
-- COUNT(Category.category_id) AS Number_of_films
-- FROM ((Category
-- LEFT JOIN Film_Category ON Film_category.category_id = Category.category_id )
-- RIGHT JOIN Film ON Film_category.film_id = Film.film_id)
-- WHERE release_year = 2018
-- GROUP BY category.category_id;


-- TODO:  Q2
/* UPDATE Address 
INNER JOIN Actor ON Actor.address_id = Address.address_id
SET address = "677 Jazz Street" 
WHERE Actor_id = 36;
 */


-- UPDATE `address` INNER JOIN actor ON actor.address_id = Address.address_id
-- SET `address` = "677 Jazz Street" WHERE actor.actor_id = 36;


-- TODO: Q4
-- SELECT DISTINCT Film.title,  Country.country
-- FROM(((((Film 
-- INNER JOIN Film_Actor ON Film.Film_id = Film_actor.film_id)
-- INNER JOIN Actor ON Actor.actor_id = Film_actor.actor_id)
-- INNER JOIN Address ON Address.address_id = Actor.address_id)
-- INNER JOIN City ON City.city_id = Address.city_id)
-- INNER JOIN Country ON Country.country_id = City.country_id)
-- WHERE Country.country = "India"


-- SELECT DISTINCT Film.title, Country.Country FROM (((((Film    
-- INNER JOIN Film_Actor ON Film.Film_id = Film_actor.film_id)
-- INNER JOIN Actor ON Actor.actor_id = Film_actor.actor_id)
-- INNER JOIN Address ON Address.address_id = Actor.address_id)
-- INNER JOIN City ON City.city_id = Address.city_id )
-- INNER JOIN Country ON Country.country_id = City.country_id)
-- WHERE country.country = "India";

-- TODO: Q5
-- SELECT COUNT(Actor.Actor_id), Actor.first_Name, Country.country
-- FROM (((Actor
-- INNER JOIN Address ON Address.address_id = Actor.address_id)
-- INNER JOIN City ON City.City_id = Address.city_id)
-- INNER JOIN Country ON Country.country_id = City.country_id)
-- WHERE Country = "United States"


-- SELECT COUNT(*) 
-- FROM (((Actor
-- INNER JOIN Address ON Address.address_id = Actor.address_id)
-- INNER JOIN City ON City.City_id = Address.city_id)
-- INNER JOIN Country ON Country.country_id = City.country_id)
-- WHERE Country = "United States"

-- TODO: Q6)
-- SELECT language.name, Film.release_year, COUNT(language.language_id) AS "No. of Films"
-- FROM (Film
-- INNER JOIN language ON Language.language_id = Film.language_id)
-- WHERE release_year BETWEEN 2001 AND 2010
-- GROUP BY name;

-- TODO: Q7)
-- SELECT Film.film_id, Film.title, Language.name
-- FROM (Film
-- INNER JOIN Language ON language.language_id = Film.language_id )
-- WHERE film_id = 17;

-- UPDATE Language
-- INNER JOIN Film ON Language.language_id = Film.language_id
-- SET name = "Mandarin"
-- WHERE film_id = 17;

-- TODO: Q8
-- SELECT Actor.first_Name, Film.release_year, Film.title, Film.rating
-- FROM ((Film 
-- INNER JOIN Film_actor ON Film_Actor.film_id = Film.film_id)
-- INNER JOIN Actor ON Actor.actor_id = Film_actor.actor_id)
-- WHERE release_year BETWEEN 2005 AND 2015 AND rating = "PG";


-- TODO: Q9
-- SELECT COUNT(Film.title), Film.release_year
-- FROM FILM
-- GROUP BY Film.release_year
-- ORDER BY COUNT(film.title) DESC LIMIT 1;


-- SELECT film.title, film.release_year, COUNT(film.release_year) AS "No of films"
-- FROM FILM
-- GROUP BY (Film.release_year)
-- ORDER BY COUNT(film.release_year);

-- TODO: Q10
/* SELECT COUNT(Film.title) AS "NO of Films", Film.release_year
FROM FILM
GROUP BY Film.release_year
ORDER BY COUNT(film.title) AsC LIMIT 1; */

-- TODO: Q11

/* SELECT Film.title, Film.release_year, Film.length
FROM Film WHERE Film.release_year = 2014 AND Film.length = (SELECT MAX(Film.length) FROM film);
 */

--  TODO: Q12
/* SELECT Film.title, Film.release_year, Category.name, Film.rating, Language.name
FROM (((Category
INNER JOIN Film_category ON  Category.category_id = Film_category.category_id)
INNER JOIN Film ON Film_category.film_id = Film.film_id)
INNER JOIN Language ON Film.language_id = Language.language_id)
WHERE category.name = "Sci-Fi" AND Film.rating = "NC-17"; */

-- TODO: Q 14

/* INSERT INTO Film (title, description, release_year, language_id, original_language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features )
VALUES(
    "No Time Die",
    "Recruited to rescue a kidnapped scientist, globe-trotting spy james Bond finds himself hot on the trail of a mysterious villian, who's armed with a dangerous new technology.",
    2020,
    (SELECT language.language_id FROM language WHERE language.name ="English"),
    (SELECT language.language_id FROM language WHERE language.name ="English"), 
    6,
    3.99,
    100,
    20.99,
    "PG-13",
    "Trailers, Deleted Scenes"
); */

-- TODO: Q15)
/* INSERT INTO film_category(film_id, category_id) VALUES(
    (SELECT Film.film_id from Film WHERE title = "No Time Die"),
    (SELECT category_id FROM Category WHERE name = "Action"),
); */

/* INSERT INTO Film_category (film_id, category_id) VALUES (
    (SELECT Film.film_id FROM Film WHERE Film.title ="No Time Die"),
    (SELECT Category.category_id From Category WHERE Category.name = "Classics")
); */

/* INSERT INTO Film_category (film_id, category_id) VALUES (
    (SELECT Film.film_id FROM Film WHERE Film.title ="No Time Die"),
    (SELECT Category.category_id From Category WHERE Category.name = "Drama")
); */

-- TODO: Q 16)
/* INSERT INTO Film_actor(actor_id, film_id) VALUES(
    (SELECT Actor.actor_id From Actor WHERE first_Name="Penelope" AND last_Name="Guiness"),
    (SELECT Film.Film_id From Film WHERE Film.title = "No Time Die")
); */

/* INSERT INTO Film_Actor(actor_id, film_id) VALUES(
    (SELECT Actor.actor_id FROM Actor WHERE first_name="Nick" AND last_name="Wahlberg"),
    (SELECT Film.film_id FROM Film WHERE Film.title = "No Time Die") 
); */

/* INSERT INTO Film_Actor(actor_id, film_id) VALUES(
    (SELECT Actor.actor_id FROM Actor WHERE first_name="Joe" AND last_name="Swank"),
    (SELECT Film.film_id FROM Film WHERE Film.title = "No Time Die") 
); */

-- TODO: Q17)
-- INSERT INTO Category(name) VALUES("Thriller");

/* INSERT INTO Film_category(film_id, category_id) VALUES(
    (SELECT Film.Film_id FROM Film WHERE title = "Angels Life"),
    (SELECT Category.category_id FROM Category WHERE name = "Thriller")
); */


-- TODO: Q18)

--  SELECT actor_id, film_id, COUNT(*) AS "No of Films" from Film_actor GROUP BY actor_id
--  ORDER BY COUNT(*) DESC;

SELECT actor_id, COUNT(actor_id) from Film_actor GROUP BY actor_id 
ORDER BY COUNT(actor_id) DESC LIMIT 1;











