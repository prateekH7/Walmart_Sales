# Walmart_Sales

![image](https://github.com/user-attachments/assets/c3083834-aa16-4e84-8c16-af1be599c228)

# 🛒 Walmart Sales Data Analysis

This project explores and analyzes real-world transactional data from Walmart to uncover meaningful business insights using **SQL** and **Python (Pandas)**. Through structured queries and efficient data processing, the project answers key business questions around customer behavior, sales performance, and operational efficiency.

---

## 📁 Project Structure

📦 Walmart-Sales-Analysis
├── Walmart_sales.sql # SQL queries used for analysis
├── walmart_clean_data.csv # Cleaned Walmart sales dataset
├── Walmart_sales.ipynb # Python notebook for data exploration
└── README.md # Project overview and documentation

yaml
Copy
Edit

---

## 📊 Dataset Description

- **Source**: Simulated Walmart retail sales data
- **Records**: 10,000+ transactions
- **Fields**: 
  - Invoice ID, Branch, City, Category
  - Unit Price, Quantity, Date, Time
  - Payment Method, Rating, Profit Margin, Total

---

## 🎯 Project Objectives

- Identify the most preferred **payment methods** and busiest times of the day.
- Analyze **product category** performance by city and branch.
- Detect **sales and revenue trends** across time and locations.
- Compare revenue change across years to **highlight underperforming branches**.

---

## 🔍 Key SQL Analyses

1. 📌 Total transactions and quantity sold by payment method  
2. ⭐ Highest-rated categories per branch  
3. 📅 Busiest days per branch based on number of invoices  
4. 📍 Revenue and quantity trends by city  
5. ⏰ Shift-based sales (Morning, Afternoon, Evening)  
6. 📉 Year-over-year revenue drop detection (2022 vs 2023)  
7. 💰 Total profit and average profit margin by category  
8. 🏆 Most common payment method per branch  
9. 🧾 Top 5 branches with greatest revenue decline  

👉 All queries available in [`Walmart_sales.sql`](Walmart_sales.sql)

---

## 🐍 Python Notebook Highlights

In [`Walmart_sales.ipynb`](Walmart_sales.ipynb), we:

- Loaded and cleaned the dataset using **Pandas**
- Handled missing values and formatted data types
- Performed basic aggregations to verify SQL results
- Prepared the data for further analysis or dashboarding

> 📌 No visualizations were included in this notebook to keep the focus on SQL-powered insights.

---

## ⚙️ Technologies Used

- **MySQL 8.0**
- **Python 3.12**
- **Pandas**, **NumPy**
- **Jupyter Notebook**
- **VS Code** & **MySQL Workbench**

---

## 📈 Key Business Insights

- **E-wallet** is the most commonly used payment method across branches.
- **Fashion Accessories** and **Health & Beauty** are among the highest profit-generating categories.
- Several branches experienced a **notable revenue drop from 2022 to 2023**.
- Most transactions occur during the **Afternoon shift (12 PM – 6 PM)**.

---

## 📬 Contact

**Pratik Harlikar**  
📧 prateek7a@nmsu.edu  
📧 pratikharlikar7@gmail.com
🔗 [LinkedIn](https://www.linkedin.com/) 

---

## ⭐️ Show Your Support

If you found this project helpful or insightful, please consider giving it a ⭐️ and sharing it with others!
