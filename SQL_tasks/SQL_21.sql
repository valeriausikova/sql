-- Задание: 21 (2003-02-13)
-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC. Вывести: maker, максимальная цена.

SELECT maker, MAX(price)
  FROM PC
  JOIN Product
    ON PC.model = Product.model
 GROUP BY maker;
