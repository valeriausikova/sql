-- Задание: 46 (2003-02-14)  
-- Для каждого корабля, участвовавшего в сражении при Гвадалканале (Guadalcanal), вывести название, водоизмещение и число орудий.

SELECT Outcomes.ship, 
       displacement, 
       numGuns
  FROM Outcomes
  LEFT JOIN 
            (SELECT name AS ship,
                    displacement,
                    numGuns
               FROM Ships
               JOIN Classes 
                 ON Ships.class = Classes.class

              UNION

             SELECT class AS ship, 
                    displacement, 
                    numGuns
               FROM Classes
            ) q
    ON Outcomes.ship = q.ship
 WHERE battle = 'Guadalcanal';
