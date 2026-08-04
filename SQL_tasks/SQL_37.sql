-- Задание: 37 (2003-02-17)  
-- Найдите классы, в которые входит только один корабль из базы данных (учесть также корабли в Outcomes).

SELECT class
  FROM
       (SELECT Classes.class,
               name
          FROM Classes
	  JOIN Ships 
            ON Ships.class = Classes.class

         UNION 

        SELECT ship AS class, 
               ship AS name
          FROM Outcomes
          JOIN Classes 
            ON Classes.class = Outcomes.ship) AS q
 GROUP BY class
HAVING COUNT(name) = 1;
