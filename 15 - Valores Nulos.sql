-- VALORES NULOS

SELECT * FROM tb_clientes;

-- VERIFICAR A EXIST�NCIA DE VALOR NULO

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
NVL(telefone, 'N�mero do telefone desconhecido') AS N�mero_telefone
FROM tb_clientes;

SELECT id_cliente, nome, sobrenome,
NVL(dt_nascimento, '22 JUN 2013') AS "Data de Nascimento"
FROM tb_clientes;

-- NULLIF

/*
NULLIF COMPARA EXPRESS�O1 E EXPRESS�O2, SE ELAS FOREM EQUIVALENTES, A FUN��O
RETORNA NULL. CASO A ELAS FOREM DIREFENTES, A FUN��O RETORNA A EXPRESS�O1
*/
SELECT nome, LENGTH(nome) "express�o1",
       sobrenome, LENGTH(sobrenome) "express�o2",
       NULLIF(LENGTH(nome), LENGTH(sobrenome)) "resultado"
FROM tb_funcionarios;

-- FUN��O COALESCE

--OBS: ESQUEMA EXERCICIOS

/*
SE A PRIMEIA EXPRESS�O N�O FOR NULA, A FUN��O COALESCE RETORNA ESSA EXPRESS�O
, CASO CONTR�RIO, ELA REALIZA UM COALESCE NAS EXPRESS�ES SEGUINTES.
*/

SELECT sobrenome, id_empregado, percentual_comissao, id_gerente,
        COALESCE(TO_CHAR(percentual_comissao),
        TO_CHAR(id_gerente)),
        'Nenhuma comiss�o e nenhum gerente'
FROM tb_empregado;