-- Задание: 23 (2003-02-14)  
-- Найдите производителей, которые производили бы как ПК со скоростью не менее 750 МГц, так и ноутбуки со скоростью не менее 750 МГц. Вывести: Maker.

SELECT maker
  FROM Product
  JOIN PC 
    ON Product.model = PC.model 
 WHERE speed >= 750

INTERSECT

SELECT maker
  FROM Product
  JOIN Laptop 
    ON Product.model = Laptop.model
 WHERE speed >= 750;
