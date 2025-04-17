create database EmpresaX;
use EmpresaX;

create table Departamentos(
	ID_DEP int not null primary key,
    Nome_DEP varchar (30),
    Localizacao varchar (30)
);

create table Funcionarios(
	ID_FUN int not null primary key,
    ID_DEP int,
    Nome_FUN varchar (30),
    Cargo varchar (30),
    Salario decimal (6,2),
    DataContratacao date,
    foreign key (ID_DEP) references Departamentos (ID_DEP)
);


insert into 
	Departamentos (ID_DEP, Nome_DEP, Localizacao)
    values ('1111','MXG','CA370'),
    ('2222','MXC','CA380'),
    ('3333','MXH','CA170');
    
insert into 
	Funcionarios (ID_FUN, ID_DEP, Nome_FUN, Cargo, Salario, DataContratacao)
    values ('11111','1111','Ana Silva','Auxiliar Administrativo', 2000.00, '2012-05-10'),
	('22222','2222','Ana Souza','Engenheira Eletrica', 8000.00, '2009-01-30'),
    ('33333','3333','Ana Lima','Engenheira de Producao', 9000.00, '2002-02-28');
    
select *from Funcionarios;
show databases;
show tables;
desc Funcionarios;
3000.00 between 6000.00;