create table tb_regiao(
id_regiao   number constraint nn_id_regiao not null,
nm_regiao   varchar2(25)
);

/*
 Um unique index garante que duas linhas de uma tabela não tenham valores 
 duplicados na coluna indexada (ou colunas).
*/
create unique index pk_id_regiao on tb_regiao(id_regiao);

alter table tb_regiao add(constraint pk_id_regiao primary key(id_regiao));

--------------------------------------------------------------------------------

create table tb_pais(
id_pais     char(2) constraint nn_id_pais not null,
nm_pais     varchar2(40),
id_regiao   number,
constraint pk_id_pais primary key(id_pais)
);

alter table tb_pais add(constraint fk_id_regiao 
                        foreign key(id_regiao) references tb_regiao(id_regiao));
                        
--------------------------------------------------------------------------------

create table tb_localizacao(
id_localizacao      number(4),
id_pais             char(2),
endereco            varchar2(40),
cep                 varchar2(12),
cidade              varchar2(30) constraint nn_loc_cidade not null,
estado              varchar2(25)
);

create unique index pf_id_localizacao on tb_localizacao(id_localizacao);

alter table tb_localizacao 
add(constraint pk_id_loc
    primary key(id_localizacao),
    constraint fk_id_pais foreign key(id_pais) references tb_pais(id_pais));
    
create sequence seq_localizacao
start with      3300
increment by    100
maxvalue        9900
nocache
nocycle;

--------------------------------------------------------------------------------

create table tb_departamento(
id_departamento     number(4),
nm_departamento     varchar2(30) constraint nn_nm_departamento not null,
id_gerente          number(6),
id_localizacao      number(4)
);

create unique index pk_id_departamento on tb_departamento(id_departamento);

alter table tb_departamento
add(constraint pk_id_departamento 
    primary key(id_departamento),
    constraint fk_loc_departamento
    foreign key(id_localizacao) references tb_localizacao(id_localizacao));
    
create sequence seq_departamento
start with      280
increment by    10
maxvalue        9990
nocache
nocycle;

--------------------------------------------------------------------------------

create table tb_funcao(
id_funcao       varchar2(10),
ds_funcao       varchar2(35) constraint nn_ds_funcao not null,
base_salario    number(6),
teto_salario    number(6)
);

create unique index pk_id_funcao on tb_funcao(id_funcao);

alter table tb_funcao add(constraint pk_id_funcao primary key(id_funcao));

--------------------------------------------------------------------------------

create table tb_empregado(
id_empregado        number(6),
nome                varchar2(20),
sobrenome           varchar2(25) constraint nn_emp_sobrenome not null,
email               varchar2(25) constraint nn_emp_email not null,
telefone            varchar2(20),
data_admissao       date constraint nn_emp_dt_adm not null,
id_funcao           varchar2(10) constraint nn_emp_funcao not null,
salario             number(8,2),
percentual_comissao number(2,2),
id_gerente          number(6),
id_departamento     number(4),
constraint min_emp_salario check (salario > 0), -- torna obrigatório inserir salario
constraint un_emp_email unique (email) -- aceita apenas um email cadastrado
);

create unique index pk_ip_emp on tb_empregado(id_empregado);

alter table tb_empregado
add (constraint pk_id_emp
        primary key(id_empregado),
     constraint fk_emp_depto
        foreign key(id_departamento) references tb_departamento,
     constraint fk_emp_funcao 
        foreign key(id_funcao) references tb_funcao(id_funcao),
     constraint fk_emp_gerente
        foreign key(id_gerente) references tb_empregado);

alter table tb_departamento
add (constraint fk_gerente_depto
    foreign key(id_gerente) references tb_empregado(id_empregado));
    
create sequence seg_empregado
start with      207
increment by    1
nocache
nocycle;
--------------------------------------------------------------------------------

create table tb_historico_funcao(
id_empregado        number(6) constraint nn_hist_emp_id_emp not null,
data_inicio         date constraint nn_hist_dt_inicio not null,
data_termino        date constraint nn_hist_dt_termino not null,
id_funcao           varchar2(10) constraint nn_hist_emp_id_funcao not null,
id_departamento     number(4),
constraint ck_hist_emp_data_intervalo check (data_termino > data_inicio)
);

create unique index pk_hist_emp_id_emp
on tb_historico_funcao(id_empregado, data_inicio);

alter table tb_historico_funcao
add (constraint pk_hist_emp_id_emp
        primary key(id_empregado, data_inicio),
        constraint fk_hist_funcao_funcao
        foreign key(id_funcao) references tb_funcao,
        constraint fk_hist_funcao_emp
        foreign key(id_empregado) references tb_empregado,
        constraint fk_hist_funcao_depto
        foreign key(id_departamento) references tb_departamento
);