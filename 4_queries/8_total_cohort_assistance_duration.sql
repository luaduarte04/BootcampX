SELECT cohorts.name AS cohort, SUM(completed_at - started_at) AS total_duration
FROM assistance_requests
INNER JOIN students ON students.id = student_id
INNER JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;


-- SELECT cohorts.name AS cohort, COUNT(assistance_requests.*) AS total_duration
-- FROM assistance_requests
-- INNER JOIN students ON students.id = assistance_requests.student_id
-- INNER JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_duration;