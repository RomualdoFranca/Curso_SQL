SELECT idCliente,
    DtCriacao,
    qtdePontos


FROM clientes
WHERE flTwitch = 1
ORDER BY DtCriacao,  qtdePontos DESC
LIMIT 10;
