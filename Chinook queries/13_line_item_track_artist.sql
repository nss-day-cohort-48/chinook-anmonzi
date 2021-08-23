SELECT
    i.InvoiceLineId,
    t.name as TrackNamePurchased,
    a.name as ArtistName
FROM InvoiceLine as i
JOIN Track as t
    ON i.TrackId = t.TrackId
JOIN Album
    ON t.AlbumId = Album.AlbumId
JOIN Artist as a
    ON Album.ArtistId = a.ArtistId
ORDER BY i.InvoiceLineId ASC;