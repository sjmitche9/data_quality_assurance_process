-- use this file to run queries if using vscode or similar IDE

CREATE TABLE IF NOT EXISTS rental_fixed AS
SELECT rental_id, rental_date,
       CASE
          WHEN return_date < rental_date THEN return_date + INTERVAL '1 day'
          ELSE return_date
       END AS return_date
FROM rental;