USE retailshop;

-- Calculate the average order value by country
SELECT
    Country,
    AVG(OrderValue) AS AverageOrderValue
FROM (
    SELECT
        Country,
        InvoiceNo,
        SUM(Quantity * UnitPrice) AS OrderValue
    FROM
        online_retail
    GROUP BY
        Country,
        InvoiceNo
) AS InvoiceTotals
GROUP BY
    Country
ORDER BY
    AverageOrderValue DESC;
