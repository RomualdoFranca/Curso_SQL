--Lista de produtos que são 'chapeu'
SELECT DescNomeProduto
FROM produtos
-- o LIKE não é case sensitive, por isso é mais custoso com relação a recursos 
WHERE DescNomeProduto LIKE '%chapéu%';