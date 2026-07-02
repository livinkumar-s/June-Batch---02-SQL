USE junebatch2;

CREATE TABLE iplTeam (
id int primary key,
team varchar(10) not null,
playerId int
);

INSERT INTO iplteam Values (4,"DC",9);

select * from cricketer;
select * from iplteam;

SELECT * FROM cricketer INNER JOIN iplteam 
ON cricketer.id=iplteam.playerId;

SELECT * FROM cricketer LEFT JOIN iplteam 
ON cricketer.id=iplteam.playerId
union
SELECT * FROM cricketer RIGHT JOIN iplteam 
ON cricketer.id=iplteam.playerId;

SELECT c.name, j.jersey,i.team 
FROM cricketer c INNER JOIN iplteam i 
ON c.id=i.playerId INNER JOIN jersey j
ON c.id=j.playerId;

SELECT * from cricketer c,iplteam i WHERE c.id=i.playerId;

SELECT * FROM cricketer CROSS JOIN iplteam;
