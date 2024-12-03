-- Creating the Medal table
CREATE TABLE medal (
    id INT PRIMARY KEY,             -- Unique ID for each medal type
    name VARCHAR(50)                -- Name of the medal (Gold, Silver, Bronze)
);

-- Creating the NOC_Region table
CREATE TABLE noc_region (
    id INT PRIMARY KEY,             -- Unique ID for each NOC region
    code VARCHAR(10),               -- Country code (e.g., 'USA', 'GBR')
    name VARCHAR(100)               -- Full name of the country/region
);

-- Creating the City table
CREATE TABLE city (
    id INT PRIMARY KEY,             -- Unique ID for each city
    name VARCHAR(100),              -- City name
    country VARCHAR(100),           -- Country where the city is located
    year INT                        -- Year(s) the city hosted the Olympics
);

-- Creating the Sport table
CREATE TABLE sport (
    id INT PRIMARY KEY,             -- Unique ID for each sport
    name VARCHAR(100),              -- Name of the sport (e.g., 'Athletics', 'Swimming')
    description TEXT                -- A brief description of the sport
);

-- Creating the Event table
CREATE TABLE event (
    id INT PRIMARY KEY,             -- Unique ID for each event
    sport_id INT,                   -- Foreign key linking to the sport
    name VARCHAR(100),              -- Event name (e.g., 'Men's 100m', 'Women's Basketball')
    gender VARCHAR(10),             -- Gender category ('Men', 'Women', 'Mixed')
    FOREIGN KEY (sport_id) REFERENCES sport(id) -- Link to the sport table
);

-- Creating the Games table
CREATE TABLE games (
    id INT PRIMARY KEY,             -- Unique ID for each Olympic Games
    year INT,                       -- Year the Olympics occurred
    season VARCHAR(10),             -- Season ('Summer' or 'Winter')
    host_city_id INT,               -- City where the Olympics were held (foreign key)
    num_athletes INT,               -- Number of athletes who participated
    FOREIGN KEY (host_city_id) REFERENCES city(id) -- Link to the city table
);

-- Creating the Games_City table (for multiple cities hosting the same games)
CREATE TABLE games_city (
    game_id INT,                    -- Foreign key to the games table
    city_id INT,                    -- Foreign key to the city table
    PRIMARY KEY (game_id, city_id), -- Composite primary key for game-city pair
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (city_id) REFERENCES city(id)
);

-- Creating the Person table (for athletes)
CREATE TABLE person (
    id INT PRIMARY KEY,             -- Unique ID for each athlete
    full_name VARCHAR(100),         -- Full name of the athlete
    gender VARCHAR(10),             -- Athlete's gender
    height INT,                     -- Athlete's height in cm
    weight INT                      -- Athlete's weight in kg
);

-- Creating the Person_Region table (for athlete nationality)
CREATE TABLE person_region (
    person_id INT,                  -- Foreign key to the person table
    region_id INT,                  -- Foreign key to the noc_region table
    PRIMARY KEY (person_id, region_id), -- Composite primary key
    FOREIGN KEY (person_id) REFERENCES person(id),
    FOREIGN KEY (region_id) REFERENCES noc_region(id)
);

-- Creating the Games_Competitor table (linking athletes and games)
CREATE TABLE games_competitor (
    game_id INT,                    -- Foreign key to the games table
    person_id INT,                  -- Foreign key to the person table
    age INT,                        -- Athlete's age during the game
    PRIMARY KEY (game_id, person_id), -- Composite primary key for game-athlete pair
    FOREIGN KEY (game_id) REFERENCES games(id),
    FOREIGN KEY (person_id) REFERENCES person(id)
);

-- Creating the Competitor_Event table (linking athletes and events they participated in)
CREATE TABLE competitor_event (
    event_id INT,                   -- Foreign key to the event table
    competitor_id INT,              -- Foreign key to the person table (athlete)
    medal_id INT,                   -- Foreign key to the medal table (type of medal won)
    PRIMARY KEY (event_id, competitor_id), -- Composite primary key for event-athlete pair
    FOREIGN KEY (event_id) REFERENCES event(id),
    FOREIGN KEY (competitor_id) REFERENCES person(id),
    FOREIGN KEY (medal_id) REFERENCES medal(id)
);
