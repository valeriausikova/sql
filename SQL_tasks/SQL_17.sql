-- Задание: 17 (2003-02-03)
-- Найдите модели ноутбуков, скорость которых меньше скорости каждого из ПК. Вывести: type, model, speed

SELECT DISTINCT p.type, l.model, l.speed
  FROM Laptop AS l
  JOIN (SELECT type, model 
          FROM Product) AS p 
    ON p.model = l.model
 WHERE l.speed < ALL(SELECT speed 
                       FROM PC);
