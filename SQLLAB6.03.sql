use Sakila;

select customer_id, email
from sakila.customer
where active = 0;