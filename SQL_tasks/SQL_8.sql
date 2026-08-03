-- Задание: 8 (2003-02-03)  
-- Найдите производителя, выпускающего ПК, но не ноутбуки.

SELECT DISTINCT p1.maker
  FROM Product AS p1
 WHERE p1.type = 'PC' 
   AND NOT EXISTS(SELECT 1
                    FROM Product AS p2
                   WHERE p1.maker = p2.maker AND p2.type = 'Laptop');
