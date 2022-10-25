-- 1
use sakila;

-- 1 Rank films by length (filter out the rows with nulls or zeros in length column). Select only columns title, length and rank in your output.

select length, title, rank() over (order by length desc) as 'Rank'
from sakila.film;

 where <> '' and <> '0'

-- 2 Rank films by length within the rating category (filter out the rows with nulls or zeros in length column). In your output, only select the columns title, length, rating and rank.

select length, rating, title , rank() over (order by rating) as 'Rank'
from sakila.film;

-- 3 How many films are there for each of the categories in the category table? Hint: Use appropriate join between the tables "category" and "film_category".

select 

-- 4 Which actor has appeared in the most films? Hint: You can create a join between the tables "actor" and "film actor" and count the number of times an actor appears.alter


select actor_id ,film_id from film_actor where actor_id = 1;
SELECT * 
FROM movie 
JOIN director 
ON movie.director_id=director.id;

-- 5 Which is the most active customer (the customer that has rented the most number of films)? Hint: Use appropriate join between the tables "customer" and "rental" and count the rental_id for each customer.