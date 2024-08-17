-- Total energy consumed by each region
SELECT Region.Region_Name, SUM(Energy_Consumption.Energy_Consumed) AS Total_Energy_Consumed
FROM Energy_Consumption
JOIN Region ON Energy_Consumption.Region_ID = Region.Region_ID
GROUP BY Region.Region_Name;

-- Average energy consumption per month for each region
SELECT Region.Region_Name, AVG(Energy_Consumption.Energy_Consumed) AS Average_Monthly_Consumption
FROM Energy_Consumption
JOIN Region ON Energy_Consumption.Region_ID = Region.Region_ID
GROUP BY Region.Region_Name;
