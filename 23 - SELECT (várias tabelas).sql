-- SELECT (várias tabelas)

-- JOINs podem ser utiliadas para conectar "n" tabelas

-- As JOIN's usarão os realcionamentos de FK entre as tabelas

SELECT  c.nome, c.sobrenome, p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_clientes c, tb_compras co, tb_produtos p, tb_tipos_produtos tp
WHERE c.id_cliente = co.id_cliente
AND p.id_produto = co.id_produtos
AND p.id_tipo_produto = tp.id_tipo_produto
ORDER BY p.nm_produto;