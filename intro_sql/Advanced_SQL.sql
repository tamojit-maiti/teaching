-- TIMESTAMPS & EXTRACT --
SHOW ALL
SHOW TIMEZONE
SELECT NOW()
SELECT TIMEOFDAY()
SELECT CURRENT_TIME
SELECT CURRENT_DATE

SELECT * FROM payment

SELECT EXTRACT(YEAR FROM payment_date) AS year FROM payment
SELECT EXTRACT(MONTH FROM payment_date) AS month FROM payment

SELECT AGE(payment_date) FROM payment

SELECT TO_CHAR(payment_date,'MONTH-YYYY') FROM payment
SELECT TO_CHAR(payment_date,'MONTH   YYYY') FROM payment

-- MATH FUNCTIONS --
SELECT * FROM film

SELECT ROUND(rental_rate/replacement_cost,2)*100 AS percent_cost
FROM film

-- STING FUNCTIONS --
SELECT * FROM customer

SELECT LENGTH(first_name) AS length FROM customer

SELECT first_name || last_name FROM customer

SELECT first_name || ' ' || last_name AS full_name FROM customer

SELECT UPPER(first_name) || '--' || UPPER(last_name) AS full_name FROM customer

SELECT LEFT(first_name,1) || LOWER(last_name) || '@gmail.com)' AS email FROM customer



-- -- SUBQUERY -- --
SELECT AVG(rental_rate) FROM film

SELECT title, rental_rate	
FROM film
WHERE rental_rate > 
(SELECT AVG(rental_rate) FROM film) 

SELECT * FROM rental
SELECT * FROM inventory

SELECT * FROM rental
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30'

SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30'

SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id	

SELECT first_name, last_name
FROM customer 
WHERE EXISTS
(SELECT * FROM payment 
WHERE payment.customer_id = customer.customer_id
AND amount > 11)

-- SELF JOINS --
SELECT * FROM film

SELECT title,length FROM film
WHERE length = 117

SELECT f1.title, f2.title, f1.length
FROM film as f1
INNER JOIN film AS f2 ON 
f1.film_id = f2.film_id
AND f1.length = f2.length

SELECT f1.title, f2.title, f1.length
FROM film as f1
INNER JOIN film AS f2 ON 
f1.film_id != f2.film_id
AND f1.length = f2.length

-- CASE --
SELECT * FROM customer

SELECT customer_id,
CASE
	WHEN ( customer_id <=100 ) THEN 'Premium'
	WHEN ( customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal'
END AS customer_class
FROM customer

SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS lottery_results
FROM customer

SELECT * FROM film

SELECT rental_rate,
CASE rental_rate 
	WHEN 0.99 THEN 1
	ELSE 0
END
FROM film

SELECT 
SUM(CASE rental_rate 
	WHEN 0.99 THEN 1
	ELSE 0
END) AS bargains,
SUM(CASE rental_rate 
	WHEN 2.99 THEN 1
	ELSE 0
END) AS regular,
SUM(CASE rental_rate 
	WHEN 4.99 THEN 1
	ELSE 0
END) AS premium
FROM film

-- CAST -- 
SELECT CAST( '5' AS INTEGER ) AS new_int
SELECT CAST( 'five' AS INTEGER )

SELECT '5' :: INTEGER
SELECT 'five' :: INTEGER

SELECT * FROM rental

SELECT CAST(inventory_id AS VARCHAR) FROM rental
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental

SELECT CHAR_LENGTH(inventory_id) FROM rental

-- VIEWS --
SELECT * FROM customer
SELECT * FROM address

SELECT first_name, last_name,address FROM customer
INNER JOIN 	address
ON customer.address_id = address.address_id

CREATE VIEW customer_info AS
SELECT first_name, last_name,address FROM customer
INNER JOIN 	address
ON customer.address_id = address.address_id

SELECT * FROM customer_info

CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name,address,district FROM customer
INNER JOIN 	address
ON customer.address_id = address.address_id

SELECT * FROM customer_info


