use sakila;

/* ejercicios con where */

select * from film;

select first_name, last_name from customer;

SELECT title, description, release_year FROM film;

SELECT title, length FROM film WHERE length > 120;

SELECT first_name, last_name, last_update FROM customer;

select * from film where title = 'Terminator club';

SELECT * FROM film;

select actor.first_name, last_name
from actor
join film_actor on actor.actor_id = film_actor.actor_id
join film on film_actor.film_id = film.film_id
where film.title = "cause date";

select film.title, film.description
from film
join film_category on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
where category.name = "action";

/* ejercicios con having */

select rating, count(*) as num_peliculas, sum(length) as duracion_total
from film
group by rating
having count(*) > 5;

select staff_id, sum(amount) 
from payment
group by staff_id
having sum(amount) > 33800;

/* ejercicios con sum */
select sum(amount) as total_ingresos
from payment;

select customer_id, count(*) total_pelis_alquiladas
from rental
group by customer_id;

select sum(length) as duracion_total
from film;

SELECT category_id, SUM(film_count) as total_peliculas
FROM (
    SELECT category_id, COUNT(*) as film_count
    FROM film_category
    GROUP BY category_id
) as category_counts
GROUP BY category_id;

use sakila;

SELECT title AS Titulo, length AS Duracion
FROM film;

SELECT c.first_name, c.last_name, a.address
FROM customer AS c
JOIN address AS a ON c.address_id = a.address_id;

SELECT category_id, COUNT(*) AS total_peliculas
FROM film_category
GROUP BY category_id;

SELECT f.title AS Titulo, a.first_name AS Nombre_Actor, a.last_name AS Apellido_Actor
FROM film AS f
JOIN film_actor AS fa ON f.film_id = fa.film_id
JOIN actor AS a ON fa.actor_id = a.actor_id
WHERE f.special_features LIKE '%Behind the Scenes%';

/* Ejercicios con AND */

select *
from customer
where city = "London" and balance > 30;

select *
from film
where release_year > 2000 and rating = "PG";

SELECT *
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
WHERE category.name = 'Action' AND length > 120;

select *
from payment
where customer_id = 15 and payment_date = '2005-06-18 21:26:56';
