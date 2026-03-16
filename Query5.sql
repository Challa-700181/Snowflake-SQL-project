WITH icu_consistency AS (
SELECT 
ENTITY AS country, 
AVG("Current number of COVID-19 patients in ICU per million") AS avg_icu_burden
FROM GLOBAL_DATASET.PUBLIC.COVID_DATA
GROUP BY ENTITY )

SELECT country,avg_icu_burden
FROM icu_consistency
ORDER BY avg_icu_burden ASC;
