--Lista de produtos com nome que começa com "Venda de"

SELECT DescNomeProduto    
FROM produtos

--solução menos eficiente
WHERE DescNomeProduto LIKE 'Venda de%';
