select * from SUCOS_FRUTAS.DBO.TABELA_DE_CLIENTES where 1=1

select count(*) from TABELA_DE_CLIENTES TABCLI
where TABCLI.NOME like '%SILVA%';

SELECT DISTINCT CIDADE , ESTADO FROM TABELA_DE_CLIENTES;

SELECT SABOR  , COUNT(SABOR) AS QTD FROM TABELA_DE_PRODUTOS
GROUP BY SABOR ;

SELECT COUNT(DISTINCT SABOR) FROM TABELA_DE_PRODUTOS;


------------------------------------------------------------------------
/*Utilizando o banco de dados trabalhado em aula, execute duas querys SQL e identifique:

Qual foi a maior venda do produto "Linha Refrescante - 1 Litro - Morango/Limao" em quantidade?*/


SELECT TOP 2 TABPRO.NOME_DO_PRODUTO, ITNF.QUANTIDADE, COUNT (ITNF.QUANTIDADE) AS [TOTAL DE COMPRAS] 
FROM ITENS_NOTAS_FISCAIS ITNF
INNER JOIN 
TABELA_DE_PRODUTOS TABPRO
ON ITNF.CODIGO_DO_PRODUTO = TABPRO.CODIGO_DO_PRODUTO
WHERE TABPRO.NOME_DO_PRODUTO = 'Linha Refrescante - 1 Litro - Morango/Limao'
GROUP BY TABPRO.NOME_DO_PRODUTO, ITNF.QUANTIDADE
ORDER BY QUANTIDADE DESC;
----------------------------------------------------------------------------------------
SELECT CODIGO_DO_PRODUTO,  FROM ITENS_NOTAS_FISCAIS
