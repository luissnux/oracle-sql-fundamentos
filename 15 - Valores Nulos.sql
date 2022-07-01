-- VALORES NULOS

SELECT * FROM tb_clientes;

-- VERIFICAR A EXISTÊNCIA DE VALOR NULO

-- RECUPERAR CLIENTE COM VALOR NULO EM dt_nascimento
SELECT id_cliente AS "ID do Cliente", nome AS "Nome do Cliente", sobrenome AS "Sobrenome do Cliente", dt_nascimento AS "Data de Nascimento"
FROM tb_clientes 
WHERE dt_nascimento IS NULL;

-- RECUPERAR CLIENTE COM VALOR NULL EM telefone
SELECT id_cliente, nome, sobrenome, telefone
FROM tb_clientes
WHERE telefone IS NULL;


-- NVL (NULL VALUE)

-- RETORNAR UMA STRING QUANDO UMA COLUNA POSSUIR UM VALOR NULL
SELECT id_cliente, nome, sobrenome,
NVL(telefone, 'Número do telefone desconhecido') AS Número_telefone
FROM tb_clientes;

SELECT id_cliente, nome, sobrenome,
NVL(dt_nascimento, '22 JUN 2013') AS "Data de Nascimento"
FROM tb_clientes;

-- NULLIF

/*
NULLIF COMPARA EXPRESSÃO1 E EXPRESSÃO2, SE ELAS FOREM EQUIVALENTES, A FUNÇÃO
RETORNA NULL. CASO A ELAS FOREM DIREFENTES, A FUNÇÃO RETORNA A EXPRESSÃO1
*/
SELECT nome, LENGTH(nome) "expressão1",
       sobrenome, LENGTH(sobrenome) "expressão2",
       NULLIF(LENGTH(nome), LENGTH(sobrenome)) "resultado"
FROM tb_funcionarios;

-- FUNÇÃO COALESCE

--OBS: ESQUEMA EXERCICIOS

/*
SE A PRIMEIA EXPRESSÃO NÃO FOR NULA, A FUNÇÃO COALESCE RETORNA ESSA EXPRESSÃO
, CASO CONTRÁRIO, ELA REALIZA UM COALESCE NAS EXPRESSÕES SEGUINTES.
*/

SELECT sobrenome, id_empregado, percentual_comissao, id_gerente,
        COALESCE(TO_CHAR(percentual_comissao),
        TO_CHAR(id_gerente)),
        'Nenhuma comissão e nenhum gerente'
FROM tb_empregado;