SELECT 
	MIN(P.value_plan) AS faturamento_minimo,
    MAX(P.value_plan) AS faturamento_maximo,
    ROUND(AVG(P.value_plan), 2) AS faturamento_medio,
    SUM(P.value_plan) AS faturamento_total
FROM SpotifyClone.user AS U
JOIN SpotifyClone.plan AS P ON U.plan_id = P.id;