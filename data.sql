INSERT INTO students (name, age, gender, department) VALUES
('Alice Johnson', 20, 'Female', 'Computer Science'),
('Bob Smith', 22, 'Male', 'Mathematics'),
('Charlie Brown', 19, 'Male', 'Physics'),
('Diana White', 21, 'Female', 'Computer Science'),
('Ethan Hall', 23, 'Male', 'Chemistry');


INSERT INTO courses (course_name, department) VALUES
('Database Systems', 'Computer Science'),
('Linear Algebra', 'Mathematics'),
('Quantum Mechanics', 'Physics'),
('Organic Chemistry', 'Chemistry');

INSERT INTO enrollments (student_id, course_id) VALUES
(1, 1), (2, 2), (3, 3), (4, 1), (5, 4);

INSERT INTO attendance (student_id, date, status) VALUES
(1, '2025-09-01', 'Present'),
(1, '2025-09-02', 'Absent'),
(2, '2025-09-01', 'Present'),
(3, '2025-09-01', 'Absent'),
(4, '2025-09-01', 'Present'),
(5, '2025-09-01', 'Leave');

INSERT INTO grades (student_id, course_id, grade) VALUES
(1, 1, 'A'),
(2, 2, 'B'),
(3, 3, 'C'),
(4, 1, 'B'),
(5, 4, 'A');