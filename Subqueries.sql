use junebatch2;

create table students (
id int primary key auto_increment,
name varchar(30) not null,
mark int not null,
dept enum("ECE","CSE","CIVIL")
);

insert into students (name, mark, dept) values
("John", 85, "CSE"),
("Alice", 90, "ECE"),
("Bob", 75, "CIVIL"),
("Eve", 95, "CSE"),
("Charlie", 80, "ECE"),
("David", 70, "CIVIL"),
("Frank", 88, "CSE"),
("Grace", 92, "ECE"),
("Hannah", 78, "CIVIL"),
("Ivy", 84, "CSE");

SELECT * from students;

select avg(mark) from students;
select * from students where mark>83.7000;

select * from students where mark>(select avg(mark) from students);

select mark from students where dept="ECE";

SELECT * FROM students 
where mark > ANY (select mark from students where dept="ECE");

SELECT * FROM students s where 
mark>(select avg(mark) from students where dept=s.dept);

