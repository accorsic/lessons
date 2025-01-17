-- 1
use sakila;

-- 1 Rank films by length (filter out the rows with nulls or zeros in length column). Select only columns title, length and rank in your output.

select length, title, rank() over (order by length desc) as 'Rank'
from sakila.film;

 where <> '' and <> '0'

-- 2 Rank films by length within the rating category (filter out the rows with nulls or zeros in length column). In your output, only select the columns title, length, rating and rank.

select length, rating, title , rank() over (order by rating, length) as 'Rank'
from sakila.film
WHERE length IS NOT NULL;

-- 3 How many films are there for each of the categories in the category table? Hint: Use appropriate join between the tables "category" and "film_category".
-- left join
select a.category_id, a.name, l.film_id, group by name, COUNT(film_id) AS number_of_films
from sakila.category as a
left join sakila.film_category as l on a.category_id = l.category_id
order by a.category_id;

-- 4 Which actor has appeared in the most films? Hint: You can create a join between the tables "actor" and "film actor" and count the number of times an actor appears.alter

select a.actor_id, a.first_name, a.last_name, COUNT(film_id) AS number_of_times
from sakila.actor as a
left join sakila.film_actor as l on a.actor_id = l.actor_id
group by a.actor_id;

-- 5 Which is the most active customer (the customer that has rented the most number of films)? Hint: Use appropriate join between the tables "customer" and "rental" and count the rental_id for each customer.

select a.rental_id, l.customer_id, l.first_name, l.last_name, l.active, COUNT(rental_id) AS number_of_times
from sakila.rental as a
right join sakila.customer as l on a.customer_id = l.customer_id
WHERE l.active = 1
group by customer_id
order by number_of_times desc;

-- bonus
select film_id, title
from sakila.film
where film_id = 103;
