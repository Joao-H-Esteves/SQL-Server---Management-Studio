CREATE TABLE [TABELA_DE_CLIENTES](
CPF CHAR (11),
NOME VARCHAR (100),
RUA VARCHAR (100),
COMPLEMENTO VARCHAR (100),
BAIRRO VARCHAR (100),
ESTADO CHAR (2),
CEP CHAR (8),
[DATA DE NASCIMENTO] DATE,
IDADE SMALLINT,
SEXO CHAR (1),
[LIMITE DE CREDITO] MONEY,
[VALOR MINIMO] FLOAT,
[PRIMEIRA COMPRA] BIT
);


CREATE TABLE [TABELA DE PRODUTOS](

[CODIGO DO PRODUTO] [VARCHAR] (20) NOT NULL PRIMARY KEY, 
[NOME DO PRODUTO] [VARCHAR] (50) NOT NULL, 
[EMBALAGEM] [VARCHAR] (50), 
[TAMANHO] [VARCHAR] (50), 
[SABOR] [VARCHAR] (50), 
[PRECO DE LISTA] [SMALLMONEY]

);

CREATE TABLE [TABELA DE VENDEDORES](
MATRICULA CHAR (5) NOT NULL PRIMARY KEY,
NOME VARCHAR (150),
[PERCENTUAL COMISSAO] FLOAT
);

ALTER TABLE [TABELA_DE_CLIENTES] ALTER COLUMN CPF CHAR (11) NOT NULL;

-- ALTERANDO A TABELA PARA O CPF �O PODER FICAR VAZIO


ALTER TABLE [TABELA_DE_CLIENTES] ADD CONSTRAINT PK_TABELA_CLIENTES 
PRIMARY KEY CLUSTERED (CPF);

-- ADICIONAR UMA CHAVE PK NA TABELA E INFORMA QUAL CAMPO SER�












