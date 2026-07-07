use junebatch2;

CREATE TABLE products (
proId int primary key auto_increment,
name varchar(30) not null,
price float not null,
category enum("veg","fruit","gadget","electronics")
);

INSERT INTO products(name, price, category) VALUES
("apple", 100, "fruit"),
("banana", 50, "fruit"),
("carrot", 30, "veg"),
("laptop", 50000, "electronics"),
("headphones", 2000, "electronics"),
("mango", 120, "fruit"),
("broccoli", 40, "veg"),
("smartphone", 30000, "electronics"),
("grapes", 80, "fruit"),
("spinach", 20, "veg"),
("tablet", 15000, "electronics"),
("cucumber", 25, "veg"),
("orange", 90, "fruit"),
("camera", 25000, "electronics"),
("pepper", 15, "veg"),
("kiwi", 110, "fruit"),
("monitor", 10000, "electronics"),
("tomato", 35, "veg"),
("strawberry", 70, "fruit"),
("keyboard", 1500, "electronics"),
("onion", 20, "veg"),
("blueberry", 200, "fruit"),
("mouse", 800, "electronics"),
("garlic", 10, "veg"),
("watermelon", 60, "fruit"),
("printer", 7000, "electronics"),
("lettuce", 15, "veg"),
("peach", 85, "fruit"),
("speaker", 3000, "electronics"),
("zucchini", 18, "veg");


SELECT category, count(*), avg(price) from products group by category
HAVING avg(price)>50;

select count(price) from products;
select sum(price) from products;
select avg(proId) from products;
select min(price) from products;
select max(price) from products;


select avg(price) from products;  
select avg(price) from products where price > avg(price);

select name, 4849.766666666666 as avgPrice from products;

select * from products;

SELECT name, AVG(price) AS average_price
FROM products
GROUP BY name;
