-- Project: Electric Vehicle Market Performance & Insights
-- Task: Data Extraction, Aggregation & Performance Metrics

-- 1. Create EV Sales Table
CREATE TABLE ev_market_performance (
    Year INT,
    Manufacturer VARCHAR(100),
    Model VARCHAR(100),
    Category VARCHAR(50),
    Manufacturing_Country VARCHAR(50),
    Battery_Chemistry VARCHAR(50),
    Battery_Capacity_kWh DECIMAL(5,2),
    Driving_Range_km INT,
    Annual_Sales_Units INT,
    Average_Price_USD DECIMAL(10,2),
    Customer_Rating DECIMAL(3,2)
);

-- 2. Scenario 1 (Emily Johnson): Total Sales by Vehicle Category & Market Share
SELECT 
    Category,
    SUM(Annual_Sales_Units) AS Total_Sales,
    ROUND(AVG(Customer_Rating), 2) AS Avg_Customer_Rating
FROM ev_market_performance
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 3. Scenario 2 (David Chen): Manufacturer Ranking by Sales & Rating
SELECT 
    Manufacturer,
    Manufacturing_Country,
    SUM(Annual_Sales_Units) AS Total_Sales,
    ROUND(AVG(Customer_Rating), 2) AS Avg_Rating
FROM ev_market_performance
GROUP BY Manufacturer, Manufacturing_Country
ORDER BY Total_Sales DESC;

-- 4. Scenario 3 (Dr. Sarah Williams): Battery Chemistry Performance & Driving Range
SELECT 
    Battery_Chemistry,
    ROUND(AVG(Driving_Range_km), 0) AS Avg_Driving_Range_KM,
    ROUND(AVG(Battery_Capacity_kWh), 2) AS Avg_Capacity_kWh,
    ROUND(AVG(Customer_Rating), 2) AS Avg_Rating
FROM ev_market_performance
GROUP BY Battery_Chemistry
ORDER BY Avg_Driving_Range_KM DESC;