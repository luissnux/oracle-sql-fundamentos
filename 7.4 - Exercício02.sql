-- Executar com F5 ou F9 pelo sqldeveloper
SELECT * FROM tb_departamento;

-- mostar sobrenome e salário dos empregados que recebem 3000
SELECT sobrenome, salario FROM tb_empregado
WHERE salario = 3000;

-- selecionar os empregados que não recebem comissão (IS NUL, IS NOT NULL)
SELECT sobrenome, id_funcao, percentual_comissao FROM tb_empregado
WHERE percentual_comissao IS NULL;

