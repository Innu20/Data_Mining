-- unique products has each customer purchased
USE retailshop;

SELECT CustomerID, COUNT(DISTINCT StockCode) AS UniqueProducts
FROM online_retail
GROUP BY CustomerID;
