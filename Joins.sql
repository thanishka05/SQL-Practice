use Tollywood;
-- List all movies with their director names
select m.title,d.director_name from movies m
join directors d on 
d.director_id = m.director_id;

-- Show movie titles along with their producer names.
select m.title ,p.producer_name from movies m
join producers p on m.producer_id = p.producer_id order by title ;

-- Display actor names and the movies they acted in.
select a.actor_name , m.title from actors a
join movie_actors ma on a.actor_id = ma.actor_id
join movies m on ma.movie_id = m.movie_id;

--  Basic INNER JOINs
-- List all movies along with their director names.
select m.title,d.director_name from movies m
inner join directors d on m.director_id = d.director_id ;

-- Show movie titles with their corresponding producer names and production company.
select m.title, p.producer_name,p. company_name from movies m
inner join producers p on m.producer_id = p.producer_id;

-- Display actor names and the roles they played in each movie.
select a.actor_name,ma.role,m.title from actors a
inner join movie_actors ma on a.actor_id = ma.actor_id
inner join movies m on m.movie_id = ma.movie_id;

-- List all movies with their IMDb rating, director name, and producer name.
select m.title,m.imdb_rating,d.director_name,p.producer_name from movies m
inner join producers p  on m.producer_id = p.producer_id
inner join directors d on m.director_id = d.director_id 
order by imdb_rating desc;

-- Get the names of all actors who acted in movies directed by S.S. Rajamouli.
select a.actor_name from actors a
inner join movie_actors ma on ma.actor_id=a.actor_id
inner join movies m on ma.movie_id = m.movie_id
inner join directors d on m.director_id = d.director_id
where d.director_name = "S.S. Rajamouli";

--  Multi-table INNER JOINs
-- Show each movie's title, its main actors' names, the director name, and the producer's company.
select distinct (m.title),a.actor_name,d.director_name,p.company_name from movies m
inner join  movie_actors ma on m.movie_id = ma.movie_id
inner join actors a on ma.actor_id = a.actor_id
inner join directors d on m.director_id = d.director_id
inner join producers p on m.producer_id = p.producer_id
where  a.gender = "Male";

-- List all actors who acted in movies released in 2022 along with the movie title and genre.
select actor_name,title,genre from actors a
inner join movie_actors ma on a.actor_id=ma.actor_id
inner join movies m on ma.movie_id=m.movie_id
where m.release_year = 2022 ;

-- Display the collection details (opening, total) of each movie along with title, release date, and verdict.
select opening_collection_crores,total_collection_crores,verdict,title,release_year from box_office b
inner join movies m on b.movie_id=m.movie_id;

-- 🔹 LEFT JOIN (to include unmatched records)
-- List all movies along with box office details (if available).
select title,budget_crores,opening_collection_crores,total_collection_crores,verdict from movies m 
left join box_office b on m.movie_id = b.movie_id ;

-- Show all actors and the movies they acted in, even if the movie is not found in the database.
select a.actor_name,m.title from actors a
left join movie_actors ma on a.actor_id = ma.actor_id
left join movies m on ma.movie_id = m.movie_id;

-- List all producers and the movies they produced. 
select p.producer_name , m. title from producers p
left join movies m on p.producer_id = m.producer_id; 

-- Show producer names even if they haven’t produced any movie yet.
select p.producer_name  from producers p
left join movies m on p.producer_id = m.producer_id
where m.title is null;

-- Aggregations with JOINs
-- Find the number of movies each director has directed.
select d.director_name,count(m.movie_id) as total_movies from directors d
inner join movies m on d.director_id = m.director_id 
group by d.director_name;
-- Get the total collection of all movies produced by each producer.
select  p.producer_name,sum(b.total_collection_crores) as tot_collection from box_office b
inner join movies m on b.movie_id=m.movie_id
inner join producers p on m.producer_id = p.producer_id
group by p.producer_name;

-- List actors along with the number of movies they have acted in.
select a.actor_name , count(m.movie_id) as Tot_acted_movies from actors a
inner join movie_actors ma on a.actor_id = ma.actor_id
inner join movies m on ma.movie_id = m.movie_id
group by a.actor_name ;

-- 🔹 Complex Queries
-- Display the top 3 highest grossing movies with title, director name, and total collections.
select m.title,d.director_name,b.total_collection_crores from movies m
inner join box_office b on m.movie_id = b.movie_id
inner join directors d on m.director_id= d.director_id
order by b.total_collection_crores desc 
limit 3;

-- List all actors who acted in action genre movies released after 2015.
select a.actor_name,m.title,m.release_year from actors a
inner join movie_actors ma on a.actor_id = ma.actor_id
inner join movies m on ma.movie_id=m.movie_id
where  genre = 'Action' and release_year > 2015;

-- Find movies where the total collection is greater than 2× the budget.
--  Show title, budget, collection, and verdict.
select m.title,m.budget_crores,b.total_collection_crores,b.verdict from movies m
inner join box_office b on m.movie_id = b.movie_id
where b.total_collection_crores > m.budget_crores;

-- List all movies where Prabhas played a role, along with his character name.
select m.title , ma.role from movies m 
inner join  movie_actors ma on m.movie_id = ma.movie_id
inner join actors a on ma.actor_id  = a.actor_id
where a.actor_name = 'Prabhas'

