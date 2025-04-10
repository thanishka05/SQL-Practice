use Movies;
-- WHERE Clause Questions
-- 1. Retrieve all movies released after the year 2015.
select  title,release_date from Movies 
where year(release_date)>2015;
-- 2.Get details of all movies where the budget is greater than ₹100,000,000.
select *from Movies 
where budget > 100000000;
-- 3.Find all action movies.
Select title , genre from Movies where genre = "Action";
-- 4.List all actors born after 1990.
select name from Actors where year( birth_date) > 1990;
-- 5.Get all reviews where the rating is greater than 8.
select movie_id,review_id from Reviews  where  rating > 8;
-- 6.Retrieve all movies composed by M. M. Keeravani.
select  movie_id from  Movie_Composers where Music_Composers ="M. M. Keeravani";
-- Find all producers with nationality "Indian".

-- Get details of movies where box office collection is less than budget (flops).

-- Find all movies directed by S.S. Rajamouli.

-- List all awards won by movies in 2022.