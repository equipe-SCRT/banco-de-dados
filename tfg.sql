CREATE DATABASE tech_for_good;
USE tech_for_good;

-- DROP DATABASE tech_for_good;

CREATE TABLE IF NOT EXISTS rota (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45)
); 
-- auto increment ?

CREATE TABLE IF NOT EXISTS lote (
    id INT PRIMARY KEY AUTO_INCREMENT
);

-- lote ?????


CREATE TABLE IF NOT EXISTS historico_rota (
    id INT PRIMARY KEY AUTO_INCREMENT,
    km_rodados VARCHAR(45),
    qtd_colaboradores INT,
    data_historico DATE,
    hora_inicio TIME, 
    hora_fim TIME,
    qtd_cestas INT,
    fk_rota INT, 
    fk_lote INT,
    CONSTRAINT FOREIGN KEY(fk_rota) REFERENCES rota(id),
    CONSTRAINT FOREIGN KEY(fk_lote) REFERENCES lote(id)
);




CREATE TABLE IF NOT EXISTS tipo_cesta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS tipo_produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS rua (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    fk_rota INT,
    CONSTRAINT FOREIGN KEY(fkrota) REFERENCES rota(id)
);

CREATE TABLE IF NOT EXISTS endereco (
    id INT PRIMARY KEY AUTO_INCREMENT,
    logradouro VARCHAR(45),
    bairro VARCHAR(45),
    numero VARCHAR(45),
    cep CHAR(8),
    fk_rua INT,
    CONSTRAINT FOREIGN KEY(fk_rua) REFERENCES rua(id)
);

CREATE TABLE IF NOT EXISTS condominio (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    fk_endereco INT,
    CONSTRAINT FOREIGN KEY(fk_endereco) REFERENCES rua(id)
);

CREATE TABLE IF NOT EXISTS campanha (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    local_campanha VARCHAR(45),
    data_campanha DATE,
    qtd_arrecadada INT
);

CREATE TABLE IF NOT EXISTS origem (
    id INT PRIMARY KEY AUTO_INCREMENT,
    auta_de_sousa_rua INT,
    itapora INT,
    fk_condominio INT,
    fk_campanha INT,
    FOREIGN KEY (fk_condominio) REFERENCES condominio(id),
    FOREIGN KEY (fk_campanha) REFERENCES campanha(id)
);

CREATE TABLE IF NOT EXISTS produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    data_validade DATE,
    peso DECIMAL(10, 2),
    fk_origem INT,
    FOREIGN KEY (fk_origem) REFERENCES origem(id)
);

CREATE TABLE IF NOT EXISTS produto_cesta (
    fk_produto INT,
    fk_tipo_cesta INT,
    PRIMARY KEY(fk_produto, fk_tipo_cesta),
    FOREIGN KEY (fk_produto) REFERENCES produto(id),
    FOREIGN KEY (fk_tipo_cesta) REFERENCES tipo_cesta(id)
);

CREATE TABLE IF NOT EXISTS cesta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_montagem DATE,
    fk_historico_lote INT,
    fk_lote INT,
    fk_tipo_cesta INT,
    CONSTRAINT FOREIGN KEY(fk_historico_lote) REFERENCES historico_rota(id),
    CONSTRAINT FOREIGN KEY(fk_lote) REFERENCES lote(id),
    CONSTRAINT FOREIGN KEY(fk_tipo_cesta) REFERENCES tipo_cesta(id)
);

CREATE TABLE IF NOT EXISTS usuario (
    idusuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45),
    email VARCHAR(45),
    senha VARCHAR(45),
    tipo_usuario INT
);

CREATE TABLE IF NOT EXISTS historico_mudanca (
    id INT,
    fk_usuario INT,
    data_hora DATETIME,
    FOREIGN KEY (data_hora) REFERENCES usuario(id)
);
