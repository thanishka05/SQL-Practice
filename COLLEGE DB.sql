use college;
-- Retrieve all students from the city Hyderabad
select stu_name from Students where city = 'Hyderabad';
-- --Get details of all students who were born after 2000-01-01
select stu_name from Students where DOB > 2000-01-01;
-- Find all male students (gender = 'M') from the city
select stu_name from Students where gender = 'M' AND city = 'Vijaywada';
 -- select *from Students
-- List all students whose names start with 'A'
select stu_name from Students where stu_name LIKE 'A%';
-- Retrieve students whose phone numbers start with '987
select stu_name,phone from Students where phone LIKE '%0' AND '9%';
-- find students from either 'Hyderabad' or 'Chennai;
select stu_name as Student_Name , city from Students 
where city IN ('Hyderabad','Chennai','Jaipur');
-- select stu_name as Student_Name , city from Students 
-- where city = 'Hyderabad' or city ='Chennai';
-- Retrieve all courses that have 3 or more credits.
select cou_name , credits from courses where credits <> 3;
-- Find students whose ID is greater than 5
select stu_name , stu_id as ID from Students where stu_id = 5;
-- Get all enrollments made before '2024-01-01'
 select stu_name from Students 
 union
 select enr_dat from enrollements where enr_dat < 2024-08-01;
-- Find students who are female and live in 'hyderabad'. 
select stu_name , city from Students
where gender = 'F' AND city IN ('Hyderabad','Bangalore','Kadiri');
-- Get courses that have credits between 2 and 4.
select cou_name from courses where credits between 2 and 4;
-- List all students who were born before 1995 or live in 'Hyderabad or Bangalore'
select stu_name from Students where
DOB > 2002-01-01 AND city IN ('Hyderabad','Bangalore','Kadiri');
-- Find students whose phone number is not provided (NULL
select stu_name where phone IS NULL;
select * from Students;
-- Retrieve students whose names do not start with 'T and end with i

select stu_name from Students where stu_name NOT LIKE  'T%' AND stu_name  NOT LIKE '%i';
