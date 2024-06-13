# Bike Share Data Project 




# Table of Contents



# Business Case

Email Request, Request for Development of Toman Bike Share Dashboard : <br>

Dear Data Analyst, <br>

We need your expertise to develop a dashboard for “Toman Bike Share” that displays our key performance metrics for informed decision-making. <br>


# Objective

The Chief Financial Officer (CFO) David wants to determine whether Toman Bike Share needs to adjust their prices in the following fiscal year. <br>


How will we help (CFO) David determine price adjustments for the next year?

- We will employ 2021 and 2022 Toman Bike Shop data to create a dashboard and draw insights to provide recommendations.
  

The Toman Bike Shop data includes : 

- Date
- Season
- Year, Month, Weekday, Hour
- Rider Type
- Number of Riders (customers)
- Price(s)
- Cost of Goods Sold

We will clean, test, and analyze this data to provide insights and recommendations for price adjustments (if needed) for the following year.


### Target Audience 

Who are we supporting with this assignment? 

- Primary : CFO David
- Secondary : the financial team working under CFO David


### Deadline 

When should we have this project completed?

- We need a preliminary version ASAP
- We have a 2 week timeline to provide feasible recommendations



# User Story 

As the CFO of Toman Bike Share, I want to utilize revenue and demographic trend data to help guide price adjustments for the next year. With the adjustment of our prices, we aim to maximize profit. 


### Acceptance Criteria

The dashboard should include : 

- Hour Revenue Analysis
- Profit and Revenue Trends
- Seasonal Revenue
- Ride Demographics
- Color-coded to reflect company colors
- Be user-friendly and easy to filter/ sort 
- Use the most recent data possible


### Success Criteria 

CFO David can : 

- Easily identify what price adjustments are needed for the following year based on the analysis and metrics above
- Assess potential for increased profits based on price adjustments, and
- Make informed decisions while collaborating with the financial team

This will allow CFO David to make the accurate judgment call for price adjustments to maximize profits in the following year.


# Data Source 

What information is needed to achieve our objective? 

- Hourly Revenue
- Total Profits
- Total Revenue
- Total Seasonal Revenue
- Rider Type 
- Number of Riders


What data is needed? 

| Column Name | Data Type | Nullable |
| --- | --- | --- |
| date | DATE | NO |
| season | INTEGER | NO |
| year | INTEGER | NO |
| weekday | INTEGER | NO |
| hour | INTEGER  | NO |
| rider_type | NVARCHAR(50) | NO |
| riders | INTEGER | NO |
| price | MONEY | NO |
| cogs | INTEGER | NO |
| revenue | MONEY | NO |
| profit | MONEY | NO |


### Data Quality Checks

What are we testing for? 

High Quality Data Set - data that is complete and accurate, not missing records or inaccurate data : 

- make sure our stakeholders can make accurate decisions based on this data
- 

In order to make sure this is true, and we do have high quality data sets, we need to run different tests : 

Data Quality Tests : 

- Column Count Check
- Duplicate Check
- Null Values Check
- Data Validity Check


Expectations : 
| Test | Results | 
| --- | --- | 
| Column Count Check | 11 |
| Duplicate Check | 0 | 
| Null Values Check | 0 | 
| Data Validity Check | Correct | 


# Stages

- Design
- Development
- Testing
- Analysis
- Recommendations


# Design

### Dashboard Components

1. What is the percentage change in price from 2021 to 2022?
2. What is the percentage change in customers from 2021 to 2022?
3. During what hours of the day is most profitable - top 5?
4. Which weekdays are most profitable - top 3?
5. Which seasons yield the most profit?
6. Which months out of the year are most profitable - top 5?
7. What is the difference between revenue and profit in 2021 and 2022?
8. Did the price change from 2021 to 2022 influence the rider demographic?


### Dashboard Mockup

What will the components of the dashboard look like? 

1. Matrix
2. Line and Clustered Column Chart
3. Clustered Bar Chart
4. Donut Chart
5. Scorecards
6. Slicer


### Tools 

| Tool | Purpose |
| --- | --- |
| Excel | Exploring the data |
| SQL Server | Cleaning, testing, and analyzing the data |
| Power BI | Visualizing the data via interactive dashboards |
| GitHub | Hosting the project documentation and version control |
| Mokkup AI | Designing the wireframe/mockup of the dashboard | 


# Development 

Stages of development : 

1. Collect 2021-2022 Toman Bike Share Data
2. Explore data on Excel
3. Import data into SQL Server Management Studio
4. Create a database for the Toman Data
5. Clean the data w/ SQL
6. Test the data w/ SQL
8. Import into Power BI for visualiztion
9. Create DAX measures and Power BI Dashboard
11. Generate findings based on insights
12. Provide recommendations to stakeholder
13. Publish the data to GitHub Pages


### Initial Data Exploration

Initial Observations : 

1. Since we are analyzing based on date, demographic, and profit - we will need these columns : date, season, month, year, hour, weekday, rider_type, riders, price, and cogs.
2. The date column has dates set as DD-MM-YYYY so we need to change it to show MM-DD-YYYY.
3. We will need to check for any null values during the data cleaning process.
4. We will need to join union and join the 3 different datasets.
5. We will need to do calculations for the revenue and profits.


### Data Cleaning

What should the data look like once we clean it?

We are aiming to refine the data and select only data that is necessary for our analysis. The constraints are the following : 

- date, season, month, year, hour, weekday, rider_type, riders, price, and cogs columns
- All data types are appropriate
- No null values or unknown values
- Date format should be reconfigured to MM-DD-YYYY from DD-MM-YYYY
- The three datasets are joined together to make one single dataset which include revenue and profit, and
- We apply proper aliasing/ renaming 


Sample of an appropriately cleaned dataset : 

| date | season | year | weekeday | hour | rider_type | riders | price | cost_of_goods_sold | revenue | profit |
| --- | --- | --- |
| 12-09-2022 | 3 | 1 | 3 | 18 | registered | 886 | 4.99 | 1.56 |  4421.14 | 3038.98 |
| 09-20-2022 | 3 | 1 | 4 | 17 | registered | 885 | 4.99 | 1.56 |  4416.15 | 3035.55 |
| 09-26-2022 | 4 | 1 | 3 | 17 | registered | 876 | 4.99 | 1.56 |  4371.24 | 3004.68 |
| 10-24-2022 | 4 | 1 | 3 | 17 | registered | 876 | 4.99 | 1.56 |  4371.24 | 3004.68 |






















