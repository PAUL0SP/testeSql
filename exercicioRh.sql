use db_rh;

create table tb_funcionaries(
        id bigint(10) auto_increment,
        nome varchar(25) not null,
        ativo boolean, 
        setor varchar(25) not null,
        funcao varchar (25) not null,
        salario decimal(10,2) not null,
        primary key (id)

);