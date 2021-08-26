SELECT
    e.FirstName || ' ' || e.LastName as EmployeeName,
    COUNT(c.SupportRepId) as TotalCustomers
FROM Employee AS e
JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId;


