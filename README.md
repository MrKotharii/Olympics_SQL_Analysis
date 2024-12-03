# Olympics SQL Analysis

## Overview
This project analyzes Olympic Games data using structured SQL queries. The analysis highlights trends in medal distribution, athlete participation, and host cities.

### Goals:
- Learn to design and query relational databases.
- Gain insights into the Olympics dataset through SQL analysis.
- Demonstrate proficiency in SQL and database management.

---

## Project Details

### Database Description
The `Olympics` database includes 11 tables:  
1. `medal` - Stores medal details (Gold, Silver, Bronze).  
2. `noc_region` - National Olympic Committees and regions.  
3. `city` - Olympic host cities.  
4. `sport` - Sports categories.  
5. `event` - Specific Olympic events.  
6. `games` - Olympic Games details (year, season, etc.).  
7. `games_city` - Mapping of games to cities.  
8. `person` - Athlete information.  
9. `person_region` - Athlete's nationality and regions.  
10. `games_competitor` - Athlete participation per game.  
11. `competitor_event` - Athlete performance in events.

### Entity-Relationship Diagram
Below is the database schema used in this project:

![ER Diagram](images/ERD.png)

---

## Key Insights
- **Top-performing Regions**: Regions with the most Gold medals.  
- **Host Cities**: Cities that hosted Summer Olympics.  
- **Athlete Trends**: Athletes with the most medals in specific years.  

See [query results](images/query_results/) for detailed screenshots.

---

## Setup and Usage

### Step 1: Clone the Repository
```bash
git clone https://github.com/yourusername/Olympics_SQL_Analysis.git
cd Olympics_SQL_Analysis
