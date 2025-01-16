**Task 1:** Write a query to ensure that the number of active customers listed in the customer table matches the number of customers who have rentals in the rental table.

```SQL
SELECT CASE
    WHEN (SELECT COUNT(DISTINCT c.customer_id) FROM customer c WHERE c.active = 1) =
         (SELECT COUNT(DISTINCT r.customer_id) FROM rental r JOIN customer c ON r.customer_id = c.customer_id WHERE c.active = 1)
    THEN TRUE
    ELSE FALSE
END AS is_match;
```

```SQL
SELECT
    (SELECT COUNT(DISTINCT c.customer_id) FROM customer c WHERE c.active = 1) AS active_customers,
    (SELECT COUNT(DISTINCT r.customer_id) FROM rental r JOIN customer c ON r.customer_id = c.customer_id WHERE c.active = 1) AS customers_with_rentals;
```

**Task 2:** Write a query to check whether each store has a minimum number of copies of each film in their inventory (e.g., at least 3 copies per film in each store).


```SQL
SELECT store_id, film_id, COUNT(*) FROM inventory
GROUP BY store_id, film_id
HAVING COUNT(*) < 3;
```