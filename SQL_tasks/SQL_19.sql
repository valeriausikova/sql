-- Задание: 19 (2003-02-13)  
-- Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ноутбуков. Вывести: maker, средний размер экрана.

SELECT maker, AVG(screen)
  FROM Product
  JOIN Laptop
    ON Laptop.model = Product.model
 GROUP BY maker;
