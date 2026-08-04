-- Задание: 36 (2003-02-17)  
-- Перечислите названия головных кораблей, имеющихся в базе данных (учесть корабли в Outcomes).

SELECT Classes.class
  FROM Classes
  JOIN Ships 
    ON Classes.class = Ships.class 
   AND Classes.class = Ships.name

 UNION 

SELECT Classes.class
  FROM Outcomes
  JOIN Classes 
    ON Classes.class = Outcomes.ship;
