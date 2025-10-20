
--As seleções de SELECT, ou query, ou consulta, não modificam os dados da tabela. Não é uma operação de modificação
SELECT IdCliente,
        QtdePontos,
    -- essa expressão apenas exibe uma nova coluna. Os dados apresentados nessa nova coluna não são gravados na tabela, esses novos dados não persistem.

    --Definindo um nome para a nova coluna usando AS (alias). Funciona sem o alias, mas a utilização dele é uma boa prática
        QtdePontos + 10 AS QtdePontosPlus10,
        QtdePontos * 2 AS QtdePontosDouble,
        DtCriacao,

        --criando uma nova coluna com uma substring dos valores do campo DtCriacao. Ao contrário dos vetores, o 1° elemento não inicia com número zero.
        substr(DtCriacao, 1, 19) AS SubStringDtCriacao,

        -- convertendo o dado da data que está em texto para data hora utilizando função
        datetime(substr(DtCriacao, 1, 19)) AS dtCriacaoNova,

        --funcao que mostra o dia da semana. No SQLite, o dia da semana começa com zero(Domingo)
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana
    

FROM clientes;