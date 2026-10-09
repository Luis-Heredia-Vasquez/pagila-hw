/*
 * For each film, show how many actors appear in it.
 *
 * HINT:
 * Join film and film_actor.
 * Use a window function that does NOT need an ORDER BY clause inside OVER.
 */

SELECT film.title,
       COUNT(film_actor.actor_id) OVER (PARTITION BY film.film_id) AS actor_count
FROM film
JOIN film_actor USING (film_id)
ORDER BY actor_count DESC, film.film_id;



