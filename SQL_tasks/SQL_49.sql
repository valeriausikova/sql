-- Задание: 49 (2003-02-17)  
-- Найдите названия кораблей с орудиями калибра 16 дюймов (учесть корабли из таблицы Outcomes).

SELECT name
  FROM Classes
  JOIN Ships 
    ON Ships.class = Classes.class
 WHERE bore = 16

 UNION

SELECT Classes.class AS name
  FROM Classes
  JOIN Outcomes
    ON Outcomes.ship = Classes.class
 WHERE bore = 16;
