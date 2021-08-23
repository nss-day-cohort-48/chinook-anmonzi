SELECT
    i.InvoiceId,
    i.Total,
    c.FirstName || ' ' || c.LastName as CustomerName,
    c.Country,
    e.FirstName || ' ' || e.LastName as SalesAgentName
FROM Employee as e
JOIN Customer as  c
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice as i
    ON c.CustomerId = i.CustomerId;