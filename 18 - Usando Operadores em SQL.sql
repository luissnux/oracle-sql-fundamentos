-- USANDO OPERADORES SQL

/*
PERMITE LIMITAR AS LINHAS COM BASE NA CORRESPOND?NCIA DE PADR?O DE STRINGS,
LISTAS DE VALORES, INTERVALOS DE VALORES E VALORES NULOS.

LIKE - CORRESPONDE A PADR?O EM STRINGS
IN - CORRESPONDE A LISTA DE VALORES
BETWEEN - CORRESNPONDE A UM INTERVALO DE VALORES
IS NULL - CORRESPONDE A VALORES NULOS
IS NAN - CORRESPOND A UM VALOR ESPECIAL NAN (NOT A NUMBER)
IS INFINITE - CORRESPONDE A VALORES BINARY_FLOAT E BINARY_DOUBLE INFINITOS

POSSIBILIDADE DE UTILIZAR NOT PARA INVERTER O SIGNIFICADO DE UM OPERADOR:

NOT LIKE
NOT IN
NOT BETWEEN
IS NOT NULL
IS NOT NAN
IS NOT INFINITE 
*/

-- LIKE (PROCURAR UM PADR?O DE STRING)

SELECT *
FROM tb_clientes
WHERE nome LIKE '_o%';

/*
SUBLINHADO(_) - QUALQUER CARACTER NA PRIMEIRA POSI??O
"o" - LETRA "o" NA SEGUNDA POSI??O
% - TODOS O CARACTERES AP?S O "o"
*/

-- UTILIZANDO O "ESCAPE" PARA PROCURAR "_" E "%"

SELECT nome
FROM tb_promocao
WHERE nome LIKE '%/%%' ESCAPE'/';

-- OPERADOR IN

-- MOSTRA AS LINHAS COM ID (2, 3, 5)
SELECT *
FROM tb_clientes
WHERE id_cliente IN(2, 3, 5);

-- MOSTRA TODAS AS LINHAS, MENOS AS LINHAS COM ID (2, 3, 5)
SELECT *
FROM tb_clientes
WHERE id_cliente NOT IN(2, 3, 5);

-- BETWEEN (ENTRE)

-- MOSTRA LINHAS COM ID ENTRE 1 E 3
SELECT *
FROM tb_clientes
WHERE id_cliente BETWEEN 1 AND 3;

-- MOSTRA LINHAS QUE N?O TIVER ID ENTRE 1 E 3
SELECT *
FROM tb_clientes
WHERE id_cliente NOT BETWEEN 1 AND 3;

-- OPERADORES L?GICOS

/*
x AND y - VERDADEIRO QUANDO x E y S?O VERDADEIROS
x OR y - VERDADEIRO QUANDO x OU y FOR VERDADEIRO
NOT x - RETORNA VERDADEIRO SE x FOR FALSO E RETORNA FALSO SE x FOR VERDADEIRO
*/

-- MOSTRA AS LINHAS ONDE AS DUAS CONDI??ES S?O VERDADEIRAS
SELECT *
FROM tb_clientes
WHERE dt_nascimento > '01/JAN/1970'
AND id_cliente > 3;

-- MOSTRA AS LINHAS ONDE UMA DAS DUAS CONDI??ES FOR VERDADEIRA
SELECT *
FROM tb_clientes
WHERE dt_nascimento > '01/JAN/1970'
OR id_cliente > 3;






