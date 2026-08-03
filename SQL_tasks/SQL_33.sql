-- Задание: 33 (2002-11-02)  
-- Укажите корабли, потопленные в сражениях в Северной Атлантике (North Atlantic). Вывод: ship.

SELECT ship
  FROM Outcomes
 WHERE battle = 'North Atlantic'
   AND result = 'sunk';
