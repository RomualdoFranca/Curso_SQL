--Agregações em banco de dados é uma maneira de calcular estatísticas dos dados. É uma sumarização, uma sintetização dos dados. Uma forma de resumir os dados utilizando alguma estatística.

-- count(*) ou count(1) : mostra a quantidade de linhas da tabela
-- sempre dar preferencia a essas opções 
SELECT count(*),
    count(1)

FROM clientes;