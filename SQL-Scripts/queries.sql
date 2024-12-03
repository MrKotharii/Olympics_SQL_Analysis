-- Query 1: Find the country with the most gold medals
SELECT noc_region.name, COUNT(*) AS gold_medals
FROM medal
JOIN competitor_event ON medal.id = competitor_event.medal_id
JOIN noc_region ON competitor_event.region_id = noc_region.id
WHERE medal.name = 'Gold'
GROUP BY noc_region.name
ORDER BY gold_medals DESC
LIMIT 1
