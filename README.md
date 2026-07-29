# 📊 Sales Analytics System

### SQL-Based Sales Management & Business Analytics Database

A comprehensive **Sales Analytics System built using MySQL and SQL**, designed to manage customers, products, sales transactions, sales agents, and business relationships while generating meaningful insights through analytical SQL queries.

The project demonstrates practical skills in **relational database design, data modeling, SQL querying, joins, aggregation, filtering, and business-oriented sales analysis**.

---

## 🎯 Project Overview

The goal of this project is to build a structured sales database that can be used to analyze business performance and answer important questions related to:

* 💰 Sales revenue
* 🛍️ Product performance
* 👥 Customer purchasing behavior
* 📦 Product inventory
* 👨‍💼 Sales-agent performance
* 📊 Category-wise sales
* 📅 Sales trends and transaction history

The system is designed around a relational database architecture with interconnected entities for customers, products, sales, and sales agents.

---

## 🏗️ Database Architecture

The database consists of **five interconnected tables**:

### 1. 👤 Customers

Stores customer information such as:

* Customer ID
* Name
* Email
* Phone
* City
* State
* Join Date

### 2. 🛍️ Products

Contains product and inventory information:

* Product ID
* Product Name
* Category
* Unit Price
* Stock Quantity

The dataset includes categories such as **Personal Care, Household, and Snacks**.

### 3. 💰 Sales

Records individual sales transactions:

* Sale ID
* Customer ID
* Product ID
* Sale Date
* Quantity Sold
* Total Amount

### 4. 👨‍💼 Sales Agents

Stores sales representative information:

* Agent ID
* Agent Name
* Region
* Phone
* Joining Date

### 5. 🔗 Agent_Sales

A junction table connecting sales transactions with sales agents using a composite primary key and foreign-key relationships.

### Database Relationship

```text
                    ┌──────────────┐
                    │  Customers   │
                    └──────┬───────┘
                           │
                           │ CustomerID
                           ▼
                    ┌──────────────┐
                    │    Sales     │
                    └──────┬───────┘
                           │
                    ProductID│
                           ▼
                    ┌──────────────┐
                    │   Products   │
                    └──────────────┘

                    ┌──────────────┐
                    │ SalesAgents  │
                    └──────┬───────┘
                           │
                        AgentID
                           │
                           ▼
                    ┌──────────────┐
                    │ Agent_Sales  │
                    └──────┬───────┘
                           │
                         SaleID
                           │
                           ▼
                       Sales
```

---

## 🛠️ Technologies Used

| Technology                  | Purpose                          |
| --------------------------- | -------------------------------- |
| 🐬 **MySQL**                | Database creation and management |
| 💻 **SQL**                  | Data querying and analytics      |
| 🗄️ **Relational Database** | Data modeling and relationships  |
| 📊 **SQL Analytics**        | Business and sales insights      |

---

## 📂 Dataset

The project contains structured sample data for:

* **50 Customers**
* **50 Products**
* **50 Sales Transactions**
* **50 Sales Agents**
* **50 Agent-Sales relationships**

The sales dataset contains transactions dated in **June 2025**, while customer and sales-agent records contain joining dates beginning in 2023.

---

## 📈 Analytics & Business Questions

The SQL script contains multiple queries designed to answer practical business questions.

### 💰 Revenue Analysis

* Calculate total revenue
* Find the maximum sale amount
* Calculate category-wise revenue
* Rank products based on total revenue
* Identify the top 5 revenue-generating products

### 🛍️ Product Analysis

* Find the best-selling product by units sold
* Calculate average sale amount by product
* Identify products with low stock
* Sort products by unit price
* Find products selling more than a specified quantity

### 👥 Customer Analysis

* Calculate total unique customers
* Determine total customer spending
* Identify the top 10 customers by spending
* Find customers with the highest number of purchases
* Identify customers from specific states
* Analyze recently joined customers

### 👨‍💼 Sales Agent Analysis

* Calculate average quantity sold by each agent
* Measure total sales handled by agents
* Rank agents according to sales performance
* Identify agents handling the highest number of transactions
* Analyze sales-agent performance through relational joins

### 📦 Inventory Analysis

* Identify products with stock below a specific threshold
* Compare product stock levels
* Analyze products based on price and sales performance

These queries use SQL aggregation, joins, grouping, filtering, sorting, and `HAVING` conditions to generate business-oriented insights.

---

## 🧠 SQL Concepts Demonstrated

This project demonstrates practical knowledge of:

* `CREATE DATABASE`
* `CREATE TABLE`
* `INSERT INTO`
* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* `HAVING`
* `LIMIT`
* `JOIN`
* `INNER JOIN`
* Foreign Keys
* Primary Keys
* Composite Primary Keys
* Aggregate Functions

  * `SUM()`
  * `AVG()`
  * `COUNT()`
  * `MAX()`
  * `MIN()`
* `DISTINCT`
* Date Functions
* Filtering
* Ranking
* Top-N Analysis
* Relational Database Design

---

## 🔍 Example Business Queries

### Total Revenue

```sql
SELECT SUM(TotalAmount) AS TotalRevenue
FROM Sales;
```

### Top-Selling Product

```sql
SELECT P.ProductID,
       P.ProductName,
       SUM(S.QuantitySold) AS TotalUnitsSold
FROM Sales S
JOIN Products P
    ON S.ProductID = P.ProductID
GROUP BY P.ProductID, P.ProductName
ORDER BY TotalUnitsSold DESC
LIMIT 1;
```

### Top 10 Customers by Spending

```sql
SELECT C.CustomerID,
       C.Name,
       SUM(S.TotalAmount) AS TotalSpent
FROM Sales S
JOIN Customers C
    ON S.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.Name
ORDER BY TotalSpent DESC
LIMIT 10;
```

### Top Sales Agents

```sql
SELECT A.AgentID,
       A.AgentName,
       SUM(S.TotalAmount) AS TotalSalesHandled
FROM SalesAgents A
JOIN Agent_Sales ASG
    ON A.AgentID = ASG.AgentID
JOIN Sales S
    ON ASG.SaleID = S.SaleID
GROUP BY A.AgentID, A.AgentName
ORDER BY TotalSalesHandled DESC;
```

---

## 📁 Project Structure

```text
Sales-Analytics-System/
│
├── 📄 project 2 sales.sql
├── 📄 ER diagram project 2.pdf
└── 📄 README.md
```

### `project 2 sales.sql`

Contains:

* Database creation
* Table definitions
* Primary and foreign keys
* Sample data
* Sales transactions
* Sales-agent relationships
* Analytical SQL queries

The SQL file contains **467 lines of SQL code** covering database creation, data insertion, and analysis.

### `ER diagram project 2.pdf`

Contains the Entity Relationship diagram representing the database structure and relationships.

---

## 🚀 How to Run the Project

### Step 1 — Clone the Repository

```bash
git clone https://github.com/Akansha536/Sales-Analytics-System.git
```

### Step 2 — Open MySQL

Open **MySQL Workbench** or another MySQL-compatible SQL client.

### Step 3 — Open the SQL File

Open:

```text
project 2 sales.sql
```

### Step 4 — Execute the Script

Run the SQL script.

It will:

1. Create the `sales` database
2. Create all required tables
3. Define primary and foreign keys
4. Insert sample records
5. Execute analytical queries

### Step 5 — Explore the Results

Run individual analytical queries to investigate:

* Revenue
* Customers
* Products
* Inventory
* Sales agents
* Product performance
* Customer spending
* Sales rankings

---

## 💼 Business Applications

The system can support business decisions such as:

* 📈 Identifying high-revenue products
* 🛍️ Understanding product demand
* 👥 Identifying valuable customers
* 📦 Monitoring inventory
* 👨‍💼 Evaluating sales-agent performance
* 💰 Comparing category-level revenue
* 📊 Supporting data-driven sales strategies

---

## 🔮 Future Improvements

Potential extensions include:

* 📊 Power BI dashboard integration
* 📈 Interactive sales visualizations
* 🔮 Sales forecasting
* 📦 Automated inventory alerts
* ⚡ Stored procedures
* 🔔 Database triggers
* 👥 Customer segmentation
* 📅 Monthly and yearly sales trend analysis
* 🌐 Web-based analytics dashboard
* 🤖 Predictive sales analytics

---

## 🎓 Skills Demonstrated

**MySQL • SQL • Database Design • Relational Data Modeling • Data Analysis • Business Analytics • SQL Joins • Data Aggregation • Customer Analytics • Sales Analytics • Inventory Analysis**

---

## 👨‍💻 Author

**Akansha Singhal**

---

⭐ If you found this project useful, consider giving the repository a star!
