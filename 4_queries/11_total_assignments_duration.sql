SELECT day, COUNT(assignments) AS number_of_assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY day;

-- SELECT day, COUNT(assignments) AS number_of_assignments, COUNT(duration)
-- FROM assignments
-- ORDER BY day;