

create table Livros(
Id int auto_increment,
Nome varchar (30) not null,
Sinopse Varchar (20),
Typeld int, 
AutorId int,
editoraId int,
data_de_lancamento date not null,
Link varchar (Id)
); 

create table Genero(
id int  not null auto_increment, 
Nome_do_Genero varchar(30) not null,
primary key (id)
);

create table Autor(
id int not null auto_increment,
Autor varchar(30) not null,
primary key (id)
);

alter table biblioteca.Livros
add foreign key (AutorId)
references biblioteca.Autor(id);

alter table biblioteca.Livros
add foreign key (TypeId)
references biblioteca.Genero(id);



create table editora(
id int not null auto_increment, 
Nome varchar(30) not null,
primary key (id)
);


alter table biblioteca.Livros
add foreign key (editoraId)
references biblioteca.editora(id);

insert into Genero (Nome_do_Genero) values ('Psicologia');

insert into Autor (Autor) values ('Leonardo Paschoa')

insert into editora (Nome) values ('Oreilly')


select * from Autor;

select * from Genero;

select * from editora;

create table Estoque(
Id int auto_increment,
IdLivro int not null,
Alugado boolean default 0,
Vendido boolean default 0,
Data_Entrada date,
primary key (Id),
foreign key (IdLivro)
references biblioteca.Livros(Id)
);

create table Produtos(
Id int auto_increment,
LivroId int not  null,
Quantidade int,
Valor float,
Valor_Promocao float,
Data_Criacao date, 
Data_Alteracao date,
primary key (Id),
foreign key (LivroId)
references biblioteca.Livros(Id)
); 

select*from biblioteca.produtos;

insert into biblioteca.produtos(
LivroId, Quantidade, Valor, Valor_Promocao, Data_Criacao, Data_Alteracao
) values ( 
1,10,59.90,53.91,'2026-07-01','2026-07-01'
);


create table  clientes(
id int auto_increment,
nome varchar(30) not null,
sexo enum ('F','M'),
idade int not null,
DataNasc date not null,
dataCadastro date not null,
primary key(id)
);

create table assinantes(
id int auto_increment,
idCliente int not null,
ativa boolean default 0,
DataMatricula date not null,
DataEncerramentoMatricula date not null,
primary key (id),
foreign key (idCliente)
references biblioteca.clientes (id)
);


alter table assinantes
modify DataEncerramentoMatricula date;

describe assinantes;

create table Aluguel(
Id int auto_increment,
IdLivro int not null,
IdEstoque int not null,
IdCliente int not null,
dataRetirada int not null,
dataPrevistaEntrega int not null,
dataEntrega int null,
Devolvido int not null,
primary key(Id),
foreign key (IdLivro)
references biblioteca.livros (id),
foreign key (idCliente)
references biblioteca.assinantes (Id),
foreign key (IdEstoque)
references biblioteca.Estoque (Id)
);


create table venda(
id int auto_increment,
ClienteId int not null,
DataVenda date not null,
Valor_total float not null,
primary key (Id),
foreign key (ClienteId)
references biblioteca.Clientes (Id)
);

create table Item_venda(
Id int auto_increment,
VendaId int not null ,
ProdutoId int not null,
EstoqueId int not null,
Velor float not null,
primary key (Id),
foreign key (VendaId) references biblioteca.venda (id),
foreign key (ProdutoId) references biblioteca. Produtos (Id),
foreign key (EstoqueId) references biblioteca.Estoque (Id)
);

select * from Livros
where Nome like "D%";

