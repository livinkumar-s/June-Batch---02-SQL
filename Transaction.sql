create table bank (
id int primary key auto_increment,
name varchar(30),
balance float
);

insert into bank (name, balance) values
("John", 1000),
("Alice", 1500),
("Bob", 800),
("Eve", 2000),
("Charlie", 1200),
("David", 500),
("Frank", 1800),
("Grace", 2200),
("Hannah", 900),
("Ivy", 1600);

select * from bank;

select @@autocommit;
set autocommit=0;

update bank set balance=0 where id=2;
commit;
rollback;


select * from bank;

START TRANSACTION;
update bank set balance=balance-500 where id=1;
update bank set balance=balance+500 where id=2;
SAVEPOINT firstTransaction;
update bank set balance=balance-100 where id=3;
update bank set balance=balance+100 where id=4;
COMMIT;
ROLLBACK to firstTransaction;

update bank set balance=balance+500 where id=1;


