SELECT ART.artist_name AS artista,
	ALB.album_name AS album,
    COUNT(F.user_id) AS seguidores
FROM SpotifyClone.artist AS ART
JOIN SpotifyClone.album AS ALB ON ART.id = ALB.artist_id
JOIN SpotifyClone.follower AS F ON ART.id = F.artist_id
GROUP BY ALB.album_name, ART.artist_name
ORDER BY seguidores DESC, artista ASC, album ASC;