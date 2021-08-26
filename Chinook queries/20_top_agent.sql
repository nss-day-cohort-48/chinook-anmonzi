SELECT 
    TotalSales.Fullname,
    MAX(TotalSales.Total) as MostSalesOverall
FROM (
        SELECT
            e.FirstName || ' ' || e.LastName as FullName,
            ROUND(SUM(i.total), 2) as Total
        FROM Employee as e
        JOIN Customer as c ON e.EmployeeId = c.SupportRepId
        JOIN Invoice as i ON c.CustomerId = i.CustomerId
        GROUP BY e.EmployeeId
    ) AS TotalSales;
