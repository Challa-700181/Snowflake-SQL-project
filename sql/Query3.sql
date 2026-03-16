SELECT ENTITY,
DAY AS peak_day,
"Current number of COVID-19 patients in ICU per million" AS peak_icu
FROM GLOBAL_DATASET.PUBLIC.COVID_DATA
QUALIFY ROW_NUMBER() OVER(
PARTITION BY ENTITY
ORDER BY "Current number of COVID-19 patients in ICU per million" DESC) =1;

WITH peak_table AS (
SELECT ENTITY,
DAY AS peak_day,
"Current number of COVID-19 patients in ICU per million" AS peak_icu
FROM GLOBAL_DATASET.PUBLIC.COVID_DATA
QUALIFY ROW_NUMBER() OVER(
PARTITION BY ENTITY
ORDER BY "Current number of COVID-19 patients in ICU per million"
DESC) =1
)


SELECT c.ENTITY,
DATEDIFF(DAY, MIN(c.DAY), p.peak_day) AS Recovery_days
FROM GLOBAL_DATASET.PUBLIC.COVID_DATA c
JOIN peak_table p ON c.ENTITY = p.ENTITY 
WHERE c.DAY< p.peak_day
GROUP BY c.ENTITY, p.peak_day
ORDER BY Recovery_days
