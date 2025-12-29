-- Custo total
SELECT SUM(custo) AS custo_total FROM fretes;

-- Média de custo por rota
SELECT rota, AVG(custo) AS media_custo
FROM fretes
GROUP BY rota;

-- Fretes acima da média
SELECT *
FROM fretes
WHERE custo > (SELECT AVG(custo) FROM fretes);
