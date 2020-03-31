SELECT assignments.id AS id, students.name AS name, assignments.day AS day, assignments.chapter AS chapter, COUNT(assistance_requests) AS total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;


-- SELECT assignments.id AS id, students.name AS name, assignments.day AS day, assignments.chapter AS chapter, COUNT(assistance_requests.*) AS total_requests
-- FROM assistance_requests
-- INNER JOIN students ON students.id = assistance_requests.student_id
-- INNER JOIN assignments ON assignments.id = assignments_id
-- GROUP BY name
-- ORDER BY total_requests;