USE retailshop;

SELECT
    p1.StockCode AS Product1,
    p2.StockCode AS Product2,
    COUNT(*) AS PairCount
FROM
    online_retail p1
JOIN
    online_retail p2
ON
    p1.InvoiceNo = p2.InvoiceNo
    AND p1.StockCode < p2.StockCode  -- Ensure each pair is only counted once
GROUP BY
    p1.StockCode,
    p2.StockCode
ORDER BY
    PairCount DESC;