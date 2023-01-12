/* LIKE & ILIKE */
SELECT * FROM customer
WHERE first_name ILIKE '%s%'

SELECT * FROM customer
WHERE first_name LIKE 'J%' AND last_name LIKE 'S%'

SELECT * FROM customer
WHERE first_name LIKE 'j%' AND last_name LIKE 's%'

SELECT * FROM customer
WHERE first_name ILIKE 'j%' AND last_name ILIKE 's%'

SELECT * FROM customer
WHERE first_name LIKE '%er%'

SELECT * FROM customer
WHERE first_name LIKE '_er%'

SELECT * FROM customer
WHERE first_name LIKE 'A%' 
ORDER BY last_name

/* AGGREGATE FUNCTIONS */
SELECT * FROM film

SELECT MIN(replacement_cost) FROM film

SELECT MAX(replacement_cost),replacement_cost FROM film

SELECT MAX(replacement_cost),MIN(replacement_cost) FROM film

SELECT AVG(replacement_cost) FROM film
SELECT ROUND(AVG(replacement_cost),3) FROM film

SELECT SUM(replacement_cost) FROM film

SELECT COUNT(*) FROM film

/* GROUP BY */
/* Basic Syntax
   SELECT category_column_name, AGG(data_column_name) FROM table_name
   GROUP BY category_column_name
	
   SELECT category_column_name, AGG(data_column_name) FROM table_name
   WHERE category_column_name CONDITION
   GROUP BY category_column_name */
   
SELECT * FROM payment

SELECT customer_id FROM payment
GROUP BY customer_id

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount)

SELECT customer_id, staff_id, SUM(amount) FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id

SELECT DATE(payment_date),SUM(amount) FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount)

/* HAVING */
SELECT * FROM payment

SELECT 
	customer_id, 
	SUM(amount) AS total_money_spent 
FROM 
	payment
WHERE
	customer_id < 100
GROUP BY 
	customer_id
HAVING
	SUM(amount) > 100


SELECT customer_id, SUM(amount) FROM payment
WHERE customer_id NOT IN (184,87,477)
GROUP BY customer_id

SELECT customer_id, SUM(amount) FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200

SELECT store_id, COUNT(customer_id) FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300

/* AS */
SELECT COUNT(amount) FROM payment

SELECT COUNT(amount) AS num_transactions FROM payment 

SELECT customer_id, SUM(amount) AS total_spent FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100

SELECT customer_id, SUM(amount) AS total_spent FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100

/* INNER JOIN */
/* Basic Syntax
   SELECT * FROM TableA
   INNER JOIN TableB
   ON TableA.col = TableB.col */
   
SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id

SELECT payment_id, customer.customer_id, first_name FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id

/* FULL OUTER JOIN */
/* Basic Syntax
   SELECT * FROM TableA
   FULL OUTER JOIN TableB
   ON TableA.col = TableB.col */

/* SELECT * FROM TableA
   LFT OUTER JOIN TableB
   ON TableA.col = TableB.col 
   WHERE TableA.col IS NULL or TableB.col IS NULL */

SELECT * FROM payment
SELECT * FROM customer

SELECT * FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id

SELECT * FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id
WHERE customer.customer_id IS NULL OR payment.payment_id IS NULL

SELECT COUNT(DISTINCT customer_id) FROM payment
SELECT COUNT(DISTINCT customer_id) FROM customer


/* LEFT OUTER JOIN */
/* Basic Syntax
   SELECT * FROM TableA
   LEFT OUTER JOIN TableB
   ON TableA.col = TableB.col */

/* SELECT * FROM TableA
   LEFT OUTER JOIN TableB
   ON TableA.col = TableB.col 
   WHERE TableB.col IS NULL */

SELECT * FROM film
SELECT * FROM inventory

SELECT film.film_id, title, inventory_id,store_id FROM film
LEFT OUTER JOIN inventory
ON inventory.film_id = film.film_id

SELECT film.film_id, title, inventory_id,store_id FROM film
LEFT OUTER JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL



