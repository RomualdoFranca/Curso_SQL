--Listar todas as transações adicionando uma coluna nova sinalizando 'alto','médio' e 'baixo' para os valores <10; <500; >=500

SELECT qtdePontos,

CASE
    WHEN qtdePontos < 10 THEN 'Baixo'
    WHEN qtdePontos < 500 THEN 'Médio'
    ELSE 'Alto'
END AS ClassificacaoPontos

FROM clientes
LIMIT 100;