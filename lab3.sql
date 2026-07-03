USE sakila;

SELECT 
MAX(length) as max_duration,
MIN(length) as min_duration,
round(avg(length),0) 
FROM film;


select

datediff(max(rental_date),min(rental_date))

from rental;


select 
MONTHNAME(rental_date),
DAYNAME(rental_date)
from rental;

select 
title,

ifnull(rental_duration,'not available') as rental_duration


from film;



select 
count(title),
rating

from film
group by
rating
order by count(title)desc;


SELECT
    rating,
    ROUND(AVG(length), 2) AS mean_duration
FROM film
GROUP BY rating
HAVING AVG(length) > 120
ORDER BY mean_duration DESC;