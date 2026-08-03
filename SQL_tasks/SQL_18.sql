-- Задание: 18 (2003-02-03)  
-- Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

SELECT DISTINCT pr.maker, p.price
  FROM Product AS pr
  JOIN Printer AS p 
    ON pr.model = p.model
 WHERE p.color = 'y' AND p.price = (SELECT MIN(price)
                                      FROM Printer
                                     WHERE color = 'y');

