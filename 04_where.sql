--Selecione produtos que contém 'churn' no nome
SELECT * FROM produtos
WHERE DescCategoriaProduto = 'churn_model'; --abordagem mais eficiente em termos de processamento e recursos. Para escolher a maneira mais eficiente, é necessário saber como os dados estão estruturados

--WHERE DescNomeProduto LIKE '%churn%' --essa é a solução mais custosas


