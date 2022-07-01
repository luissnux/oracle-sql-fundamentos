/*
describe: descreve as informações de uma tabela, permite verificar as colunas 
definidas como not null
*/
describe tb_clientes;
/*
saída:

Nome          Nulo?    Tipo         
------------- -------- ------------ 
ID_CLIENTE    NOT NULL NUMBER(38)   
NOME          NOT NULL VARCHAR2(10) 
SOBRENOME     NOT NULL VARCHAR2(10) 
DT_NASCIMENTO          DATE         
TELEFONE               VARCHAR2(12) 
FG_ATIVO               NUMBER(38)
*/

-- adicionar linhas(tuplas) na tabela tb_clientes

insert into tb_clientes(id_cliente, nome, sobrenome, dt_nascimento, telefone, fg_ativo)
values(1, 'John', 'Brown', '01/Jan/1965', '800-555-1211', 1);

insert into tb_clientes(id_cliente, nome, sobrenome, dt_nascimento, telefone, fg_ativo)
values(2, 'Cynthia', 'Green', '05/Fev/1968', '800-555-1212', 1);

insert into tb_clientes(id_cliente, nome, sobrenome, dt_nascimento, telefone, fg_ativo)
values(3, 'Steve', 'White', '16/Mar/1971','800-555-1213', 1);

insert into tb_clientes(id_cliente, nome, sobrenome, dt_nascimento, telefone, fg_ativo)
values(4, 'Gail', 'Black', '', '800-555-1214', 1);

insert into tb_clientes(id_cliente, nome, sobrenome, dt_nascimento, telefone, fg_ativo)
values(5, 'Doreen', 'Blue', '20/Mai/1970', null, 1);

insert into tb_clientes(id_cliente, nome, sobrenome, dt_nascimento, telefone, fg_ativo)
values(6, 'Fred', 'Brown', '01/Jan/1970', '800-555-1215', 1);

commit;

-- Verificando linhas inseridas na tabela tb_clientes

select * from tb_clientes;

-- Adicionar linhas na tabela tb_tipos_produtos

describe tb_tipos_produtos;

/*
Nome            Nulo?    Tipo         
--------------- -------- ------------ 
ID_TIPO_PRODUTO NOT NULL NUMBER(38)   
NM_TIPO_PRODUTO NOT NULL VARCHAR2(10) 
FG_ATIVO                 NUMBER(38)
*/

insert into tb_tipos_produtos(id_tipo_produto, nm_tipo_produto, fg_ativo)
values(1, 'Book', 1);

insert into tb_tipos_produtos(id_tipo_produto, nm_tipo_produto, fg_ativo)
values(2, 'Video', 1);

insert into tb_tipos_produtos(id_tipo_produto, nm_tipo_produto, fg_ativo)
values(3, 'DVD', 1);

insert into tb_tipos_produtos(id_tipo_produto, nm_tipo_produto, fg_ativo)
values(4, 'CD', 1);

insert into tb_tipos_produtos(id_tipo_produto, nm_tipo_produto, fg_ativo)
values(5, 'Magazine', 1);

commit;

-- Verificar as linhas inseridas na tabela tb_tipos_produtos

select * from tb_tipos_produtos;

-- Adicionar linhas(tuplas) na tabela tb_produtos

describe tb_produtos;

/*
Nome            Nulo?    Tipo         
--------------- -------- ------------ 
ID_PRODUTO      NOT NULL NUMBER(38)   
ID_TIPO_PRODUTO          NUMBER(38)   
NM_PRODUTO      NOT NULL VARCHAR2(30) 
DS_PRODUTO               VARCHAR2(50) 
PRECO                    NUMBER(5,2)  
FG_ATIVO                 NUMBER(38)
*/

insert into tb_produtos(id_produto, id_tipo_produto, nm_produto, ds_produto, preco, fg_ativo)
values(1, 1, 'Modern Science', 'A description of modern science', 19.95, 1);

insert into tb_produtos(id_produto, id_tipo_produto, nm_produto, ds_produto, preco, fg_ativo)
values(2, 1, 'Chemistry', 'Instrodution to Chemistry', 30, 1);

insert into tb_produtos(id_produto, id_tipo_produto, nm_produto, ds_produto, preco, fg_ativo)
values(3, 2, 'Supernova', 'A star explodes', 25.99, 1);

insert into tb_produtos(id_produto, id_tipo_produto, nm_produto, ds_produto, preco, fg_ativo)
values(4, 2, 'Tank war', 'Action movie about a futuro war', 13.95, 1);

commit;

-- verificando as linhas inseridas

select * from tb_produtos;

-- Inserir linhas na tabela de compras

describe tb_compras;

/*
Nome        Nulo?    Tipo       
----------- -------- ---------- 
ID_PRODUTOS NOT NULL NUMBER(38) 
ID_CLIENTE  NOT NULL NUMBER(38) 
QUANTIDADE           NUMBER(38) 
FG_ATIVO             NUMBER(38)
*/

insert into tb_compras(id_produtos, id_cliente, quantidade, fg_ativo)
values(1, 1, 1, 1);

insert into tb_compras(id_produtos, id_cliente, quantidade, fg_ativo)
values(2, 1, 3, 1);

insert into tb_compras(id_produtos, id_cliente, quantidade, fg_ativo)
values(1, 4, 1, 1);

insert into tb_compras(id_produtos, id_cliente, quantidade, fg_ativo)
values(2, 2, 1, 1);

insert into tb_compras(id_produtos, id_cliente, quantidade, fg_ativo)
values(1, 3, 1, 1);

commit;

-- Verificando as linha inseridas

select * from tb_compras;

-- Inserir linhas na tb_funcionarios

describe tb_funcionarios;

/*
Nome           Nulo?    Tipo         
-------------- -------- ------------ 
ID_FUNCIONARIO NOT NULL NUMBER(38)   
ID_GERENTE              NUMBER(38)   
NOME           NOT NULL VARCHAR2(10) 
SOBRENOME      NOT NULL VARCHAR2(10) 
CARGO                   VARCHAR2(20) 
SALARIO                 NUMBER(6)    
FG_ATIVO                NUMBER(38) 
*/

insert into tb_funcionarios(id_funcionario, id_gerente, nome, sobrenome, cargo, salario, fg_ativo)
values(1, null, 'James', 'Smith', 'CEO', 8000.00, 1);

insert into tb_funcionarios(id_funcionario, id_gerente, nome, sobrenome, cargo, salario, fg_ativo)
values(2, 1, 'Ron', 'Johnson', 'Sales Manager', 6000.00, 1);

insert into tb_funcionarios(id_funcionario, id_gerente, nome, sobrenome, cargo, salario, fg_ativo)
values(3, 2, 'Fred', 'Hobbs', 'Salesperson', 1500.00, 1);

insert into tb_funcionarios(id_funcionario, id_gerente, nome, sobrenome, cargo, salario, fg_ativo)
values(4, 2, 'Susan', 'Jones', 'Salesperson', 5000.00, 1);

commit;

-- Verificando as linha inseridas na tb_funcionarios

select * from tb_funcionarios;

-- Inserir linhas (tuplas) na tabela tb_grades_salarios

describe tb_grades_salarios;

/*
Nome         Nulo?    Tipo       
------------ -------- ---------- 
ID_SALARIO   NOT NULL NUMBER(38) 
BASE_SALARIO          NUMBER(6)  
TETO_SALARIO          NUMBER(6)  
FG_ATIVO              NUMBER(38)
*/

insert into tb_grades_salarios(id_salario, base_salario, teto_salario, fg_ativo)
values(1, 1, 250000, 1);

insert into tb_grades_salarios(id_salario, base_salario, teto_salario, fg_ativo)
values(2, 250001, 500000, 1);

insert into tb_grades_salarios(id_salario, base_salario, teto_salario, fg_ativo)
values(3, 500001, 750000, 1);

insert into tb_grades_salarios(id_salario, base_salario, teto_salario, fg_ativo)
values(4, 750001, 999999, 1);

commit;

-- Verificando as linhas inseridas na tabela tb_grades_salarios

select * from tb_grades_salarios;
