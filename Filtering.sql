USE junebatch2;

SELECT * FROM actor_details WHERE age>40;
SELECT * FROM actor_details WHERE id BETWEEN 3 and 40;
SELECT * FROM actor_details WHERE age in (43,34,54,45,66,77,50,48);
SELECT * FROM actor_details WHERE age not in (43,34,54,45,66,77,50,48);

SELECT * FROM actor_details WHERE age>40 OR id<5;

SELECT * FROM actor_details WHERE name LIKE "%r";
SELECT * FROM actor_details WHERE name LIKE "%r";
SELECT * FROM actor_details WHERE name LIKE "%r%";
SELECT * FROM actor_details WHERE name LIKE "";

SELECT * FROM actor_details ORDER BY age asc;
SELECT * FROM actor_details LIMIT 2 OFFSET 4;

insert into actor_details values
(1,"Vijay", 50),
(2,"Ajith", 48),
(3,"Suriya", 45),
(4,"Karthi", 40),
(5,"Dhanush", 38),
(6,"Rajinikanth", 70),
(7,"Kamal Haasan", 65),
(8,"Vikram", 47),
(9,"Sivakarthikeyan", 35),
(10,"Jayam Ravi", 39),
(11,"Arya", 37),
(12,"STR", 36),
(13,"Nayanthara", 34),
(14,"Trisha", 33),
(15,"Anushka Shetty", 32);