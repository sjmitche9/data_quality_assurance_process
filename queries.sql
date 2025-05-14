SELECT store_id, film_id, COUNT(*) 
FROM inventory
GROUP BY store_id, film_id
HAVING COUNT(*) < 3;