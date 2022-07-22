# BY USING SUBQUERY
/*
SELECT w1.id 
FROM weather w1
WHERE  w1.temperature > 
(
 SELECT w2.temperature 
 FROM weather w2 
 WHERE w2.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY ) 
)
*/

# BY USING JOIN
SELECT w1.id
FROM weather w1
JOIN weather w2
ON DATE_SUB(w1.recorddate, INTERVAL 1 DAY) = w2.recorddate 
WHERE w1.temperature > w2.temperature

