-- Задание: 26 (2003-02-14)  
-- Найдите среднюю цену ПК и ноутбуков, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.

SELECT AVG(price)
  FROM 
       (SELECT PC.price 
	  FROM Product
	  JOIN PC
  	    ON Product.model = PC.model
	 WHERE Product.maker = 'A'

	 UNION ALL

	SELECT Laptop.price
	  FROM Product
	  JOIN Laptop 
            ON Product.model = Laptop.model
	 WHERE Product.maker = 'A') AS q;
