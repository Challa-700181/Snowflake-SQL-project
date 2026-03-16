WITH icu_calculations AS (
SELECT 
    ENTITY,
    DAY,
    "Current number of COVID-19 patients in ICU per million" AS icu_today,

    LAG("Current number of COVID-19 patients in ICU per million") 
        OVER(PARTITION BY ENTITY ORDER BY DAY) AS icu_previous

FROM GLOBAL_DATASET.PUBLIC.COVID_DATA
),

percent_changes AS (
SELECT
    ENTITY,
    DAY,
    icu_today,
    icu_previous,

    (icu_today - icu_previous) /
    NULLIF(icu_previous,0) * 100 AS percent_change

FROM icu_calculations
)

SELECT
    ENTITY,
    DAY,
    icu_today,
    icu_previous,
    percent_change,

    CASE
        WHEN percent_change >= 50 THEN 'SURGE'
        ELSE 'NORMAL'
    END AS surge_status,

    COUNT(CASE WHEN percent_change >= 50 THEN 1 END)
        OVER (PARTITION BY ENTITY) AS surge_count

FROM percent_changes;
