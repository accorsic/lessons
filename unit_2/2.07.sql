use sakila;

-- 1
select last_name, count(last_name)
from sakila.actor
group by last_name
having count(*)=1;



