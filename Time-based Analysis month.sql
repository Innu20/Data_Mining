USE retailshop;

-- Query to get total sales and number of invoices per month
SELECT
    DATE_FORMAT(InvoiceDate, '%Y-%m') AS YearMonth,
    COUNT(DISTINCT InvoiceNo) AS NumberOfInvoices,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM
    online_retail
GROUP BY
    YearMonth
ORDER BY
    YearMonth;
    
