USE sakila;

SELECT 
COUNT(f.film_id) AS num_film,
c.name as cat
FROM film AS f
INNER JOIN film_category AS fc
ON f.film_id = fc.film_id
INNER JOIN category AS c
ON fc.category_id = c.category_id
GROUP BY 
cat


SELECT 
store.store_id as s,
city.city as c,
country.country
FROM store 
INNER JOIN address
on store.address_id = address.address_id
INNER JOIN city
on address.city_id = city.city_id
INNER JOIN country
on country.country_id = city.country_id;


SELECT 
SUM(payment.amount) as s,
store.store_id
FROM store 
Inner JOIN staff
on store.store_id = staff.store_id
INNER JOIN payment
on payment.staff_id = payment.staff_id
GROUP BY
store.store_id;
