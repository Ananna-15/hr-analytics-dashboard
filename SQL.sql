
use hr_analytics;
select * from data;

SELECT COUNT(*) 
FROM data 
WHERE `Left` = 1;
SELECT 
    ROUND(
        COUNT(CASE WHEN `left` = 1 THEN 1 END) * 100.0 / COUNT(*),
        2
    ) AS attrition_rate
FROM data;
SELECT
 COUNT( CASE WHEN `left`=1 THEN 1 END)*100.0/ count(*)
 as attrition_rate from data;
SELECT  salary,
COUNT(CASE WHEN `left`=1 THEN 1 END)*100.0/ count(*)
AS attrition_rate FROM data GROUP BY salary ORDER BY attrition_rate DESC;

SELECT department,
 COUNT( CASE WHEN `left`=1 THEN 1 END)*100.0/ count(*)
 AS attrition_rate FROM DATA GROUP BY  department ORDER BY attrition_rate DESC;
 
 SELECT average_montly_hours,
 COUNT(CASE WHEN `left`=1 THEN 1 END)*100.0/ COUNT(*)
 AS attrition_rate FROM data GROUP BY average_montly_hours ORDER BY attrition_rate DESC;

