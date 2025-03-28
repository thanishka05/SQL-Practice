-- Basic WHERE Clause Questions:
-- Retrieve all students who are from the city 'Delhi'.
use college;
select stu_name as studentsfromDelhi from Students where city = "Delhi";
-- --Find all students who were born after 2000-01-01
select stu_name,dob from Students where dob > '2000-01-01';
-- Get the details of all female students (gender = 'F')
select * from Students where gender = 'F';
select stu_name,phone from Students where phone like '98%';
select stu_name,phone from Students where  Left(phone,2)="98";
-- --Find courses that have exactly 3 credits.
select cou_name from courses where credits = 3;
-- Display all courses that have more than 2 but less than 5 credits.
select cou_name,credits from courses where credits between 2 and 4;
-- List enrollments where the enrollment date is before 2024-01-01
select enr_id,enr_dat from enrollements where enr_dat < "2024-01-01";
-- Using WHERE with Logical Operators (AND, OR, NOT)-- 
-- Get students who are from 'Mumbai' AND born after 1999-12-31.
select stu_name,dob from Students where city="Mumbai" and dob > '1999-12-31';
-- Retrieve students from 'Chennai' OR 'Kolkata'.
select stu_name,city from Students where city = 'Chennai' or city = 'Kolkata';
-- Find students who are from 'Pune' but NOT female 
select stu_name from Students where city = 'Chennai' or city = 'Kolkata' and gender <> "F";
-- List enrollments where the student ID is greater than 5 AND the course ID is less than 3
select enr_id,stu_id,cou_id from enrollements where stu_id > 5 and cou_id < 3; 
-- Sorting with ORDER BY
-- Display all students sorted by name in ascending order.
select stu_name,stu_id from Students order by stu_name;
-- Retrieve students sorted by date of birth in descending order-- 
select stu_name,dob from Students order by dob asc;
-- List all courses sorted by credits in descending order
select cou_name,credits from courses order by credits desc;
-- Display students sorted first by city (A-Z) and then by name (A-Z).
select stu_name , city from Students order by city asc , stu_name asc;
-- Limiting Results with LIMIT
-- Retrieve the first 5 students from the Students table.
select stu_name from Students limit 5;
-- List the first 2 courses with the least credits.
select cou_name from courses order by credits asc limit 2;
-- Get any 1 student from the database randomly using LIMIT 1.
select *from Students order by rand() limit 1;
-- Combining WHERE and ORDER BY
-- Retrieve all male students from 'Hyderabad', sorted by stu_name in ascending order?
select stu_name,city from Students where city = 'Hyderabad' and gender = 'M' order by stu_name asc;
-- Find students born before 2001-01-01, sorted by dob in descending order (oldest to youngest
select stu_name,dob from Students where dob < '2001-01-01' order by dob asc;
-- Get the details of students who have a phone number, sorted by city in ascending order
select stu_name,phone,city from Students where phone is not null and length(phone)>0 order by city asc;
-- Display courses that have at least 2 credits, sorted by credits in descending order.
select cou_name,credits from courses where credits between 2 and 5 order by credits desc;
-- List enrollments for student ID 3, sorted by enr_dat in ascending order.
select enr_id from enrollements where stu_id = 3 order by enr_dat asc;
-- Combining WHERE and LIMIT
-- Retrieve the first 5 female students.
select stu_name as femalestudents from Students where gender ='F' limit 5;
-- Find the first 3 students who have a phone number starting with '99'.
select stu_name,phone from Students where left(phone,2)=77 limit 3;
-- Get the first student from 'Bangalore' who is male (gender = 'M').
select stu_name as Kannadiga from Students where gender = 'M' limit 1;
-- Retrieve the latest enrolled student (highest enr_dats
select stu_id,enr_dat from enrollements order by enr_dat asc  limit 1;
-- Combining ORDER BY and LIMIT
-- Retrieve the top 2 oldest students (sort by dob ascending).
select stu_name as oldest from Students order by dob asc limit 2;
-- Get the 3 most recently added courses (assuming cou_id is incremental).

-- Find the first 4 cities in alphabetical order where students are from (use DISTINCT city).
select distinct city  from Students order by city limit 4;
-- Retrieve 5 students with the longest names, sorting by LENGTH(stu_name) descending.
select stu_name from Students order by length(stu_name) desc limit 5;
-- Advanced: Combining WHERE, ORDER BY, and LIMIT
-- Find the youngest 2 female students (gender = 'F'), sorting by dob in descending order.
select stu_name from Students where gender = 'F' order by dob desc limit 2;
-- Retrieve the top 3 students from 'Chennai' who were born after 2002-01-01, sorted by stu_name in
--  descending order.
select stu_name from Students
 where city = "Chennai" or city = "Hyderabad "and
 dob > '2002-01-01' order by stu_name desc;
-- List the first 2 enrollments for course ID 1, ordered by enr_dat ascending.
select enr_id,enr_dat from enrollements where cou_id = 1 order by enr_dat asc limit 2;
-- Find the most recent enrollment for a student who lives in 'Pune'.
select stu_id from enrollements order by enr_dat limit 1;
-- Display the top 2 courses with the highest credits.
select cou_name from courses order by credits desc limit 2;
-- Retrieve the 3rd to 5th oldest students (use ORDER BY dob ASC LIMIT 2,3).
select stu_name from Students order by dob asc limit 2,3;












































