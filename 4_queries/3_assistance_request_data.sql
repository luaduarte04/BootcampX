SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at-started_at) AS duration
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;


-- SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment,
--   (SELECT assistance_requests.started_at, assistance_requests.completed_at
--     FROM assistance_requests
--     WHERE assistance_requests.completed_at - assistance_requests.started_at) AS duration
-- FROM teachers
-- ORDER BY duration;