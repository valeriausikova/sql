-- Задание: 25 (2003-02-14)
-- Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. Вывести: Maker

SELECT DISTINCT maker
  FROM Product
 WHERE type = 'Printer' 
   AND maker IN 
	        (SELECT DISTINCT Product.maker
                   FROM PC
                   JOIN Product 
                     ON Product.model = PC.model
                  WHERE   ram = (SELECT MIN(ram)
                                   FROM PC) 
                    AND speed = (SELECT MAX(a.speed)
                                   FROM (SELECT model, speed                                            
				  	   FROM PC
	  			  WHERE ram = (SELECT MIN(ram)
			                         FROM PC)) AS a));
