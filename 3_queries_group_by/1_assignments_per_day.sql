SELECT day, COUNT(assignments.day) AS total_assignments
FROM assignments
GROUP BY assignments.day
ORDER BY day ASC;