-- Задание: 29 (2003-02-14)  
-- В предположении, что приход и расход денег на каждом пункте приема фиксируется не чаще одного раза в день [т.е. первичный ключ (пункт, дата)], написать запрос с выходными данными (пункт, дата, приход, расход). Использовать таблицы Income_o и Outcome_o. 

SELECT 
       CASE
            WHEN i.inc IS NOT NULL 
            THEN i.point 
            ELSE o.point 
        END AS "пункт",

       CASE
            WHEN i.inc IS NOT NULL 
            THEN i.date 
            ELSE o.date 
        END AS "дата",

       i.inc AS "приход",
       o.out AS "расход"

  FROM Income_o AS i
  FULL JOIN Outcome_o AS o
    ON i.point = o.point 
   AND i.date = o.date;
