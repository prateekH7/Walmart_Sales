SELECT * FROM walmart_sales;

SELECT COUNT(*) payment_method
FROM walmart_sales;

SELECT COUNT(*) Branch
FROM walmart_sales;


SELECT COUNT(*) payment_method
FROM walmart_sales;

SELECT  city, payment_method,
COUNT(*) AS payment_count
FROM walmart_sales
GROUP BY city,payment_method
ORDER BY City,payment_count DESC;


SELECT MAX(unit_price)
FROM walmart_sales;

SELECT MAX(Total) 
FROM walmart_sales;

SELECT city, 
SUM(profit_margin * unit_price * quantity) AS total_profit
FROM walmart_sales
GROUP BY city
ORDER BY total_profit DESC
LIMIT 3;

#QUESTIONS

# 1> Find different payment method and number of transactions, number of quantity sold


SELECT payment_method ,
COUNT(*) AS Transactions,
SUM(quantity) AS Quantity_Sold
FROM walmart_sales
GROUP BY payment_method
ORDER BY payment_method DESC;

# 2> Identify the highest rated category in each branch, desplaying the branch, category avg rating

SELECT Branch, category,
AVG(rating) as avg_rating
FROM walmart_sales
GROUP BY Branch, category
ORDER BY Branch, avg_rating DESC;

# 3> Identify the highest rated category in each branch, desplaying the branch, category avg rating and rank it 

SELECT Branch, category,
AVG(rating) as avg_rating,
RANK() OVER (PARTITION BY Branch ORDER BY AVG(Rating) DESC) AS Rating_Rank
FROM walmart_sales
GROUP BY Branch, category
ORDER BY Branch, avg_rating ;

# 4> Identify the busiest day for each branch based on the number of transactions 

SELECT Branch, date, COUNT(*) AS total_transactions
FROM walmart_sales
GROUP BY Branch, date
ORDER BY Branch, total_transactions DESC;

# 5> Calculate total quantity of items sold per payment method. List payment method and total quantity 

SELECT payment_method,
SUM(quantity) As total_quantity
FROM walmart_sales
GROUP BY payment_method;

# 6> Determine the average, maximum & minimum rating of category for each city, list the city, average_rating, min_rating & max_rating

SELECT category , city,
AVG(rating) AS average_rating,
MAX(rating) AS max_rating,
MIN(rating) AS min_rating
FROM walmart_sales
GROUP BY city, category;

# 7> Calculate the total profit for each category by considering total_profit as (unit_price * quantity * profit_margin), 
#List category and total_profit, ordered from hightes to lowest profit 

SELECT category,
SUM(unit_price * quantity * profit_margin) AS total_profit,
AVG(profit_margin) AS avg_profit_margin
FROM walmart_sales
GROUP BY category
ORDER BY total_profit DESC;

# 8> Determine the most common payment method for each branch. Display Branch & preffered payment method

SELECT payment_method, Branch,
COUNT(*) AS Common_payment_method,
RANK() OVER (PARTITION BY Branch ORDER BY COUNT(*) DESC) AS rank_Common_payment
FROM walmart_sales
GROUP BY payment_method, Branch;

# 9> Catergorize sale into 3 group MORNING, AFTERNOON, EVENING. Find out each shift nd number of invoice

SELECT Branch,
  CASE 
    WHEN HOUR(time) BETWEEN 6 AND 11 THEN 'Morning'
    WHEN HOUR(time) BETWEEN 12 AND 17 THEN 'Afternoon'
    ELSE 'Evening'
  END AS Shift,
  COUNT(invoice_id) AS Number_of_Invoices
FROM walmart_sales
GROUP BY Shift, Branch;

# 10> Identify 5 Branch with highest decrese ratio in revenue compare to last year (current year is 2023 & last year 2022)

SELECT Branch,
SUM(CASE WHEN RIGHT(date, 2) = '22' THEN Total ELSE 0 END) AS Revenue_2022,
SUM(CASE WHEN RIGHT(date, 2) = '23' THEN Total ELSE 0 END) AS Revenue_2023
FROM walmart_sales
GROUP BY Branch
ORDER BY (SUM(CASE WHEN RIGHT(date, 2) = '23' THEN Total ELSE 0 END) -
         SUM(CASE WHEN RIGHT(date, 2) = '22' THEN Total ELSE 0 END)) ASC
LIMIT 5;










