create database Tollywood;
use Tollywood;
CREATE TABLE directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(100),
    debut_year YEAR
);
CREATE TABLE producers (
    producer_id INT PRIMARY KEY AUTO_INCREMENT,
    producer_name VARCHAR(100),
    company_name VARCHAR(100)
);
CREATE TABLE movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    release_year YEAR,
    genre VARCHAR(30),
    budget_crores DECIMAL(5,2),
    imdb_rating DECIMAL(3,1),
    director_id INT,
    producer_id INT,
    FOREIGN KEY (director_id) REFERENCES directors(director_id),
    FOREIGN KEY (producer_id) REFERENCES producers(producer_id)
);
CREATE TABLE actors (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    actor_name VARCHAR(100),
    gender VARCHAR(10),
    birth_year YEAR,
    debut_year YEAR
);
CREATE TABLE movie_actors (
    movie_id INT,
    actor_id INT,
    role VARCHAR(50),
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);
CREATE TABLE box_office (
    movie_id INT PRIMARY KEY,
    opening_collection_crores DECIMAL(5,2),
    total_collection_crores DECIMAL(6,2),
    verdict VARCHAR(20),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

-- drop database Tollywood;
