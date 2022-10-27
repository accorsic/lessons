-- 1. Select all the actors with the first name ‘Scarlett’.
use sakila;

select * from sakila.film;


-- 2. Select all the actors with the last name ‘Johansson’.

select * from sakila.film
where last_name = 'Johansson'
limit 10;

select last_name from sakila.actor_info
where last_name = 'Johansson'
order by last_name asc;

-- 3. How many films (movies) are available for rent?

select rental_duration from sakila.film;

SELECT COUNT( inventory_id ) as numOfDVDsOnRent
FROM rental
WHERE return_date IS NULL;


-- 4. How many films have been rented?


-- 5. What is the shortest and longest rental period?
-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
-- 7. What's the average movie duration?
-- 8. What's the average movie duration expressed in format (hours, minutes)?
-- 9. How many movies are longer than 3 hours?
-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
-- 11. What's the length of the longest film title?