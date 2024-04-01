create database tech_for_good;
use tech_for_good;

-- drop database tech_for_good;

create table endereco(
idendereco int primary key,
logradouro varchar(45),
bairro varchar(45),
numero varchar(45),
cep varchar(45),
complemento varchar(45)
);

create table rota(
idrota int primary key,
criador_rota varchar(45),
data_criacao varchar(45)
);

create table enderecos_rota(
rota_idrota int,
endereco_idendereco int,
primary key(rota_idrota, endereco_idendereco),
constraint foreign key(rota_idrota) references rota(idrota),
constraint foreign key(endereco_idendereco) references endereco(idendereco)
);

create table cesta(
idcesta int primary key,
nome_cesta varchar(45)
);

create table cesta_rota(
idrota int,
idcesta int,
primary key(idrota, idcesta),
constraint foreign key(idrota) references rota(idrota),
constraint foreign key(idcesta) references cesta(idcesta)
);

create table produto_cesta(
idproduto int primary key,
produto_cesta varchar(45),
fk_cesta int,
foreign key (fk_cesta) references cesta(idcesta)
);

create table tipo_produto(
idtipo_produto int primary key,
nome_tipo_produto varchar(45)
);

create table produto(
idproduto int primary key,
nome_produto varchar(45),
data_validade date,
peso decimal(10, 2),
codigo_barras varchar(45),
data_adicionado varchar(45),
preco decimal(10, 2),
marca varchar(45),
fktipo_produto int,
foreign key (fktipo_produto) references tipo_produto(idtipo_produto)
);

create table estoque(
idestoque int primary key,
nome varchar(45)
);

create table produto_estoque(
estoque_idestoque int,
produto_idproduto int,
primary key(estoque_idestoque, produto_idproduto),
constraint foreign key(estoque_idestoque) references estoque(idestoque),
constraint foreign key(produto_idproduto) references produto(idproduto)
);

create table usuario(
idusuario int primary key,
nome varchar(45),
email varchar(45),
senha varchar(45),
cpf char(11),
tipo_usuario varchar(45),
fkestoque int,
foreign key (fkestoque) references estoque(idestoque)
);

create table tipo_meta(
idtipo_meta int primary key,
nome_tipo_meta varchar(45)
);

create table meta(
idmeta int,
nome_meta varchar(45),
valor_meta decimal(10, 2),
idtipo_meta int,
fkusuario int,
primary key(idmeta, idtipo_meta),
foreign key(idtipo_meta) references tipo_meta(idtipo_meta),
foreign key(fkusuario) references usuario(idusuario)
);