SELECT
    a.name as Artist,
    COUNT(il.InvoiceId) as NumberSold
FROM InvoiceLine as il
JOIN Track as t
    ON il.TrackId = t.TrackId
JOIN Album 
    ON t.AlbumId = Album.AlbumId
JOIN Artist as a 
    ON Album.ArtistId = a.ArtistId
GROUP BY Artist
ORDER BY NumberSold DESC
LIMIT 3;