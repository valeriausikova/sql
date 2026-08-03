-- Задание: 34 (2002-11-04)  
-- По Вашингтонскому международному договору от начала 1922 г. запрещалось строить линейные корабли водоизмещением более 35 тыс.тонн. Укажите корабли, нарушившие этот договор (учитывать только корабли c известным годом спуска на воду). Вывести названия кораблей.

SELECT Ships.name
  FROM Classes
  JOIN Ships 
    ON Classes.class = Ships.class
 WHERE Ships.launched >= 1922 
   AND Ships.launched IS NOT NULL
   AND Classes.type = 'bb' 
   AND Classes.displacement > 35000;
