SELECT ENTITY AS Country_name,MAX("Current number of COVID-19 patients in ICU per million") AS Max_icu_per_million
FROM GLOBAL_DATASET.PUBLIC.COVID_DATA
GROUP BY Country_name
ORDER BY Max_icu_per_million DESC;
