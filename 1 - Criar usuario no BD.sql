-- Criando um usu�rio no BD
create user loja identified by loja;

-- Adicionar permiss�es ao usu�rio
grant connect, resource to loja;