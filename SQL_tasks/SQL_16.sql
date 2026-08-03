-- Задание: 16 (2003-02-03)  
-- Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.

SELECT a.model, b.model, a.speed, a.ram
  FROM (SELECT DISTINCT model, speed, ram
          FROM PC) AS a
  JOIN (SELECT DISTINCT model, speed, ram
          FROM PC) AS b
    ON a.speed = b.speed
   AND a.ram = b.ram AND a.model > b.model;
