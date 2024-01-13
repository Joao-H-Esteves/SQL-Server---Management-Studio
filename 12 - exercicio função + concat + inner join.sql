--use SUCOS_FRUTAS

select CONVERT(varchar (25),getdate(),121);

--Queremos construir um SQL cujo resultado seja para cada cliente:

--"O cliente João da Silva comprou R$ 121222,12 no ano de 2016".
--Faça isso somente para o ano de 2016.

--primeira etapa
select TB.nome , round(sum(itnf.quantidade * ITNF.PRECO),2) as tot_compra from TABELA_DE_CLIENTES tb
inner join NOTAS_FISCAIS NF
on tb.CPF = nf.CPF
inner join ITENS_NOTAS_FISCAIS itnf
on nf.NUMERO = itnf.NUMERO
WHERE NF.DATA_VENDA BETWEEN '2016-01-01' AND '2016-12-31'
group by TB.nome;

--segunda etapa CONCAT

select CONCAT ('O Cliente ',TB.nome, ' comprou R$ ', str(sum(itnf.quantidade * ITNF.PRECO), 10,2) ,' no ano de ', year(NF.DATA_VENDA)) 
from TABELA_DE_CLIENTES tb
inner join NOTAS_FISCAIS NF
on tb.CPF = nf.CPF
inner join ITENS_NOTAS_FISCAIS itnf
on nf.NUMERO = itnf.NUMERO
WHERE year(NF.DATA_VENDA)= '2016'
group by TB.nome, NF.DATA_VENDA

---------------------------------------------------------------------------------
--  ##### resposta correta ######
SELECT TC.NOME, CONCAT('O cliente ', TC.NOME, ' comprou R$ ',
TRIM(STR(SUM(IT.QUANTIDADE * IT.PRECO) ,10,2)), ' no ano de ', YEAR(NF.DATA_VENDA), '.') AS VALOR
FROM NOTAS_FISCAIS AS NF
INNER JOIN ITENS_NOTAS_FISCAIS AS IT ON NF.NUMERO = IT.NUMERO
INNER JOIN TABELA_DE_CLIENTES AS TC ON NF.CPF = TC.CPF
WHERE YEAR(NF.DATA_VENDA) = '2016'
GROUP BY TC.NOME, YEAR(NF.DATA_VENDA);


----consultas auxiliares
--select * from NOTAS_FISCAIS
--where cpf = '94387575700'


select * from ITENS_NOTAS_FISCAIS;

select ITNF.NUMERO, sum(itnf.quantidade * ITNF.PRECO) as tot_compra from ITENS_NOTAS_FISCAIS ITNF
group by ITNF.NUMERO;


