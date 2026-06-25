USE junebatch2;

select name as actorName, "He is an actor" as detail from actor_details;

SELECT "Hello" as result;
SELECT ROUND(9.78951754,4) as result;
SELECT floor(6.9999999) as result;
SELECT ceil(6.00000000001) as result;
SELECT ABS(55) as result;
SELECT MOD(4,5) as result;
SELECT power(4,5) as result;

SELECT concat("Hello"," ","World","...!") as result;
SELECT length("Hello world") as result;
SELECT LOWER("Hello"), UPPER("Hello");

select concat(trim("     hello world         "),".") as result;
select concat(ltrim("     hello world         "),".") as result;
select concat(rtrim('     hello world         '),".") as result;


select substring("Virat Kohli",7,5) as result;
select replace("hi hi hi world","hi","hello") as result;

select curdate();
select curtime();
select now();

select datediff("2026-06-30",curdate()) as diff;

select * from actor_details;

select mod(age,2) as result from actor_details;


SELECT CONCAT(
   'His name is ',
   UPPER(name),
   '. He is ',
   age,
   ' years old.'
) AS details
FROM actor_details;

