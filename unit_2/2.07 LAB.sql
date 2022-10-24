-- 2.07 LAB
-- In the table actor, which are the actors whose last names are not repeated? For example if you would sort the data in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd. These three actors have the same last name. So we do not want to include this last name in our output. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list.
-- Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
-- Using the rental table, find out how many rentals were processed by each employee.
-- Using the film table, find out how many films were released each year.
-- Using the film table, find out for each rating how many films were there.
-- What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
-- Which kind of movies (rating) have a mean duration of more than two hours?

use sakila;

select * from sakila.film;
select * from sakila.actor_info;

select last_name from sakila.actor_info
order by last_name asc;

select last_name from sakila.actor_info
where last_name != 'AKROYD'
order by last_name asc;

-- o

select last_name, count(last_name)
from sakila.actor
group by last_name
having count(*)=1;

delete from sakila.actor
where last_name=AKROYD;

-- 2 

SELECT last_name, COUNT(*)
FROM sakila.actor_info
GROUP BY last_name
HAVING COUNT(*) >= 1
order by last_name asc;

SELECT last_name, COUNT(last_name) AS number_of_times_repeated
FROM sakila.actor_info
GROUP BY last_name
HAVING number_of_times_repeated > 1
ORDER BY COUNT(last_name) DESC;

-- 3

select * from sakila.rental;
select staff_id, count(*) as number_of_rentals
from sakila.rental
group by staff_id
order by number_of_rentals desc;

SELECT rental_id from sakila.rental
where rental > 0;

-- 4
-- find out how many films were released each year

select release_year, count(*) as year_amount
from sakila.film
group by release_year
order by release_year desc;

-- 5 
-- find out for each rating how many films were there.

select rating, count(*) as year_amount
from sakila.film
group by rating
order by year_amount desc;

-- 6
-- what is the mean length of the film for each rating type

select title, duration, rating from sakila.film
group by rating
order by duration;

select rating, round(avg(length),2) as Avg_duration
from sakila.film
group by rating
order by Avg_duration desc;

-- 7
-- which kind of movies (rating) have a mean duration of more than two hours?

select rating, length,
round(avg(length),2) as average_length
from sakila.film
group by rating
having average_length >120;




