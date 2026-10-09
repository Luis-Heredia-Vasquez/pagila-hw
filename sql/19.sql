/*
 * For each payment, show the customer's total amount paid overall.
 *
 * HINT:
 * Use a window function with a PARTITION BY (but no ORDER BY).
 */

SELECT customer.customer_id,
       customer.first_name,
       customer.last_name,
       payment.payment_id,
       payment.amount,
       SUM(payment.amount) OVER (PARTITION BY customer.customer_id) AS customer_total
FROM customer
JOIN payment USING (customer_id)
ORDER BY customer.customer_id, payment.payment_id;
