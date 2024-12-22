-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: tech_for_good
-- ------------------------------------------------------
-- Server version	8.0.35
-- drop database if exists tech_for_good;
-- create database tech_for_good;
use tech_for_good;

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
(1, '2024-09-09 23:07:56.152706', NULL, 'Escola Viva'),
(2, '2024-09-10 12:00:00.000000', NULL, 'Parque Central'),
(3, '2024-09-11 13:30:00.000000', NULL, 'Praça das Flores'),
(4, '2024-09-12 14:45:00.000000', NULL, 'Rua das Acácias'),
(5, '2024-09-13 10:00:00.000000', NULL, 'Centro Comunitário'),
(6, '2024-09-14 16:00:00.000000', NULL, 'Estádio Municipal'),
(7, '2024-09-15 18:30:00.000000', NULL, 'Shopping Central'),
(8, '2024-09-16 08:15:00.000000', NULL, 'Teatro Principal'),
(9, '2024-09-17 09:45:00.000000', NULL, 'Ginásio Municipal'),
(10, '2024-09-18 11:20:00.000000', NULL, 'Escola Maria Luz'),
(11, '2024-09-19 12:35:00.000000', NULL, 'Universidade Federal');
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campanha`
--

LOCK TABLES `campanha` WRITE;
/*!40000 ALTER TABLE `campanha` DISABLE KEYS */;
INSERT INTO `campanha` (`id`, `criado_em`, `modificado_em`, `local_campanha`, `data_campanha`, `qtd_arrecadada`, `meta`) VALUES
(1, '2024-09-09 23:07:56.152706', NULL, 'Escola Viva', '2024-09-09 23:07:20.909000', 100, 10),
(2, '2024-09-10 12:00:00.000000', NULL, 'Parque Central', '2024-09-15 12:00:00.000000', 150, 30),
(3, '2024-09-11 13:30:00.000000', NULL, 'Praça das Flores', '2024-09-20 15:00:00.000000', 200, 70),
(4, '2024-09-12 14:45:00.000000', NULL, 'Rua das Acácias', '2024-09-25 16:00:00.000000', 300, 120),
(5, '2024-09-13 10:00:00.000000', NULL, 'Centro Comunitário', '2024-09-28 18:00:00.000000', 400, 90),
(6, '2024-09-14 16:00:00.000000', NULL, 'Estádio Municipal', '2024-09-30 10:00:00.000000', 500, 200),
(7, '2024-09-15 18:30:00.000000', NULL, 'Shopping Central', '2024-10-02 11:00:00.000000', 600, 250),
(8, '2024-09-16 08:15:00.000000', NULL, 'Teatro Principal', '2024-10-05 12:00:00.000000', 700, 180),
(9, '2024-09-17 09:45:00.000000', NULL, 'Ginásio Municipal', '2024-10-07 09:00:00.000000', 800, 320),
(10, '2024-09-18 11:20:00.000000', NULL, 'Escola Maria Luz', '2024-10-10 13:00:00.000000', 900, 400),
(11, '2024-09-19 12:35:00.000000', NULL, 'Universidade Federal', '2024-10-12 14:00:00.000000', 1000, 500);
/*!40000 ALTER TABLE `campanha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cesta`
--

DROP TABLE IF EXISTS `cesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cesta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_lote` int DEFAULT NULL,
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
INSERT INTO `cesta` (`id`, `id_lote`, `criado_em`, `modificado_em`, `data_montagem`, `qtd_cesta`, `tipo_cesta_id`) VALUES
(1, NULL, '2024-09-09 23:08:21.205385', NULL, '2024-09-09', 1, 1),
(2, NULL, '2024-09-09 23:08:24.201231', NULL, '2024-09-09', 1, 1),
(3, NULL, '2024-09-09 23:08:24.560290', NULL, '2024-09-09', 1, 1),
(4, NULL, '2024-09-09 23:08:24.959338', NULL, '2024-09-09', 1, 1),
(5, NULL, '2024-09-09 23:08:25.331893', NULL, '2024-09-09', 1, 1),
(6, NULL, '2024-09-09 23:08:25.729137', NULL, '2024-09-09', 1, 1),
(7, NULL, '2024-09-09 23:08:26.108920', NULL, '2024-09-09', 1, 1),
(8, NULL, '2024-09-09 23:08:26.473415', NULL, '2024-09-09', 1, 1),
(9, NULL, '2024-09-09 23:08:26.839215', NULL, '2024-09-09', 1, 1),
(10, NULL, '2024-09-09 23:08:27.337631', NULL, '2024-09-09', 1, 1);
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
-- Dumping data for table `condominio`
--

LOCK TABLES `condominio` WRITE;
/*!40000 ALTER TABLE `condominio` DISABLE KEYS */;
INSERT INTO `condominio` (`id`, `criado_em`, `modificado_em`, `nome`, `endereco_id`) VALUES
(4, '2024-09-12 13:00:00.000000', NULL, 'Jardim das Flores', 4),
(5, '2024-09-13 14:00:00.000000', NULL, 'Boa Vista', 5),
(6, '2024-09-14 15:00:00.000000', NULL, 'Monte Verde', 6),
(7, '2024-09-15 16:00:00.000000', NULL, 'Nova Era', 7),
(8, '2024-09-16 17:00:00.000000', NULL, 'Bela Vista', 8),
(9, '2024-09-17 18:00:00.000000', NULL, 'Vila Verde', 9),
(10, '2024-09-18 19:00:00.000000', NULL, 'Recanto Feliz', 10),
(11, '2024-09-19 20:00:00.000000', NULL, 'Sol Poente', 11);
/*!40000 ALTER TABLE `condominio` ENABLE KEYS */;
UNLOCK TABLES;

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
  KEY `FK6yf8q1orr09fw76aoy70gl7g6` (`campanha_id`),
  KEY `FKrcnkom85yvicud76g9kj93xwj` (`condominio_id`),
  CONSTRAINT `FK6yf8q1orr09fw76aoy70gl7g6` FOREIGN KEY (`campanha_id`) REFERENCES `campanha` (`id`),
  CONSTRAINT `FKrcnkom85yvicud76g9kj93xwj` FOREIGN KEY (`condominio_id`) REFERENCES `condominio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origem`
--

LOCK TABLES `origem` WRITE;
/*!40000 ALTER TABLE `origem` DISABLE KEYS */;
INSERT INTO `origem` (`id`, `criado_em`, `modificado_em`, `auta_de_souza_rua`, `itapora`, `campanha_id`, `condominio_id`) VALUES
(1, '2024-09-09 23:05:33.206623', NULL, 1, NULL, NULL, NULL),
(2, '2024-09-09 23:05:33.206623', NULL, NULL, 1, NULL, NULL),
(3, '2024-09-09 23:05:33.206623', NULL, NULL, NULL, 1, NULL),
(4, '2024-09-09 23:05:33.206623', NULL, NULL, NULL, NULL, 4);
/*!40000 ALTER TABLE `origem` ENABLE KEYS */;
UNLOCK TABLES;

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
  `tipo_produto_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKewk0ju35x8ugkx7sq8cp1uufo` (`tipo_produto_id`),
  CONSTRAINT `FKewk0ju35x8ugkx7sq8cp1uufo` FOREIGN KEY (`tipo_produto_id`) REFERENCES `tipo_produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`id`, `criado_em`, `modificado_em`, `nome`, `tipo_produto_id`) VALUES
(1, '2024-09-09 23:01:31.078407', NULL, 'Óleo', 1),
(2, '2024-09-09 23:02:47.597533', NULL, 'Farinha', 5);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `produto_unitario`
--

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
(NULL, '2024-09-10 10:00:00', NULL, 'Básica');
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