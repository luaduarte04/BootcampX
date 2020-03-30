SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration
FROM students
INNER JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;


-- SELECT students.name AS student, AVG(assignments.duration) AS average_assignment_duration
-- FROM assigments
-- INNER JOIN students ON students.id = student_id
-- INNER JOIN assignment_submissions ON assignment_submissions.assignment_id = student_id
-- INNER JOIN assignments ON assignments.id = assignment_id
-- WHERE students.end_date IS NULL
-- ORDER BY average_assignment_duration ASC;