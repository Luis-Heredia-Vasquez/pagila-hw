/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
SELECT film.title
FROM film
JOIN film_category USING (film_id)
JOIN category USING (category_id)
WHERE category.name = 'Family'
ORDER BY film.title;
