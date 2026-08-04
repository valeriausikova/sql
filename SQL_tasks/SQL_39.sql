-- Задание: 39 (2003-02-14)  
-- Найдите корабли, `сохранившиеся для будущих сражений`; т.е. выведенные из строя в одной битве (damaged), они участвовали в другой, произошедшей позже.

SELECT DISTINCT ship
  FROM Battles b1
  JOIN Outcomes o1 
    ON o1.battle = b1.name
 WHERE result = 'damaged' 
   AND EXISTS 
              (SELECT 1
                 FROM Battles b2
                 JOIN Outcomes o2 
                   ON o2.battle = b2.name
                WHERE o1.ship = o2.ship 
                  AND b2.date > b1.date);
