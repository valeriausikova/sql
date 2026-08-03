-- Задание: 27 (2003-02-03)  
-- Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.

SELECT maker, AVG(hd)
  FROM Product
  JOIN PC
    ON Product.model = PC.model
 WHERE maker IN 
	        (SELECT DISTINCT maker
                   FROM Product
                  WHERE type = 'Printer')
 GROUP BY Product.maker;
