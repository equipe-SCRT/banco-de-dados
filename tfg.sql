
-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: tech_for_good
-- ------------------------------------------------------
-- Server version	8.0.35
drop database if exists tech_for_good;
create database tech_for_good;
use tech_for_good;

-- SELECT COUNT(*) AS qtdEmVencimento FROM produto_unitario
-- WHERE data_validade = CURDATE();

-- SELECT * FROM unidade_medida;
-- SELECT * FROM tipo_campanha;
-- SELECT * FROM usuario;
-- UPDATE usuario SET nome = "Fulvia Cristina" WHERE id = 1; 
-- SELECT * FROM produto_unitario;
-- UPDATE produto SET unidade_medida_id = 2 WHERE id = 2;
-- SELECT * FROM produto;
-- SELECT * FROM rota;
-- SELECT * FROM tipo_campanha;
-- SELECT * FROM campanha;
-- SELECT * FROM cesta;
-- SELECT * FROM tipo_cesta;
-- SELECT * FROM origem;
-- SELECT * FROM condominio;

-- SELECT * FROM v_total_produtos_arrecadados_por_mes;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


--
-- Table structure for table `campanha`
--

DROP TABLE IF EXISTS `tipo_campanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_campanha` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tipo_campanha` WRITE;
/*!40000 ALTER TABLE `tipo_campanha` DISABLE KEYS */;
INSERT INTO `tipo_campanha` VALUES
(1, '2024-09-09 23:07:56.152706', NULL, 'Escola'),
(2, '2024-09-10 12:00:00.000000', NULL, 'Parque'),
(3, '2024-09-15 18:30:00.000000', NULL, 'Shopping');
/*!40000 ALTER TABLE `tipo_campanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campanha`
--

DROP TABLE IF EXISTS `campanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campanha` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `local_campanha` varchar(255) DEFAULT NULL,
  `data_campanha` datetime(6) DEFAULT NULL,
  `qtd_arrecadada` int DEFAULT NULL,
  `meta` int DEFAULT NULL,
  `tipo_campanha_id` INT,
  `produto_id` INT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (produto_id) REFERENCES produto(id),
  FOREIGN KEY (tipo_campanha_id) REFERENCES tipo_campanha(id)
) ENGINE=InnoDB AUTO_INCREMENT=12;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `campanha`
--

LOCK TABLES `campanha` WRITE;
/*!40000 ALTER TABLE `campanha` DISABLE KEYS */;
INSERT INTO `campanha` (`id`, `criado_em`, `modificado_em`, `local_campanha`, `data_campanha`, `qtd_arrecadada`, `meta`, `tipo_campanha_id`) VALUES
(1, '2024-09-09 23:07:56.152706', NULL, 'Escola Viva', '2024-09-09 23:07:20.909000', 100, 10, 1),
(2, '2024-09-10 12:00:00.000000', NULL, 'Parque Central', '2024-09-15 12:00:00.000000', 150, 30, 1),
(3, '2024-09-11 13:30:00.000000', NULL, 'Praça das Flores', '2024-09-20 15:00:00.000000', 200, 70, 1),
(4, '2024-09-12 14:45:00.000000', NULL, 'Rua das Acácias', '2024-09-25 16:00:00.000000', 300, 120, 1),
(5, '2024-09-13 10:00:00.000000', NULL, 'Centro Comunitário', '2024-09-28 18:00:00.000000', 400, 90, 1),
(6, '2024-09-14 16:00:00.000000', NULL, 'Estádio Municipal', '2024-09-30 10:00:00.000000', 500, 200, 1),
(7, '2024-09-15 18:30:00.000000', NULL, 'Shopping Central', '2024-10-02 11:00:00.000000', 600, 250, 1),
(8, '2024-09-16 08:15:00.000000', NULL, 'Teatro Principal', '2024-10-05 12:00:00.000000', 700, 180, 1),
(9, '2024-09-17 09:45:00.000000', NULL, 'Ginásio Municipal', '2024-10-07 09:00:00.000000', 800, 320, 1),
(10, '2024-09-18 11:20:00.000000', NULL, 'Escola Maria Luz', '2024-10-10 13:00:00.000000', 900, 400, 1),
(11, '2024-09-19 12:35:00.000000', NULL, 'Universidade Federal', '2024-10-12 14:00:00.000000', 1000, 500,1);
/*!40000 ALTER TABLE `campanha` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `cesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cesta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `data_montagem` date DEFAULT NULL,
  `qtd_cesta` int DEFAULT NULL,
  `tipo_cesta_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKio679tylghsreicb7kv5ekb23` (`tipo_cesta_id`),
  CONSTRAINT `FKio679tylghsreicb7kv5ekb23` FOREIGN KEY (`tipo_cesta_id`) REFERENCES `tipo_cesta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cesta`
--

LOCK TABLES `cesta` WRITE;
/*!40000 ALTER TABLE `cesta` DISABLE KEYS */;
INSERT INTO `cesta` (`id`, `criado_em`, `modificado_em`, `data_montagem`, `qtd_cesta`, `tipo_cesta_id`) VALUES
(1, '2024-09-09 23:08:21.205385', NULL, '2024-09-09', 1, 1),
(2, '2024-09-09 23:08:24.201231', NULL, '2024-09-09', 1, 1),
(3, '2024-09-09 23:08:24.560290', NULL, '2024-09-09', 1, 1),
(4, '2024-09-09 23:08:24.959338', NULL, '2024-09-09', 1, 1),
(5, '2024-09-09 23:08:25.331893', NULL, '2024-09-09', 1, 1),
(6, '2024-09-09 23:08:25.729137', NULL, '2024-09-09', 1, 1),
(7, '2024-09-09 23:08:26.108920', NULL, '2024-09-09', 1, 1),
(8, '2024-09-09 23:08:26.473415', NULL, '2024-09-09', 1, 1),
(9, '2024-09-09 23:08:26.839215', NULL, '2024-09-09', 1, 1),
(10, '2024-09-09 23:08:27.337631', NULL, '2024-09-09', 1, 1);
/*!40000 ALTER TABLE `cesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condominio`
--

DROP TABLE IF EXISTS `condominio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condominio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `endereco_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmrvh8yxjkt48fs0mdqu1hkd8f` (`endereco_id`),
  CONSTRAINT `FKmrvh8yxjkt48fs0mdqu1hkd8f` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13;
/*!40101 SET character_set_client = @saved_cs_client */;



--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` (`id`, `criado_em`, `modificado_em`, `bairro`, `cep`, `logradouro`, `numero`) VALUES
(1, '2024-09-09 23:11:53.934370', NULL, 'Praça da Sé', '01001-000', '2', NULL),
(2, '2024-09-10 14:00:00.000000', NULL, 'Avenida Paulista', '01002-000', '100', 'Centro'),
(3, '2024-09-11 15:00:00.000000', NULL, 'Rua Augusta', '01415-000', '200', 'Jardins'),
(4, '2024-09-12 16:00:00.000000', NULL, 'Rua Ibirapuera', '04523-000', '300', 'Moema'),
(5, '2024-09-13 17:00:00.000000', NULL, 'Rua Morumbi', '05612-000', '400', 'Morumbi'),
(6, '2024-09-14 18:00:00.000000', NULL, 'Rua Pinheiros', '05423-000', '500', 'Pinheiros'),
(7, '2024-09-15 19:00:00.000000', NULL, 'Rua Aspicuelta', '05432-000', '600', 'Vila Madalena'),
(8, '2024-09-16 20:00:00.000000', NULL, 'Avenida Berrini', '04545-000', '700', 'Brooklin'),
(9, '2024-09-17 21:00:00.000000', NULL, 'Rua Funchal', '04549-000', '800', 'Vila Olímpia'),
(10, '2024-09-18 22:00:00.000000', NULL, 'Rua Galvão Bueno', '01503-000', '900', 'Liberdade'),
(11, '2024-09-19 23:00:00.000000', NULL, 'Avenida Jabaquara', '04101-000', '1000', 'Saúde');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_mudanca`
--

DROP TABLE IF EXISTS `historico_mudanca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_mudanca` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `data_hora` date DEFAULT NULL,
  `fk_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4od9118l7w9emuaqlfny16sjl` (`fk_usuario`),
  CONSTRAINT `FK4od9118l7w9emuaqlfny16sjl` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_mudanca`
--

LOCK TABLES `historico_mudanca` WRITE;
/*!40000 ALTER TABLE `historico_mudanca` DISABLE KEYS */;
INSERT INTO `historico_mudanca` VALUES (1,'2024-09-09 23:12:46.134173',NULL,'2024-09-09',1);
/*!40000 ALTER TABLE `historico_mudanca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metrica`
--

DROP TABLE IF EXISTS `metrica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metrica` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `qtd_casas` int DEFAULT NULL,
  `alerta_vencimento` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrica`
--

LOCK TABLES `metrica` WRITE;
/*!40000 ALTER TABLE `metrica` DISABLE KEYS */;
INSERT INTO `metrica` VALUES (1,'2024-09-09 23:12:54.939791',NULL,2,1);
/*!40000 ALTER TABLE `metrica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origem`
--

DROP TABLE IF EXISTS `origem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `origem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `auta_de_souza_rua` int DEFAULT NULL,
  `itapora` int DEFAULT NULL,
  `campanha_id` int DEFAULT NULL,
  `condominio_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`campanha_id`) REFERENCES `campanha` (`id`),
  FOREIGN KEY (`condominio_id`) REFERENCES `condominio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE origem ADD CONSTRAINT condominio_id FOREIGN KEY (condominio_id) REFERENCES condominio(id) ON DELETE CASCADE;

--
-- Dumping data for table `origem`
--

LOCK TABLES `origem` WRITE;
/*!40000 ALTER TABLE `origem` DISABLE KEYS */;
INSERT INTO `origem` (`id`, `criado_em`, `modificado_em`, `auta_de_souza_rua`, `itapora`, `campanha_id`, `condominio_id`) VALUES
(1, '2024-09-09 23:05:33.206623', NULL, 1, NULL, NULL, NULL),
(2, '2024-09-09 23:05:33.206623', NULL, NULL, 1, NULL, NULL),
(3, '2024-09-09 23:05:33.206623', NULL, NULL, NULL, 1, NULL);
/*!40000 ALTER TABLE `origem` ENABLE KEYS */;
UNLOCK TABLES;

SELECT * FROM tipo_campanha;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `qtd_unidade_medida` INT DEFAULT NULL,
  `tipo_produto_id` int DEFAULT NULL,
  `unidade_medida_id` INT DEFAULT NULL,
  FOREIGN KEY (unidade_medida_id) REFERENCES unidade_medida(id),
  PRIMARY KEY (`id`),
  KEY `FKewk0ju35x8ugkx7sq8cp1uufo` (`tipo_produto_id`),
  CONSTRAINT `FKewk0ju35x8ugkx7sq8cp1uufo` FOREIGN KEY (`tipo_produto_id`) REFERENCES `tipo_produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Table structure for table `produto_cesta`
--

DROP TABLE IF EXISTS `produto_cesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_cesta` (
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `tipo_cesta_id` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `qtd_produto` int DEFAULT NULL,
  KEY `FKqmke10iymj506rxt78wjii7lw` (`tipo_cesta_id`),
  KEY `FK5iiw7hnnc1bn04efv7sx507fr` (`produto_id`),
  CONSTRAINT `FK5iiw7hnnc1bn04efv7sx507fr` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  CONSTRAINT `FKqmke10iymj506rxt78wjii7lw` FOREIGN KEY (`tipo_cesta_id`) REFERENCES `tipo_cesta` (`id`)
) ENGINE=InnoDB;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_cesta`
--

LOCK TABLES `produto_cesta` WRITE;
/*!40000 ALTER TABLE `produto_cesta` DISABLE KEYS */;
/*!40000 ALTER TABLE `produto_cesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_unitario`
--

DROP TABLE IF EXISTS `produto_unitario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_unitario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `data_validade` date DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `ativo` bit(1) NOT NULL,
  `vencido` TINYINT(1),
  `conforme` tinyint DEFAULT NULL,
  `cesta_id` int DEFAULT NULL,
  `metrica_id` int DEFAULT NULL,
  `origem_id` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `unidade_medida_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnnkcai27agneqd8mdyl5y9bk2` (`cesta_id`),
  KEY `FKirt2en2o27xfkdgvrqll163r0` (`metrica_id`),
  KEY `FKf6alb3snb67rmemou95g7ydgc` (`origem_id`),
  KEY `FKhd96i7ytrfbymtc4bg9w9qd6o` (`produto_id`),
  KEY `FK9prt9pccc77ci76lfwylix63j` (`unidade_medida_id`),
  CONSTRAINT `FK9prt9pccc77ci76lfwylix63j` FOREIGN KEY (`unidade_medida_id`) REFERENCES `unidade_medida` (`id`),
  CONSTRAINT `FKf6alb3snb67rmemou95g7ydgc` FOREIGN KEY (`origem_id`) REFERENCES `origem` (`id`),
  CONSTRAINT `FKhd96i7ytrfbymtc4bg9w9qd6o` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  CONSTRAINT `FKirt2en2o27xfkdgvrqll163r0` FOREIGN KEY (`metrica_id`) REFERENCES `metrica` (`id`),
  CONSTRAINT `FKnnkcai27agneqd8mdyl5y9bk2` FOREIGN KEY (`cesta_id`) REFERENCES `cesta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE produto_unitario 
ADD CONSTRAINT produto_id
FOREIGN KEY (produto_id) REFERENCES produto(id) 
ON DELETE CASCADE;

--
-- Dumping data for table `produto_unitario`
--
SELECT * FROM produto;
LOCK TABLES `produto_unitario` WRITE;
/*!40000 ALTER TABLE `produto_unitario` DISABLE KEYS */;
-- inserir produtos unitários aqui
/*!40000 ALTER TABLE `produto_unitario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_cesta`
--

DROP TABLE IF EXISTS `tipo_cesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_cesta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cesta`
--

LOCK TABLES `tipo_cesta` WRITE;
/*!40000 ALTER TABLE `tipo_cesta` DISABLE KEYS */;
-- Inserindo tipos de cestas adicionais
INSERT INTO `tipo_cesta` (`id`, `criado_em`, `modificado_em`, `nome`) VALUES
(1, '2024-09-10 10:00:00', NULL, 'Básica');
/*!40000 ALTER TABLE `tipo_cesta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_produto`
--
DROP TABLE IF EXISTS `tipo_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_produto`
--

LOCK TABLES `tipo_produto` WRITE;
/*!40000 ALTER TABLE `tipo_produto` DISABLE KEYS */;
INSERT INTO `tipo_produto` (`id`, `criado_em`, `modificado_em`, `nome`) VALUES
(NULL, '2024-09-10 09:00:00', NULL, 'Alimento');
/*!40000 ALTER TABLE `tipo_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidade_medida`
--

DROP TABLE IF EXISTS `unidade_medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidade_medida` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade_medida`
--

LOCK TABLES `unidade_medida` WRITE;
/*!40000 ALTER TABLE `unidade_medida` DISABLE KEYS */;
INSERT INTO `unidade_medida` (`id`, `criado_em`, `modificado_em`, `nome`) VALUES
(1, '2024-09-10 10:30:00', NULL, 'L'),
(2, '2024-09-10 10:35:00', NULL, 'Kg');
/*!40000 ALTER TABLE `unidade_medida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo_usuario` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

-- VIEWS


DROP TABLE IF EXISTS v_produto_unitario_qtd_ativo_por_mes;
DROP VIEW IF EXISTS v_produto_unitario_qtd_ativo_por_mes;
CREATE VIEW v_produto_unitario_qtd_ativo_por_mes AS
SELECT
    ROW_NUMBER() OVER (ORDER BY DATE(pu.criado_em)) AS id,
    DATE(pu.criado_em) AS criado_em,
    COUNT(*) AS qtd,
    pu.produto_id
FROM
    produto_unitario pu
GROUP BY
    DATE(pu.criado_em),
    pu.produto_id
ORDER BY
    DATE(pu.criado_em);

DROP TABLE IF EXISTS v_produto_unitario_qtd_vencido_por_mes;
DROP VIEW IF EXISTS v_produto_unitario_qtd_vencido_por_mes;
CREATE VIEW v_produto_unitario_qtd_vencido_por_mes AS
SELECT
    ROW_NUMBER() OVER (ORDER BY DATE(pu.data_validade)) AS id,
    DATE(pu.data_validade) AS data_validade,
    COUNT(*) AS qtd,
    pu.produto_id
FROM
    produto_unitario pu
WHERE
    pu.vencido = 1
GROUP BY
    DATE(pu.data_validade),
    pu.produto_id
ORDER BY
    DATE(pu.data_validade);

DROP TABLE IF EXISTS v_produto_unitario_vencimento_15_e_30_dias;
DROP VIEW IF EXISTS v_produto_unitario_vencimento_15_e_30_dias;
CREATE VIEW v_produto_unitario_vencimento_15_e_30_dias AS
SELECT
    (
        SELECT
            COUNT(*)
        FROM
            produto_unitario pu
        WHERE
            pu.data_validade BETWEEN CURDATE() AND CURDATE() + INTERVAL 15 DAY
    ) AS vencimento15,
    (
        SELECT
            COUNT(*)
        FROM
            produto_unitario pu
        WHERE
        pu.data_validade BETWEEN (CURDATE() + INTERVAL 16 DAY) AND (CURDATE() + INTERVAL 42 DAY)
    ) AS vencimento30;

DROP TABLE IF EXISTS v_produto_unitario_vencido_arrecadado;
DROP VIEW IF EXISTS v_produto_unitario_vencido_arrecadado;
CREATE VIEW v_produto_unitario_vencido_arrecadado AS
SELECT
    p.nome,
    SUM(CASE WHEN pu.vencido = FALSE THEN 1 ELSE 0 END) AS arrecadado,
    SUM(CASE WHEN pu.conforme = FALSE THEN 1 ELSE 0 END) AS vencido
FROM
    produto_unitario pu
        JOIN produto p ON pu.produto_id = p.id
GROUP BY
    p.id;

DROP TABLE IF EXISTS v_qtd_produto_por_condominio;
DROP VIEW IF EXISTS v_qtd_produto_por_condominio;
CREATE VIEW v_qtd_produto_por_condominio AS
SELECT
    ROW_NUMBER() OVER (ORDER BY condominio.nome) AS id,
    condominio.id AS condominio_id,
    condominio.nome AS nome,
    produto_unitario.produto_id,
    COUNT(produto_unitario.id) AS qtd_produtos
FROM
    produto_unitario
    JOIN origem ON origem.id = produto_unitario.origem_id
    JOIN condominio ON condominio.id = origem.condominio_id
GROUP BY
    condominio.id, produto_unitario.produto_id
ORDER BY
    condominio.nome;

DROP TABLE IF EXISTS v_qtd_produtos_n_conforme_por_condominio;
DROP VIEW IF EXISTS v_qtd_produtos_n_conforme_por_condominio;
CREATE VIEW v_qtd_produtos_n_conforme_por_condominio AS
SELECT
    ROW_NUMBER() OVER (ORDER BY condominio.nome) AS id,
    condominio.id AS condominio_id,
    condominio.nome AS nome_condominio,
    COUNT(produto_unitario.conforme) AS qtd_produtos
FROM
    produto_unitario
    JOIN origem ON origem.id = produto_unitario.origem_id
    JOIN condominio ON condominio.id = origem.condominio_id
WHERE
    produto_unitario.conforme = 1
GROUP BY
    condominio.id
ORDER BY
    condominio.nome;

DROP TABLE IF EXISTS v_qtd_produtos_vencidos_por_condominio;
DROP VIEW IF EXISTS v_qtd_produtos_vencidos_por_condominio;
CREATE VIEW v_qtd_produtos_vencidos_por_condominio AS
SELECT
    ROW_NUMBER() OVER (ORDER BY condominio.id) AS id,
    condominio.id AS condominio_id,
    condominio.nome AS nome_condominio,
    COUNT(produto_unitario.id) AS qtd_vencidos
FROM
    produto_unitario
    JOIN origem ON origem.id = produto_unitario.origem_id
    JOIN condominio ON condominio.id = origem.condominio_id
WHERE
    produto_unitario.data_validade < CURDATE()
GROUP BY
    condominio.id
ORDER BY
    condominio.id;

DROP TABLE IF EXISTS v_qtd_discrepancia_condominios;
DROP VIEW IF EXISTS v_qtd_discrepancia_condominios;
CREATE VIEW v_qtd_discrepancia_condominios AS
SELECT
    condominio.nome AS nome_condominio,
    produto_unitario.nome AS nome_produto,
    COUNT(CASE WHEN produto_unitario.conforme = 0 THEN 1 ELSE NULL END) AS qtd_conforme,
    COUNT(CASE WHEN produto_unitario.conforme = 1 THEN 1 ELSE NULL END) AS qtd_nao_conforme,
    COUNT(CASE WHEN produto_unitario.conforme = 0 THEN 1 ELSE NULL END) AS discrepancia
FROM
    produto_unitario
        JOIN origem ON origem.id = produto_unitario.origem_id
        JOIN condominio ON condominio.id = origem.condominio_id
GROUP BY
    condominio.id, produto_unitario.nome
ORDER BY
    discrepancia DESC
LIMIT 4;

DROP TABLE IF EXISTS v_total_produtos_arrecadados_por_mes;
DROP VIEW IF EXISTS v_total_produtos_arrecadados_por_mes;
CREATE VIEW v_total_produtos_arrecadados_por_mes AS
SELECT
    DATE(produto_unitario.criado_em) AS criado_em,
    COUNT(produto_unitario.id) AS count
FROM
    produto_unitario
        JOIN origem ON origem.id = produto_unitario.origem_id
        JOIN condominio ON condominio.id = origem.condominio_id
GROUP BY
    DATE(produto_unitario.criado_em)
ORDER BY
    criado_em;

DROP TABLE IF EXISTS v_total_produtos_arrecadados_por_mes_condominio;
DROP VIEW IF EXISTS v_total_produtos_arrecadados_por_mes_condominio;
CREATE VIEW v_total_produtos_arrecadados_por_mes_condominio AS
SELECT
    condominio.id AS condominio_id,
    DATE(produto_unitario.criado_em) AS criado_em,
    COUNT(produto_unitario.id) AS count
FROM
    produto_unitario
        JOIN origem ON origem.id = produto_unitario.origem_id
        JOIN condominio ON condominio.id = origem.condominio_id
WHERE
    DATE(produto_unitario.criado_em) = (
        SELECT DATE(MAX(criado_em))
        FROM produto_unitario
    )
GROUP BY
    DATE(produto_unitario.criado_em), condominio.id
ORDER BY
    condominio.id;

DROP TABLE IF EXISTS v_qtd_produtos_por_nome_condominio;
DROP VIEW IF EXISTS v_qtd_produtos_por_nome_condominio;
CREATE VIEW v_qtd_produtos_por_nome_condominio AS
SELECT
    ROW_NUMBER() OVER (ORDER BY condominio.nome, DATE(produto_unitario.criado_em)) AS id,
    condominio.nome AS nome_condominio,
    DATE(produto_unitario.criado_em) AS criado_em,
    COUNT(produto_unitario.id) AS count
FROM
    produto_unitario
    JOIN origem ON origem.id = produto_unitario.origem_id
    JOIN condominio ON condominio.id = origem.condominio_id
GROUP BY
    condominio.nome, DATE(produto_unitario.criado_em)
ORDER BY
    condominio.nome, criado_em;

DROP TABLE IF EXISTS v_qtd_total_alimentos_arrecadados_por_mes;
DROP VIEW IF EXISTS v_qtd_total_alimentos_arrecadados_por_mes;
CREATE VIEW v_qtd_total_alimentos_arrecadados_por_mes AS
SELECT
    ROW_NUMBER() OVER (ORDER BY DATE(data_campanha)) AS id,
    SUM(qtd_arrecadada) AS qtd_arrecadada,
    DATE(data_campanha) AS data_campanha
FROM
    campanha
GROUP BY DATE(data_campanha)
ORDER BY data_campanha;

DROP TABLE IF EXISTS v_qtd_produto_por_campanha;
DROP VIEW IF EXISTS v_qtd_produto_por_campanha;
CREATE VIEW v_qtd_produto_por_campanha AS
SELECT
    ROW_NUMBER() OVER (ORDER BY campanha.local_campanha) AS id,
    campanha.id AS campanha_id,
    campanha.local_campanha AS nome,
    produto_unitario.produto_id,
    COUNT(produto_unitario.id) AS qtd_produtos
FROM
    produto_unitario
    JOIN origem ON origem.id = produto_unitario.origem_id
    JOIN campanha ON campanha.id = origem.campanha_id
GROUP BY
    campanha.id, produto_unitario.produto_id
ORDER BY
    campanha.local_campanha;

DROP TABLE IF EXISTS v_qtd_produtos_vencidos_por_campanha;
DROP VIEW IF EXISTS v_qtd_produtos_vencidos_por_campanha;
CREATE VIEW v_qtd_produtos_vencidos_por_campanha AS
SELECT
    ROW_NUMBER() OVER (ORDER BY campanha.id) AS id,
    campanha.id AS campanha_id,
    campanha.local_campanha AS nome,
    produto_unitario.produto_id,
    COUNT(produto_unitario.id) AS qtd_produtos_vencidos
FROM
    produto_unitario
    JOIN origem ON origem.id = produto_unitario.origem_id
    JOIN campanha ON campanha.id = origem.campanha_id
WHERE
    produto_unitario.vencido = TRUE
GROUP BY
    campanha.id, produto_unitario.produto_id
ORDER BY
    campanha.id;

DROP TABLE IF EXISTS v_qtd_doacoes_por_campanha;
DROP VIEW IF EXISTS v_qtd_doacoes_por_campanha;
CREATE VIEW v_qtd_doacoes_por_campanha AS
SELECT
    ROW_NUMBER() OVER (ORDER BY campanha.local_campanha, DATE(campanha.data_campanha)) AS id,
    SUM(campanha.qtd_arrecadada) AS qtd_arrecadada,
    campanha.local_campanha AS nome,
    DATE(campanha.data_campanha) AS data_campanha
FROM
    campanha
GROUP BY campanha.local_campanha, DATE(campanha.data_campanha)
ORDER BY nome, data_campanha;

DROP TABLE IF EXISTS v_produtos_conforme_nao_conforme_campanhas;
DROP VIEW IF EXISTS v_produtos_conforme_nao_conforme_campanhas;
CREATE VIEW v_produtos_conforme_nao_conforme_campanhas AS
SELECT
    c.local_campanha AS nome,
    SUM(CASE WHEN pu.vencido = FALSE THEN 1 ELSE 0 END) AS conforme,
    SUM(CASE WHEN pu.vencido = TRUE THEN 1 ELSE 0 END) AS nao_conforme
FROM
    produto_unitario pu
        JOIN produto p ON pu.produto_id = p.id
        JOIN origem o ON pu.origem_id = o.id
        JOIN campanha c ON o.campanha_id = c.id
GROUP BY
    c.id;


--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`, `criado_em`, `modificado_em`, `nome`, `email`, `senha`, `tipo_usuario`) VALUES
(1, '2024-09-09 23:07:15.644766', NULL, 'Fulvia Cristina', 'fulvia@itapora.com', '$2a$10$UCvQttcLir5DqmruwDd1rOTgnJcdvZEiepEcC0jnKQpcDaXZ7DgwK', 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
