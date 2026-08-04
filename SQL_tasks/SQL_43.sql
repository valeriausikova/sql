-- Задание: 43 (2011-10-28)  
-- Укажите сражения, которые произошли в годы, не совпадающие ни с одним из годов спуска кораблей на воду.

SELECT DISTINCT name
  FROM Battles
 WHERE NOT EXISTS 
                  (SELECT 1
                     FROM Ships
                    WHERE launched = YEAR(date)
                  );
