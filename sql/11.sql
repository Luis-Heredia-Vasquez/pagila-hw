/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */
SELECT film.film_id, film.title, COUNT(*)
FROM film
JOIN inventory USING (film_id)
WHERE film.title LIKE 'H%'
GROUP BY film.film_id, film.title
ORDER BY film.title DESC;

