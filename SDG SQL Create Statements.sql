CREATE SCHEMA IF NOT EXISTS sdg_project;

USE sdg_project;

-- Create Region table
CREATE TABLE IF NOT EXISTS Region (
    Region_ID INT PRIMARY KEY,
    Region_Name VARCHAR(255) NOT NULL,
    Population INT NOT NULL
);

-- Create Energy_Consumption table
CREATE TABLE IF NOT EXISTS Energy_Consumption (
    Consumption_ID INT PRIMARY KEY,
    Region_ID INT NOT NULL,
    Date DATE NOT NULL,
    Energy_Consumed DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (Region_ID) REFERENCES Region(Region_ID)
);

-- Insert sample data into Region table
INSERT INTO Region (Region_ID, Region_Name, Population) VALUES
(1, 'North Region', 1500000),
(2, 'South Region', 1000000),
(3, 'East Region', 1200000),
(4, 'West Region', 800000);

-- Insert sample data into Energy_Consumption table
INSERT INTO Energy_Consumption (Consumption_ID, Region_ID, Date, Energy_Consumed) VALUES
(1, 1, '2024-01-01', 50000),
(2, 1, '2024-02-01', 52000),
(3, 1, '2024-03-01', 53000),
(4, 1, '2024-04-01', 54000),
(5, 1, '2024-05-01', 55000),
(6, 2, '2024-01-01', 30000),
(7, 2, '2024-02-01', 31000),
(8, 2, '2024-03-01', 32000),
(9, 2, '2024-04-01', 33000),
(10, 2, '2024-05-01', 34000),
(11, 3, '2024-01-01', 40000),
(12, 3, '2024-02-01', 42000),
(13, 3, '2024-03-01', 43000),
(14, 3, '2024-04-01', 44000),
(15, 3, '2024-05-01', 45000),
(16, 4, '2024-01-01', 25000),
(17, 4, '2024-02-01', 26000),
(18, 4, '2024-03-01', 27000),
(19, 4, '2024-04-01', 28000),
(20, 4, '2024-05-01', 29000);
