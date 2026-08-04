-- Задание: 51 (2003-02-17)  
-- Найдите названия кораблей, имеющих наибольшее число орудий среди всех имеющихся кораблей такого же водоизмещения (учесть корабли из таблицы Outcomes).

WITH cte AS
(
         SELECT name,
                numGuns, 
                displacement
           FROM Classes
           JOIN Ships 
             ON Ships.class = Classes.class

          UNION

         SELECT Classes.class AS name, 
                numGuns,
                displacement
           FROM Classes
           JOIN Outcomes
             ON Outcomes.ship = Classes.class
)

SELECT DISTINCT name
  FROM cte
  JOIN
       (SELECT displacement, 
               MAX(numGuns) AS m
          FROM cte
         GROUP BY displacement
       ) q
    ON cte.displacement = q.displacement 
   AND cte.numGuns = q.m;
