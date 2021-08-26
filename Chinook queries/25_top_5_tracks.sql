SELECT
    t.Name as TrackName,
    COUNT(il.InvoiceId) as NumberSold
FROM InvoiceLine as il
JOIN Track as t
    ON il.TrackId = t.TrackId
JOIN Invoice as i
    ON il.InvoiceId = i.InvoiceId
GROUP BY TrackName
ORDER BY NumberSold DESC
LIMIT 5;
