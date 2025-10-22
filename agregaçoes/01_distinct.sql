-- O comando DISTINCT faz com que a consulta retorne apenas linhas únicas, eliminando as duplicadas do resultado

 --DtCriacao, count(IdTransacao)

 -- Se for utilizado apenas o count(idCliente), o resultado não será adequado, pois um cliente pode ter mais de uma transação. Ou seja, os clientes podem ser repetir na coluna idClientes. Nesse caso o uso do DISTINCT é imprescidível para retorna apenas as linhas únicas, eliminando as duplicadas do resultado

SELECT count(DISTINCT idCliente),
    count(IdTransacao)
FROM transacoes
-- Quantas transações foram feitas no mês de Julho
--WHERE DtCriacao LIKE '2025-07%'
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
ORDER BY DtCriacao DESC
