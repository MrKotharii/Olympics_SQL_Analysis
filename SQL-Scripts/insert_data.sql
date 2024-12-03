-- Inserting data into Medal table
INSERT INTO medal (id, name) VALUES
(1, 'Gold'),
(2, 'Silver'),
(3, 'Bronze');

-- Inserting data into NOC_Region table (countries/regions)
INSERT INTO noc_region (id, code, name) VALUES
(1, 'USA', 'United States'),
(2, 'GBR', 'Great Britain'),
(3, 'CAN', 'Canada'),
(4, 'AUS', 'Australia'),
(5, 'JPN', 'Japan'),
(6, 'GER', 'Germany'),
(7, 'CHN', 'China'),
(8, 'RUS', 'Russia'),
(9, 'IND', 'India');

-- Inserting data into City table
INSERT INTO city (id, name, country, year) VALUES
(1, 'Barcelona', 'Spain', 1992),
(2, 'London', 'United Kingdom', 2012),
(3, 'Beijing', 'China', 2008);

-- Inserting data into Sport table
INSERT INTO sport (id, name, description) VALUES
(1, 'Athletics', 'Track and field events like running, jumping, and throwing.'),
(2, 'Swimming', 'Water-based competitions like freestyle, breaststroke, etc.'),
(3, 'Gymnastics', 'A sport involving exercises requiring balance, strength, and flexibility.');

-- Inserting data into Event table
INSERT INTO event (id, sport_id, name, gender) VALUES
(1, 1, 'Men’s 100m', 'Men'),
(2, 1, 'Women’s 100m', 'Women'),
(3, 2, 'Men’s 100m Freestyle', 'Men'),
(4, 2, 'Women’s 100m Freestyle', 'Women');

-- Inserting data into Games table
INSERT INTO games (id, year, season, host_city_id, num_athletes) VALUES
(1, 1992, 'Summer', 1, 5000),
(2, 2012, 'Summer', 2, 10500),
(3, 2008, 'Summer', 3, 11000);

-- Inserting data into Games_City table
INSERT INTO games_city (game_id, city_id) VALUES
(1, 1), -- 1992 Summer Olympics held in Barcelona
(2, 2), -- 2012 Summer Olympics held in London
(3, 3); -- 2008 Summer Olympics held in Beijing

-- Inserting data into Person table
INSERT INTO person (id, full_name, gender, height, weight) VALUES
(1, 'Michael Phelps', 'M', 193, 88),
(2, 'Usain Bolt', 'M', 195, 94),
(3, 'Simone Biles', 'F', 142, 47);

-- Inserting data into Person_Region table
INSERT INTO person_region (person_id, region_id) VALUES
(1, 1),  -- Michael Phelps from USA
(2, 1),  -- Usain Bolt from Jamaica
(3, 3);  -- Simone Biles from USA

-- Inserting data into Games_Competitor table
INSERT INTO games_competitor (game_id, person_id, age) VALUES
(1, 1, 27), -- Michael Phelps at 2008 Olympics
(2, 2, 26), -- Usain Bolt at 2012 Olympics
(3, 3, 21); -- Simone Biles at 2016 Olympics

-- Inserting data into Competitor_Event table
INSERT INTO competitor_event (event_id, competitor_id, medal_id) VALUES
(1, 1, 1), -- Michael Phelps wins Gold in Men’s 100m at 2008 Olympics
(2, 2, 1), -- Usain Bolt wins Gold in Men’s 100m at 2012 Olympics
(3, 3, 2); -- Simone Biles wins Silver in Women’s Gymnastics at 2016 Olympics
