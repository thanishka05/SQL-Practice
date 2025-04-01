use  University ;
INSERT INTO Departments VALUES
(1, 'Computer Science', 'Dr. Sharma'),
(2, 'Mechanical Engineering', 'Dr. Prasad'),
(3, 'Electrical Engineering', 'Dr. Rao'),
(4, 'Civil Engineering', 'Dr. Kumar'),
(5, 'Information Technology', 'Dr. Desai'),
(6, 'Mathematics', 'Dr. Mehta'),
(7, 'Physics', 'Dr. Iyer'),
(8, 'Chemistry', 'Dr. Singh'),
(9, 'Biotechnology', 'Dr. Nair'),
(10, 'Economics', 'Dr. Joshi');
INSERT INTO Students VALUES
(1, 'Amit', 'Sharma', '2000-04-15', 'Male', 1, '2018-08-15'),
(2, 'Priya', 'Patel', '1999-06-22', 'Female', 2, '2017-08-15'),
(3, 'Rahul', 'Mehta', '2001-01-30', 'Male', 1, '2019-08-15'),
(4, 'Neha', 'Yadav', '2000-10-12', 'Female', 3, '2018-08-15'),
(5, 'Ravi', 'Singh', '2001-05-17', 'Male', 4, '2019-08-15'),
(6, 'Sita', 'Kumar', '2000-03-25', 'Female', 2, '2018-08-15'),
(7, 'Vikram', 'Sharma', '2001-09-14', 'Male', 5, '2019-08-15'),
(8, 'Rani', 'Joshi', '2000-12-01', 'Female', 6, '2018-08-15'),
(9, 'Gita', 'Iyer', '2001-07-10', 'Female', 7, '2019-08-15'),
(10, 'Suresh', 'Desai', '2000-11-05', 'Male', 8, '2018-08-15');
INSERT INTO Courses VALUES
(1, 'Data Structures', 1, 3, 'Fall'),
(2, 'Thermodynamics', 2, 4, 'Spring'),
(3, 'Circuit Analysis', 3, 4, 'Fall'),
(4, 'Algorithms', 1, 3, 'Spring'),
(5, 'Fluid Mechanics', 2, 3, 'Fall'),
(6, 'Electromagnetic Fields', 3, 4, 'Spring'),
(7, 'Engineering Drawing', 4, 2, 'Fall'),
(8, 'Discrete Mathematics', 5, 3, 'Spring'),
(9, 'Chemistry Lab', 8, 1, 'Fall'),
(10, 'Organic Chemistry', 8, 3, 'Spring');
INSERT INTO Enrollments VALUES
(1, 1, 1, '2018-08-20', 'A'),
(2, 2, 2, '2017-08-20', 'B'),
(3, 3, 3, '2019-08-20', 'C'),
(4, 4, 4, '2018-08-20', 'A'),
(5, 5, 5, '2019-08-20', 'B'),
(6, 6, 6, '2018-08-20', 'B'),
(7, 7, 7, '2019-08-20', 'A'),
(8, 8, 8, '2018-08-20', 'A'),
(9, 9, 9, '2019-08-20', 'C'),
(10, 10, 10, '2018-08-20', 'B');
INSERT INTO Professors VALUES
(1, 'Raj', 'Sharma', 1, '2015-06-10'),
(2, 'Sita', 'Patel', 2, '2010-05-01'),
(3, 'Vijay', 'Iyer', 3, '2012-04-10'),
(4, 'Kiran', 'Kumar', 4, '2014-03-05'),
(5, 'Manoj', 'Joshi', 5, '2011-07-15'),
(6, 'Neelam', 'Desai', 6, '2016-09-18'),
(7, 'Pooja', 'Singh', 7, '2013-05-25'),
(8, 'Amit', 'Sharma', 8, '2017-06-30'),
(9, 'Gopal', 'Iyer', 9, '2018-08-12'),
(10, 'Ravi', 'Patel', 10, '2019-11-21');
INSERT INTO Classes VALUES
(1, 1, 1, 'Fall', 2020),
(2, 2, 2, 'Spring', 2021),
(3, 3, 3, 'Fall', 2020),
(4, 4, 4, 'Spring', 2021),
(5, 5, 5, 'Fall', 2020),
(6, 6, 6, 'Spring', 2021),
(7, 7, 7, 'Fall', 2020),
(8, 8, 8, 'Spring', 2021),
(9, 9, 9, 'Fall', 2020),
(10, 10, 10, 'Spring', 2021);
INSERT INTO Exams VALUES
(1, 1, '2020-12-15', 'Final'),
(2, 2, '2021-05-12', 'Midterm'),
(3, 3, '2020-12-20', 'Final'),
(4, 4, '2021-05-18', 'Midterm'),
(5, 5, '2020-12-10', 'Final'),
(6, 6, '2021-05-22', 'Midterm'),
(7, 7, '2020-12-18', 'Final'),
(8, 8, '2021-05-10', 'Midterm'),
(9, 9, '2020-12-25', 'Final'),
(10, 10, '2021-05-15', 'Midterm');
INSERT INTO Results VALUES
(1, 1, 1, 85),
(2, 2, 2, 90),
(3, 3, 3, 88),
(4, 4, 4, 92),
(5, 5, 5, 75),
(6, 6, 6, 80),
(7, 7, 7, 89),
(8, 8, 8, 95),
(9, 9, 9, 78),
(10, 10, 10, 83);
