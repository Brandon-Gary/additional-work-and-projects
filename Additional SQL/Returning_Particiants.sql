WITH class_sum AS (
  SELECT
    participant_id,
    COUNT(*) as classes_attended
  FROM bigquery-learn-494619.EMBER.sign_ins
  GROUP BY participant_id
),
aggregated AS (
  SELECT
    COUNT(participant_id) as unique_participants,
    SUM(CASE WHEN classes_attended > 1 THEN 1 ELSE 0 END) as total_returners
  FROM class_sum
)
SELECT
  *,
  ROUND((total_returners / unique_participants)*100,2) as percent_of_participants_returning
FROM aggregated