create table tb_clientes(
id_cliente      integer,
nome            varchar2(10) not null,
sobrenome       varchar2(10) not null,
dt_nascimento   date,
telefone        varchar2(12),
fg_ativo        integer,
constraint pk_cliente primary key(id_cliente)
);

create table tb_tipos_produtos(
id_tipo_produto         integer,
nm_tipo_produto         varchar2(10) not null,
fg_ativo                integer,
constraint pk_tipo_produto primary key(id_tipo_produto)
);

create table tb_produtos(
id_produto          integer,
id_tipo_produto     integer,
nm_produto          varchar2(30) not null,
ds_produto          varchar2(50),
preco               number(5,2),
fg_ativo            integer,
constraint pk_produto primary key(id_produto),
constraint fk_id_tipo_estoque foreign key(id_tipo_produto)
references tb_tipos_produtos(id_tipo_produto)
);

create table tb_compras(
id_produtos         integer,
id_cliente          integer,
quantidade          integer,
fg_ativo            integer,
constraint fk_id_produtos foreign key(id_produtos) references tb_produtos(id_produto),
constraint fk_id_cliente foreign key(id_cliente) references tb_clientes(id_cliente),
constraint pk_compras primary key(id_produtos, id_cliente)
);

create table tb_funcionarios(
id_funcionario          integer,
id_gerente              integer,
nome                    varchar(10) not null,
sobrenome               varchar(10) not null,
cargo                   varchar(20),
salario                 number(6,0),
fg_ativo                integer,
constraint pk_funcionario primary key(id_funcionario),
constraint fk_gerente foreign key(id_gerente) references tb_funcionarios(id_funcionario)
);

create table tb_grades_salarios(
id_salario      integer,
base_salario    number(6,0),
teto_salario    number(6,0),
fg_ativo        integer,
constraint pk_salario primary key(id_salario)
);

