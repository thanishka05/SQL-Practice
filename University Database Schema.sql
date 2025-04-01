Create database University;
use  University ;
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender ENUM('Male', 'Female', 'Other'),
    department_id INT,
    enrollment_date DATE
);
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    head_of_department VARCHAR(100)
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    department_id INT,
    credits INT,
    semester ENUM('Spring', 'Summer', 'Fall', 'Winter'),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
CREATE TABLE Professors (
    professor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);
CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    professor_id INT,
    course_id INT,
    semester ENUM('Spring', 'Summer', 'Fall', 'Winter'),
    year INT,
    FOREIGN KEY (professor_id) REFERENCES Professors(professor_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
CREATE TABLE Exams (
    exam_id INT PRIMARY KEY,
    course_id INT,
    exam_date DATE,
    exam_type ENUM('Midterm', 'Final'),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
CREATE TABLE Results (
    result_id INT PRIMARY KEY,
    student_id INT,
    exam_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (exam_id) REFERENCES Exams(exam_id)
);
drop table 