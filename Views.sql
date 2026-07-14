USE junebatch2;

CREATE TABLE studentBasic (
id int primary key auto_increment,
name varchar(50) not null,
age int not null,
email varchar(100) unique not null,
phone char(10) not null unique,
mark int not null
);

INSERT INTO studentBasic (name, age, email, phone, mark) VALUES
('Bob Brown', 21, 'bob.brown@example.com', '1111111111', 92);

CREATE VIEW studentView AS SELECT name, mark from studentBasic;
CREATE VIEW teacherView AS SELECT name, age, email, mark from studentBasic;

select * from teacherView;
