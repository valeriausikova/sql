-- Задание: 7 (2002-11-02)
-- Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT p.model, pc.price
  FROM Product AS p
  JOIN PC AS pc 
    ON p.model = pc.model
 WHERE p.type = 'PC' AND maker = 'B'

 UNION

SELECT p.model, l.price
  FROM Product AS p
  JOIN Laptop AS l
    ON p.model = l.model
 WHERE p.type = 'Laptop' AND maker = 'B'

 UNION 

SELECT p.model, pr.price
  FROM Product AS p
  JOIN Printer AS pr 
    ON p.model = pr.model
 WHERE p.type = 'Printer' AND maker = 'B';
