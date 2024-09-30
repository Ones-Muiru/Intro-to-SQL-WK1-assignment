-- Finding the total sales for each product 
SELECT 
    productID, SUM(amount)
FROM
    sales
GROUP BY productID;


-- Calculating the total sales for each month 
SELECT 
    DATE_FORMAT(saledate, '%m') AS monthly_sales
FROM
    sales
GROUP BY monthly_sales;


--   Customers who made more than 5 purchases
SELECT 
    customerID, COUNT(saleID) AS purchases
FROM
    sales
GROUP BY customerID
HAVING purchases > 5;