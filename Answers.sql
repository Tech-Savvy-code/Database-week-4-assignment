--Question 1: Show total payment amount for each payment date, sorted by latest 5 dates
SELECT paymentDate, SUM(amount) AS total_paid
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

-- Question 2: Find the average credit limit of each customer
SELECT customerName, country, AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

-- Question 3: Find the total price of products ordered
SELECT productCode, quantityOrdered, SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;

-- Question 4: Find the highest payment amount for each check number
SELECT checkNumber, MAX(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;
