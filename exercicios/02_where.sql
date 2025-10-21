--Lista de pedidos realizados no fim de semana
SELECT DtCriacao,
        
--cria uma coluna com uma substring
    datetime(substr(DtCriacao, 1, 19)) AS NovaDtCriacao,
--cria coluna com o dia da semana
    strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana


FROM transacoes

WHERE CAST(strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS INTEGER) IN (0, 6)

