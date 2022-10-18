-- LESSON 2.4
use bank;
select distinct type from bank.card;

select * from bank.account
where district_id between 1 and 5;

select * from bank.trans
where convert(date, date) between '1993-01-01' and '1993-01-15'
limit 10;

select count(*) from bank.loan
where status in ('C', 'D');

select distinct a2 from bank.district
where a2 regexp '^k';

select distinct a2 from bank.district
where a2 regexp 'k$';

-- LAB QUERIES 4
-- 1
 select * from sakila.film;
 
select * from sakila.film_list;

select title from sakila.film;
-- 1, 2, 
select rating, title, release_year from sakila.film;
-- 3
select distinct title from sakila.film
where title regexp 'ARMAGEDDON';
-- 4
select distinct title from sakila.film
where title regexp 'APOLLO';
-- 5
select distinct title from sakila.film
where title regexp 'APOLLO$';
-- 6
select distinct title from sakila.film
where title regexp 'DATE'; 
-- 7
select title
from sakila.film
order by length desc
limit 10;
-- 8

select title, length
from sakila.film
order by length desc
limit 10;
-- 9
select count(*) from sakila.film
where status in ('special_features');

-- 10
select title, release_year from sakila.film
order by title asc;
