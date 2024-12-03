-- 1. List all the cities where Olympic Games have been held
SELECT DISTINCT city.name
FROM city
JOIN games_city ON city.id = games_city.city_id
JOIN games ON games.id = games_city.game_id;

-- 2. List all the regions that have won a gold medal in the Olympic Games
SELECT DISTINCT noc_region.name
FROM noc_region
JOIN person_region ON noc_region.id = person_region.region_id
JOIN games_competitor ON person_region.person_id = games_competitor.person_id
JOIN competitor_event ON games_competitor.game_id = competitor_event.game_id
JOIN medal ON competitor_event.medal_id = medal.id
WHERE medal.name = 'Gold';

-- 3. List all the cities that have hosted the Summer Olympics
SELECT DISTINCT city.name
FROM city
JOIN games_city ON city.id = games_city.city_id
JOIN games ON games.id = games_city.game_id
WHERE games.season = 'Summer';

-- 4. Find the names of all competitors who participated in the 2004 Olympics but not the 2008 Olympics
SELECT person.full_name
FROM person
JOIN games_competitor ON person.id = games_competitor.person_id
JOIN games ON games.id = games_competitor.game_id
WHERE games.year = 2004
AND person.id NOT IN (
    SELECT person_id 
    FROM games_competitor 
    JOIN games ON games.id = games_competitor.game_id 
    WHERE games.year = 2008
);

-- 5. Find the name of the athlete who won the most medals in the 2012 Olympics
SELECT person.full_name, COUNT(*) AS total_medals
FROM person
JOIN games_competitor ON person.id = games_competitor.person_id
JOIN games ON games.id = games_competitor.game_id
JOIN competitor_event ON games.id = competitor_event.game_id
JOIN medal ON competitor_event.medal_id = medal.id
WHERE games.year = 2012
GROUP BY person.id
ORDER BY total_medals DESC
LIMIT 1;

-- 6. Find the average height and weight of male and female athletes in the 1992 Olympics
SELECT person.gender, AVG(person.height) AS avg_height, AVG(person.weight) AS avg_weight
FROM person
JOIN games_competitor ON person.id = games_competitor.person_id
JOIN games ON games.id = games_competitor.game_id
WHERE games.year = 1992
GROUP BY person.gender;

-- 7. Find the number of gold, silver and bronze medals won by each region
SELECT noc_region.name, 
       COUNT(CASE WHEN medal.name = 'Gold' THEN 1 END) AS gold_medals,
       COUNT(CASE WHEN medal.name = 'Silver' THEN 1 END) AS silver_medals,
       COUNT(CASE WHEN medal.name = 'Bronze' THEN 1 END) AS bronze_medals
FROM noc_region
JOIN person_region ON noc_region.id = person_region.region_id
JOIN games_competitor ON person_region.person_id = games_competitor.person_id
JOIN competitor_event ON games_competitor.game_id = competitor_event.game_id
JOIN medal ON competitor_event.medal_id = medal.id
GROUP BY noc_region.name;

-- 8. Find the top 10 cities with the highest number of gold medals
SELECT city.name, 
       COUNT(CASE WHEN medal.name = 'Gold' THEN 1 END) AS gold_medals
FROM city
JOIN games_city ON city.id = games_city.city_id
JOIN games ON games.id = games_city.game_id
JOIN games_competitor ON games.id = games_competitor.game_id
JOIN competitor_event ON games_competitor.game_id = competitor_event.game_id
JOIN medal ON competitor_event.medal_id = medal.id
GROUP BY city.name
ORDER BY gold_medals DESC
LIMIT 10;

-- 9. Get the name of all the sports that have been played in the history of Olympics
SELECT DISTINCT sport.name
FROM sport
JOIN event ON sport.id = event.sport_id
JOIN competitor_event ON event.id = competitor_event.event_id;

-- 10. Get the name of the region that has won the most gold medals in the history of Olympics
SELECT noc_region.name, COUNT(*) AS gold_count
FROM noc_region
JOIN person_region ON noc_region.id = person_region.region_id
JOIN games_competitor ON person_region.person_id = games_competitor.person_id
JOIN competitor_event ON games_competitor.game_id = competitor_event.game_id
JOIN medal ON competitor_event.medal_id = medal.id
WHERE medal.name = 'Gold'
GROUP BY noc_region.id
ORDER BY gold_count DESC
LIMIT 1;
