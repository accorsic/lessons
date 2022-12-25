use sakila;

SELECT customer_id, email
FROM sakila.customer
WHERE active = 0;

SELECT first_name, last_name, email, c.customer_id
FROM sakila.customer c INNER JOIN sakila.rental r ON
c.customer_id = r.customer_id 
GROUP BY c.customer_id;

SELECT c.customer_id, CONCAT(c.first_name, c.last_name) AS Costumer, AVG(p.amount) AS AVGPayment
FROM sakila.customer c
INNER JOIN sakila.payment p 
ON c.customer_id = p.customer_id
GROUP BY c.customer_id;

SELECT first_name, last_name, email
FROM sakila.customer a
INNER JOIN sakila.rental r ON a.customer_id = r.customer_id
INNER JOIN sakila.inventory i ON r.inventory_id = i.inventory_id
INNER JOIN sakila.film f ON i.film_id = f.film_id
WHERE f.description = 'Action'
GROUP BY a.customer_id;

SELECT a.actor_id, a.first_name, a.last_name, COUNT(film_id) AS number_of_times
FROM sakila.actor a
LEFT JOIN sakila.film_actor l 
ON a.actor_id = l.actor_id
GROUP BY a.actor_id;

SELECT a.rental_id, l.customer_id, l.first_name, l.last_name, l.active, COUNT(rental_id) AS number_of_times
from sakila.rental as a
right join sakila.customer as l on a.customer_id = l.customer_id
WHERE l.active = 1
group by customer_id
order by number_of_times desc;