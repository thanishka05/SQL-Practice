use college;
-- Basic GROUP BY Questions
-- List the total number of students in each city.
select city,count(stu_id) as tot_students from Students group by city order by tot_students;
-- Count the number of male and female students (gender) separately.
select count(gender='M'),count(gender='F') from Students group by gender;
SELECT gender, COUNT(*) AS total_students 
FROM Students 
GROUP BY gender;

-- Find the total number of enrollments for each course.
select cou_id,count(enr_id) as tot_enrollements from enrollements group by cou_id;
-- Display the number of students born in each year.
select Year(dob),count(stu_id) from Students group by Year(dob);
-- Show how many students have registered for each course (cou_id).
select cou_id,count(stu_id) from enrollements group by cou_id;
-- Using HAVING with Aggregation
-- List cities that have more than 3 students.
select city, count(city) as num_of_students from Students 
group by city
having count(city) = 3;
-- Display courses that have at least 2 enrollments.
select cou_id ,count(enr_id) as no_of_enrollments from enrollements
group by cou_id
having count(enr_id) >= 5;

-- Find the years where more than 5 students were born.
select year(dob),count(year(dob)) from Students 
group by year(dob)
having  count(year(dob)) >5;
-- Show courses where the total number of credits assigned is greater than 10.
select cou_name,sum(credits) from courses
group by cou_name;  -- need JOINS  

-- Retrieve gender groups (M and F) where the number of students is at least 5.
select gender,count(gender) from Students
group by gender
having count(gender) > 12;
-- Combining GROUP BY with WHERE
-- Count students in each city where the city is NOT Delhi.
select city,count(stu_id) from Students
where city <> 'Delhi'
group by city;

-- Find the number of enrollments per course for courses with credits greater than 2.
select cou_id; -- NEED JOINS
-- Display the total number of students born after 2000, grouped by gender.
select gender,count(year(dob)) from Students
where year(dob) >2000
group by gender;
-- List students per city only for cities that have a student with phone number starting with '98'.
select count(stu_name),city from Students
 where phone like "98%"
group by city
HAVING COUNT(stu_name) > 0; 
-- Find courses with more than 2 enrollments where the enrollment date is after '2024-01-01'.
select cou
-- Combining ORDER BY with GROUP BY
-- Show cities along with the number of students in each city, sorted by student count descending.

-- Retrieve courses along with enrollment count, sorted by enrollment count descending.

-- Find the gender with the highest number of students, sorting by student count descending.

-- Display the number of students per city, sorted alphabetically by city name.

-- List years along with the count of students born in each year, sorted by the most recent year first.

-- Combining LIMIT with GROUP BY and HAVING
-- Show the top 3 cities with the most students.

-- Retrieve the first 2 courses with the most enrollments.

-- Get the top 5 years where the highest number of students were born.

-- Find the 3 cities with more than 2 students, sorted by count descending.

-- Display the top 2 courses where enrollments are more than 3, ordered by course name.







