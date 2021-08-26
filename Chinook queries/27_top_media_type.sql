SELECT
    m.name as MediaType,
    COUNT(il.InvoiceId) as NumberSold
FROM InvoiceLine as il
JOIN Track as t
    ON il.TrackId = t.TrackId
JOIN MediaType as m
    ON t.MediaTypeId = m.MediaTypeId
GROUP BY MediaType
ORDER BY NumberSold DESC
LIMIT 1;
