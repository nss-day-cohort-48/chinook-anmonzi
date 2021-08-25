SELECT
    p.name,
    COUNT(t.TrackId) as TotalNumberOfTracks
FROM Playlist as p
JOIN PlaylistTrack as pl
    ON p.PlayListId = pl.PlayListId
JOIN Track as t
    ON pl.TrackId = t.TrackId
GROUP BY p.name;