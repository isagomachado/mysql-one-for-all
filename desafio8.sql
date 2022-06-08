SELECT ART.artist_name AS artista,
	ALB.album_name AS album
FROM SpotifyClone.artist AS ART
JOIN SpotifyClone.album AS ALB ON ART.id = ALB.artist_id
GROUP BY ALB.album_name, ART.artist_name
ORDER BY artista DESC, album ASC
LIMIT 2;