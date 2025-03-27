use college;
-- Retrieve all students from the city "Delhi" whose name starts with the letter 'A'.
select stu_name from Students where city In( "Hyderabad","Delhi") and stu_name Like "A%";
-- Find students born before the year 2000 and from the city "Mumbai" or "Pune".
select stu_name from Students where dob > '2000-01-01' and city in("Mumbai" , "Pune");
-- Get all students whose phone number contains '987' anywhere
select stu_name as students , phone from Students where phone Like '77%';
-- List students who are female ('F') and not from "Bangalore"
Select stu_name , city from Students where gender = "F" and city <> "Bangalore";
-- Retrieve the first 5 students
select stu_name from Students Limit 5;
-- Find the latest 3 enrollments, sorted by enr_dat in descending order.
select enr_id from enrollements  order by enr_dat desc limit 3;
-- Display the top 2 courses with the highest credits.
select cou_name,credits from  courses order by credits desc limit 2;
-- Find how many students are enrolled in each city
-- select city , count(stu_id) from Students group by city;
-- -- Count how many students are enrolled in each course, but only include courses with more than 3 students
-- SELECT cou_id, COUNT(stu_id) AS student_count
-- FROM enrollements
-- GROUP BY cou_id
-- HAVING COUNT(stu_id) > 3;
-- -- List the number of students enrolled per gender, but only include genders with more than 2 students.
-- select gender , count(stu_id) from Students where gender in ('M', 'F')group by gender ;
-- Retrieve students whose ID is an even number.
select stu_name , stu_id from Students where stu_id % 2 = 0;
-- Show the total number of credits for each student (considering courses they enrolled in).-- 
select credits,stu_id from enrollements group by (credits);
-- Find students whose phone number ends with an odd digit
select stu_name , phone from Students where right(phone,1) % 2 <>0;



