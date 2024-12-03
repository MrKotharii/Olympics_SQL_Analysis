# Olympic Games Data Analysis

This project is focused on analyzing data from the Olympic Games using SQL. The main objective is to understand various aspects of the Olympic Games, including which countries win the most medals, which athletes perform the best, and trends in the Olympic Games over time.

### Goals of the Project:
- Organize Olympic Games data into structured tables.
- Use SQL to analyze the data.
- Understand patterns related to medals, athletes, and regions.
- Track performance trends across different Olympic Games.

The project contains SQL scripts for:
1. Creating the database schema (tables).
2. Inserting Olympic data into the tables.
3. Running complex queries to analyze the data and extract insights.

### Key Insights to Explore:
- Which country has won the most gold medals?
- What are the most popular Olympic events?
- How have athlete demographics evolved over time?

---

**Technologies Used:**
- SQL (to create and manipulate the database)
- pgAdmin (SQL tool used for creating and analyzing the database)

# Olympic Games Data Analysis

This project uses SQL to analyze data from the Olympic Games, including information about athletes, countries, events, and medals. The main objective is to gain insights into Olympic trends, such as which countries win the most medals, which athletes perform the best, and how the Games have evolved over time.

---

## Table of Contents
1. [Project Overview](#project-overview)
2. [Technologies Used](#technologies-used)
3. [Getting Started](#getting-started)
   - [Setup Instructions](#setup-instructions)
4. [Key Features](#key-features)
5. [Insights](#insights)
6. [File Structure](#file-structure)

---

## Project Overview

The Olympic Games Data Analysis project focuses on organizing and analyzing data about the Olympic Games using SQL. The database consists of multiple tables, such as `medal`, `city`, `sport`, and `person`, which store structured data about athletes, events, and their outcomes.

Key objectives include:
- Organizing raw Olympic Games data into a relational database.
- Using SQL queries to analyze the data and extract meaningful insights.
- Answering questions such as:
  - Which country has won the most medals?
  - What are the most popular sports and events?
  - How have athlete demographics evolved over the years?

---

## Technologies Used

- **SQL**: To create and manipulate the database.
- **pgAdmin**: For database management and running queries.
- **Markdown**: For project documentation.

---

## Getting Started

### Setup Instructions

To use this project, follow these steps:

1. **Clone the Repository**:
   - Use the following command to clone the repository:
     ```bash
     git clone https://github.com/yourusername/Olympics-Data-Analysis.git
     cd Olympics-Data-Analysis
     ```

2. **Set Up the Database**:
   - Open your SQL tool (e.g., pgAdmin).
   - Run the `SQL-Scripts/create_tables.sql` script to create the database schema:
     ```sql
     \i SQL-Scripts/create_tables.sql
     ```
   - Run the `SQL-Scripts/insert_data.sql` script to populate the tables with data:
     ```sql
     \i SQL-Scripts/insert_data.sql
     ```

3. **Analyze the Data**:
   - Use the queries in `SQL-Scripts/queries.sql` to analyze the data. For example:
     ```sql
     SELECT DISTINCT city.name FROM city JOIN games_city ON city.id = games_city.city_id;
     ```

---

## Key Features

- **Relational Database Design**:
  - Tables such as `medal`, `sport`, `event`, and `games` are structured with foreign keys to establish relationships.
  - Example: The `medal` table is linked to the `competitor_event` table to record medals awarded to athletes in specific events.

- **SQL-Based Data Analysis**:
  - Queries analyze trends, including:
    - Countries with the most medals.
    - Popular Olympic sports.
    - Athlete demographics over the years.

- **Comprehensive Insights**:
  - Example: The United States has won the most gold medals historically.
  - Summer Olympics have been hosted most frequently in Europe and North America.

---

## Insights

### Highlights from Data Analysis

1. **Most Successful Regions**:
   - The United States consistently dominates in medal counts, particularly in Athletics and Swimming.

2. **Top Sports by Medal Count**:
   - Athletics, Swimming, and Gymnastics are the most competitive and medal-heavy sports.

3. **Athlete Demographics**:
   - Over time, female participation in the Olympics has steadily increased, contributing significantly to medal counts.

4. **Host Cities and Regions**:
   - Cities like London, Beijing, and Los Angeles have hosted the Olympics multiple times, emphasizing their infrastructure and international appeal.

### Key Queries Used:
- [List of Cities Hosting Olympics](SQL-Scripts/queries.sql)
- [Regions Winning Gold Medals](SQL-Scripts/queries.sql)
- [Top 10 Cities by Gold Medals](SQL-Scripts/queries.sql)

---


