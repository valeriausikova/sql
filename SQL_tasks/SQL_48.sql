-- Задание: 48 (2003-02-16)  
-- Найдите классы кораблей, в которых хотя бы один корабль был потоплен в сражении.

SELECT Classes.class
  FROM Classes
  JOIN Ships 
    ON Ships.class = Classes.class
  JOIN Outcomes 
    ON Outcomes.ship = Ships.name
 WHERE result = 'sunk'

 UNION

SELECT Classes.class
  FROM Classes
  JOIN Outcomes
    ON Outcomes.ship = Classes.class
 WHERE result = 'sunk';
