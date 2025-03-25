-- apagar o banco de dados
drop database dbLoja;
 
-- criar o banco de dados
create database dbLoja;
 
-- acessar o banco de dados
use dbLoja;
 
 -- criando as tabelas do banco de dados 
 create table tbFuncionarios (
codFunc int not null auto_increment,
nome varchar(100) not null, 
email varchar(100) not null, 
cpf char(14) not null unique,
telcel char(10),
dataNasc date ,
sexo char(1),
salario decimal(9,2),
logradouro varchar (100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado varchar(100),
siglaEst char(2),
complemento varchar (100),
primary key (codfunc)
);

insert into tbFuncionarios
	(nome,email,cpf,telcel,dataNasc,sexo,salariom,logradouro,numero,cep,bairro,cidade,estado,siglaEst,complemento)
	values('wesley silva','wesley.fsa_2015@hotmail.com','083.635.585-75','983293877','1999/02/19','W',4500.55,'rua desembagador olavo ferreira prado
		','590','27040-000','Santo amaro','Sao Paulo','Sao Paulo','SP','Casa');







create table tbFornecedores(
codforn int not null auto_increment,
nome varchar(50) not null,
email varchar(100),
cnpj char(18) not null unique,
primary key (codforn)

);


create table tbClientes(
codCli int not null auto_increment,	
nome varchar(100) not null,
email varchar(100),
telcel char(9),
cpf char(14) not null unique,
primary key (codCli)


);

create table tbUsuarios( 
codUsu int not null auto_increment,
nome varchar(30) not null unique,
senha varchar(12) not null,
codFunc int not null,
primary key (codUsu),
foreign key (codfunc) references tbFuncionarios(codfunc)

);


create table tbProdutos(
codProd int not null auto_increment,
nome varchar(100),
valor decimal(9,2),
quantidade int,
dataEnt date,
validade date,
codforn int not null,
primary key(codProd),
foreign key (codforn)references tbFornecedores(codforn)

);


create table tbVendas( 
codVenda int not null auto_increment,
dataVenda date,
horaVenda time,
quantidade int,
valorTotal decimal(9,2), 
codProd int not null,
codUsu int not null,
codCli int not null,
primary key (codVenda),
foreign key (codProd) references tbProdutos(codProd), 
foreign key (codUsu) references tbUsuarios(codUsu), 
foreign key (codCli) references tbClientes(codCli) 

);

-- visualizando a estrutura da tabela 
desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbProdutos;
desc tbClientes;

-- inserindo registro nas tabelas 

insert into tbFuncionarios
	(nome,email,cpf,telcel,dataNasc,sexo,salariom,logradouro,numero,cep,bairro,cidade,estado,siglaEst,complemento)
	values('wesley silva','wesley.fsa_2015@hotmail.com','083.635.585-75','983293877','1999/02/19','W',4500.55,'rua desembagador olavo ferreira prado
		','590','27040-000','Santo amaro','Sao Paulo','Sao Paulo','SP','Casa');


	-- visualizando os registros 
	