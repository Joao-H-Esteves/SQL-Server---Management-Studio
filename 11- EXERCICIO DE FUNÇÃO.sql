use SUCOS_FRUTAS;
--FUNÇÕES NUMERICAS

--SELECT ROUND(3.2345, 3) , ROUND(3.2340, 3), ROUND(3.2347, 3);

--SELECT FLOOR (3.4) CEILING(3.4);


--Na tabela de notas fiscais, temos o valor do imposto. Já na tabela de itens, temos a quantidade e o faturamento. Calcule o valor do imposto pago no ano de 2016, arredondando para o menor inteiro.

SELECT TOP 5 * FROM NOTAS_FISCAIS;

SELECT TOP 5 * FROM ITENS_NOTAS_FISCAIS;

SELECT inf.NUMERO, SUM(inf.PRECO ) AS TOTAL, convert (DECIMAL(5,2), sum(inf.PRECO * nf.IMPOSTO))AS IMPOSTO  FROM ITENS_NOTAS_FISCAIS inf
INNER JOIN NOTAS_FISCAIS nf ON inf.NUMERO = nf.NUMERO
GROUP BY inf.NUMERO;