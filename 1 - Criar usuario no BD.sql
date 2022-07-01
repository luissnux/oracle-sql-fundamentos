-- Criando um usuário no BD
create user loja identified by loja;

-- Adicionar permissões ao usuário
grant connect, resource to loja;