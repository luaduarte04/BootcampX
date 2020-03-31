SELECT cohorts.name AS name, AVG(completed_at - started_at) AS average_assistance_time
FROM assistance_requests
INNER JOIN students ON students.id = assistance_requests.student_id
INNER JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;


-- SELECT cohorts.name AS name, AVG(completed_at - started_at.*) AS average_assistance_time
-- FROM assistance_requests
-- INNER JOIN studentd ON students.id = student_id
-- INNER JOIN cohorts ON cohorts.id = cohort_id
-- ORDER BY average_assistance_time;