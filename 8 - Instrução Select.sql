-- INSTRUÇÃO SELECT

-- RECUPERANDO COLULAS
SELECT id_cliente, nome, sobrenome, dt_nascimento, telefone
FROM tb_clientes;

-- RECUPAR TODAS AS COLUNAS
SELECT *
FROM tb_clientes;

-- RECUPERAR LINHAS COM WEHRE
SELECT *
FROM tb_clientes
WHERE id_cliente = 2;


