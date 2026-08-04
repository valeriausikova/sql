-- Задание: 50 (2002-11-05)  
-- Найдите сражения, в которых участвовали корабли класса Kongo из таблицы Ships.

SELECT DISTINCT battle
  FROM Outcomes
  JOIN Ships 
    ON Ships.name = Outcomes.ship
 WHERE class = 'Kongo';
