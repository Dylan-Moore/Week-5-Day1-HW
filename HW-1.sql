--Question(1)
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
--[Answer = 2]

--Question(2)
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
--[Answer = 5607]

--Question(3)
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id ORDER BY COUNT DESC;
--[Answer = multiple have (8), film_id(193,789,730,378,595,849,231 are a few(It looks like 72 of them have 8))]

--Question(4)
SELECT last_name
FROM customer
WHERE last_name = 'William';
--[Answer = 0]

--Question(5)
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id ORDER BY staff_id;
--Staff_id(2) = 8004 rentals
--Staff_id(1) = 8040 rentals
--[Answer = Staff_id(1) with 8040]

--Question(6)
SELECT DISTINCT district
FROM address
GROUP BY district;
--[Answer = 378]

--Question(7)
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id ORDER BY COUNT DESC;
--[Answer = film 508 - 15 actors]

--Question(8)
SELECT COUNT(last_name), store_id
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id ORDER BY store_id;
--[Answer = 13]

--Question(9)
SELECT amount, COUNT(rental_id) 
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;
--[Answer = 3]

--Question(10)
SELECT COUNT(rating), rating
FROM film
GROUP BY rating ORDER BY COUNT;
--[Answer = 5 ratings, PG-13 has the most]
