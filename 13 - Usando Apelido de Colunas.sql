-- USANDO APELIDOS DE COLUNA
SELECT preco, preco * 2 DOBRO_PRECO
FROM tb_produtos;

-- MANTENDO LETRAS MAI�SCULAS E MIN�SCULAS
SELECT preco, preco * 2 "Dobro do Pre�o"
FROM tb_produtos;

-- UTILIZANDO A PALAVRAS CHAVE OPCIONAL "AS" ANTES DO APELIDO DA COLUNA
SELECT preco, preco * 2 AS "Dobro do Pre�o"
FROM tb_produtos;

