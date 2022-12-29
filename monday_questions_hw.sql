-- Question 1:
select count(*)
from actor
where last_name like 'Wahlberg';

-- Question 2:
select count(*)
from payment
where amount between 3.99 and 5.99;

-- Question 3:
select film_id, count(film_id)
from inventory
group by film_id
order by count desc;

-- Question 4:
select count(*)
from customer
where last_name like 'William';

-- Question 5:
select staff_id, count(*)
from rental
group by staff_id
order by count desc;

-- Question 6:
--select district, count(distinct district)
--from address
--group by district
select count(distinct district)
from address;

-- Question 7:
select film_id, count(actor_id)
from film_actor
group by film_id
order by count desc;

-- Question 8:
select count(last_name)
from customer
where store_id = 1 and last_name like '%es';

-- Question 9:
select count(distinct amount)
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250

-- Question 10:
select rating, count(distinct rating), count(film_id) as "Number of Films"
from film
group by rating