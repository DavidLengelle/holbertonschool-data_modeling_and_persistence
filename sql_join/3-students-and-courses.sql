SELECT students.name AS student_name, courses.title AS course_title
FROM students
INNER JOIN enrollments
ON student_id = students.id
INNER JOIN courses
ON course_id = courses.id
ORDER BY student_name ASC, course_title;