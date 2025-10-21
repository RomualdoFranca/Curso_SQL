SELECT IdCliente,
    qtdePontos,
--Intervalos
--De 0 a 500 -> Ponei
--De 501 a 1000 -> Ponei Premium
--De 1001 a 5000 -> Mago Aprendiz
--De 5001 a 10000 -> Mago Mestre
-- + 10001 -> Mago Supremo

-- Cada CASE gera uma coluna nova. Não importa a quantidade de expressões booleanas (WHEN) dentro do CASE
CASE 
    WHEN qtdePontos <= 500 THEN 'Ponei'

    WHEN qtdePontos > 500 AND qtdePontos <= 1000 THEN 'Ponei Premium'

    WHEN qtdePontos > 1000 AND qtdePontos <= 5000 THEN 'Mago Aprediz'

    WHEN qtdePontos > 5000 AND qtdePontos <= 10000 THEN 'Mago Mestre'

    ELSE 'Mago Supremo'

END AS Classificação,

CASE 
    WHEN qtdePontos <= 500 THEN 1
    ELSE 0
END AS flPonei,

CASE 
    WHEN qtdePontos > 500 AND qtdePontos <= 1000 THEN 1
    ELSE 0
END AS flPoneiPremium

FROM clientes

ORDER BY qtdePontos DESC;