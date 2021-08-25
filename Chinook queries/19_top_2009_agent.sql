SELECT 
    Sales2009.Fullname,
    MAX(Sales2009.Total) as Total2009
FROM (
        SELECT
            e.FirstName || ' ' || e.LastName as FullName,
            ROUND(SUM(i.total), 2) as Total
        FROM Employee as e
        JOIN Customer as c ON e.EmployeeId = c.SupportRepId
        JOIN Invoice as i ON c.CustomerId = i.CustomerId
        WHERE i.InvoiceDate LIKE "%2009%"
        GROUP BY e.EmployeeId
    ) AS Sales2009;
