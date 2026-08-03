-- Задание: 32 (2003-02-17)
-- Одной из характеристик корабля является половина куба калибра его главных орудий (mw). С точностью до 2 десятичных знаков определите среднее значение mw для кораблей каждой страны, у которой есть корабли в базе данных.

SELECT country,
       CONVERT(DECIMAL(10, 2), AVG(m)) AS mw
  FROM
       (SELECT country,
               Ships.name,
               (POWER(bore, 3) / 2) AS m
          FROM Classes
          JOIN Ships
            ON Classes.class = Ships.class

         UNION

        SELECT country, 
               Outcomes.ship,
               (POWER(bore, 3) / 2) AS m
          FROM Classes
          JOIN Outcomes
            ON Classes.class = Outcomes.ship) AS q

 GROUP BY country;
