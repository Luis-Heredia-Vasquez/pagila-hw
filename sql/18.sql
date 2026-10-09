/*
 * Rank actors by how many films they appear in (most films first). Ties share a rank.
 *
 * HINT:
 * Join actor with film_actor.
 * Then use a window function with an appropriate ORDER BY clause (no PARTITION BY).
 */
SELECT actor.actor_id,
       actor.first_name,
       actor.last_name,
       COUNT(film_actor.film_id) AS films,
       RANK() OVER (ORDER BY COUNT(film_actor.film_id) DESC) AS rnk
FROM actor
JOIN film_actor USING (actor_id)
GROUP BY actor.actor_id, actor.first_name, actor.last_name
ORDER BY rnk, actor.actor_id;
