SELECT courses.title AS course_title, students.name AS student_name
FROM courses
LEFT JOIN enrollments
ON course_id = courses.id
LEFT JOIN students
ON student_id = students.id
ORDER BY course_title ASC, student_name ASC;