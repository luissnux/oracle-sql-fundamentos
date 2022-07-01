-- PRODUTO CARTESIANO

-- A AUSÊNCIA DA CONDIÇÃO JOIN PROMOVE A UNIÃO DE TODAS AS LINHAS DE UMA TABELA
-- COM TODAS AS LINHAS DE OUTRA TABELA.

SELECT p.id_tipo_produto, tp.id_tipo_produto
FROM tb_produtos p, tb_tipos_produtos tp;


