SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assistance_requests) AS total_assistances
FROM teachers
INNER JOIN assistance_requests ON teacher_id = teachers.id
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;


-- SELECT teachers.name AS teachers, cohorts.name AS cohort, COUNT(assistance_requests) AS total_assistances
-- FROM total_assistances
-- INNER JOIN assistance_requests ON teacher_id = teachers.id
-- INNER JOIN students ON student_id = students.id
-- INNER JOIN cohorts ON cohort_id = cohorts.id
-- WHERE cohorts.name = 'JUL02'
-- ORDER BY teacher;