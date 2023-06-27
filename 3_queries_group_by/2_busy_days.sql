SELECT day, COUNT(assignments.day) AS total_assignments
FROM assignments
GROUP BY assignments.day
HAVING COUNT(assignments.day) >= 10
ORDER BY day ASC;