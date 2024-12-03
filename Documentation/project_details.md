# Project Details

## Overview

This project analyzes data from the Olympic Games using SQL. The main objective is to explore trends and insights about the Games, such as which countries win the most medals, the most popular events, and athlete demographics over time. 

### Goals of the Project:
- **Analyze Olympic Medal Data**: Explore which countries have won the most gold, silver, and bronze medals.
- **Understand Event Popularity**: Identify which events are the most popular by the number of athletes and the medals awarded.
- **Track Athlete Performance**: Analyze which athletes have been the most successful over multiple Olympics.

## Database Structure

The Olympic Games database consists of **11 tables** that store data about medals, events, athletes, and more. Below is a description of each table:

### 1. **Medal Table**
- Stores information about the medals awarded during each Olympic event.
- Columns: `id`, `name` (Gold, Silver, Bronze)

### 2. **NOC_Region Table**
- Contains information about the National Olympic Committees (NOCs) and their corresponding countries/regions.
- Columns: `id`, `code` (e.g., 'USA'), `name` (e.g., 'United States')

### 3. **City Table**
- Contains details of the cities that have hosted the Olympic Games.
- Columns: `id`, `name`, `country`, `year`

### 4. **Sport Table**
- Contains information about the different sports in the Olympic Games.
- Columns: `id`, `name`, `description`

### 5. **Event Table**
- Lists the events for each sport, including gender categories.
- Columns: `id`, `sport_id`, `name`, `gender`

### 6. **Games Table**
- Contains details about each Olympic Games, including year, season, host city, and the number of athletes.
- Columns: `id`, `year`, `season`, `host_city_id`, `num_athletes`

### 7. **Games_City Table**
- Links Games to the cities that hosted them.
- Columns: `game_id`, `city_id`

### 8. **Person Table**
- Contains information about athletes who competed in the Olympic Games.
- Columns: `id`, `full_name`, `gender`, `height`, `weight`

### 9. **Person_Region Table**
- Links athletes to their corresponding countries/regions.
- Columns: `person_id`, `region_id`

### 10. **Games_Competitor Table**
- Links athletes to the games they participated in.
- Columns: `game_id`, `person_id`, `age`

### 11. **Competitor_Event Table**
- Links athletes to the events they competed in, along with the medals they won.
- Columns: `event_id`, `competitor_id`, `medal_id`

## Relationships Between Tables

Here is a high-level overview of how the tables are related:

- The **Games table** links to the **City table** through `host_city_id`, showing where the Olympic Games were held.
- The **Games_City table** allows multiple cities to host the same Olympic Games.
- The **Medal table** links to the **Competitor_Event table** to associate medals with specific events and athletes.
- The **Event table** links to the **Sport table**, specifying the type of sport for each event.
- The **Person table** links to the **Person_Region table** to identify the athletes' countries/regions.
- The **Games_Competitor table** connects athletes to the Olympic Games in which they participated.

![er_diagram](https://github.com/user-attachments/assets/12597123-5f80-42e4-9ce1-149a28b78c14)


---

### **2. `insights.md`**

The `insights.md` file summarizes the findings and insights from your SQL analysis. It should be updated with key takeaways and statistics you derive from querying the database.

#### **File Content for `insights.md`:**

```markdown
# Insights from Olympic Games Data

This document contains insights derived from the analysis of the Olympic Games data. The analysis was conducted using SQL queries to examine trends in medal counts, athlete demographics, and event popularity.

### 1. **Countries with the Most Gold Medals**

After analyzing the data, we can determine which country has won the most **gold medals** in Olympic history.

- **Top country by gold medals**: The United States has won the most gold medals in the Olympics.
- The detailed analysis shows that **USA** consistently dominates in sports like swimming and athletics.

### 2. **Most Popular Sports by Medal Count**

Based on the data, the most popular sports (by the number of medals awarded) in the Olympics include:

- **Athletics**: Track and field events like sprints, marathons, and jumps.
- **Swimming**: Including events like the 100m Freestyle and the 4x100m Relay.
- **Gymnastics**: The high number of medals awarded in events like individual all-around and team gymnastics.

### 3. **Athlete Demographics**

The data shows a trend of increasing **female participation** in the Olympics over the years. In the 1980s, there were only a few events for women, but by 2020, the number of women participating had nearly reached parity with male athletes.

- **Average Height and Weight**: A comparison of the average height and weight of male and female athletes in the 1992 Olympics shows a slight difference, with male athletes generally being taller and heavier.

### 4. **Top Athletes by Medal Count**

Some athletes have achieved remarkable success in the Olympics:

- **Michael Phelps** (USA): Holds the record for the most Olympic gold medals won by an individual athlete.
- **Usain Bolt** (Jamaica): Dominated the sprinting events and earned multiple gold medals across three Olympic Games.

---


