-- Descobrindo qual cliente realizou mais transações em janeiro de 2024

SELECT IdCliente,
       DtCriacao,
    count(IdTransacao)

FROM transacoes
-- Filtrando pela data
WHERE DtCriacao >='2024-07-01'
AND DtCriacao <'2024-08-01'
GROUP BY IdCliente
ORDER BY IdCliente;