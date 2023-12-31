select NOME , CIDADE, LIMITE_DE_CREDITO ,VOLUME_DE_COMPRA ,
	(case
	when LIMITE_DE_CREDITO >= 150000 THEN 'CLIENTE GRANDE'
	WHEN LIMITE_DE_CREDITO < 150000 AND LIMITE_DE_CREDITO >=110000 THEN 'CLIENTE MEDIO'
	ELSE 'CLIENTE PEQUENO'
	end) as TIPO_DE_CLIENTE
from TABELA_DE_CLIENTES
order by LIMITE_DE_CREDITO desc;

------------------------------------------------------------------------------------------------

SELECT NF.MATRICULA, TV.NOME, COUNT(*) AS NUMERO_NOTAS 
FROM TABELA_DE_VENDEDORES TV  
INNER JOIN NOTAS_FISCAIS NF
ON NF.MATRICULA = TV.MATRICULA 
GROUP BY NF.MATRICULA, TV.NOME;

SELECT NF.MATRICULA, TV.NOME, COUNT(*) AS NUMERO_NOTAS 
FROM NOTAS_FISCAIS NF 
INNER JOIN TABELA_DE_VENDEDORES TV 
ON NF.MATRICULA = TV.MATRICULA 
GROUP BY NF.MATRICULA, TV.NOME;