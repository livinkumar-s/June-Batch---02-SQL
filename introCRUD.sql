CREATE DATABASE junebatch2;

USE junebatch2;

CREATE TABLE actor_details(
id int primary key,
name varchar(20),
age int 
);

INSERT INTO actor_details (id,name) 
VALUES (5,"PersonX");

SELECT * FROM actor_details WHERE name="PersonX";

UPDATE actor_details set age=40 WHERE id=5;

DELETE FROM actor_details WHERE id=5;

SET sql_safe_updates=1;