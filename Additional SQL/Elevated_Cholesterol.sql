WITH chol_cte AS (
SELECT
  hs_chol_fin,
  COUNT(*) OVER () AS total_tests
FROM bigquery-project-494619.health_screening_data.march_26
)
SELECT
  total_tests,
  COUNT(hs_chol_fin) as total_elevated
FROM chol_cte
WHERE hs_chol_fin >= 240
GROUP BY total_tests