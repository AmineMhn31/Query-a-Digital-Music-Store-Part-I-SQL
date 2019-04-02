SELECT Track.name, Track.Composer, Album.Title 
FROM Track
JOIN Album
ON Track.AlbumId = Album.AlbumId
WHERE Track.name LIKE 'A%' AND Track.Composer NOT LIKE '';