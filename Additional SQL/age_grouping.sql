WITH age_cte AS (
SELECT
  record_id,
  DATE_DIFF(CAST(sna_intdate_1 AS DATE), sna_dob_1, year) as age
FROM bigquery-learn-494619.health_screening_data.march_26
ORDER BY age ASC
),
age_group_cte AS (
SELECT
  age,
  CASE
    WHEN age >= 18 AND age <= 24 THEN "18-24"
    WHEN age >= 25 AND age <= 34 THEN "25-34"
    WHEN age >= 35 AND age <= 44 THEN "35-44"
    WHEN age >= 45 AND age <= 54 THEN "45-54"
    WHEN age >= 55 AND age <= 64 THEN "55-64"
    WHEN age >= 65 AND age <= 74 THEN "65-74"
    WHEN age >= 75 THEN "75+"
    ELSE "Unknown" END AS age_group
FROM age_cte
)
SELECT
  age_group,
  COUNT(age_group) as total
FROM age_group_cte
GROUP BY age_group
ORDER BY age_group ASC