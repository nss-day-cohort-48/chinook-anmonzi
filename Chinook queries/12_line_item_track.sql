SELECT
    i.InvoiceLineId,
    t.name as TrackNamePurchased
FROM InvoiceLine as i
JOIN Track as t
    On i.TrackId = t.TrackId
ORDER BY i.InvoiceLineId ASC;