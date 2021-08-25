SELECT
    a.title as AlbumTitle,
    m.name as MediaType,
    g.name as GenreType,
    t.name as TrackName
FROM Track as t
JOIN Album as a
    ON t.AlbumId = a.AlbumId
JOIN MediaType as m
    ON t.MediaTypeId = m.MediaTypeId
JOIN Genre as g
    ON t.GenreId = g.GenreId;