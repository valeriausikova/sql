-- Задание: 14 (2002-11-05)  
-- Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

SELECT s.class, s.name, country
  FROM Ships AS s
  JOIN Classes AS c
    ON c.class = s.class
 WHERE numGuns >= 10;
