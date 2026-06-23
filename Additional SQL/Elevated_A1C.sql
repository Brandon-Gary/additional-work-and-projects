WITH a1c_elevated AS (
SELECT
  hs_a1c_fin,
  COUNT(hs_a1c_fin) OVER () AS total_screenings
FROM bigquery-project-494619.health_screening_data.march_26
)
SELECT
  total_screenings,
  COUNT(hs_a1c_fin) as total_elevated
FROM a1c_elevated
WHERE hs_a1c_fin >= 5.7
GROUP BY total_screenings