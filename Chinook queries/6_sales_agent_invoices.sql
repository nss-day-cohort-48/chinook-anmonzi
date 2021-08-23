SELECT
    e.FirstName || ' ' || e.LastName as FullName,
    e.Title,
    i.InvoiceId
FROM Employee as e
JOIN Customer as  c
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice as i
    ON c.CustomerId = i.CustomerId;