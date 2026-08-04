-- Задание: 40 (2012-04-20)
-- Найти производителей, которые выпускают более одной модели, при этом все выпускаемые производителем модели являются продуктами одного типа. Вывести: maker, type

SELECT maker, type
  FROM Product
 WHERE maker IN 
                (SELECT maker
                   FROM Product
                  GROUP BY maker
                 HAVING COUNT(DISTINCT type) = 1)
 GROUP BY maker, type
HAVING COUNT(model) > 1;
