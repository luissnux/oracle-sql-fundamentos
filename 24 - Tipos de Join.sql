-- TIPOS DE JOIN

/*
N�O-EQUIJOIN

Utiliza um operador que n�o � de igualdade na JOIN

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

-- Obter os n�vel de sal�rios dos funcion�rios

SELECT *
FROM  tb_grades_salarios;

-- Exemplo 2

/*
Consulta utiliza uma n�o-equijoin para recuperar o sal�rio e os n�veis dos
funcion�rios; o n�vel salarial � determinado pelo operador BETWEEN
*/

SELECT f.nome, f.sobrenome, f.cargo, f.salario, gs.id_salario
FROM tb_funcionarios f, tb_grades_salarios gs
WHERE f.salario BETWEEN gs.base_salario AND gs.teto_salario
ORDER BY gs.id_salario;

/*
Joins-Externas

Recurepa uma linha mesmo quando uma de suas colunas cont�m um valor nulo

Operador de join externa (+)
*/

-- Exemplo 1

/*
O operador (+) est� no lado oposto da coluna ID_TIPO_PRODUTO
na tabela tb_produtos (coluna que cont�m o valor Nulo)
*/

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto = tp.id_tipo_produto (+)
ORDER BY 1;

/*
Joins-Externas(direita e esquerda)

Exemplo 1 - Join externa ESQUERDA

As linhas da tabela tb_produtos s�o recuperadas, incluindo as linha "Minha Linha de Frente",
a qual possui um valor NULO na coluna ID_TIPO_PRODUTO
*/

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto = tp.id_tipo_produto (+)
ORDER BY 1;

/*
Exemplo 2 - Join Externa DIREITA

Recupera o tipo de produto "CD " e "DVD" atrav�s de uma jun��o externa DIREITA
realizada entre as tabelas tb_produtos e tb_tipos_produtos
*/_

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto (+) = tp.id_tipo_produto
ORDER BY 1;

-- Limita��es das Joins-Externas

-- Exemplo 1: N�o � possivel colocar o operador de join externa em ambos os lados

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto (+) = tp.id_tipo_produto (+)
ORDER BY 1;

-- Exemplo 2: N�o � poss�vel usar join externa na Join que esteja usando o operador OR

SELECT p.nm_produto AS produto, tp.nm_tipo_produto AS tipo
FROM tb_produtos p, tb_tipos_produtos tp
WHERE p.id_tipo_produto (+) = tp.id_tipo_produto
OR p.id_produto = 1;