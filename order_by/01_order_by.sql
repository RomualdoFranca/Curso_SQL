SELECT idCliente,
    qtdePontos
FROM clientes
--Ordenando os dado pela quantidade de pontos. Por padrão, o ORDER apresenta os dados em ordem crescente. Para apresentar os valores em ordem descrescente inserir após o nome da coluna DESC
ORDER BY qtdePontos DESC
LIMIT 10;