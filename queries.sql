-- 1. Get all students
SELECT * FROM students;

-- 2. Get unique departments
SELECT DISTINCT department FROM students;

-- 3. Count students per department
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;

-- 4. Students with their courses
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- 5. Attendance percentage per student
SELECT s.name,
       ROUND(SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attendance_percentage
FROM students s
JOIN attendance a ON s.student_id = a.student_id
GROUP BY s.student_id;

-- 6. Students with Grade 'A'
SELECT s.name, c.course_name, g.grade
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN courses c ON g.course_id = c.course_id
WHERE g.grade = 'A';
