use Movies;
INSERT INTO Movies (movie_id, title, release_date, genre, language, director_id, producer_id, budget, box_office)
VALUES
(1, 'RRR', '2022-03-25', 'Action', 'Telugu', 1, 1, 550000000, 1200000000),
(2, 'Baahubali: The Beginning', '2015-07-10', 'Action', 'Telugu', 2, 2, 180000000, 650000000),
(3, 'Baahubali: The Conclusion', '2017-04-28', 'Action', 'Telugu', 2, 2, 250000000, 1810000000),
(4, 'Pushpa: The Rise', '2021-12-17', 'Action', 'Telugu', 3, 3, 170000000, 365000000),
(5, 'Ala Vaikunthapurramuloo', '2020-01-12', 'Drama', 'Telugu', 4, 4, 100000000, 280000000),
(6, 'Sarileru Neekevvaru', '2020-01-11', 'Action', 'Telugu', 5, 5, 75000000, 260000000),
(7, 'Arjun Reddy', '2017-08-25', 'Romance', 'Telugu', 6, 6, 51000000, 510000000),
(8, 'Jersey', '2019-04-19', 'Sports Drama', 'Telugu', 7, 7, 30000000, 96000000),
(9, 'Eega', '2012-07-06', 'Fantasy', 'Telugu', 2, 8, 26000000, 125000000),
(10, 'Mahanati', '2018-05-09', 'Biopic', 'Telugu', 8, 9, 25000000, 83000000),
(11, 'Geetha Govindam', '2018-08-15', 'Romance', 'Telugu', 9, 10, 50000000, 132000000),
(12, 'Magadheera', '2009-07-31', 'Fantasy', 'Telugu', 2, 11, 35000000, 150000000),
(13, 'KGF: Chapter 1', '2018-12-21', 'Action', 'Kannada', 10, 12, 80000000, 250000000),
(14, 'KGF: Chapter 2', '2022-04-14', 'Action', 'Kannada', 10, 12, 100000000, 1200000000),
(15, 'Sye', '2004-09-23', 'Sports Drama', 'Telugu', 2, 8, 10000000, 18000000);
INSERT INTO Actors (actor_id, name, birth_date, nationality, debut_year)
VALUES
(1, 'N.T. Rama Rao Jr.', '1983-05-20', 'Indian', 2001),
(2, 'Ram Charan', '1985-03-27', 'Indian', 2007),
(3, 'Prabhas', '1979-10-23', 'Indian', 2002),
(4, 'Allu Arjun', '1982-04-08', 'Indian', 2003),
(5, 'Mahesh Babu', '1975-08-09', 'Indian', 1999),
(6, 'Vijay Deverakonda', '1989-05-09', 'Indian', 2011),
(7, 'Nani', '1984-02-24', 'Indian', 2008),
(8, 'Samantha Ruth Prabhu', '1987-04-28', 'Indian', 2010),
(9, 'Rashmika Mandanna', '1996-04-05', 'Indian', 2016),
(10, 'Yash', '1986-01-08', 'Indian', 2007),
(11, 'Keerthy Suresh', '1992-10-17', 'Indian', 2013),
(12, 'Anushka Shetty', '1981-11-07', 'Indian', 2005);
INSERT INTO Movie_Actors (movie_id, actor_id, role)
VALUES
(1, 1, 'Komaram Bheem'),
(1, 2, 'Alluri Sitarama Raju'),
(2, 3, 'Amarendra Baahubali'),
(3, 3, 'Mahendra Baahubali'),
(4, 4, 'Pushpa Raj'),
(5, 4, 'Bantu'),
(6, 5, 'Ajay Krishna'),
(7, 6, 'Arjun Reddy'),
(8, 7, 'Arjun'),
(9, 7, 'Nani'),
(10, 11, 'Savitri'),
(11, 6, 'Govind'),
(12, 2, 'Kala Bhairava'),
(13, 10, 'Rocky'),
(14, 10, 'Rocky Bhai'),
(15, 3, 'Prudhvi');
INSERT INTO Producers (producer_id, name, birth_date, nationality)
VALUES
(1, 'D.V.V. Danayya', '1975-02-10', 'Indian'),
(2, 'Shobu Yarlagadda', '1975-07-15', 'Indian'),
(3, 'Naveen Yerneni', '1980-05-03', 'Indian'),
(4, 'Allu Aravind', '1950-01-10', 'Indian'),
(5, 'Dil Raju', '1970-12-18', 'Indian');
INSERT INTO Box_Office_Collection (movie_id, region, collection)
VALUES
(1, 'Andhra Pradesh', 400000000),
(1, 'Telangana', 300000000),
(1, 'Karnataka', 100000000),
(1, 'Rest of India', 150000000),
(2, 'Andhra Pradesh', 250000000),
(2, 'Telangana', 150000000),
(2, 'Rest of India', 250000000);
INSERT INTO Awards (award_id, movie_id, award_name, award_year)
VALUES
(1, 1, 'National Film Award - Best Film', 2023),
(2, 3, 'Filmfare Award - Best Film', 2018),
(3, 4, 'SIIMA Best Actor - Allu Arjun', 2022),
(4, 10, 'National Award - Best Actress (Keerthy Suresh)', 2019),
(5, 12, 'Filmfare Award - Best Director', 2010);
INSERT INTO Directors (director_id, name, birth_date, nationality)
VALUES
(1, 'S.S. Rajamouli', '1973-10-10', 'Indian'),
(2, 'Sukumar', '1970-01-11', 'Indian'),
(3, 'Trivikram Srinivas', '1971-11-07', 'Indian'),
(4, 'Parasuram', '1980-07-07', 'Indian'),
(5, 'Gowtam Tinnanuri', '1985-09-21', 'Indian'),
(6, 'Nag Ashwin', '1989-02-23', 'Indian'),
(7, 'Puri Jagannadh', '1966-09-28', 'Indian');
INSERT INTO Music_Composers (composer_id, name, birth_date, nationality)
VALUES
(1, 'M. M. Keeravani', '1961-07-04', 'Indian'),
(2, 'Devi Sri Prasad', '1979-08-02', 'Indian'),
(3, 'Thaman S', '1983-11-16', 'Indian'),
(4, 'Vishal Chandrasekhar', '1985-10-07', 'Indian'),
(5, 'Gopi Sundar', '1977-05-30', 'Indian'),
(6, 'Anirudh Ravichander', '1990-10-16', 'Indian'),
(7, 'Mani Sharma', '1964-07-11', 'Indian');
INSERT INTO Movie_Composers (movie_id, composer_id)
VALUES
(1, 1),  -- RRR - M. M. Keeravani
(2, 1),  -- Baahubali 1 - M. M. Keeravani
(3, 1),  -- Baahubali 2 - M. M. Keeravani
(4, 2),  -- Pushpa - Devi Sri Prasad
(5, 3),  -- Ala Vaikunthapurramuloo - Thaman S
(6, 3),  -- Sarileru Neekevvaru - Thaman S
(7, 5),  -- Arjun Reddy - Radhan
(8, 4),  -- Jersey - Vishal Chandrasekhar
(9, 1),  -- Eega - M. M. Keeravani
(10, 4), -- Mahanati - Mickey J. Meyer
(11, 5), -- Geetha Govindam - Gopi Sundar
(12, 1), -- Magadheera - M. M. Keeravani
(13, 6), -- KGF 1 - Ravi Basrur
(14, 6), -- KGF 2 - Ravi Basrur
(15, 7); -- Sye - Mani Sharma
INSERT INTO Reviews (review_id, movie_id, rating, review_text, review_date)
VALUES
(1, 1, 9, 'A cinematic masterpiece with breathtaking action sequences.', '2022-03-28'),
(2, 2, 8, 'A grand visual spectacle with an engaging storyline.', '2015-07-15'),
(3, 3, 9, 'An epic conclusion to a fantastic saga!', '2017-04-30'),
(4, 4, 8, 'Allu Arjun’s best performance so far!', '2021-12-20'),
(5, 5, 9, 'A perfect blend of comedy, action, and emotions.', '2020-01-15'),
(6, 6, 7, 'A mass entertainer with strong commercial appeal.', '2020-01-12'),
(7, 7, 8, 'An intense love story with a raw and emotional narrative.', '2017-08-27'),
(8, 8, 9, 'A heart-touching sports drama with brilliant performances.', '2019-04-22'),
(9, 9, 8, 'A unique concept with a gripping screenplay.', '2012-07-10'),
(10, 10, 9, 'Keerthy Suresh shines in this biopic!', '2018-05-12'),
(11, 11, 8, 'A lighthearted romantic entertainer.', '2018-08-17'),
(12, 12, 9, 'A game-changer in the fantasy genre.', '2009-08-03'),
(13, 13, 8, 'A high-octane action thriller with intense storytelling.', '2018-12-23'),
(14, 14, 9, 'KGF 2 takes action cinema to the next level!', '2022-04-16'),
(15, 15, 7, 'A cult classic sports drama.', '2004-09-25');
