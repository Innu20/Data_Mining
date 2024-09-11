USE retailshop;

-- Find the most recent invoice date in the dataset
SELECT MAX(InvoiceDate) AS MostRecentDate
FROM online_retail;
USE retailshop;

-- Replace '2024-03-10' with the date that is 6 months prior to the most recent date
SELECT DISTINCT CustomerID
FROM online_retail
WHERE CustomerID NOT IN (
    SELECT DISTINCT CustomerID
    FROM online_retail
    WHERE InvoiceDate >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
)
ORDER BY CustomerID;