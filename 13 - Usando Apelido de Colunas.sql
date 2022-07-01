-- USANDO APELIDOS DE COLUNA
SELECT preco, preco * 2 DOBRO_PRECO
FROM tb_produtos;

-- MANTENDO LETRAS MAIÚSCULAS E MINÚSCULAS
SELECT preco, preco * 2 "Dobro do Preço"
FROM tb_produtos;

-- UTILIZANDO A PALAVRAS CHAVE OPCIONAL "AS" ANTES DO APELIDO DA COLUNA
SELECT preco, preco * 2 AS "Dobro do Preço"
FROM tb_produtos;

