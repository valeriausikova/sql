-- Задание: 15 (2003-02-03)  
-- Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD

SELECT hd
  FROM PC
 GROUP BY hd
HAVING COUNT(hd) >= 2;
