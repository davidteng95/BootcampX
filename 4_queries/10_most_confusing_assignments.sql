SELECT assistance_requests.assignment_id AS id, assignments.name AS name, assignments.day AS day, assignments.chapter AS chapter, COUNT(*) AS total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assistance_requests.assignment_id
GROUP BY assistance_requests.assignment_id, assignments.name, assignments.day, assignments.chapter
ORDER BY total_requests DESC;




-- SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
-- FROM assignments
-- JOIN assistance_requests ON assignments.id = assignment_id
-- GROUP BY assignments.id
-- ORDER BY total_requests DESC;