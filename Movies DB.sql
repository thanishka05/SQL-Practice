create database Movies;

CREATE TABLE Movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    release_date DATE,
    genre VARCHAR(50),
    language VARCHAR(50),
    director_id INT,
    producer_id INT,
    budget DECIMAL(15,2),
    box_office DECIMAL(15,2)
);
CREATE TABLE Actors (
    actor_id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    nationality VARCHAR(50),
    debut_year INT
);
CREATE TABLE Movie_Actors (
    movie_id INT,
    actor_id INT,
    role VARCHAR(100),
    PRIMARY KEY (movie_id, actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id)
);
CREATE TABLE Directors (
    director_id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    nationality VARCHAR(50)
);
CREATE TABLE Producers (
    producer_id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    nationality VARCHAR(50)
);
CREATE TABLE Reviews (
    review_id INT PRIMARY KEY,
    movie_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 10),
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
CREATE TABLE Awards (
    award_id INT PRIMARY KEY,
    movie_id INT,
    award_name VARCHAR(100),
    award_year INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
CREATE TABLE Music_Composers (
    composer_id INT PRIMARY KEY,
    name VARCHAR(100),
    birth_date DATE,
    nationality VARCHAR(50)
);
CREATE TABLE Movie_Composers (
    movie_id INT,
    composer_id INT,
    PRIMARY KEY (movie_id, composer_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (composer_id) REFERENCES Music_Composers(composer_id)
);
CREATE TABLE Box_Office_Collection (
    movie_id INT,
    region VARCHAR(50),
    collection DECIMAL(15,2),
    PRIMARY KEY (movie_id, region),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);
