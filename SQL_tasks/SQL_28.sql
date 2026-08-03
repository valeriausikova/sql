-- Задание: 28 (2012-05-04)  
-- Используя таблицу Product, определить количество производителей, выпускающих по одной модели.

SELECT COUNT(maker)
  FROM
       (SELECT maker
          FROM Product
         GROUP BY maker
        HAVING COUNT(model) = 1) AS q;
