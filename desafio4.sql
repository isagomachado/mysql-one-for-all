SELECT U.user_name AS usuario,
	CASE
		WHEN YEAR(MAX(P.play_date)) = 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
	END AS 'condicao_usuario'
FROM SpotifyClone.user AS U
JOIN SpotifyClone.play_music AS P ON U.id = P.user_id
GROUP BY U.user_name
ORDER BY U.user_name ASC;