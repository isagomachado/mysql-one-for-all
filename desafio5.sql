SELECT M.music_name AS cancao,
	COUNT(P.music_id) AS reproducoes
FROM SpotifyClone.music AS M
JOIN SpotifyClone.play_music AS P ON M.id = P.music_id
GROUP BY P.music_id
HAVING reproducoes = 2
ORDER BY M.music_name
LIMIT 2;