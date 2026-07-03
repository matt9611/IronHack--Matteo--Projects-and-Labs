USE sakila;
SHOW TABLES;

SELECT *
FROM film;

SELECT *
FROM actor;

SELECT *
FROM customer;

SELECT title
FROM film;

SELECT name
FROM language;

SELECT first_name
FROM staff;

SELECT  release_year
FROM film;

SELECT 
COUNT(DISTINCT store_id)
FROM store;

SELECT 
COUNT(DISTINCT store_id)
FROM store;

SELECT 
COUNT(DISTINCT inventory_id)
FROM inventory;

SELECT 
COUNT(DISTINCT rental_id)
FROM rental;

SELECT length
FROM film
ORDER BY length desc
limit 10;


SELECT *
FROM actor
WHERE first_name LIKE '%SCARLETT%';