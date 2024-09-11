USE retailshop;

-- Create a table to hold product pairs and their co-occurrence count
WITH ProductPairs AS (
    SELECT
        p1.StockCode AS Product1,
        p2.StockCode AS Product2,
        COUNT(*) AS CoOccurrenceCount
    FROM
        online_retail p1
    JOIN
        online_retail p2
    ON
        p1.InvoiceNo = p2.InvoiceNo
    AND
        p1.StockCode < p2.StockCode  -- Avoid duplicate pairs (e.g., (A, B) and (B, A))
    GROUP BY
        p1.StockCode,
        p2.StockCode
)

-- Query to view the product pairs and their co-occurrence count
SELECT
    Product1,
    Product2,
    CoOccurrenceCount
FROM
    ProductPairs
ORDER BY
    CoOccurrenceCount DESC;
