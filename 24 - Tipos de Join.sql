-- TIPOS DE JOIN

/*
NÃO-EQUIJOIN

Utiliza um operador que não é de igualdade na JOIN

Operadores:]
- Diferente <>
- Menor <
- Maior >
- Menor ou Igual <=
- Maior ou Igual >=
- LIKE
- IN
- BETWEEN
*/

-- Exemplo 1

-- Obter os nível de salários dos funcionários

SELECT *
FROM  tb_grades_salarios;

-- Exemplo 2

/*
Consulta utiliza uma não-equijoin para recuperar o salário e os níveis dos
funcionários; o nível salarial é determinado pelo operador BETWEEN
*/

SELECT f.nome, f.sobrenome, f.cargo, f.salario, gs.id_salario
FROM tb_funcionarios f, tb_grades_salarios gs
WHERE f.salario BETWEEN gs.base_salario AND gs.teto_salario
ORDER BY gs.id_salario;

/*
Joins-Externas

Recurepa uma linha mesmo quando uma de suas colunas contém um valor nulo

Operador de join externa (+)
*/

-- Exemplo 1

/*
O operador (+) está no lado oposto da coluna ID_TIPO_PRODUTO
na tabela tb_produtos (coluna que contém o valor Nulo)
*/

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto = tp.id_tipo_produto (+)
ORDER BY 1;

/*
Joins-Externas(direita e esquerda)

Exemplo 1 - Join externa ESQUERDA

As linhas da tabela tb_produtos são recuperadas, incluindo as linha "Minha Linha de Frente",
a qual possui um valor NULO na coluna ID_TIPO_PRODUTO
*/

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto = tp.id_tipo_produto (+)
ORDER BY 1;

/*
Exemplo 2 - Join Externa DIREITA

Recupera o tipo de produto "CD " e "DVD" através de uma junção externa DIREITA
realizada entre as tabelas tb_produtos e tb_tipos_produtos
*/_

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto (+) = tp.id_tipo_produto
ORDER BY 1;

-- Limitações das Joins-Externas

-- Exemplo 1: Não é possivel colocar o operador de join externa em ambos os lados

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto (+) = tp.id_tipo_produto (+)
ORDER BY 1;

-- Exemplo 2: Não é possível usar join externa na Join que esteja usando o operador OR

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto (+) = tp.id_tipo_produto
OR p.id_produto = 1;