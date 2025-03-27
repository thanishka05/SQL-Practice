use college;
show tables;
 -- select * from enrollements;
-- Retrieve details of all students from the city 'Hyderabad'.
select stu_name as students_from_hyd from students
where city = "Hyderabad";
-- Find all male students ('M') who live in 'Mumbai''Hyderabad'.
select stu_name,city from students 
where gender in('M','F') and city in('Mumbai','Hyderabad');
-- Retrieve course details where credits are 3 or more;
select cou_name,credits from courses where credits >= 3;
-- List students whose names start with 'A'
select stu_name from students where stu_name LIKE 'A%' and stu_name LIKE '%i';
-- Get enrollment details of students who enrolled in March 2024.
SELECT cou_id, enr_dat  
FROM enrollements  
WHERE enr_dat > '2024-03-01'  
ORDER BY enr_dat;

-- SELECT DISTINCT enr_dat FROM enrollements ORDER BY enr_dat;
-- Retrieve enrollments where course ID is between 2 and 5
select distinct stu_id from enrollements where cou_id  BETWEEN 2 and 5 order by stu_id;
-- Retrieve all students in alphabetical order by name
select stu_name from students order by stu_name;
-- Fetch course details in descending order of credits
select cou_name ,credits from courses order by credits desc;
-- List students by oldest to youngest.
select stu_name ,dob from students order by dob ;
-- Find students whose names contain exactly 6 letters.
select stu_name from students where stu_name LIKE '______';
-- Find students who live in a city that starts and ends with the same letter.
select stu_name from students where city like '_%' = '%_';
