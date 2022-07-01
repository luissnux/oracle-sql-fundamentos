-- Alterando linhas (tuplas) da tabela

select * from tb_clientes;

/*
1	John	Brown	01/01/65	800-555-1211	1
2	Cynthia	Green	05/02/68	800-555-1212	1
3	Steve	White	16/03/71	800-555-1213	1
4	Gail	Black	(nul)       800-555-1214	1
5	Doreen	Blue	20/05/70    (null)     		1
6	Fred	Brown	01/01/70	800-555-1215	1
*/

-- Alterar o sobrenome para "Orange" do cliente com ID é o número 2

update tb_clientes 
set sobrenome = 'Orange'
where id_cliente = 2;

select * from tb_clientes;

/*
1	John	Brown	01/01/65	800-555-1211	1
2	Cynthia	Orange	05/02/68	800-555-1212	1
3	Steve	White	16/03/71	800-555-1213	1
4	Gail	Black	(null)  	800-555-1214	1
5	Doreen	Blue	20/05/70	(null)      	1
6	Fred	Brown	01/01/70	800-555-1215	1
*/

rollback; -- desfaz a alterações realizadas nas linhas


