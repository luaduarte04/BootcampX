SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
FROM students
INNER JOIN assignment_submissions ON student_id = students.id
INNER JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY average_assignment_duration;


-- SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration) AS average_estimated_duration
-- FROM students
-- INNER JOIN assignment_submissions ON student_id = students.id
-- INNER JOIN assignment_submissions ON assignment_id = assignments.id
-- WHERE AVG(assignment_submissions.duration) < AVG(assignments.duration)
-- GROUP BY student
-- ORDER BY average_assignment_duration DESC;