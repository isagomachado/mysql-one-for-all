SELECT
U.user_name AS usuario, 
COUNT(P.music_id) AS qtde_musicas_ouvidas, 
ROUND(SUM(M.seconds)/60, 2) AS total_minutos
	FROM SpotifyClone.user AS U
    JOIN SpotifyClone.play_music AS P ON U.id = P.user_id
    JOIN SpotifyClone.music AS M ON M.id = P.music_id
    GROUP BY U.user_name
    ORDER BY U.user_name;