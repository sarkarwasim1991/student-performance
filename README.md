# student-performance

# 🎓 Student Performance Database (SQL Project)

## 📌 Overview
This project demonstrates how to design and query a **Student Performance Database** using SQL.  
It includes a normalized schema with constraints, sample data, and analytical queries to showcase SQL skills.  

---

## 🗄 Database Schema

```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT CHECK(age BETWEEN 18 AND 30),
    gender ENUM('Male', 'Female', 'Other'),
    department VARCHAR(50)
);

Why this design?

| Column       | Purpose                                                 |
| ------------ | ------------------------------------------------------- |
| `student_id` | Unique identifier, auto-generated for each student      |
| `name`       | Student’s full name (cannot be NULL)                    |
| `age`        | Restricted between 18–30 with a `CHECK` constraint      |
| `gender`     | Limited to Male, Female, or Other via `ENUM`            |
| `department` | Stores the department (e.g., Computer Science, Physics) |

Additional tables:
courses → Stores available courses
enrollments → Maps students to courses (many-to-many)
attendance → Tracks student presence/absence by date
grades → Records grades for each course

📊 Features
✅ Normalized relational schema
✅ Constraints (PRIMARY KEY, CHECK, ENUM, NOT NULL)
✅ Relationships using foreign keys
✅ Sample data for testing
✅ Queries for analysis (attendance %, top students, department stats)


🚀 How to Run
1. Clone the repository: git clone https://github.com/your-username/student-performance-sql.git
cd student-performance-sql
2. Open MySQL (or your SQL tool of choice).
3. Run schema.sql to create the database.
4. Run data.sql to insert sample records.
5. Run queries.sql to explore analysis queries.

📊 Example Queries
1. Attendance Percentage
SELECT s.name,
       ROUND(SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS attendance_percentage
FROM students s
JOIN attendance a ON s.student_id = a.student_id
GROUP BY s.student_id;


2. Students Enrolled in Courses
SELECT s.name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

3. Count Students per Department
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;

This project is about managing **students, courses, attendance, and grades** using SQL.  
It includes database schema, sample data, and queries for analysis.  

👨‍💻 Built with MySQL | 📂 See `schema.sql`, `data.sql`, and `queries.sql` for details.

![image alt] (https://github.com/sarkarwasim1991/student-performance/blob/5fc319ba2708d3e37be33661a88fee4e49e8d32b/Schema.png)
---

👨‍💻 Created by Wasim Sarkar
📅 Year: 2025

