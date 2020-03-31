SELECT AVG(total_duration) as average_total_duration
FROM (
  SELECT cohorts.name AS cohort, SUM(completed_at - started_at) AS total_duration
  FROM assistance_requests
  INNER JOIN students ON students.id = student_id
  INNER JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) AS total_durations;


-- SELECT SUM(completed_at - started_at) AS average_total_duration
-- FROM assistance_requests
-- INNER JOIN students ON students.id = student_id
-- INNER JOIN cohorts ON cohorts.id = cohort_id
-- ORDER BY total_duration;