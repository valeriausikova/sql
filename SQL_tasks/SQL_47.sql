-- Задание: 47 (2019-06-07)  
-- Определить страны, которые потеряли в сражениях все свои корабли.

WITH cte AS
(
    SELECT country,
            name,
            result
       FROM Classes
       JOIN Ships
         ON Ships.class = Classes.class
       LEFT JOIN Outcomes 
         ON Outcomes.ship = Ships.name

      UNION

     SELECT country, 
            ship AS name, 
            result
       FROM Outcomes
       JOIN Classes 
         ON Outcomes.ship = Classes.class
)

SELECT a.country
  FROM
       (SELECT country, 
               COUNT(DISTINCT name) AS c_n
          FROM cte
         GROUP BY country
       ) q1
  JOIN 
       (SELECT country, 
               COUNT(DISTINCT name) AS c_s
          FROM cte
         WHERE result = 'sunk'
         GROUP BY country
       ) q2
    ON q1.country = q2.country
 WHERE q1.c_n = q2.c_s;
