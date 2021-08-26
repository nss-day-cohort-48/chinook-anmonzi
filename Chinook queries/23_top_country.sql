SELECT
    MAX(SalesPerCountry.TotalSales),
    SalesPerCountry.BillingCountry
FROM (
    SELECT
        ROUND(SUM(i.Total), 2) as TotalSales,
        i.BillingCountry
    FROM Invoice AS i
    GROUP BY i.BillingCountry
) AS SalesPerCountry;


SELECT
MAX(SalesByCountry.TotalSales),
SalesByCountry.Country
FROM (
    SELECT
    Invoice.BillingCountry Country,
    ROUND(SUM(Invoice.Total), 2) TotalSales
    FROM
    Invoice
    GROUP BY BillingCountry
) AS SalesByCountry;
