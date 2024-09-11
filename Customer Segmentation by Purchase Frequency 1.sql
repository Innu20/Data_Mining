USE retailshop;

-- Create a temporary table to count the number of purchases per customer
WITH CustomerPurchaseCounts AS (
    SELECT
        CustomerID,
        COUNT(DISTINCT InvoiceNo) AS PurchaseCount
    FROM
        online_retail
    GROUP BY
        CustomerID
)

-- Classify customers based on their purchase frequency
SELECT
    CustomerID,
    PurchaseCount,
    CASE
        WHEN PurchaseCount >= 10 THEN 'High Frequency'
        WHEN PurchaseCount BETWEEN 5 AND 9 THEN 'Medium Frequency'
        ELSE 'Low Frequency'
    END AS FrequencySegment
FROM
    CustomerPurchaseCounts
ORDER BY
    PurchaseCount DESC;
