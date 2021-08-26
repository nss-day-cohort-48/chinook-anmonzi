SELECT
    ROUND(SUM(i.Total), 2) as TotalSales,
    i.BillingCountry
FROM Invoice AS i
GROUP BY i.BillingCountry;