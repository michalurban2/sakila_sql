SELECT * FROM actor;

SELECT first_name, last_name
FROM sakila.public.actor;


SELECT actor.first_name AS firstName, actor.last_name AS lastName
FROM sakila.public.actor;

SELECT first_name, last_name
FROM actor
ORDER BY first_name;

SELECT first_name, last_name
FROM actor
ORDER BY first_name DESC;

SELECT first_name, last_name
FROM actor
ORDER BY first_name, last_name;

SELECT first_name, last_name
FROM actor
ORDER BY first_name, last_name DESC;

SELECT first_name, last_name
FROM actor
ORDER BY first_name DESC, last_name;

SELECT *
FROM film;

SELECT (replacement_cost - rental_rate)
FROM film;

SELECT replacement_cost - rental_rate AS costDiff, replacement_cost, rental_rate
FROM film
ORDER BY costDiff;

SELECT length / 60 as lenghtHour
FROM film;

SELECT rental_rate                 AS RentalRate,
       rental_rate + 3 * 4 - 1     AS Result1,
       (rental_rate + 3) * 4 - 1   AS Result2,
       (rental_rate + 3) * (4 - 1) AS Result3,
       rental_rate + (3 * 4) - 1   AS Result4
FROM film;

SELECT replacement_cost     AS ReplacementCost,
       replacement_cost / 5 AS DecimalRentalRate,
       replacement_cost % 5 AS RemainderRentalRate
FROM film;

SELECT *
FROM payment;

SELECT amount,
       ROUND(amount)    AS Amnt,
       ROUND(amount, 1) AS Amnt1,
       FLOOR(amount)    AS Amnt2,
       CEILING(amount)  AS Amnt3
FROM payment;


SELECT ROUND(4.44, 1);
SELECT ROUND(4.45, 1);

SELECT concat(first_name, ' ', last_name) AS fullName,
       first_name || last_name AS fullName2
--        first_name + actor.last_name AS  fullName3
FROM actor;


SELECT concat(first_name, ' ', last_name) AS fullName,
        concat(left(first_name, 1), '.', left(last_name, 1), '.') as Initias
FROM actor;

SELECT concat(first_name, ' ', last_name) AS fullName,
        concat(left(first_name, 1), '.', left(last_name, 1), '.') as Initias,
        reverse(first_name) As reverseName,
        replace(last_name, 'S', '$')
FROM actor;

SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id = 100;


SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name < 'NICK';


SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name != 'NICK';


SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name <> 'NICK';


SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'KENNETH' AND actor_id < 100;

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name < 'NICK' ANd last_name = 'TEMPLE';

SELECT *
FROM actor
WHERE (first_name = 'KENNETH' AND actor_id < 100)
   OR last_name = 'TEMPLE';

SELECT *
FROM actor
WHERE first_name = 'KENNETH'
  AND (actor_id < 100 OR last_name = 'TEMPLE');

SELECT *
FROM actor
WHERE (first_name = 'KENNETH' OR last_name = 'TEMPLE')
  AND actor_id < 100;

SELECT *
FROM actor
WHERE first_name = 'KENNETH'
   OR (last_name = 'TEMPLE' AND actor_id < 100);

SELECT *
FROM actor
WHERE NOT (first_name = 'KENNETH' OR (last_name = 'TEMPLE' AND actor_id < 100));

SELECT *
FROM actor
WHERE first_name = 'KENNETH'
   OR NOT (last_name = 'TEMPLE' AND actor_id < 100);

SELECT *
FROM actor
WHERE NOT (last_name = 'TEMPLE' OR NOT actor_id < 100);

SELECT *
FROM actor
WHERE first_name IN ('JOHNNY', 'NICK', 'VIVIEN', 'JOE');


SELECT *
FROM actor
WHERE first_name IN ('JOHNNY', 'NICK', 'VIVIEN', 'JOE')
    AND actor_id IN (SELECT actor_id
                     FROM actor
                     WHERE last_name = 'DEGENERES');


SELECT *
FROM actor
WHERE actor_id>= 10 AND actor_id <= 20;



SELECT *
FROM actor
WHERE actor_id BETWEEN 10 AND 20;



SELECT *
FROM actor
WHERE actor_id BETWEEN NOT 10 AND 20;


SELECT *
FROM actor
WHERE first_name LIKE 'A%';

SELECT *
FROM actor
WHERE first_name LIKE 'AL%';
-- o lub więcej dowolnych znaków


SELECT *
FROM actor
WHERE first_name LIKE 'A__E%';

SELECT *
FROM actor
WHERE first_name NOT LIKE 'A%' AND first_name NOT LIKE 'A%E%';


SELECT *
FROM actor
WHERE NOT (first_name LIKE 'A%' OR first_name  LIKE 'A%E%');


SELECT *
FROM actor
ORDER BY actor_id
LIMIT 5;


SELECT *
FROM actor
ORDER BY actor_id
LIMIT 5 OFFSET 10;

