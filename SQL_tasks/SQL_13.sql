-- Задание: 13 (2002-11-02)  
-- Найдите среднюю скорость ПК, выпущенных производителем A.

SELECT AVG(speed)
  FROM PC
  JOIN Product
    ON Product.model = PC.model
 WHERE maker = 'A';
