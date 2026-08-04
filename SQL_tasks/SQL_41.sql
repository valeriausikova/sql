-- Задание: 41 (2019-05-31)  
-- Для каждого производителя, у которого присутствуют модели хотя бы в одной из таблиц PC, Laptop или Printer, определить максимальную цену на его продукцию.   
-- Вывод: имя производителя, если среди цен на продукцию данного производителя присутствует NULL, то выводить для этого производителя NULL, иначе максимальную цену.

SELECT maker, 
       CASE
            WHEN COUNT(*) <> COUNT(price) 
            THEN NULL 
            ELSE MAX(price)
       END AS max_price
  FROM
       (SELECT maker, PC.model, PC.price
          FROM Product
          JOIN PC 
            ON Product.model = PC.model

         UNION ALL

        SELECT maker, Laptop.model, Laptop.price
          FROM Product
          JOIN Laptop
            ON Product.model = Laptop.model

         UNION ALL

        SELECT maker, Printer.model, Printer.price
          FROM Product
          JOIN Printer
            ON Product.model = Printer.model) AS q
 GROUP BY maker;
