create database sales;
use sales;
show databases;
CREATE TABLE Customers (
CustomerID INT PRIMARY KEY,
Name VARCHAR(100),
Email VARCHAR(100),
Phone VARCHAR(15),
City VARCHAR(50),
State VARCHAR(50),
JoinDate DATE
);
 
CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
UnitPrice DECIMAL(10,2),
StockQuantity INT
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    SaleDate DATE,
    QuantitySold INT,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
CREATE TABLE SalesAgents (
    AgentID INT PRIMARY KEY,
    AgentName VARCHAR(100),
    Region VARCHAR(50),
    Phone VARCHAR(15),
    JoiningDate DATE
);

CREATE TABLE Agent_Sales (
    SaleID INT,
    AgentID INT,
    PRIMARY KEY (SaleID, AgentID),
    FOREIGN KEY (SaleID) REFERENCES Sales(SaleID),
    FOREIGN KEY (AgentID) REFERENCES SalesAgents(AgentID)
);

INSERT INTO Customers (CustomerID, Name, Email, Phone, City, State, JoinDate) VALUES
(1, 'Amit Sharma', 'amit.sharma1@example.com', '9000000001', 'Delhi', 'Delhi', '2023-01-10'),
(2, 'Neha Verma', 'neha.verma2@example.com', '9000000002', 'Mumbai', 'Maharashtra', '2023-01-11'),
(3, 'Ravi Kumar', 'ravi.kumar3@example.com', '9000000003', 'Bangalore', 'Karnataka', '2023-01-12'),
(4, 'Suman Joshi', 'suman.joshi4@example.com', '9000000004', 'Ahmedabad', 'Gujarat', '2023-01-13'),
(5, 'Preeti Mehta', 'preeti.mehta5@example.com', '9000000005', 'Kolkata', 'West Bengal', '2023-01-14'),
(6, 'Anil Kapoor', 'anil.kapoor6@example.com', '9000000006', 'Chennai', 'Tamil Nadu', '2023-01-15'),
(7, 'Meera Nair', 'meera.nair7@example.com', '9000000007', 'Hyderabad', 'Telangana', '2023-01-16'),
(8, 'Vikram Singh', 'vikram.singh8@example.com', '9000000008', 'Jaipur', 'Rajasthan', '2023-01-17'),
(9, 'Kiran Rao', 'kiran.rao9@example.com', '9000000009', 'Lucknow', 'Uttar Pradesh', '2023-01-18'),
(10, 'Sunil Reddy', 'sunil.reddy10@example.com', '9000000010', 'Visakhapatnam', 'Andhra Pradesh', '2023-01-19'),
(11, 'Ritika Sharma', 'ritika.sharma11@example.com', '9000000011', 'Patna', 'Bihar', '2023-01-20'),
(12, 'Deepak Yadav', 'deepak.yadav12@example.com', '9000000012', 'Bhopal', 'Madhya Pradesh', '2023-01-21'),
(13, 'Shweta Chauhan', 'shweta.chauhan13@example.com', '9000000013', 'Pune', 'Maharashtra', '2023-01-22'),
(14, 'Harsh Sinha', 'harsh.sinha14@example.com', '9000000014', 'Kanpur', 'Uttar Pradesh', '2023-01-23'),
(15, 'Tanya Kapoor', 'tanya.kapoor15@example.com', '9000000015', 'Nagpur', 'Maharashtra', '2023-01-24'),
(16, 'Nikhil Jain', 'nikhil.jain16@example.com', '9000000016', 'Indore', 'Madhya Pradesh', '2023-01-25'),
(17, 'Sneha Dubey', 'sneha.dubey17@example.com', '9000000017', 'Thane', 'Maharashtra', '2023-01-26'),
(18, 'Rohan Desai', 'rohan.desai18@example.com', '9000000018', 'Vadodara', 'Gujarat', '2023-01-27'),
(19, 'Ayesha Khan', 'ayesha.khan19@example.com', '9000000019', 'Surat', 'Gujarat', '2023-01-28'),
(20, 'Manish Tiwari', 'manish.tiwari20@example.com', '9000000020', 'Amritsar', 'Punjab', '2023-01-29'),
(21, 'Divya Bansal', 'divya.bansal21@example.com', '9000000021', 'Ludhiana', 'Punjab', '2023-01-30'),
(22, 'Akash Mittal', 'akash.mittal22@example.com', '9000000022', 'Agra', 'Uttar Pradesh', '2023-01-31'),
(23, 'Priya Bhatt', 'priya.bhatt23@example.com', '9000000023', 'Meerut', 'Uttar Pradesh', '2023-02-01'),
(24, 'Arjun Malhotra', 'arjun.malhotra24@example.com', '9000000024', 'Ranchi', 'Jharkhand', '2023-02-02'),
(25, 'Swati Agarwal', 'swati.agarwal25@example.com', '9000000025', 'Raipur', 'Chhattisgarh', '2023-02-03'),
(26, 'Kunal Saxena', 'kunal.saxena26@example.com', '9000000026', 'Dehradun', 'Uttarakhand', '2023-02-04'),
(27, 'Tanvi Rawat', 'tanvi.rawat27@example.com', '9000000027', 'Jodhpur', 'Rajasthan', '2023-02-05'),
(28, 'Yash Patil', 'yash.patil28@example.com', '9000000028', 'Nashik', 'Maharashtra', '2023-02-06'),
(29, 'Pooja Shetty', 'pooja.shetty29@example.com', '9000000029', 'Mangalore', 'Karnataka', '2023-02-07'),
(30, 'Aman Chopra', 'aman.chopra30@example.com', '9000000030', 'Shimla', 'Himachal Pradesh', '2023-02-08'),
(31, 'Juhi Nanda', 'juhi.nanda31@example.com', '9000000031', 'Panaji', 'Goa', '2023-02-09'),
(32, 'Siddharth Rao', 'siddharth.rao32@example.com', '9000000032', 'Guwahati', 'Assam', '2023-02-10'),
(33, 'Rhea Sen', 'rhea.sen33@example.com', '9000000033', 'Kochi', 'Kerala', '2023-02-11'),
(34, 'Varun Mehta', 'varun.mehta34@example.com', '9000000034', 'Trivandrum', 'Kerala', '2023-02-12'),
(35, 'Ishita Ghosh', 'ishita.ghosh35@example.com', '9000000035', 'Asansol', 'West Bengal', '2023-02-13'),
(36, 'Anuj Bhardwaj', 'anuj.bhardwaj36@example.com', '9000000036', 'Jabalpur', 'Madhya Pradesh', '2023-02-14'),
(37, 'Ritika Rao', 'ritika.rao37@example.com', '9000000037', 'Gaya', 'Bihar', '2023-02-15'),
(38, 'Dev Singh', 'dev.singh38@example.com', '9000000038', 'Srinagar', 'Jammu and Kashmir', '2023-02-16'),
(39, 'Shreya Pillai', 'shreya.pillai39@example.com', '9000000039', 'Kozhikode', 'Kerala', '2023-02-17'),
(40, 'Kabir Sehgal', 'kabir.sehgal40@example.com', '9000000040', 'Jammu', 'Jammu and Kashmir', '2023-02-18'),
(41, 'Snehal Jadhav', 'snehal.jadhav41@example.com', '9000000041', 'Aurangabad', 'Maharashtra', '2023-02-19'),
(42, 'Om Prakash', 'om.prakash42@example.com', '9000000042', 'Siliguri', 'West Bengal', '2023-02-20'),
(43, 'Lakshmi Menon', 'lakshmi.menon43@example.com', '9000000043', 'Tirupati', 'Andhra Pradesh', '2023-02-21'),
(44, 'Ashok Nair', 'ashok.nair44@example.com', '9000000044', 'Hubli', 'Karnataka', '2023-02-22'),
(45, 'Ananya Dixit', 'ananya.dixit45@example.com', '9000000045', 'Udaipur', 'Rajasthan', '2023-02-23'),
(46, 'Aditya Iyer', 'aditya.iyer46@example.com', '9000000046', 'Vijayawada', 'Andhra Pradesh', '2023-02-24'),
(47, 'Bhavna Shah', 'bhavna.shah47@example.com', '9000000047', 'Jamshedpur', 'Jharkhand', '2023-02-25'),
(48, 'Kartik Nanda', 'kartik.nanda48@example.com', '9000000048', 'Bilaspur', 'Chhattisgarh', '2023-02-26'),
(49, 'Simran Bajaj', 'simran.bajaj49@example.com', '9000000049', 'Rajkot', 'Gujarat', '2023-02-27'),
(50, 'Dhruv Joshi', 'dhruv.joshi50@example.com', '9000000050', 'Noida', 'Uttar Pradesh', '2023-02-28');

INSERT INTO Products (ProductID, ProductName, Category, UnitPrice, StockQuantity) VALUES
(1, 'Toothpaste', 'Personal Care', 45.00, 500),
(2, 'Shampoo', 'Personal Care', 120.00, 350),
(3, 'Hand Wash', 'Personal Care', 80.00, 400),
(4, 'Face Cream', 'Personal Care', 150.00, 300),
(5, 'Hair Oil', 'Personal Care', 100.00, 450),
(6, 'Floor Cleaner', 'Household', 90.00, 250),
(7, 'Glass Cleaner', 'Household', 110.00, 200),
(8, 'Detergent Powder', 'Household', 180.00, 300),
(9, 'Toilet Cleaner', 'Household', 95.00, 220),
(10, 'Dishwash Liquid', 'Household', 70.00, 275),
(11, 'Chips', 'Snacks', 20.00, 1000),
(12, 'Biscuits', 'Snacks', 25.00, 900),
(13, 'Chocolate Bar', 'Snacks', 30.00, 800),
(14, 'Namkeen Mix', 'Snacks', 35.00, 700),
(15, 'Soda Can', 'Snacks', 40.00, 650),
(16, 'Juice Pack', 'Snacks', 50.00, 600),
(17, 'Body Lotion', 'Personal Care', 140.00, 300),
(18, 'Face Wash', 'Personal Care', 90.00, 350),
(19, 'Deodorant', 'Personal Care', 160.00, 200),
(20, 'Sanitizer', 'Personal Care', 60.00, 500),
(21, 'Room Freshener', 'Household', 85.00, 250),
(22, 'Garbage Bags', 'Household', 55.00, 400),
(23, 'Scrub Pad', 'Household', 20.00, 1000),
(24, 'Mop Refill', 'Household', 75.00, 150),
(25, 'Air Freshener Gel', 'Household', 105.00, 180),
(26, 'Energy Drink', 'Snacks', 60.00, 550),
(27, 'Protein Bar', 'Snacks', 70.00, 300),
(28, 'Dry Fruits Mix', 'Snacks', 90.00, 200),
(29, 'Instant Noodles', 'Snacks', 45.00, 800),
(30, 'Popcorn Pack', 'Snacks', 35.00, 750),
(31, 'Face Mask', 'Personal Care', 25.00, 600),
(32, 'Baby Soap', 'Personal Care', 35.00, 400),
(33, 'Shaving Cream', 'Personal Care', 55.00, 350),
(34, 'Aftershave Lotion', 'Personal Care', 85.00, 300),
(35, 'Talcum Powder', 'Personal Care', 65.00, 370),
(36, 'Toilet Roll', 'Household', 30.00, 900),
(37, 'Laundry Bar', 'Household', 20.00, 850),
(38, 'Stain Remover', 'Household', 95.00, 200),
(39, 'Wiper Blade', 'Household', 60.00, 150),
(40, 'Disinfectant Spray', 'Household', 125.00, 180),
(41, 'Snack Pack Combo', 'Snacks', 100.00, 300),
(42, 'Cookies Box', 'Snacks', 45.00, 500),
(43, 'Cheese Chips', 'Snacks', 50.00, 400),
(44, 'Fruit Candy', 'Snacks', 30.00, 700),
(45, 'Ice Tea Bottle', 'Snacks', 35.00, 450),
(46, 'Lip Balm', 'Personal Care', 40.00, 500),
(47, 'Beard Oil', 'Personal Care', 110.00, 200),
(48, 'Foot Cream', 'Personal Care', 75.00, 250),
(49, 'Toilet Brush', 'Household', 60.00, 300),
(50, 'Hand Towel', 'Household', 50.00, 320);

INSERT INTO Sales (SaleID, CustomerID, ProductID, SaleDate, QuantitySold, TotalAmount) VALUES
(1, 1, 2, '2025-06-01', 2, 240.00),
(2, 5, 1, '2025-06-02', 1, 45.00),
(3, 3, 4, '2025-06-02', 3, 450.00),
(4, 7, 5, '2025-06-03', 2, 200.00),
(5, 2, 3, '2025-06-03', 4, 320.00),
(6, 6, 8, '2025-06-04', 2, 360.00),
(7, 4, 6, '2025-06-04', 1, 90.00),
(8, 9, 7, '2025-06-05', 3, 330.00),
(9, 10, 10, '2025-06-06', 2, 140.00),
(10, 8, 11, '2025-06-06', 5, 100.00),
(11, 11, 12, '2025-06-07', 6, 150.00),
(12, 13, 13, '2025-06-07', 4, 120.00),
(13, 12, 14, '2025-06-08', 3, 105.00),
(14, 14, 15, '2025-06-08', 2, 80.00),
(15, 16, 16, '2025-06-09', 1, 50.00),
(16, 15, 17, '2025-06-09', 2, 280.00),
(17, 18, 18, '2025-06-10', 1, 90.00),
(18, 17, 19, '2025-06-10', 1, 160.00),
(19, 19, 20, '2025-06-11', 3, 180.00),
(20, 20, 21, '2025-06-11', 2, 170.00),
(21, 22, 22, '2025-06-12', 4, 220.00),
(22, 21, 23, '2025-06-12', 3, 60.00),
(23, 23, 24, '2025-06-13', 2, 150.00),
(24, 24, 25, '2025-06-13', 1, 105.00),
(25, 25, 26, '2025-06-14', 2, 120.00),
(26, 27, 27, '2025-06-14', 3, 210.00),
(27, 26, 28, '2025-06-15', 1, 90.00),
(28, 28, 29, '2025-06-15', 4, 180.00),
(29, 29, 30, '2025-06-16', 2, 70.00),
(30, 30, 31, '2025-06-16', 5, 125.00),
(31, 32, 32, '2025-06-17', 2, 70.00),
(32, 31, 33, '2025-06-17', 3, 165.00),
(33, 33, 34, '2025-06-18', 2, 170.00),
(34, 34, 35, '2025-06-18', 1, 65.00),
(35, 35, 36, '2025-06-19', 6, 180.00),
(36, 36, 37, '2025-06-19', 3, 60.00),
(37, 38, 38, '2025-06-20', 2, 190.00),
(38, 37, 39, '2025-06-20', 1, 60.00),
(39, 39, 40, '2025-06-21', 2, 250.00),
(40, 40, 41, '2025-06-21', 1, 100.00),
(41, 41, 42, '2025-06-22', 2, 90.00),
(42, 42, 43, '2025-06-22', 3, 150.00),
(43, 43, 44, '2025-06-23', 4, 120.00),
(44, 44, 45, '2025-06-23', 2, 70.00),
(45, 45, 46, '2025-06-24', 2, 80.00),
(46, 46, 47, '2025-06-24', 1, 110.00),
(47, 47, 48, '2025-06-25', 2, 150.00),
(48, 48, 49, '2025-06-25', 1, 60.00),
(49, 49, 50, '2025-06-26', 3, 150.00),
(50, 50, 1, '2025-06-26', 4, 180.00);

INSERT INTO SalesAgents (AgentID, AgentName, Region, Phone, JoiningDate) VALUES
(1, 'Amit Sharma', 'North', '9810000001', '2023-01-10'),
(2, 'Neha Verma', 'South', '9810000002', '2023-01-11'),
(3, 'Ravi Kumar', 'East', '9810000003', '2023-01-12'),
(4, 'Suman Joshi', 'West', '9810000004', '2023-01-13'),
(5, 'Preeti Mehta', 'Central', '9810000005', '2023-01-14'),
(6, 'Anil Kapoor', 'North', '9810000006', '2023-01-15'),
(7, 'Meera Nair', 'South', '9810000007', '2023-01-16'),
(8, 'Vikram Singh', 'East', '9810000008', '2023-01-17'),
(9, 'Kiran Rao', 'West', '9810000009', '2023-01-18'),
(10, 'Sunil Reddy', 'Central', '9810000010', '2023-01-19'),
(11, 'Ritika Sharma', 'North', '9810000011', '2023-01-20'),
(12, 'Deepak Yadav', 'South', '9810000012', '2023-01-21'),
(13, 'Shweta Chauhan', 'East', '9810000013', '2023-01-22'),
(14, 'Harsh Sinha', 'West', '9810000014', '2023-01-23'),
(15, 'Tanya Kapoor', 'Central', '9810000015', '2023-01-24'),
(16, 'Nikhil Jain', 'North', '9810000016', '2023-01-25'),
(17, 'Sneha Dubey', 'South', '9810000017', '2023-01-26'),
(18, 'Rohan Desai', 'East', '9810000018', '2023-01-27'),
(19, 'Ayesha Khan', 'West', '9810000019', '2023-01-28'),
(20, 'Manish Tiwari', 'Central', '9810000020', '2023-01-29'),
(21, 'Divya Bansal', 'North', '9810000021', '2023-01-30'),
(22, 'Akash Mittal', 'South', '9810000022', '2023-01-31'),
(23, 'Priya Bhatt', 'East', '9810000023', '2023-02-01'),
(24, 'Arjun Malhotra', 'West', '9810000024', '2023-02-02'),
(25, 'Swati Agarwal', 'Central', '9810000025', '2023-02-03'),
(26, 'Kunal Saxena', 'North', '9810000026', '2023-02-04'),
(27, 'Tanvi Rawat', 'South', '9810000027', '2023-02-05'),
(28, 'Yash Patil', 'East', '9810000028', '2023-02-06'),
(29, 'Pooja Shetty', 'West', '9810000029', '2023-02-07'),
(30, 'Aman Chopra', 'Central', '9810000030', '2023-02-08'),
(31, 'Juhi Nanda', 'North', '9810000031', '2023-02-09'),
(32, 'Siddharth Rao', 'South', '9810000032', '2023-02-10'),
(33, 'Rhea Sen', 'East', '9810000033', '2023-02-11'),
(34, 'Varun Mehta', 'West', '9810000034', '2023-02-12'),
(35, 'Ishita Ghosh', 'Central', '9810000035', '2023-02-13'),
(36, 'Anuj Bhardwaj', 'North', '9810000036', '2023-02-14'),
(37, 'Ritika Rao', 'South', '9810000037', '2023-02-15'),
(38, 'Dev Singh', 'East', '9810000038', '2023-02-16'),
(39, 'Shreya Pillai', 'West', '9810000039', '2023-02-17'),
(40, 'Kabir Sehgal', 'Central', '9810000040', '2023-02-18'),
(41, 'Snehal Jadhav', 'North', '9810000041', '2023-02-19'),
(42, 'Om Prakash', 'South', '9810000042', '2023-02-20'),
(43, 'Lakshmi Menon', 'East', '9810000043', '2023-02-21'),
(44, 'Ashok Nair', 'West', '9810000044', '2023-02-22'),
(45, 'Ananya Dixit', 'Central', '9810000045', '2023-02-23'),
(46, 'Aditya Iyer', 'North', '9810000046', '2023-02-24'),
(47, 'Bhavna Shah', 'South', '9810000047', '2023-02-25'),
(48, 'Kartik Nanda', 'East', '9810000048', '2023-02-26'),
(49, 'Simran Bajaj', 'West', '9810000049', '2023-02-27'),
(50, 'Dhruv Joshi', 'Central', '9810000050', '2023-02-28');

INSERT INTO Agent_Sales (SaleID, AgentID) VALUES
(1, 5),
(2, 8),
(3, 12),
(4, 4),
(5, 19),
(6, 2),
(7, 11),
(8, 6),
(9, 17),
(10, 3),
(11, 15),
(12, 10),
(13, 20),
(14, 7),
(15, 9),
(16, 14),
(17, 1),
(18, 16),
(19, 13),
(20, 18),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25),
(26, 26),
(27, 27),
(28, 28),
(29, 29),
(30, 30),
(31, 31),
(32, 32),
(33, 33),
(34, 34),
(35, 35),
(36, 36),
(37, 37),
(38, 38),
(39, 39),
(40, 40),
(41, 41),
(42, 42),
(43, 43),
(44, 44),
(45, 45),
(46, 46),
(47, 47),
(48, 48),
(49, 49),
(50, 50);

SELECT SUM(TotalAmount) AS TotalRevenue
FROM Sales;

SELECT P.ProductID, P.ProductName, SUM(S.QuantitySold) AS TotalUnitsSold
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.ProductID, P.ProductName
ORDER BY TotalUnitsSold DESC
LIMIT 1;

SELECT AVG(QuantitySold) AS AvgQuantityPerSale
FROM Sales;

SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM Sales;

SELECT C.CustomerID, C.Name, SUM(S.TotalAmount) AS TotalSpent
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.Name
ORDER BY TotalSpent DESC;

SELECT MAX(TotalAmount) AS MaxSaleAmount
FROM Sales;

SELECT P.ProductID, P.ProductName, AVG(S.TotalAmount) AS AvgSaleAmount
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.ProductID, P.ProductName
ORDER BY AvgSaleAmount DESC;

SELECT MIN(QuantitySold) AS MinQuantitySold
FROM Sales;

SELECT P.Category, SUM(S.TotalAmount) AS TotalRevenue
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY TotalRevenue DESC;

SELECT A.AgentID, A.AgentName, AVG(S.QuantitySold) AS AvgProductsSold
FROM SalesAgents A
JOIN Agent_Sales ASG ON A.AgentID = ASG.AgentID
JOIN Sales S ON ASG.SaleID = S.SaleID
GROUP BY A.AgentID, A.AgentName
ORDER BY AvgProductsSold DESC;

SELECT *
FROM Sales
WHERE QuantitySold > 10;

SELECT *
FROM Customers
WHERE State = 'Delhi';

SELECT *
FROM Sales
WHERE SaleDate > '2025-01-01';

SELECT *
FROM Products
WHERE StockQuantity < 100;

SELECT *
FROM Customers
WHERE YEAR(JoinDate) = 2024;

SELECT C.CustomerID, C.Name, SUM(S.TotalAmount) AS TotalSpent
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.Name
HAVING SUM(S.TotalAmount) > 50000;

SELECT P.ProductID, P.ProductName, SUM(S.QuantitySold) AS TotalUnitsSold
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.ProductID, P.ProductName
HAVING SUM(S.QuantitySold) > 100;

SELECT A.AgentID, A.AgentName, SUM(S.TotalAmount) AS TotalHandled
FROM SalesAgents A
JOIN Agent_Sales ASG ON A.AgentID = ASG.AgentID
JOIN Sales S ON ASG.SaleID = S.SaleID
GROUP BY A.AgentID, A.AgentName
HAVING SUM(S.TotalAmount) > 100000;

SELECT P.Category, SUM(S.TotalAmount) AS TotalRevenue
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category
HAVING SUM(S.TotalAmount) > 200000;

SELECT City, COUNT(DISTINCT CustomerID) AS CustomerCount
FROM Customers
GROUP BY City
HAVING COUNT(DISTINCT CustomerID) > 5;

SELECT *
FROM Products
ORDER BY UnitPrice DESC;

SELECT C.CustomerID, C.Name, SUM(S.TotalAmount) AS TotalSpent
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.Name
ORDER BY TotalSpent DESC
LIMIT 10;

SELECT *
FROM Sales
ORDER BY SaleDate DESC;

SELECT A.AgentID, A.AgentName, SUM(S.TotalAmount) AS TotalSalesHandled
FROM SalesAgents A
JOIN Agent_Sales ASG ON A.AgentID = ASG.AgentID
JOIN Sales S ON ASG.SaleID = S.SaleID
GROUP BY A.AgentID, A.AgentName
ORDER BY TotalSalesHandled DESC;

SELECT P.Category, SUM(S.TotalAmount) AS TotalRevenue
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.Category
ORDER BY TotalRevenue DESC;

SELECT P.ProductID, P.ProductName, SUM(S.TotalAmount) AS TotalRevenue
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.ProductID, P.ProductName
ORDER BY TotalRevenue DESC
LIMIT 5;

SELECT *
FROM Sales
ORDER BY SaleDate DESC
LIMIT 10;

SELECT C.CustomerID, C.Name, COUNT(S.SaleID) AS NumberOfPurchases
FROM Sales S
JOIN Customers C ON S.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.Name
ORDER BY NumberOfPurchases DESC
LIMIT 3;

SELECT A.AgentID, A.AgentName, COUNT(ASG.SaleID) AS NumberOfSales
FROM SalesAgents A
JOIN Agent_Sales ASG ON A.AgentID = ASG.AgentID
GROUP BY A.AgentID, A.AgentName
ORDER BY NumberOfSales DESC
LIMIT 5;

SELECT *
FROM Customers
ORDER BY JoinDate DESC
LIMIT 5;





