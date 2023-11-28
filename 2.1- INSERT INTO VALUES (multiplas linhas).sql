--Inserindo  linhas

INSERT INTO [TABELA DE PRODUTOS] VALUES
('1037797', 'Clean 2 Litros Laranja', 'PET', '2 Litros', 'Laranja', 16.01);

INSERT INTO [TABELA DE PRODUTOS] VALUES
('1000889', 'Sabor da Montanha 700 ml Uva', 'Garrafa', '700 ml', 'Uva', 6.31);

INSERT INTO [TABELA DE PRODUTOS] VALUES
('1004327', 'Videira do Campo - 1,5 Litros Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51);

INSERT INTO [TABELA DE PRODUTOS] VALUES
('1088126', 'Linha Citrus 1 Litro Limão', 'PET', '1 Litro', 'Limão', 7.00);

select * from [TABELA DE PRODUTOS];

-- Inserindo múltiplas linhas

INSERT INTO [TABELA DE PRODUTOS] VALUES
('10737797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000834', 'Sabor da Montanha 700 ml Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004323', 'Videira do Campo 1,5 Litros Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51),
('1088126', 'Linha Citrus 1 Litro Limão', 'PET', '1 Litro', 'Limão',7.00);



------------------------------------------------

-- adicionando linha na tabela de clientes

INSERT INTO [TABELA_DE_CLIENTES] VALUES(
'00384393431', 'João da Silva', 'Rua Projetada A', 'Número 233', 'Copacabana', 'Rio de janeiro', 'RJ', '20000000','1965-03-21', 57, 'M', 200000, 3000.30,1
);
INSERT INTO [TABELA_DE_CLIENTES] VALUES
('00384393431', 'João da Silva', 'Rua Projetada A', 'Número 233', 'Copacabana', 'RJ', '20000000', '1965-03-21', 57, 'M', 20000000, 3000.30, 1)
;


SELECT * FROM TABELA_DE_CLIENTES;


--------------------------------------------------

-- adicionando linha na tabela de VENDEDORES

SELECT * FROM [TABELA DE VENDEDORES];

INSERT INTO [TABELA DE VENDEDORES] VALUES
('00236',	'Cláudia Morais'	,8),
('00237',	'Marcela Ferreira'	,9),
('00238',	'Márcio Almeida'	,8);



-- COMETEMOS UM ERRO NA PORCENTAGEM -> DEVERIA SE 0,0X E NÃO X, LOGA VAMOS ALTERAR
-- Atualize o campo [PERCENTUAL COMISSAO] em massa

UPDATE [TABELA DE VENDEDORES]
SET [PERCENTUAL COMISSAO] = 
  CASE 
    WHEN MATRICULA = '00236' THEN 0.08
    WHEN MATRICULA = '00237' THEN 0.09
    WHEN MATRICULA = '00238' THEN 0.08
    ELSE [PERCENTUAL COMISSAO]
  END
WHERE MATRICULA IN ('00236', '00237', '00238');



INSERT INTO [TABELA_DE_CLIENTES] VALUES
('R. Iriquitia','', 'Jardins', 'Sao Paulo', 'SP', '80012212', '1990-09-01', 33, 'F', 1700000000, 24500, 0),
('R. Dois de Fevereiro','', 'Agua Santa', 'Rio de Janeiro', 'RJ', '22000000', '2000-02-12', 23, 'M', 1000000000, 20000, 1),
('Rua Conde de Bonfim','', 'Tijuca', 'Rio de Janeiro', 'RJ', '22020001', '2000-03-12', 23, 'M', 1200000000, 22000, 0),
('Av. Pastor Martin Luther King Junior','', 'Inhauma', 'Rio de Janeiro', 'RJ', '22002012', '1995-01-13', 28, 'M', 1100000000, 22000, 1),
('R. Volta Grande', 'Tijuca','', 'Rio de Janeiro', 'RJ', '22012002', '1994-07-19', 29, 'M', 750000000, 9500, 1),
('Rua Humaita', 'Humaita','', 'Rio de Janeiro', 'RJ', '22000212', '1995-09-11', 28, 'M', 1700000000, 26000, 0),
('R. Benicio de Abreu','', 'Lapa', 'Sao Paulo', 'SP', '88192029', '1995-11-14', 27, 'F', 700000000, 16000, 1),
('Rua Helio Beltrao','', 'Tijuca', 'Rio de Janeiro', 'RJ', '21002020', '1991-08-30', 32, 'M', 1200000000, 22000, 0),
('R. Manuel de Oliveira','', 'Santo Amaro', 'Sao Paulo', 'SP', '80010221', '1985-03-16', 38, 'M', 1400000000, 21000, 0),
('R. Eduardo Luís Lopes','', 'Bras', 'Sao Paulo', 'SP', '88202912', '1992-03-25', 31, 'M', 1200000000, 20000, 1),
('R. Srg. Edison de Oliveira','', 'Jardins', 'Sao Paulo', 'SP', '82122020', '1995-10-07', 28, 'M', 1100000000, 19000, 0),
('Av. Gen. Guedes da Fontoura','', 'Jardins', 'Sao Paulo', 'SP', '81192002', '1983-12-20', 39, 'M', 2000000000, 24000, 0),
('R. Pinto de Azevedo','', 'Cidade Nova', 'Rio de Janeiro', 'RJ', '22002002', '1995-10-07', 28, 'M', 1500000000, 25000, 1),
('R. Cel. Almeida', 'Piedade','', 'Rio de Janeiro', 'RJ', '22000201', '1989-06-20', 34, 'M', 600000000, 12000, 1),
('R. dos Jacarandas da Peninsula','', 'Barra da Tijuca', 'Rio de Janeiro', 'RJ', '22002020', '1992-01-05', 31, 'M', 900000000, 18000, 1);
