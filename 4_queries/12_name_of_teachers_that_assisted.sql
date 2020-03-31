SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM teachers
INNER JOIN assistance_requests ON teacher_id = teachers.id
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;


-- SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
-- FROM teachers
-- INNER JOIN cohorts ON cohorts.id = teachers.id
-- WHERE cohorts.name = 'JUL02'
-- GROUP BY teacher
-- ORDER BY teacher;