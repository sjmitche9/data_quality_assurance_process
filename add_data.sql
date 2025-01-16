--Add movies with negative rental rate
INSERT INTO film 
    (film_id,title,description,release_year,language_id,original_language_id,rental_duration,rental_rate,length,replacement_cost,rating,special_features,last_update)
VALUES
 (1001,'Negative Movie 1', 'Negative Film 1','2024','1',NULL,'3','-0.99','120','19.99','PG',string_to_array('Deleted Scenes,Behind the Scenes',','),'2024-09-23 16:36:02.580938'),
 (1002,'Negative Movie 2', 'Negative Film 2','2024','1',NULL,'5','-0.99','90','24.99','R',string_to_array('Deleted Scenes,Behind the Scenes',','),'2024-09-23 16:36:02.580938');