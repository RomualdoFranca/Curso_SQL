-- Agrupando os dados por características em comum

-- Exemplo de uso do GROUP BY
-- Como descobrir qual cliente juntou mais pontos no mês de julho?


-- Selecionou o idCliente. Essa coluna tem dados repetidos do mesmo cliente pois um mesmo cliente pode ter feito mais de uma transação.
SELECT idCliente,

-- Realizando um agregação com outra informação do cliente, no caso os dados da quantidade de pontos, para apresentar qual cliente juntou mais pontos no período especificado na cláusula WHERE
       sum(qtdePontos),
       count(IdTransacao)

FROM transacoes
-- filtrando pelo mês
WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

-- Ao agrupar pelo idCliente, eliminou-se a repetição do resultado, "expremendo" os dados de cada cliente em apenas uma linha. 
GROUP BY idCliente
-- O resultado dessa query, ou seja, a tabela gerada apresenta o seguinte nível, a seguinte granularidade, representa a seguinte entidade: 

ORDER BY sum(QtdePontos) DESC;
