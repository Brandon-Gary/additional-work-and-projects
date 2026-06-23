WITH bp_elevated AS (
SELECT
  hs_bpsys_fin,
  hs_bpdia_fin,
  COUNT(*) OVER () AS total_tests
FROM bigquery-project-494619.health_screening_data.march_26
)
SELECT
  total_tests,
  COUNT(hs_bpsys_fin) as total_elevated
FROM bp_elevated
WHERE hs_bpsys_fin >= 130 AND hs_bpdia_fin >= 80
GROUP BY total_tests