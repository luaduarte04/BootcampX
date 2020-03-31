SELECT count(assistance_requests.*) AS total_assistances, teachers.name AS name
FROM assistance_requests
INNER JOIN teachers ON teachers.id = teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;


-- SELECT count(assistance_requests.*) AS total_assistances, teachers.name AS name
-- FROM assistance_requests
-- INNER JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
-- WHERE name='Waylon Boehm';