---- 
//SELECT * FROM genres
INSERT INTO genres (id, name, ranking, active)  --en la tabla generos
VALUES (default, "investigacion", 13, 1);

---- 
//S * F movies
UPDATE genres
SET name="Investigacion cintifica"
WHERE name="Investigacion"

---- 
DELETE FROM genres
WHERE id=13 

---- 
SELECT * FROM movies

---- mostrar el nombre, apellido, rating de todos los actores
SELECT first_name, last_name, rating FROM actors

---- el titulo de todas las series. teniendo en cuenta que tanto el nombre de la tabla como el campo esten en español
SELECT title AS titulo FROM series AS series



-- nombre y apellido de los actores, arating mayor a 7.5
SELECT first_name, last_name FROM actors --nombre y apellido
WHERE rating > 7.5 --where condicion

-- titulo de peli, rating, premios. los premio con rating mayor a 7.5 y con mas de 2 premios
SELECT title, rating, awards AS premios
FROM movies
WHERE rating > 7.5 
AND awards > 2

-- titulo de las pelis, rating ordenadas por rating en forma ASC(POR DEFECTO TRAE)
SELECT title, rating 
FROM movies
ORDER BY rating



-- titulo las de las peli de las primeras tres peliculas
SELECT title
FROM movies
LIMIT 3

-- mostrar el top 5 de las pelis con mas rating
SELECT * 
FROM movies
ORDER BY rating DESC
LIMIT 5 


