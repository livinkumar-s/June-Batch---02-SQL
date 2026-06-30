USE junebatch2;

CREATE TABLE cricketer (
id int primary key auto_increment,
name varchar(30) not null,
email varchar(100) not null unique,
cent int check (cent>10),
isActive boolean default 1
);

-- active cricketers
INSERT INTO cricketer (name, email, cent) VALUES ('Virat Kohli', 'virat.kohli@example.com', 15),
('Rohit Sharma', 'rohit.sharma@example.com', 12),
('MS Dhoni', 'ms.dhoni@example.com', 11);

-- inactive cricketers
INSERT INTO cricketer (name, email, cent, isActive) VALUES ('Sourav Ganguly', 'sourav.ganguly@example.com', 13, 0),
('Yuvraj Singh', 'yuvraj.singh@example.com', 14, 0);

INSERT INTO cricketer (name, email, cent) 
VALUES ("personx","per@gmail.com",10);

select * from cricketer;

CREATE TABLE jersey (
id int primary key auto_increment,
jersey int not null,
playerId int not null,
foreign key (playerId) references cricketer(id)
);

INSERT INTO jersey (jersey, playerId) values (7,3),(18,1),(45,2);
INSERT INTO jersey (jersey, playerId) values (77,13);


