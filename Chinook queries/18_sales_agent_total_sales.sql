SELECT
    e.FirstName || ' ' || e.LastName as FullName,
    ROUND(SUM(i.total), 2)
FROM Employee as e
JOIN Customer as c ON e.EmployeeId = c.SupportRepId
JOIN Invoice as i ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId;
