-- JOIN

-- PERMITE OBTER INFORMAÇÕES DE VÁRIAS TABELAS AO MESMO TEMPO

-- EXEMPLO 1

-- RECUPERAR AS COLUNAS NM_PRODUTO E ID_TIPO_PRODUTO DA TABELA TB_PRODUTOS
-- ONDE PRODUTO É IGUAL A 3

SELECT nm_produto, id_tipo_produto
FROM tb_produtos
WHERE id_produto = 3;

-- EXEMPLO 2

-- RECUPERAR A COLUNA NM_TIPO_PRODUTO DA TABELA TB_TIPOS_PRODUTOS PARA O ID_TIPO_PRODUTO = 2

SELECT nm_tipo_produto
FROM tb_tipos_produtos
WHERE id_tipo_produto = 2;

-- EXEMPLO 3

-- COMO O OPERADOR DE IGUALDADE (=) É UTILIZADO NA CONDIÇÃO JOIN, ESTÁ JOIN É
-- NOMEADE DE  EQUIJOIN
SELECT tb_produtos.nm_produto, tb_tipos_produtos.nm_tipo_produto
FROM tb_produtos, tb_tipos_produtos
WHERE tb_produtos.id_tipo_produto = tb_tipos_produtos.id_tipo_produto
AND tb_produtos.id_produto = 3;

-- EXEMPLO 4

-- OBTER TODOS OS PRODUTOS ORDENADOS PELA COLUNA NM_PRODUTO

SELECT tb_produtos.nm_produto, tb_tipos_produtos.nm_tipo_produto
FROM tb_produtos, tb_tipos_produtos
WHERE tb_produtos.id_tipo_produto = tb_tipos_produtos.id_tipo_produto
ORDER BY tb_produtos.nm_produto;

-- UTILIZANDO APELIDOS PARA REFERENCIAR A TABELA

SELECT p.nm_produto, tp.nm_tipo_produto
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto = tp.id_tipo_produto
ORDER BY p.nm_produto;
 