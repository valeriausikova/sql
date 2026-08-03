-- Задание: 24 (2003-02-03)  
-- Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.

WITH cte AS
     (SELECT Product.model, price
        FROM Product
        JOIN PC 
          ON Product.model = PC.model
	
       UNION
	
      SELECT Product.model, price
        FROM Product
        JOIN Laptop 
          ON Product.model = Laptop.model
	
       UNION
	
      SELECT Product.model, price
        FROM Product
        JOIN Printer 
          ON Product.model = Printer.model)

SELECT model
  FROM cte
 WHERE price = (SELECT MAX(price)
                  FROM cte);
