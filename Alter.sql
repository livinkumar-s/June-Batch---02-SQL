SELECT * FROM actors;

ALTER TABLE actor_details ADD LastMovie varchar(200) FIRST, 
ADD FirstMovie varchar(100) AFTER age;

ALTER TABLE actor_details MODIFY name VARCHAR(100);
ALTER TABLE actor_details CHANGE spouse spouseName VARCHAR(20);
ALTER TABLE actor_details RENAME COLUMN spouseName TO spouse;
ALTER TABLE actor_details DROP COLUMN LastMovie;

ALTER TABLE actor_details RENAME TO actors;