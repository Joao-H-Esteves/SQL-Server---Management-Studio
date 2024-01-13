-- relatorio para mostra o volume de compra de cada cliente por mes

SELECT nf.cpf , 
convert(varchar (7),nf.DATA_VENDA,120), -- vamos pegar apenas o ano e o mes usando funções + tabela de conversões >120 = aaaa-mm-dd
sum(inf.quantidade) as volume from NOTAS_FISCAIS nf
inner join ITENS_NOTAS_FISCAIS inf
on inf.NUMERO = nf.NUMERO
group by nf.cpf , convert(varchar (7),nf.DATA_VENDA,120)-- a funcao deve ser colocada inteira no group by
