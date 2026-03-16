SELECT DAY AS peak_time,SUM("Current number of COVID-19 patients in ICU per million") AS global_icu_burden FROM GLOBAL_DATASET.PUBLIC.COVID_DATA
GROUP BY DAY
ORDER BY SUM("Current number of COVID-19 patients in ICU per million") DESC
LIMIT 200;