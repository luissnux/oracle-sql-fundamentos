-- PRECED?NCIA DE OPERADORES

-- "AND" TER? PRECED?NCIA SOBRE "OR"
-- OPERADORES DE COMPARA??O TEM PRECED?NCIA SOBRE "AND"
-- UTILIZAR () PARA INDICAR A ORDEM QUE DESEJA EXECUTAR A EXPRESS?ES

SELECT *
FROM tb_clientes
WHERE dt_nascimento > '01/JAN/1970'
OR id_cliente < 2
AND telefone LIKE '%1211';