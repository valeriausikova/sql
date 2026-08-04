-- Задание: 44 (2002-12-04)  
-- Найдите названия всех кораблей в базе данных, начинающихся с буквы R.

SELECT ship
  FROM Outcomes
 WHERE ship LIKE 'R%'

 UNION

SELECT name
  FROM Ships
 WHERE name LIKE 'R%';
