-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: tech_for_good
-- ------------------------------------------------------
-- Server version	8.0.40

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

DROP TABLE IF EXISTS `campanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campanha` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `data_campanha` date DEFAULT NULL,
  `local_campanha` varchar(255) DEFAULT NULL,
  `meta` int DEFAULT NULL,
  `qtd_arrecadada` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `tipo_campanha_id_tipo_campanha` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3s9vhoil5vmm7bw7f7q9xq01h` (`produto_id`),
  KEY `FKbka7xa1vw3kb7owd2s5bphope` (`tipo_campanha_id_tipo_campanha`),
  CONSTRAINT `FK3s9vhoil5vmm7bw7f7q9xq01h` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  CONSTRAINT `FKbka7xa1vw3kb7owd2s5bphope` FOREIGN KEY (`tipo_campanha_id_tipo_campanha`) REFERENCES `tipo_campanha` (`id_tipo_campanha`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campanha`
--

LOCK TABLES `campanha` WRITE;
/*!40000 ALTER TABLE `campanha` DISABLE KEYS */;
INSERT INTO `campanha` VALUES (1,'2024-12-02 20:20:34.317785',NULL,'2024-01-01','Escola VIva',70,100,2,1),(2,'2024-12-02 20:25:55.605069',NULL,'2024-02-01','Escola Viva',70,47,2,1),(3,'2024-12-02 20:26:19.592496',NULL,'2024-04-01','Escola Viva',50,93,2,1),(4,'2024-12-02 20:26:45.802507',NULL,'2024-05-01','Escola Viva',70,95,2,1),(5,'2024-12-02 20:27:04.448869',NULL,'2024-06-15','Escola Viva',75,91,2,1),(6,'2024-12-02 20:27:39.015568',NULL,'2024-07-18','Escola Viva',70,60,2,1),(7,'2024-12-02 20:20:34.317785',NULL,'2024-01-01','Escola Juventude',80,55,2,1),(8,'2024-12-02 20:25:55.605069',NULL,'2024-02-01','Escola Juventude',60,72,2,1),(9,'2024-12-02 20:26:19.592496',NULL,'2024-04-01','Escola Juventude',90,43,2,1),(10,'2024-12-02 20:26:45.802507',NULL,'2024-05-01','Escola Juventude',85,98,2,1),(11,'2024-12-02 20:27:04.448869',NULL,'2024-06-15','Escola Juventude',65,75,2,1),(12,'2024-12-02 20:27:39.015568',NULL,'2024-07-18','Escola Juventude',95,58,2,1),(13,'2024-12-02 20:20:34.317785',NULL,'2024-01-01','Escola Esperança',85,65,2,1),(14,'2024-12-02 20:25:55.605069',NULL,'2024-02-01','Escola Esperança',75,48,2,1),(15,'2024-12-02 20:26:19.592496',NULL,'2024-04-01','Escola Esperança',90,82,2,1),(16,'2024-12-02 20:26:45.802507',NULL,'2024-05-01','Escola Esperança',80,67,2,1),(17,'2024-12-02 20:27:04.448869',NULL,'2024-06-15','Escola Esperança',70,90,2,1),(18,'2024-12-02 20:27:39.015568',NULL,'2024-07-18','Escola Esperança',95,54,2,1);
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
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `data_montagem` date DEFAULT NULL,
  `lote` varchar(255) DEFAULT NULL,
  `tipo_cesta_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKio679tylghsreicb7kv5ekb23` (`tipo_cesta_id`),
  CONSTRAINT `FKio679tylghsreicb7kv5ekb23` FOREIGN KEY (`tipo_cesta_id`) REFERENCES `tipo_cesta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cesta`
--

LOCK TABLES `cesta` WRITE;
/*!40000 ALTER TABLE `cesta` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condominio`
--

LOCK TABLES `condominio` WRITE;
/*!40000 ALTER TABLE `condominio` DISABLE KEYS */;
INSERT INTO `condominio` VALUES (1,'2024-12-02 20:32:57.193737',NULL,'Condominio Azul',1),(2,'2024-12-02 20:34:37.693334',NULL,'Condominio Verde',2),(3,'2024-12-02 20:35:01.260969',NULL,'Condominio Vermelho',3),(4,'2024-12-02 20:38:10.539341',NULL,'Condominio Rosa',4),(5,'2024-12-02 20:39:22.936746',NULL,'Condominio Cinza',5);
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
  `bairro` varchar(255) DEFAULT NULL,
  `cep` varchar(255) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'2024-12-02 20:32:57.098987',NULL,NULL,'06694750','Rua Jurupis','10'),(2,'2024-12-02 20:34:37.657379',NULL,NULL,'06670140','Alameda das Figueiras','31'),(3,'2024-12-02 20:35:01.223882',NULL,NULL,'06663665','Rua dos Piauienses','8800'),(4,'2024-12-02 20:38:10.509148',NULL,NULL,'06660210','Rua Libéria','754'),(5,'2024-12-02 20:39:22.904521',NULL,NULL,'06680610','Rua Rio Amazonas','445');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_mudanca`
--

LOCK TABLES `historico_mudanca` WRITE;
/*!40000 ALTER TABLE `historico_mudanca` DISABLE KEYS */;
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
  `alerta_vencimento` int DEFAULT NULL,
  `qtd_casas` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metrica`
--

LOCK TABLES `metrica` WRITE;
/*!40000 ALTER TABLE `metrica` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origem`
--

LOCK TABLES `origem` WRITE;
/*!40000 ALTER TABLE `origem` DISABLE KEYS */;
INSERT INTO `origem` VALUES (1,'2024-12-02 20:13:23.697786',NULL,1,NULL,NULL,NULL),(2,'2024-12-02 20:13:30.929155',NULL,NULL,1,NULL,NULL),(3,'2024-12-02 20:42:11.076144',NULL,NULL,NULL,1,NULL),(4,'2024-12-02 20:42:16.587780',NULL,NULL,NULL,2,NULL),(5,'2024-12-02 20:42:19.568865',NULL,NULL,NULL,3,NULL),(6,'2024-12-02 20:42:27.087884',NULL,NULL,NULL,4,NULL),(7,'2024-12-02 20:42:32.485670',NULL,NULL,NULL,5,NULL),(8,'2024-12-02 20:42:38.036816',NULL,NULL,NULL,6,NULL),(9,'2024-12-02 20:42:58.537512',NULL,NULL,NULL,NULL,1),(10,'2024-12-02 20:43:02.823079',NULL,NULL,NULL,NULL,2),(11,'2024-12-02 20:43:06.110306',NULL,NULL,NULL,NULL,3),(12,'2024-12-02 20:43:09.923697',NULL,NULL,NULL,NULL,4),(13,'2024-12-02 20:43:14.247684',NULL,NULL,NULL,NULL,5),(14,'2024-12-02 20:59:04.884144',NULL,NULL,NULL,7,NULL),(15,'2024-12-02 20:59:09.016987',NULL,NULL,NULL,8,NULL),(16,'2024-12-02 20:59:12.517321',NULL,NULL,NULL,9,NULL),(17,'2024-12-02 20:59:17.764658',NULL,NULL,NULL,10,NULL),(18,'2024-12-02 20:59:20.481511',NULL,NULL,NULL,11,NULL),(19,'2024-12-02 20:59:23.667729',NULL,NULL,NULL,12,NULL),(20,'2024-12-02 20:59:27.043477',NULL,NULL,NULL,13,NULL),(21,'2024-12-02 20:59:30.687174',NULL,NULL,NULL,14,NULL),(22,'2024-12-02 20:59:34.011547',NULL,NULL,NULL,15,NULL),(23,'2024-12-02 20:59:37.332734',NULL,NULL,NULL,16,NULL),(24,'2024-12-02 20:59:42.214812',NULL,NULL,NULL,17,NULL),(25,'2024-12-02 20:59:45.550999',NULL,NULL,NULL,18,NULL);
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
  `qtd_unidade_medida` int NOT NULL,
  `tipo_produto_id` int DEFAULT NULL,
  `unidade_medida_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKewk0ju35x8ugkx7sq8cp1uufo` (`tipo_produto_id`),
  KEY `FKjr47qxuim8x2c4po42keccqdd` (`unidade_medida_id`),
  CONSTRAINT `FKewk0ju35x8ugkx7sq8cp1uufo` FOREIGN KEY (`tipo_produto_id`) REFERENCES `tipo_produto` (`id`),
  CONSTRAINT `FKjr47qxuim8x2c4po42keccqdd` FOREIGN KEY (`unidade_medida_id`) REFERENCES `unidade_medida` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'2024-12-02 20:03:00.741484',NULL,'Arroz',5,1,1),(2,'2024-12-02 20:03:16.462755',NULL,'Feijão',2,1,1),(3,'2024-12-02 20:03:42.289873',NULL,'Óleo',1,1,2),(4,'2024-12-02 20:04:03.067052',NULL,'Molho de Tomate',1,1,3);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto_cesta`
--

DROP TABLE IF EXISTS `produto_cesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto_cesta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `qtd_produto` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `tipo_cesta_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5iiw7hnnc1bn04efv7sx507fr` (`produto_id`),
  KEY `FKmda4cq35dlbytsx23nmkfnkeg` (`tipo_cesta_id`),
  CONSTRAINT `FK5iiw7hnnc1bn04efv7sx507fr` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  CONSTRAINT `FKmda4cq35dlbytsx23nmkfnkeg` FOREIGN KEY (`tipo_cesta_id`) REFERENCES `tipo_cesta` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `ativo` bit(1) NOT NULL,
  `conforme` bit(1) NOT NULL,
  `data_validade` date DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `vencido` bit(1) NOT NULL,
  `cesta_id` int DEFAULT NULL,
  `metrica_id` int DEFAULT NULL,
  `origem_id` int DEFAULT NULL,
  `produto_id` int DEFAULT NULL,
  `rota_id` int DEFAULT NULL,
  `unidade_medida_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnnkcai27agneqd8mdyl5y9bk2` (`cesta_id`),
  KEY `FKirt2en2o27xfkdgvrqll163r0` (`metrica_id`),
  KEY `FKf6alb3snb67rmemou95g7ydgc` (`origem_id`),
  KEY `FKhd96i7ytrfbymtc4bg9w9qd6o` (`produto_id`),
  KEY `FKe0wvgu76v5ll3k4wdnto6oql4` (`rota_id`),
  KEY `FK9prt9pccc77ci76lfwylix63j` (`unidade_medida_id`),
  CONSTRAINT `FK9prt9pccc77ci76lfwylix63j` FOREIGN KEY (`unidade_medida_id`) REFERENCES `unidade_medida` (`id`),
  CONSTRAINT `FKe0wvgu76v5ll3k4wdnto6oql4` FOREIGN KEY (`rota_id`) REFERENCES `rota` (`id`),
  CONSTRAINT `FKf6alb3snb67rmemou95g7ydgc` FOREIGN KEY (`origem_id`) REFERENCES `origem` (`id`),
  CONSTRAINT `FKhd96i7ytrfbymtc4bg9w9qd6o` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  CONSTRAINT `FKirt2en2o27xfkdgvrqll163r0` FOREIGN KEY (`metrica_id`) REFERENCES `metrica` (`id`),
  CONSTRAINT `FKnnkcai27agneqd8mdyl5y9bk2` FOREIGN KEY (`cesta_id`) REFERENCES `cesta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1328 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto_unitario`
--

LOCK TABLES `produto_unitario` WRITE;
/*!40000 ALTER TABLE `produto_unitario` DISABLE KEYS */;
INSERT INTO `produto_unitario` VALUES (1,'2026-11-07 03:18:27.000000',NULL,_binary '',_binary '\0','2026-11-07','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(2,'2024-08-01 15:15:33.000000',NULL,_binary '',_binary '','2024-08-23','Arroz',NULL,_binary '',NULL,NULL,9,1,NULL,1),(3,'2025-12-01 08:56:36.000000',NULL,_binary '\0',_binary '','2025-12-22','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(4,'2027-04-10 07:30:35.000000',NULL,_binary '\0',_binary '','2027-04-30','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(5,'2026-12-24 01:47:29.000000',NULL,_binary '\0',_binary '\0','2027-01-20','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(6,'2024-01-19 14:54:49.000000',NULL,_binary '\0',_binary '\0','2024-01-24','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(7,'2024-07-10 00:30:50.000000',NULL,_binary '',_binary '','2024-07-21','Arroz',NULL,_binary '',NULL,NULL,10,1,NULL,1),(8,'2027-04-20 22:44:06.000000',NULL,_binary '\0',_binary '\0','2027-05-04','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(9,'2027-04-21 23:13:32.000000',NULL,_binary '\0',_binary '','2027-05-03','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(10,'2026-03-24 17:06:27.000000',NULL,_binary '',_binary '\0','2026-04-21','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(11,'2027-06-08 02:01:35.000000',NULL,_binary '',_binary '','2027-06-17','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(12,'2026-09-25 05:07:39.000000',NULL,_binary '\0',_binary '\0','2026-09-29','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(13,'2026-11-01 06:00:20.000000',NULL,_binary '\0',_binary '','2026-11-29','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(14,'2024-09-25 06:38:11.000000',NULL,_binary '',_binary '\0','2024-09-28','Arroz',NULL,_binary '',NULL,NULL,17,1,NULL,1),(15,'2027-06-13 08:58:03.000000',NULL,_binary '\0',_binary '\0','2027-06-30','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(16,'2025-04-19 14:27:21.000000',NULL,_binary '\0',_binary '\0','2025-05-11','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(17,'2024-12-03 00:53:19.000000',NULL,_binary '\0',_binary '\0','2024-12-11','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(18,'2027-01-21 20:55:19.000000',NULL,_binary '\0',_binary '','2027-01-31','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(19,'2024-11-20 03:10:25.000000',NULL,_binary '',_binary '','2024-12-17','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(20,'2024-11-03 16:50:31.000000',NULL,_binary '',_binary '\0','2024-11-25','Arroz',NULL,_binary '',NULL,NULL,23,1,NULL,1),(21,'2025-05-11 22:44:42.000000',NULL,_binary '',_binary '','2025-05-29','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(22,'2027-11-23 14:28:55.000000',NULL,_binary '\0',_binary '','2027-11-23','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(23,'2025-04-30 10:42:24.000000',NULL,_binary '\0',_binary '','2025-05-13','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(24,'2025-01-08 03:13:00.000000',NULL,_binary '',_binary '\0','2025-02-02','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(25,'2024-02-07 09:13:01.000000',NULL,_binary '',_binary '\0','2024-03-01','Arroz',NULL,_binary '',NULL,NULL,18,1,NULL,1),(26,'2024-06-02 11:19:02.000000',NULL,_binary '\0',_binary '','2024-06-27','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(27,'2027-04-23 12:07:52.000000',NULL,_binary '\0',_binary '','2027-05-05','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(28,'2025-05-16 23:25:12.000000',NULL,_binary '',_binary '\0','2025-05-17','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(29,'2025-09-26 05:02:21.000000',NULL,_binary '',_binary '\0','2025-10-03','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(30,'2024-11-13 02:08:49.000000',NULL,_binary '',_binary '','2024-11-17','Arroz',NULL,_binary '',NULL,NULL,16,1,NULL,1),(31,'2026-11-01 15:33:44.000000',NULL,_binary '\0',_binary '','2026-11-25','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(32,'2024-11-13 17:06:29.000000',NULL,_binary '',_binary '\0','2024-11-23','Arroz',NULL,_binary '',NULL,NULL,13,1,NULL,1),(33,'2026-01-09 23:48:51.000000',NULL,_binary '\0',_binary '\0','2026-02-03','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(34,'2024-09-22 06:28:08.000000',NULL,_binary '',_binary '\0','2024-10-09','Arroz',NULL,_binary '',NULL,NULL,10,1,NULL,1),(35,'2024-03-04 02:58:12.000000',NULL,_binary '\0',_binary '\0','2024-03-31','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(36,'2026-12-16 19:59:26.000000',NULL,_binary '',_binary '\0','2026-12-24','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(37,'2027-01-16 15:36:58.000000',NULL,_binary '',_binary '','2027-02-02','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(38,'2025-04-11 23:01:03.000000',NULL,_binary '',_binary '\0','2025-04-11','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(39,'2027-08-10 22:20:16.000000',NULL,_binary '',_binary '','2027-09-04','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(40,'2026-01-29 08:51:10.000000',NULL,_binary '\0',_binary '\0','2026-02-19','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(41,'2025-02-21 08:17:28.000000',NULL,_binary '',_binary '\0','2025-03-21','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(42,'2025-08-09 10:33:50.000000',NULL,_binary '',_binary '','2025-08-18','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(43,'2027-04-02 10:23:26.000000',NULL,_binary '',_binary '\0','2027-04-14','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(44,'2026-07-07 14:17:39.000000',NULL,_binary '\0',_binary '','2026-07-09','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(45,'2026-07-14 01:13:28.000000',NULL,_binary '\0',_binary '','2026-07-14','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(46,'2024-03-16 14:31:17.000000',NULL,_binary '',_binary '','2024-03-18','Arroz',NULL,_binary '',NULL,NULL,19,1,NULL,1),(47,'2026-03-27 12:41:33.000000',NULL,_binary '',_binary '\0','2026-04-05','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(48,'2026-03-27 01:37:01.000000',NULL,_binary '',_binary '\0','2026-04-10','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(49,'2026-02-08 00:32:14.000000',NULL,_binary '',_binary '','2026-02-18','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(50,'2027-02-05 23:42:34.000000',NULL,_binary '',_binary '\0','2027-02-26','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(51,'2024-07-17 21:39:36.000000',NULL,_binary '\0',_binary '','2024-08-09','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(52,'2026-08-25 03:12:11.000000',NULL,_binary '',_binary '','2026-09-21','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(53,'2025-07-15 00:51:25.000000',NULL,_binary '\0',_binary '\0','2025-07-15','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(54,'2027-06-05 08:44:40.000000',NULL,_binary '\0',_binary '\0','2027-06-06','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(55,'2025-11-09 04:14:03.000000',NULL,_binary '\0',_binary '','2025-11-11','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(56,'2025-10-23 00:26:28.000000',NULL,_binary '',_binary '','2025-11-17','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(57,'2025-10-22 01:39:39.000000',NULL,_binary '',_binary '','2025-11-12','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(58,'2024-01-31 18:32:13.000000',NULL,_binary '',_binary '','2024-02-29','Arroz',NULL,_binary '',NULL,NULL,24,1,NULL,1),(59,'2027-02-11 00:45:09.000000',NULL,_binary '',_binary '\0','2027-02-27','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(60,'2024-02-13 22:40:15.000000',NULL,_binary '',_binary '\0','2024-03-07','Arroz',NULL,_binary '',NULL,NULL,24,1,NULL,1),(61,'2025-04-03 18:12:46.000000',NULL,_binary '',_binary '','2025-04-13','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(62,'2024-07-24 04:10:37.000000',NULL,_binary '\0',_binary '','2024-07-31','Arroz',NULL,_binary '\0',NULL,NULL,3,1,NULL,1),(63,'2026-11-13 07:20:36.000000',NULL,_binary '\0',_binary '','2026-12-04','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(64,'2025-08-03 20:11:21.000000',NULL,_binary '\0',_binary '','2025-08-23','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1),(65,'2027-10-13 07:49:58.000000',NULL,_binary '',_binary '','2027-10-29','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(66,'2024-01-24 21:50:51.000000',NULL,_binary '',_binary '','2024-02-05','Arroz',NULL,_binary '',NULL,NULL,18,1,NULL,1),(67,'2024-10-21 22:53:59.000000',NULL,_binary '\0',_binary '','2024-10-31','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(68,'2024-10-29 11:27:41.000000',NULL,_binary '',_binary '\0','2024-11-18','Arroz',NULL,_binary '',NULL,NULL,5,1,NULL,1),(69,'2027-09-09 01:08:15.000000',NULL,_binary '\0',_binary '\0','2027-09-26','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(70,'2027-09-20 15:20:17.000000',NULL,_binary '\0',_binary '\0','2027-09-28','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(71,'2027-09-10 03:19:10.000000',NULL,_binary '',_binary '\0','2027-09-15','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(72,'2027-09-30 19:39:20.000000',NULL,_binary '\0',_binary '','2027-10-28','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(73,'2025-08-16 11:43:13.000000',NULL,_binary '\0',_binary '','2025-09-01','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1),(74,'2026-01-13 01:03:51.000000',NULL,_binary '',_binary '\0','2026-01-31','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(75,'2026-02-13 10:00:44.000000',NULL,_binary '\0',_binary '\0','2026-03-03','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(76,'2026-01-11 02:25:28.000000',NULL,_binary '',_binary '','2026-01-13','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(77,'2027-01-12 23:42:49.000000',NULL,_binary '',_binary '\0','2027-02-04','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1),(78,'2027-05-01 15:54:06.000000',NULL,_binary '',_binary '\0','2027-05-29','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(79,'2024-02-27 10:22:45.000000',NULL,_binary '\0',_binary '','2024-03-13','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(80,'2024-07-02 10:46:15.000000',NULL,_binary '',_binary '','2024-07-12','Arroz',NULL,_binary '',NULL,NULL,21,1,NULL,1),(81,'2024-02-26 17:17:44.000000',NULL,_binary '\0',_binary '\0','2024-03-24','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(82,'2024-05-04 02:53:23.000000',NULL,_binary '\0',_binary '\0','2024-05-28','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(83,'2024-05-14 18:20:24.000000',NULL,_binary '',_binary '\0','2024-05-29','Arroz',NULL,_binary '',NULL,NULL,9,1,NULL,1),(84,'2024-07-16 15:26:08.000000',NULL,_binary '',_binary '\0','2024-07-21','Arroz',NULL,_binary '',NULL,NULL,14,1,NULL,1),(85,'2024-10-19 08:25:56.000000',NULL,_binary '\0',_binary '','2024-10-23','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(86,'2025-02-16 18:58:34.000000',NULL,_binary '\0',_binary '\0','2025-03-01','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(87,'2026-04-08 11:45:36.000000',NULL,_binary '',_binary '\0','2026-04-11','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(88,'2025-01-20 04:06:36.000000',NULL,_binary '\0',_binary '','2025-02-14','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(89,'2027-06-03 14:37:00.000000',NULL,_binary '\0',_binary '','2027-06-13','Arroz',NULL,_binary '\0',NULL,NULL,3,1,NULL,1),(90,'2025-11-23 01:06:14.000000',NULL,_binary '',_binary '','2025-11-24','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(91,'2027-11-21 23:09:25.000000',NULL,_binary '',_binary '','2027-12-03','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(92,'2024-05-01 14:03:29.000000',NULL,_binary '',_binary '','2024-05-06','Arroz',NULL,_binary '',NULL,NULL,24,1,NULL,1),(93,'2024-06-20 19:28:03.000000',NULL,_binary '',_binary '\0','2024-06-28','Arroz',NULL,_binary '',NULL,NULL,6,1,NULL,1),(94,'2024-12-15 12:39:26.000000',NULL,_binary '',_binary '\0','2024-12-23','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(95,'2024-07-28 12:27:10.000000',NULL,_binary '\0',_binary '\0','2024-08-21','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(96,'2025-01-23 06:42:17.000000',NULL,_binary '',_binary '\0','2025-02-21','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(97,'2024-09-25 15:36:35.000000',NULL,_binary '',_binary '','2024-10-14','Arroz',NULL,_binary '',NULL,NULL,15,1,NULL,1),(98,'2027-08-14 19:49:52.000000',NULL,_binary '\0',_binary '','2027-09-05','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(99,'2026-11-08 13:42:39.000000',NULL,_binary '',_binary '','2026-11-12','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(100,'2026-02-10 01:03:46.000000',NULL,_binary '',_binary '\0','2026-02-20','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(101,'2026-07-23 14:43:24.000000',NULL,_binary '\0',_binary '','2026-07-23','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(102,'2025-01-06 20:46:23.000000',NULL,_binary '',_binary '\0','2025-01-18','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(103,'2027-11-23 12:34:09.000000',NULL,_binary '',_binary '','2027-12-06','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(104,'2025-10-29 14:03:44.000000',NULL,_binary '',_binary '\0','2025-11-12','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(105,'2024-05-21 13:28:36.000000',NULL,_binary '',_binary '','2024-06-19','Arroz',NULL,_binary '',NULL,NULL,4,1,NULL,1),(106,'2026-12-19 07:44:28.000000',NULL,_binary '\0',_binary '','2027-01-07','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(107,'2027-10-04 13:28:38.000000',NULL,_binary '',_binary '\0','2027-10-12','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(108,'2026-01-09 12:26:24.000000',NULL,_binary '\0',_binary '','2026-02-02','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(109,'2027-02-27 00:20:26.000000',NULL,_binary '',_binary '\0','2027-03-04','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(110,'2025-08-19 05:52:27.000000',NULL,_binary '',_binary '\0','2025-08-28','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(111,'2027-05-05 22:13:19.000000',NULL,_binary '\0',_binary '','2027-05-28','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(112,'2027-11-13 10:20:39.000000',NULL,_binary '\0',_binary '','2027-11-15','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(113,'2024-07-05 05:30:05.000000',NULL,_binary '',_binary '\0','2024-07-15','Arroz',NULL,_binary '',NULL,NULL,11,1,NULL,1),(114,'2027-09-25 11:07:51.000000',NULL,_binary '',_binary '\0','2027-10-07','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(115,'2026-04-04 02:34:14.000000',NULL,_binary '',_binary '','2026-04-30','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(116,'2024-09-28 15:07:40.000000',NULL,_binary '',_binary '\0','2024-10-16','Arroz',NULL,_binary '',NULL,NULL,22,1,NULL,1),(117,'2026-01-25 22:51:57.000000',NULL,_binary '\0',_binary '\0','2026-02-04','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(118,'2027-04-24 14:34:17.000000',NULL,_binary '',_binary '','2027-04-24','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(119,'2024-12-13 10:16:07.000000',NULL,_binary '\0',_binary '','2025-01-10','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(120,'2024-12-30 14:02:24.000000',NULL,_binary '\0',_binary '\0','2025-01-02','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(121,'2025-07-14 12:05:14.000000',NULL,_binary '\0',_binary '\0','2025-07-28','Arroz',NULL,_binary '\0',NULL,NULL,13,1,NULL,1),(122,'2024-02-09 15:15:55.000000',NULL,_binary '\0',_binary '','2024-02-28','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(123,'2025-04-15 06:14:29.000000',NULL,_binary '\0',_binary '','2025-04-28','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(124,'2025-11-18 16:04:15.000000',NULL,_binary '',_binary '','2025-12-03','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(125,'2026-02-24 19:47:46.000000',NULL,_binary '',_binary '\0','2026-03-21','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(126,'2025-11-05 07:29:40.000000',NULL,_binary '\0',_binary '','2025-11-10','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(127,'2026-10-14 08:32:21.000000',NULL,_binary '',_binary '\0','2026-11-07','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(128,'2024-11-19 07:33:48.000000',NULL,_binary '',_binary '','2024-11-28','Arroz',NULL,_binary '',NULL,NULL,18,1,NULL,1),(129,'2026-01-31 13:16:34.000000',NULL,_binary '\0',_binary '\0','2026-02-03','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(130,'2026-11-16 17:25:06.000000',NULL,_binary '\0',_binary '\0','2026-11-29','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(131,'2026-04-05 10:54:38.000000',NULL,_binary '',_binary '','2026-04-30','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(132,'2024-12-04 20:45:39.000000',NULL,_binary '',_binary '','2024-12-30','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(133,'2027-05-01 02:27:55.000000',NULL,_binary '\0',_binary '','2027-05-24','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(134,'2026-05-29 06:05:06.000000',NULL,_binary '\0',_binary '','2026-06-08','Arroz',NULL,_binary '\0',NULL,NULL,3,1,NULL,1),(135,'2025-12-15 02:57:38.000000',NULL,_binary '\0',_binary '\0','2025-12-27','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(136,'2027-04-10 00:44:18.000000',NULL,_binary '',_binary '\0','2027-05-05','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(137,'2024-08-09 07:29:33.000000',NULL,_binary '\0',_binary '','2024-08-28','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(138,'2024-10-27 18:04:15.000000',NULL,_binary '\0',_binary '\0','2024-11-24','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(139,'2027-10-21 15:44:16.000000',NULL,_binary '\0',_binary '\0','2027-11-04','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(140,'2025-01-12 11:27:34.000000',NULL,_binary '',_binary '','2025-01-21','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(141,'2025-08-18 00:49:10.000000',NULL,_binary '',_binary '','2025-08-27','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(142,'2026-03-09 15:07:57.000000',NULL,_binary '',_binary '','2026-04-02','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(143,'2027-09-22 10:14:15.000000',NULL,_binary '\0',_binary '\0','2027-09-23','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(144,'2026-08-01 09:03:31.000000',NULL,_binary '',_binary '','2026-08-07','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(145,'2026-06-08 06:53:44.000000',NULL,_binary '',_binary '\0','2026-06-10','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(146,'2024-09-04 04:33:22.000000',NULL,_binary '\0',_binary '','2024-09-29','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(147,'2024-03-10 06:59:14.000000',NULL,_binary '\0',_binary '','2024-03-26','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(148,'2025-08-06 04:31:40.000000',NULL,_binary '',_binary '\0','2025-08-22','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(149,'2024-01-12 00:28:09.000000',NULL,_binary '\0',_binary '\0','2024-01-22','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(150,'2027-01-22 13:22:53.000000',NULL,_binary '\0',_binary '','2027-02-04','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(151,'2025-07-01 00:22:23.000000',NULL,_binary '',_binary '','2025-07-23','Arroz',NULL,_binary '\0',NULL,NULL,13,1,NULL,1),(152,'2025-06-05 06:00:30.000000',NULL,_binary '\0',_binary '\0','2025-06-11','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(153,'2026-10-06 10:23:43.000000',NULL,_binary '\0',_binary '\0','2026-10-21','Arroz',NULL,_binary '\0',NULL,NULL,3,1,NULL,1),(154,'2027-08-08 05:50:49.000000',NULL,_binary '',_binary '','2027-08-28','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1),(155,'2024-09-01 07:45:13.000000',NULL,_binary '\0',_binary '','2024-09-20','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(156,'2025-08-24 15:12:07.000000',NULL,_binary '',_binary '','2025-08-24','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(157,'2026-09-23 04:40:53.000000',NULL,_binary '',_binary '\0','2026-10-08','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(158,'2024-12-06 02:47:18.000000',NULL,_binary '',_binary '\0','2024-12-25','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(159,'2026-10-22 02:14:59.000000',NULL,_binary '\0',_binary '','2026-11-07','Arroz',NULL,_binary '\0',NULL,NULL,3,1,NULL,1),(160,'2027-07-30 04:13:16.000000',NULL,_binary '\0',_binary '\0','2027-08-18','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(161,'2026-11-25 19:26:07.000000',NULL,_binary '',_binary '','2026-11-26','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(162,'2024-02-14 20:24:00.000000',NULL,_binary '\0',_binary '\0','2024-03-07','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(163,'2027-01-18 19:26:32.000000',NULL,_binary '',_binary '\0','2027-02-06','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(164,'2025-01-14 04:39:10.000000',NULL,_binary '\0',_binary '\0','2025-01-22','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(165,'2026-01-03 17:09:59.000000',NULL,_binary '\0',_binary '\0','2026-01-27','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(166,'2027-05-01 19:14:28.000000',NULL,_binary '',_binary '\0','2027-05-05','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(167,'2025-12-09 05:52:29.000000',NULL,_binary '',_binary '\0','2025-12-15','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1),(168,'2025-12-29 23:25:18.000000',NULL,_binary '\0',_binary '','2026-01-22','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(169,'2027-01-13 16:47:03.000000',NULL,_binary '\0',_binary '','2027-01-22','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(170,'2025-03-31 13:50:05.000000',NULL,_binary '',_binary '\0','2025-04-05','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(171,'2024-01-23 08:00:50.000000',NULL,_binary '',_binary '\0','2024-02-12','Arroz',NULL,_binary '',NULL,NULL,3,1,NULL,1),(172,'2025-08-29 19:05:56.000000',NULL,_binary '',_binary '\0','2025-09-02','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(173,'2026-02-17 15:37:48.000000',NULL,_binary '',_binary '\0','2026-03-08','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(174,'2027-01-06 17:17:02.000000',NULL,_binary '\0',_binary '','2027-01-24','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(175,'2027-03-24 10:18:33.000000',NULL,_binary '',_binary '\0','2027-04-08','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(176,'2026-04-05 22:21:47.000000',NULL,_binary '',_binary '\0','2026-04-10','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(177,'2027-10-30 01:42:28.000000',NULL,_binary '\0',_binary '\0','2027-11-15','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(178,'2024-08-18 07:11:12.000000',NULL,_binary '\0',_binary '\0','2024-08-18','Arroz',NULL,_binary '\0',NULL,NULL,13,1,NULL,1),(179,'2025-07-20 10:47:20.000000',NULL,_binary '\0',_binary '\0','2025-07-23','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(180,'2025-03-04 11:54:19.000000',NULL,_binary '',_binary '','2025-03-27','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(181,'2024-12-18 06:36:03.000000',NULL,_binary '',_binary '\0','2024-12-23','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(182,'2026-12-30 18:11:24.000000',NULL,_binary '',_binary '\0','2027-01-14','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(183,'2027-04-06 06:36:38.000000',NULL,_binary '',_binary '','2027-04-14','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(184,'2024-05-06 11:10:03.000000',NULL,_binary '\0',_binary '','2024-05-20','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(185,'2027-04-20 03:20:07.000000',NULL,_binary '\0',_binary '','2027-05-11','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(186,'2026-09-30 17:31:18.000000',NULL,_binary '',_binary '','2026-09-30','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(187,'2027-03-17 17:17:32.000000',NULL,_binary '\0',_binary '','2027-03-31','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(188,'2026-08-07 04:05:55.000000',NULL,_binary '',_binary '','2026-08-15','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(189,'2025-06-20 11:54:31.000000',NULL,_binary '\0',_binary '\0','2025-07-16','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(190,'2026-07-19 09:21:59.000000',NULL,_binary '\0',_binary '\0','2026-08-17','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(191,'2026-02-16 22:55:34.000000',NULL,_binary '\0',_binary '\0','2026-03-05','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(192,'2026-08-10 14:30:08.000000',NULL,_binary '\0',_binary '','2026-08-20','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(193,'2027-11-18 06:02:27.000000',NULL,_binary '\0',_binary '','2027-12-12','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(194,'2026-11-01 19:44:28.000000',NULL,_binary '',_binary '\0','2026-11-10','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(195,'2024-11-18 09:29:22.000000',NULL,_binary '\0',_binary '\0','2024-12-17','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(196,'2027-12-04 12:52:29.000000',NULL,_binary '',_binary '\0','2027-12-09','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(197,'2027-04-12 01:55:37.000000',NULL,_binary '',_binary '\0','2027-04-27','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(198,'2024-09-24 11:47:38.000000',NULL,_binary '',_binary '\0','2024-10-11','Arroz',NULL,_binary '',NULL,NULL,20,1,NULL,1),(199,'2024-03-21 23:30:34.000000',NULL,_binary '',_binary '','2024-04-02','Arroz',NULL,_binary '',NULL,NULL,24,1,NULL,1),(200,'2025-07-01 02:15:10.000000',NULL,_binary '\0',_binary '\0','2025-07-06','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(201,'2025-12-03 13:52:34.000000',NULL,_binary '\0',_binary '\0','2025-12-07','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(202,'2027-08-07 16:28:02.000000',NULL,_binary '',_binary '','2027-08-29','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(377,'2026-05-17 03:51:08.000000',NULL,_binary '\0',_binary '','2026-05-18','Feijão',NULL,_binary '\0',NULL,NULL,10,2,NULL,1),(378,'2027-04-22 22:39:05.000000',NULL,_binary '\0',_binary '\0','2027-04-23','Feijão',NULL,_binary '\0',NULL,NULL,7,2,NULL,1),(379,'2024-02-24 10:53:33.000000',NULL,_binary '\0',_binary '\0','2024-03-14','Feijão',NULL,_binary '\0',NULL,NULL,24,2,NULL,1),(380,'2027-03-09 03:35:26.000000',NULL,_binary '\0',_binary '\0','2027-03-27','Feijão',NULL,_binary '\0',NULL,NULL,3,2,NULL,1),(381,'2026-03-27 13:05:46.000000',NULL,_binary '\0',_binary '','2026-04-23','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(382,'2024-01-09 18:30:59.000000',NULL,_binary '',_binary '','2024-02-05','Feijão',NULL,_binary '',NULL,NULL,23,2,NULL,1),(383,'2027-03-07 06:07:41.000000',NULL,_binary '',_binary '','2027-03-29','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(384,'2025-09-22 22:20:48.000000',NULL,_binary '\0',_binary '\0','2025-10-20','Feijão',NULL,_binary '\0',NULL,NULL,20,2,NULL,1),(385,'2024-01-14 17:03:26.000000',NULL,_binary '',_binary '\0','2024-02-10','Feijão',NULL,_binary '',NULL,NULL,3,2,NULL,1),(386,'2026-12-29 10:30:01.000000',NULL,_binary '',_binary '\0','2027-01-02','Feijão',NULL,_binary '\0',NULL,NULL,15,2,NULL,1),(387,'2025-09-07 09:06:04.000000',NULL,_binary '',_binary '\0','2025-09-13','Feijão',NULL,_binary '\0',NULL,NULL,2,2,NULL,1),(388,'2026-03-04 14:08:05.000000',NULL,_binary '\0',_binary '','2026-03-06','Feijão',NULL,_binary '\0',NULL,NULL,2,2,NULL,1),(389,'2024-03-03 00:14:05.000000',NULL,_binary '',_binary '','2024-03-06','Feijão',NULL,_binary '',NULL,NULL,21,2,NULL,1),(390,'2027-05-27 17:47:08.000000',NULL,_binary '\0',_binary '','2027-06-03','Feijão',NULL,_binary '\0',NULL,NULL,16,2,NULL,1),(391,'2025-03-27 17:11:27.000000',NULL,_binary '',_binary '\0','2025-04-15','Feijão',NULL,_binary '\0',NULL,NULL,22,2,NULL,1),(392,'2025-07-17 08:02:43.000000',NULL,_binary '',_binary '','2025-07-28','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(393,'2026-01-18 04:13:20.000000',NULL,_binary '\0',_binary '\0','2026-02-13','Feijão',NULL,_binary '\0',NULL,NULL,21,2,NULL,1),(394,'2026-01-23 02:22:32.000000',NULL,_binary '',_binary '\0','2026-02-02','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(395,'2024-02-16 22:05:49.000000',NULL,_binary '',_binary '','2024-02-26','Feijão',NULL,_binary '',NULL,NULL,11,2,NULL,1),(396,'2027-11-26 16:16:02.000000',NULL,_binary '\0',_binary '\0','2027-12-23','Feijão',NULL,_binary '\0',NULL,NULL,22,2,NULL,1),(397,'2026-03-17 03:42:18.000000',NULL,_binary '\0',_binary '\0','2026-03-23','Feijão',NULL,_binary '\0',NULL,NULL,20,2,NULL,1),(398,'2024-09-05 13:12:55.000000',NULL,_binary '\0',_binary '','2024-09-07','Feijão',NULL,_binary '\0',NULL,NULL,17,2,NULL,1),(399,'2024-09-01 19:26:32.000000',NULL,_binary '',_binary '\0','2024-09-27','Feijão',NULL,_binary '',NULL,NULL,14,2,NULL,1),(400,'2024-01-20 10:53:11.000000',NULL,_binary '\0',_binary '','2024-01-26','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(401,'2024-03-14 00:46:45.000000',NULL,_binary '\0',_binary '','2024-04-05','Feijão',NULL,_binary '\0',NULL,NULL,24,2,NULL,1),(402,'2025-10-20 09:43:49.000000',NULL,_binary '',_binary '\0','2025-11-11','Feijão',NULL,_binary '\0',NULL,NULL,8,2,NULL,1),(403,'2024-11-25 05:42:56.000000',NULL,_binary '',_binary '','2024-12-17','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(404,'2025-09-11 17:38:50.000000',NULL,_binary '\0',_binary '','2025-10-06','Feijão',NULL,_binary '\0',NULL,NULL,21,2,NULL,1),(405,'2026-07-10 15:15:15.000000',NULL,_binary '\0',_binary '','2026-07-31','Feijão',NULL,_binary '\0',NULL,NULL,3,2,NULL,1),(406,'2025-06-03 10:44:29.000000',NULL,_binary '\0',_binary '','2025-06-03','Feijão',NULL,_binary '\0',NULL,NULL,16,2,NULL,1),(407,'2027-10-05 21:28:23.000000',NULL,_binary '',_binary '','2027-11-01','Feijão',NULL,_binary '\0',NULL,NULL,21,2,NULL,1),(408,'2025-09-05 14:41:55.000000',NULL,_binary '',_binary '\0','2025-09-18','Feijão',NULL,_binary '\0',NULL,NULL,17,2,NULL,1),(409,'2024-04-20 08:23:17.000000',NULL,_binary '',_binary '','2024-04-25','Feijão',NULL,_binary '',NULL,NULL,8,2,NULL,1),(410,'2027-07-01 12:21:41.000000',NULL,_binary '',_binary '\0','2027-07-05','Feijão',NULL,_binary '\0',NULL,NULL,5,2,NULL,1),(411,'2025-11-22 19:08:28.000000',NULL,_binary '',_binary '\0','2025-12-07','Feijão',NULL,_binary '\0',NULL,NULL,7,2,NULL,1),(412,'2026-11-06 19:21:50.000000',NULL,_binary '',_binary '\0','2026-11-23','Feijão',NULL,_binary '\0',NULL,NULL,21,2,NULL,1),(413,'2024-12-17 18:56:25.000000',NULL,_binary '\0',_binary '','2024-12-19','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(414,'2025-11-23 22:42:15.000000',NULL,_binary '\0',_binary '','2025-12-10','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(415,'2024-04-15 02:10:14.000000',NULL,_binary '\0',_binary '','2024-05-10','Feijão',NULL,_binary '\0',NULL,NULL,12,2,NULL,1),(416,'2026-12-10 08:02:21.000000',NULL,_binary '\0',_binary '\0','2026-12-17','Feijão',NULL,_binary '\0',NULL,NULL,8,2,NULL,1),(417,'2026-12-25 19:34:09.000000',NULL,_binary '',_binary '','2026-12-30','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(418,'2024-05-18 06:33:29.000000',NULL,_binary '\0',_binary '','2024-06-08','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(419,'2026-04-10 15:25:20.000000',NULL,_binary '',_binary '','2026-04-25','Feijão',NULL,_binary '\0',NULL,NULL,18,2,NULL,1),(420,'2027-11-06 17:35:04.000000',NULL,_binary '',_binary '','2027-11-08','Feijão',NULL,_binary '\0',NULL,NULL,10,2,NULL,1),(421,'2026-09-17 05:27:02.000000',NULL,_binary '\0',_binary '','2026-10-11','Feijão',NULL,_binary '\0',NULL,NULL,14,2,NULL,1),(422,'2025-06-09 03:17:12.000000',NULL,_binary '',_binary '','2025-06-16','Feijão',NULL,_binary '\0',NULL,NULL,12,2,NULL,1),(423,'2026-05-08 12:13:33.000000',NULL,_binary '',_binary '\0','2026-05-25','Feijão',NULL,_binary '\0',NULL,NULL,21,2,NULL,1),(424,'2025-02-10 22:49:05.000000',NULL,_binary '',_binary '','2025-03-10','Feijão',NULL,_binary '\0',NULL,NULL,15,2,NULL,1),(425,'2027-11-13 03:06:05.000000',NULL,_binary '',_binary '\0','2027-11-25','Feijão',NULL,_binary '\0',NULL,NULL,3,2,NULL,1),(426,'2025-01-06 23:12:14.000000',NULL,_binary '\0',_binary '\0','2025-01-07','Feijão',NULL,_binary '\0',NULL,NULL,23,2,NULL,1),(427,'2025-09-03 08:13:46.000000',NULL,_binary '\0',_binary '\0','2025-09-30','Feijão',NULL,_binary '\0',NULL,NULL,22,2,NULL,1),(428,'2026-03-31 04:46:09.000000',NULL,_binary '\0',_binary '','2026-04-23','Feijão',NULL,_binary '\0',NULL,NULL,1,2,NULL,1),(429,'2027-05-07 02:26:38.000000',NULL,_binary '',_binary '','2027-05-19','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(430,'2026-08-17 08:52:24.000000',NULL,_binary '',_binary '\0','2026-09-08','Feijão',NULL,_binary '\0',NULL,NULL,22,2,NULL,1),(431,'2024-07-22 02:02:16.000000',NULL,_binary '\0',_binary '','2024-08-16','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(432,'2024-12-27 08:18:47.000000',NULL,_binary '',_binary '','2025-01-12','Feijão',NULL,_binary '\0',NULL,NULL,1,2,NULL,1),(433,'2025-11-02 05:48:48.000000',NULL,_binary '',_binary '\0','2025-11-21','Feijão',NULL,_binary '\0',NULL,NULL,1,2,NULL,1),(434,'2024-08-16 16:33:35.000000',NULL,_binary '',_binary '','2024-08-23','Feijão',NULL,_binary '',NULL,NULL,17,2,NULL,1),(435,'2026-07-02 03:06:30.000000',NULL,_binary '',_binary '\0','2026-07-02','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(436,'2026-07-13 22:20:05.000000',NULL,_binary '',_binary '','2026-07-31','Feijão',NULL,_binary '\0',NULL,NULL,6,2,NULL,1),(437,'2024-09-28 06:48:03.000000',NULL,_binary '',_binary '\0','2024-10-17','Feijão',NULL,_binary '',NULL,NULL,24,2,NULL,1),(438,'2026-12-05 20:13:58.000000',NULL,_binary '\0',_binary '','2026-12-26','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(439,'2026-08-08 08:34:40.000000',NULL,_binary '',_binary '\0','2026-09-06','Feijão',NULL,_binary '\0',NULL,NULL,16,2,NULL,1),(440,'2024-04-18 13:35:24.000000',NULL,_binary '',_binary '\0','2024-05-15','Feijão',NULL,_binary '',NULL,NULL,12,2,NULL,1),(441,'2026-08-24 21:21:43.000000',NULL,_binary '\0',_binary '','2026-09-18','Feijão',NULL,_binary '\0',NULL,NULL,8,2,NULL,1),(442,'2027-08-26 16:39:57.000000',NULL,_binary '',_binary '','2027-09-15','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(443,'2026-07-04 21:45:37.000000',NULL,_binary '',_binary '','2026-07-26','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(444,'2025-08-07 14:38:58.000000',NULL,_binary '',_binary '\0','2025-08-23','Feijão',NULL,_binary '\0',NULL,NULL,13,2,NULL,1),(445,'2027-04-09 14:36:30.000000',NULL,_binary '',_binary '\0','2027-05-03','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(446,'2024-09-17 17:17:33.000000',NULL,_binary '\0',_binary '\0','2024-10-06','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(447,'2027-03-07 17:24:09.000000',NULL,_binary '\0',_binary '\0','2027-03-18','Feijão',NULL,_binary '\0',NULL,NULL,24,2,NULL,1),(448,'2025-08-18 06:38:59.000000',NULL,_binary '\0',_binary '','2025-08-30','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(449,'2025-09-09 17:06:13.000000',NULL,_binary '\0',_binary '\0','2025-10-03','Feijão',NULL,_binary '\0',NULL,NULL,1,2,NULL,1),(450,'2026-11-29 13:06:10.000000',NULL,_binary '',_binary '\0','2026-12-23','Feijão',NULL,_binary '\0',NULL,NULL,20,2,NULL,1),(451,'2025-12-27 03:06:37.000000',NULL,_binary '\0',_binary '\0','2026-01-10','Feijão',NULL,_binary '\0',NULL,NULL,6,2,NULL,1),(452,'2026-06-24 11:21:14.000000',NULL,_binary '',_binary '\0','2026-06-24','Feijão',NULL,_binary '\0',NULL,NULL,21,2,NULL,1),(453,'2024-02-29 17:20:06.000000',NULL,_binary '\0',_binary '\0','2024-03-28','Feijão',NULL,_binary '\0',NULL,NULL,22,2,NULL,1),(454,'2025-11-29 19:26:29.000000',NULL,_binary '',_binary '','2025-12-10','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(455,'2027-03-30 01:47:32.000000',NULL,_binary '',_binary '\0','2027-04-14','Feijão',NULL,_binary '\0',NULL,NULL,7,2,NULL,1),(456,'2026-07-09 10:05:01.000000',NULL,_binary '\0',_binary '','2026-07-17','Feijão',NULL,_binary '\0',NULL,NULL,3,2,NULL,1),(457,'2026-07-10 20:30:59.000000',NULL,_binary '\0',_binary '\0','2026-07-26','Feijão',NULL,_binary '\0',NULL,NULL,20,2,NULL,1),(458,'2024-10-10 15:34:26.000000',NULL,_binary '',_binary '\0','2024-11-03','Feijão',NULL,_binary '',NULL,NULL,1,2,NULL,1),(459,'2026-04-05 19:36:45.000000',NULL,_binary '\0',_binary '\0','2026-04-14','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(460,'2026-07-21 19:53:53.000000',NULL,_binary '\0',_binary '','2026-08-07','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(461,'2024-06-28 16:24:05.000000',NULL,_binary '\0',_binary '\0','2024-07-21','Feijão',NULL,_binary '\0',NULL,NULL,10,2,NULL,1),(462,'2026-01-12 10:10:20.000000',NULL,_binary '',_binary '','2026-02-01','Feijão',NULL,_binary '\0',NULL,NULL,9,2,NULL,1),(463,'2026-11-21 13:02:57.000000',NULL,_binary '',_binary '\0','2026-12-19','Feijão',NULL,_binary '\0',NULL,NULL,9,2,NULL,1),(464,'2027-07-29 10:41:04.000000',NULL,_binary '',_binary '\0','2027-08-05','Feijão',NULL,_binary '\0',NULL,NULL,5,2,NULL,1),(465,'2024-03-31 19:16:58.000000',NULL,_binary '',_binary '','2024-04-07','Feijão',NULL,_binary '',NULL,NULL,25,2,NULL,1),(466,'2024-12-14 04:52:26.000000',NULL,_binary '\0',_binary '','2024-12-29','Feijão',NULL,_binary '\0',NULL,NULL,1,2,NULL,1),(467,'2025-09-02 01:56:28.000000',NULL,_binary '\0',_binary '','2025-09-05','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(468,'2026-07-22 05:22:09.000000',NULL,_binary '\0',_binary '\0','2026-07-23','Feijão',NULL,_binary '\0',NULL,NULL,8,2,NULL,1),(469,'2025-04-27 17:56:14.000000',NULL,_binary '',_binary '\0','2025-05-02','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(470,'2026-07-08 20:30:38.000000',NULL,_binary '\0',_binary '\0','2026-07-26','Feijão',NULL,_binary '\0',NULL,NULL,3,2,NULL,1),(471,'2026-03-26 12:29:11.000000',NULL,_binary '',_binary '\0','2026-04-11','Feijão',NULL,_binary '\0',NULL,NULL,14,2,NULL,1),(472,'2024-03-01 14:23:45.000000',NULL,_binary '',_binary '','2024-03-08','Feijão',NULL,_binary '',NULL,NULL,14,2,NULL,1),(473,'2027-12-02 06:03:48.000000',NULL,_binary '\0',_binary '','2027-12-11','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(474,'2027-12-07 23:17:24.000000',NULL,_binary '',_binary '','2027-12-15','Feijão',NULL,_binary '\0',NULL,NULL,14,2,NULL,1),(475,'2027-11-08 03:53:52.000000',NULL,_binary '',_binary '\0','2027-12-01','Feijão',NULL,_binary '\0',NULL,NULL,15,2,NULL,1),(476,'2026-05-30 05:51:19.000000',NULL,_binary '\0',_binary '\0','2026-06-10','Feijão',NULL,_binary '\0',NULL,NULL,24,2,NULL,1),(477,'2026-02-23 21:07:14.000000',NULL,_binary '',_binary '\0','2026-02-26','Feijão',NULL,_binary '\0',NULL,NULL,18,2,NULL,1),(478,'2024-09-21 18:45:41.000000',NULL,_binary '\0',_binary '\0','2024-09-30','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(479,'2027-01-09 08:33:18.000000',NULL,_binary '',_binary '\0','2027-02-05','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(480,'2027-09-12 04:59:20.000000',NULL,_binary '\0',_binary '','2027-10-03','Feijão',NULL,_binary '\0',NULL,NULL,12,2,NULL,1),(481,'2024-07-14 07:25:21.000000',NULL,_binary '\0',_binary '','2024-07-29','Feijão',NULL,_binary '\0',NULL,NULL,7,2,NULL,1),(482,'2027-03-13 03:54:49.000000',NULL,_binary '\0',_binary '','2027-04-02','Feijão',NULL,_binary '\0',NULL,NULL,18,2,NULL,1),(483,'2026-01-07 08:51:03.000000',NULL,_binary '\0',_binary '','2026-01-27','Feijão',NULL,_binary '\0',NULL,NULL,21,2,NULL,1),(484,'2027-11-14 10:26:44.000000',NULL,_binary '\0',_binary '\0','2027-11-27','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(485,'2025-04-10 04:09:52.000000',NULL,_binary '',_binary '\0','2025-04-22','Feijão',NULL,_binary '\0',NULL,NULL,1,2,NULL,1),(486,'2027-02-28 22:08:22.000000',NULL,_binary '\0',_binary '\0','2027-03-13','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(487,'2025-12-23 13:23:19.000000',NULL,_binary '\0',_binary '','2026-01-01','Feijão',NULL,_binary '\0',NULL,NULL,2,2,NULL,1),(488,'2025-07-23 17:40:52.000000',NULL,_binary '',_binary '\0','2025-07-29','Feijão',NULL,_binary '\0',NULL,NULL,3,2,NULL,1),(489,'2027-01-24 13:25:29.000000',NULL,_binary '\0',_binary '','2027-02-08','Feijão',NULL,_binary '\0',NULL,NULL,6,2,NULL,1),(490,'2025-10-31 16:14:31.000000',NULL,_binary '\0',_binary '\0','2025-11-01','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(491,'2026-09-01 20:47:19.000000',NULL,_binary '\0',_binary '\0','2026-09-08','Feijão',NULL,_binary '\0',NULL,NULL,2,2,NULL,1),(492,'2026-02-24 13:00:05.000000',NULL,_binary '\0',_binary '','2026-03-24','Feijão',NULL,_binary '\0',NULL,NULL,6,2,NULL,1),(493,'2024-10-20 08:59:31.000000',NULL,_binary '\0',_binary '\0','2024-10-29','Feijão',NULL,_binary '\0',NULL,NULL,24,2,NULL,1),(494,'2026-10-25 17:14:23.000000',NULL,_binary '\0',_binary '\0','2026-11-16','Feijão',NULL,_binary '\0',NULL,NULL,1,2,NULL,1),(495,'2027-07-26 09:05:46.000000',NULL,_binary '\0',_binary '','2027-07-30','Feijão',NULL,_binary '\0',NULL,NULL,22,2,NULL,1),(496,'2027-04-15 13:14:42.000000',NULL,_binary '\0',_binary '','2027-04-20','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(497,'2026-07-26 21:56:25.000000',NULL,_binary '',_binary '\0','2026-08-09','Feijão',NULL,_binary '\0',NULL,NULL,23,2,NULL,1),(498,'2024-08-27 01:42:52.000000',NULL,_binary '',_binary '\0','2024-09-25','Feijão',NULL,_binary '',NULL,NULL,14,2,NULL,1),(499,'2026-10-28 22:58:52.000000',NULL,_binary '',_binary '\0','2026-11-06','Feijão',NULL,_binary '\0',NULL,NULL,5,2,NULL,1),(500,'2024-02-14 13:31:42.000000',NULL,_binary '',_binary '','2024-02-29','Feijão',NULL,_binary '',NULL,NULL,20,2,NULL,1),(501,'2025-02-07 02:04:08.000000',NULL,_binary '',_binary '','2025-03-07','Feijão',NULL,_binary '\0',NULL,NULL,14,2,NULL,1),(502,'2026-12-15 03:10:44.000000',NULL,_binary '\0',_binary '','2027-01-07','Feijão',NULL,_binary '\0',NULL,NULL,13,2,NULL,1),(503,'2024-03-08 18:42:20.000000',NULL,_binary '',_binary '\0','2024-04-06','Feijão',NULL,_binary '',NULL,NULL,13,2,NULL,1),(504,'2026-05-27 12:00:16.000000',NULL,_binary '',_binary '','2026-06-21','Feijão',NULL,_binary '\0',NULL,NULL,7,2,NULL,1),(505,'2027-01-27 01:32:08.000000',NULL,_binary '\0',_binary '','2027-02-05','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(506,'2027-06-13 10:19:53.000000',NULL,_binary '',_binary '','2027-07-11','Feijão',NULL,_binary '\0',NULL,NULL,4,2,NULL,1),(507,'2027-09-12 03:57:00.000000',NULL,_binary '\0',_binary '','2027-09-29','Feijão',NULL,_binary '\0',NULL,NULL,18,2,NULL,1),(508,'2026-12-29 15:14:19.000000',NULL,_binary '',_binary '','2027-01-25','Feijão',NULL,_binary '\0',NULL,NULL,9,2,NULL,1),(509,'2027-07-06 10:24:08.000000',NULL,_binary '',_binary '\0','2027-07-11','Feijão',NULL,_binary '\0',NULL,NULL,21,2,NULL,1),(510,'2026-07-28 16:57:03.000000',NULL,_binary '',_binary '','2026-08-16','Feijão',NULL,_binary '\0',NULL,NULL,14,2,NULL,1),(511,'2027-01-08 04:09:58.000000',NULL,_binary '',_binary '\0','2027-01-25','Feijão',NULL,_binary '\0',NULL,NULL,14,2,NULL,1),(512,'2027-06-04 16:52:31.000000',NULL,_binary '',_binary '','2027-06-11','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(513,'2025-06-26 13:42:44.000000',NULL,_binary '',_binary '','2025-07-19','Feijão',NULL,_binary '\0',NULL,NULL,22,2,NULL,1),(514,'2027-10-16 04:27:09.000000',NULL,_binary '\0',_binary '','2027-10-17','Feijão',NULL,_binary '\0',NULL,NULL,17,2,NULL,1),(515,'2024-08-27 20:01:59.000000',NULL,_binary '',_binary '','2024-09-10','Feijão',NULL,_binary '',NULL,NULL,18,2,NULL,1),(516,'2027-12-17 21:27:49.000000',NULL,_binary '\0',_binary '','2028-01-03','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(517,'2025-10-01 21:24:29.000000',NULL,_binary '\0',_binary '\0','2025-10-25','Feijão',NULL,_binary '\0',NULL,NULL,24,2,NULL,1),(518,'2025-04-03 16:50:21.000000',NULL,_binary '',_binary '','2025-04-30','Feijão',NULL,_binary '\0',NULL,NULL,12,2,NULL,1),(519,'2026-02-25 07:11:15.000000',NULL,_binary '',_binary '','2026-03-24','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(520,'2024-10-22 01:34:50.000000',NULL,_binary '',_binary '\0','2024-11-18','Feijão',NULL,_binary '',NULL,NULL,9,2,NULL,1),(521,'2027-09-06 14:23:43.000000',NULL,_binary '\0',_binary '\0','2027-09-12','Feijão',NULL,_binary '\0',NULL,NULL,24,2,NULL,1),(522,'2024-02-20 08:36:20.000000',NULL,_binary '',_binary '\0','2024-03-13','Feijão',NULL,_binary '',NULL,NULL,18,2,NULL,1),(523,'2025-02-07 05:52:49.000000',NULL,_binary '\0',_binary '\0','2025-02-08','Feijão',NULL,_binary '\0',NULL,NULL,12,2,NULL,1),(524,'2024-08-30 11:06:16.000000',NULL,_binary '',_binary '','2024-09-28','Feijão',NULL,_binary '',NULL,NULL,21,2,NULL,1),(525,'2024-11-14 14:28:15.000000',NULL,_binary '\0',_binary '','2024-12-10','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(526,'2025-11-02 01:01:47.000000',NULL,_binary '',_binary '\0','2025-11-22','Feijão',NULL,_binary '\0',NULL,NULL,10,2,NULL,1),(527,'2027-02-03 17:53:07.000000',NULL,_binary '\0',_binary '','2027-02-25','Feijão',NULL,_binary '\0',NULL,NULL,10,2,NULL,1),(528,'2026-06-02 21:53:16.000000',NULL,_binary '',_binary '','2026-06-22','Feijão',NULL,_binary '\0',NULL,NULL,14,2,NULL,1),(529,'2026-04-14 06:12:50.000000',NULL,_binary '',_binary '\0','2026-05-09','Feijão',NULL,_binary '\0',NULL,NULL,23,2,NULL,1),(530,'2024-01-05 06:40:06.000000',NULL,_binary '\0',_binary '\0','2024-01-10','Feijão',NULL,_binary '\0',NULL,NULL,19,2,NULL,1),(531,'2024-07-29 11:54:20.000000',NULL,_binary '\0',_binary '','2024-08-16','Feijão',NULL,_binary '\0',NULL,NULL,22,2,NULL,1),(532,'2025-09-05 12:38:34.000000',NULL,_binary '\0',_binary '\0','2025-09-13','Feijão',NULL,_binary '\0',NULL,NULL,16,2,NULL,1),(533,'2025-01-08 09:29:06.000000',NULL,_binary '\0',_binary '','2025-01-27','Feijão',NULL,_binary '\0',NULL,NULL,17,2,NULL,1),(534,'2025-08-05 23:49:25.000000',NULL,_binary '',_binary '','2025-09-03','Feijão',NULL,_binary '\0',NULL,NULL,8,2,NULL,1),(535,'2026-08-01 06:53:42.000000',NULL,_binary '\0',_binary '','2026-08-19','Feijão',NULL,_binary '\0',NULL,NULL,7,2,NULL,1),(536,'2025-11-11 12:28:18.000000',NULL,_binary '\0',_binary '\0','2025-11-29','Feijão',NULL,_binary '\0',NULL,NULL,18,2,NULL,1),(537,'2026-09-22 07:31:00.000000',NULL,_binary '',_binary '','2026-10-14','Feijão',NULL,_binary '\0',NULL,NULL,18,2,NULL,1),(538,'2025-07-03 17:22:31.000000',NULL,_binary '\0',_binary '\0','2025-07-31','Feijão',NULL,_binary '\0',NULL,NULL,22,2,NULL,1),(539,'2026-02-10 00:35:14.000000',NULL,_binary '',_binary '','2026-02-23','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(540,'2027-01-21 13:11:58.000000',NULL,_binary '\0',_binary '','2027-02-13','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(541,'2026-08-29 07:51:45.000000',NULL,_binary '',_binary '\0','2026-09-04','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(542,'2025-11-20 01:45:32.000000',NULL,_binary '',_binary '','2025-12-14','Feijão',NULL,_binary '\0',NULL,NULL,12,2,NULL,1),(543,'2027-10-10 06:50:45.000000',NULL,_binary '',_binary '\0','2027-11-02','Feijão',NULL,_binary '\0',NULL,NULL,16,2,NULL,1),(544,'2026-11-22 18:07:03.000000',NULL,_binary '',_binary '','2026-12-21','Feijão',NULL,_binary '\0',NULL,NULL,16,2,NULL,1),(545,'2024-05-30 16:42:12.000000',NULL,_binary '\0',_binary '','2024-06-08','Feijão',NULL,_binary '\0',NULL,NULL,9,2,NULL,1),(546,'2026-08-21 07:36:10.000000',NULL,_binary '',_binary '\0','2026-09-05','Feijão',NULL,_binary '\0',NULL,NULL,12,2,NULL,1),(547,'2026-09-09 00:03:23.000000',NULL,_binary '',_binary '','2026-10-03','Feijão',NULL,_binary '\0',NULL,NULL,7,2,NULL,1),(548,'2027-01-03 00:34:50.000000',NULL,_binary '',_binary '\0','2027-01-21','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(549,'2024-11-09 19:26:52.000000',NULL,_binary '\0',_binary '','2024-12-02','Feijão',NULL,_binary '\0',NULL,NULL,5,2,NULL,1),(550,'2025-10-02 16:49:01.000000',NULL,_binary '\0',_binary '','2025-10-19','Feijão',NULL,_binary '\0',NULL,NULL,13,2,NULL,1),(551,'2026-10-26 00:35:26.000000',NULL,_binary '\0',_binary '','2026-11-18','Feijão',NULL,_binary '\0',NULL,NULL,2,2,NULL,1),(552,'2027-08-04 08:02:21.000000',NULL,_binary '',_binary '','2027-08-20','Feijão',NULL,_binary '\0',NULL,NULL,25,2,NULL,1),(553,'2025-05-21 18:17:28.000000',NULL,_binary '',_binary '','2025-06-05','Feijão',NULL,_binary '\0',NULL,NULL,23,2,NULL,1),(554,'2024-01-25 07:57:03.000000',NULL,_binary '',_binary '\0','2024-02-04','Feijão',NULL,_binary '',NULL,NULL,18,2,NULL,1),(555,'2025-07-02 19:22:24.000000',NULL,_binary '',_binary '\0','2025-07-28','Feijão',NULL,_binary '\0',NULL,NULL,1,2,NULL,1),(556,'2025-10-04 03:52:05.000000',NULL,_binary '\0',_binary '','2025-10-12','Feijão',NULL,_binary '\0',NULL,NULL,15,2,NULL,1),(557,'2024-01-07 07:25:38.000000',NULL,_binary '',_binary '','2024-01-10','Feijão',NULL,_binary '',NULL,NULL,9,2,NULL,1),(558,'2025-02-13 10:28:22.000000',NULL,_binary '\0',_binary '\0','2025-03-13','Feijão',NULL,_binary '\0',NULL,NULL,14,2,NULL,1),(559,'2027-05-20 15:03:19.000000',NULL,_binary '',_binary '\0','2027-06-11','Feijão',NULL,_binary '\0',NULL,NULL,9,2,NULL,1),(560,'2026-04-06 18:28:24.000000',NULL,_binary '\0',_binary '\0','2026-04-28','Feijão',NULL,_binary '\0',NULL,NULL,13,2,NULL,1),(561,'2024-09-09 09:13:24.000000',NULL,_binary '\0',_binary '','2024-09-12','Feijão',NULL,_binary '\0',NULL,NULL,23,2,NULL,1),(562,'2025-02-26 16:34:19.000000',NULL,_binary '',_binary '','2025-03-13','Feijão',NULL,_binary '\0',NULL,NULL,1,2,NULL,1),(563,'2026-04-18 19:04:46.000000',NULL,_binary '\0',_binary '','2026-05-06','Feijão',NULL,_binary '\0',NULL,NULL,12,2,NULL,1),(564,'2025-07-10 13:46:16.000000',NULL,_binary '',_binary '','2025-07-20','Feijão',NULL,_binary '\0',NULL,NULL,2,2,NULL,1),(565,'2024-10-10 19:37:26.000000',NULL,_binary '',_binary '\0','2024-11-04','Feijão',NULL,_binary '',NULL,NULL,2,2,NULL,1),(566,'2027-01-12 14:14:05.000000',NULL,_binary '',_binary '','2027-01-20','Feijão',NULL,_binary '\0',NULL,NULL,10,2,NULL,1),(567,'2027-12-15 20:38:48.000000',NULL,_binary '\0',_binary '\0','2027-12-28','Feijão',NULL,_binary '\0',NULL,NULL,24,2,NULL,1),(568,'2025-06-09 23:45:59.000000',NULL,_binary '',_binary '\0','2025-06-19','Feijão',NULL,_binary '\0',NULL,NULL,13,2,NULL,1),(569,'2026-02-10 02:52:15.000000',NULL,_binary '\0',_binary '','2026-02-25','Feijão',NULL,_binary '\0',NULL,NULL,11,2,NULL,1),(570,'2025-12-06 05:11:46.000000',NULL,_binary '',_binary '','2025-12-26','Feijão',NULL,_binary '\0',NULL,NULL,21,2,NULL,1),(571,'2024-02-26 18:21:57.000000',NULL,_binary '',_binary '\0','2024-02-29','Óleo',NULL,_binary '',NULL,NULL,22,3,NULL,2),(572,'2024-01-09 09:33:57.000000',NULL,_binary '',_binary '','2024-01-23','Óleo',NULL,_binary '',NULL,NULL,11,3,NULL,2),(573,'2026-03-21 13:23:07.000000',NULL,_binary '\0',_binary '','2026-03-31','Óleo',NULL,_binary '\0',NULL,NULL,23,3,NULL,2),(574,'2026-01-07 19:05:15.000000',NULL,_binary '\0',_binary '','2026-01-13','Óleo',NULL,_binary '\0',NULL,NULL,9,3,NULL,2),(575,'2024-06-13 11:47:16.000000',NULL,_binary '\0',_binary '\0','2024-06-19','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(576,'2025-03-16 02:43:13.000000',NULL,_binary '',_binary '','2025-04-10','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(577,'2026-01-09 06:27:09.000000',NULL,_binary '',_binary '\0','2026-01-12','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(578,'2026-09-12 13:44:36.000000',NULL,_binary '',_binary '\0','2026-10-06','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(579,'2025-01-03 00:20:21.000000',NULL,_binary '\0',_binary '','2025-01-23','Óleo',NULL,_binary '\0',NULL,NULL,23,3,NULL,2),(580,'2025-07-27 06:36:00.000000',NULL,_binary '\0',_binary '\0','2025-08-02','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(581,'2025-04-21 20:21:02.000000',NULL,_binary '\0',_binary '','2025-04-21','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(582,'2027-02-12 14:53:35.000000',NULL,_binary '',_binary '','2027-02-26','Óleo',NULL,_binary '\0',NULL,NULL,13,3,NULL,2),(583,'2024-04-14 20:52:09.000000',NULL,_binary '\0',_binary '\0','2024-05-09','Óleo',NULL,_binary '\0',NULL,NULL,5,3,NULL,2),(584,'2025-01-30 19:58:10.000000',NULL,_binary '\0',_binary '\0','2025-02-04','Óleo',NULL,_binary '\0',NULL,NULL,4,3,NULL,2),(585,'2024-08-28 09:55:53.000000',NULL,_binary '',_binary '','2024-09-09','Óleo',NULL,_binary '',NULL,NULL,6,3,NULL,2),(586,'2027-04-23 11:37:52.000000',NULL,_binary '',_binary '\0','2027-05-05','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(587,'2025-05-31 19:35:36.000000',NULL,_binary '\0',_binary '','2025-06-06','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(588,'2027-01-09 13:19:49.000000',NULL,_binary '',_binary '','2027-02-02','Óleo',NULL,_binary '\0',NULL,NULL,14,3,NULL,2),(589,'2025-01-12 15:17:40.000000',NULL,_binary '\0',_binary '\0','2025-01-26','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(590,'2026-09-01 05:57:37.000000',NULL,_binary '\0',_binary '\0','2026-09-17','Óleo',NULL,_binary '\0',NULL,NULL,10,3,NULL,2),(591,'2025-04-17 10:19:35.000000',NULL,_binary '\0',_binary '','2025-05-02','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(592,'2025-06-08 10:27:32.000000',NULL,_binary '\0',_binary '\0','2025-06-28','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(593,'2027-05-15 21:39:17.000000',NULL,_binary '',_binary '\0','2027-05-17','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(594,'2025-12-02 04:33:10.000000',NULL,_binary '',_binary '','2025-12-11','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(595,'2024-10-11 02:40:27.000000',NULL,_binary '',_binary '','2024-11-02','Óleo',NULL,_binary '',NULL,NULL,3,3,NULL,2),(596,'2024-11-23 20:42:27.000000',NULL,_binary '',_binary '','2024-11-27','Óleo',NULL,_binary '',NULL,NULL,24,3,NULL,2),(597,'2024-10-10 04:09:33.000000',NULL,_binary '\0',_binary '','2024-10-29','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(598,'2027-08-21 19:42:24.000000',NULL,_binary '\0',_binary '\0','2027-09-19','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(599,'2024-03-01 10:26:48.000000',NULL,_binary '\0',_binary '','2024-03-19','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(600,'2026-01-15 17:05:53.000000',NULL,_binary '\0',_binary '\0','2026-02-12','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(601,'2024-01-29 18:04:34.000000',NULL,_binary '',_binary '\0','2024-02-06','Óleo',NULL,_binary '',NULL,NULL,13,3,NULL,2),(602,'2027-01-24 06:55:45.000000',NULL,_binary '\0',_binary '','2027-02-16','Óleo',NULL,_binary '\0',NULL,NULL,12,3,NULL,2),(603,'2027-08-26 04:19:45.000000',NULL,_binary '\0',_binary '\0','2027-09-20','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(604,'2025-12-30 06:53:23.000000',NULL,_binary '',_binary '','2026-01-08','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(605,'2025-02-06 06:31:04.000000',NULL,_binary '',_binary '','2025-02-24','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(606,'2027-11-10 03:14:13.000000',NULL,_binary '',_binary '\0','2027-11-12','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(607,'2027-03-27 23:44:38.000000',NULL,_binary '',_binary '','2027-04-13','Óleo',NULL,_binary '\0',NULL,NULL,25,3,NULL,2),(608,'2024-09-16 22:52:34.000000',NULL,_binary '\0',_binary '\0','2024-10-11','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(609,'2027-07-25 14:34:06.000000',NULL,_binary '\0',_binary '','2027-08-19','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(610,'2026-05-05 06:41:41.000000',NULL,_binary '',_binary '\0','2026-05-29','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(611,'2027-02-08 18:00:00.000000',NULL,_binary '\0',_binary '','2027-03-09','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(612,'2026-06-11 03:33:57.000000',NULL,_binary '',_binary '\0','2026-07-03','Óleo',NULL,_binary '\0',NULL,NULL,14,3,NULL,2),(613,'2025-05-23 03:44:19.000000',NULL,_binary '',_binary '\0','2025-06-16','Óleo',NULL,_binary '\0',NULL,NULL,12,3,NULL,2),(614,'2027-10-05 06:24:31.000000',NULL,_binary '',_binary '','2027-10-12','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(615,'2025-09-21 00:27:30.000000',NULL,_binary '',_binary '','2025-10-01','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(616,'2026-09-30 13:38:44.000000',NULL,_binary '',_binary '\0','2026-10-20','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(617,'2026-10-02 05:22:30.000000',NULL,_binary '\0',_binary '','2026-10-27','Óleo',NULL,_binary '\0',NULL,NULL,10,3,NULL,2),(618,'2025-07-07 18:19:34.000000',NULL,_binary '',_binary '\0','2025-07-23','Óleo',NULL,_binary '\0',NULL,NULL,9,3,NULL,2),(619,'2024-06-13 12:36:08.000000',NULL,_binary '\0',_binary '','2024-06-26','Óleo',NULL,_binary '\0',NULL,NULL,17,3,NULL,2),(620,'2027-08-27 14:46:02.000000',NULL,_binary '\0',_binary '','2027-08-31','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(621,'2026-12-05 23:05:16.000000',NULL,_binary '',_binary '\0','2026-12-06','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(622,'2025-12-30 07:16:38.000000',NULL,_binary '\0',_binary '\0','2026-01-23','Óleo',NULL,_binary '\0',NULL,NULL,14,3,NULL,2),(623,'2025-04-14 22:45:47.000000',NULL,_binary '',_binary '\0','2025-05-10','Óleo',NULL,_binary '\0',NULL,NULL,9,3,NULL,2),(624,'2027-12-17 22:46:40.000000',NULL,_binary '',_binary '\0','2028-01-09','Óleo',NULL,_binary '\0',NULL,NULL,21,3,NULL,2),(625,'2027-02-11 10:23:53.000000',NULL,_binary '',_binary '','2027-03-04','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(626,'2024-08-07 13:44:42.000000',NULL,_binary '\0',_binary '\0','2024-08-21','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(627,'2026-03-22 13:38:45.000000',NULL,_binary '\0',_binary '\0','2026-03-31','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(628,'2025-07-22 17:57:43.000000',NULL,_binary '',_binary '','2025-08-03','Óleo',NULL,_binary '\0',NULL,NULL,4,3,NULL,2),(629,'2025-11-19 22:51:36.000000',NULL,_binary '\0',_binary '','2025-11-29','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(630,'2025-11-11 00:39:13.000000',NULL,_binary '',_binary '','2025-12-05','Óleo',NULL,_binary '\0',NULL,NULL,7,3,NULL,2),(631,'2027-05-25 11:18:42.000000',NULL,_binary '',_binary '','2027-06-14','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(632,'2024-01-17 04:35:40.000000',NULL,_binary '',_binary '\0','2024-01-30','Óleo',NULL,_binary '',NULL,NULL,3,3,NULL,2),(633,'2024-05-29 06:04:19.000000',NULL,_binary '',_binary '\0','2024-06-06','Óleo',NULL,_binary '',NULL,NULL,9,3,NULL,2),(634,'2027-03-03 23:25:22.000000',NULL,_binary '',_binary '','2027-03-14','Óleo',NULL,_binary '\0',NULL,NULL,5,3,NULL,2),(635,'2026-09-30 22:38:04.000000',NULL,_binary '',_binary '\0','2026-10-06','Óleo',NULL,_binary '\0',NULL,NULL,21,3,NULL,2),(636,'2025-07-26 12:27:56.000000',NULL,_binary '\0',_binary '','2025-08-09','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(637,'2025-07-06 14:19:45.000000',NULL,_binary '',_binary '\0','2025-07-27','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(638,'2024-11-27 06:50:43.000000',NULL,_binary '',_binary '','2024-11-30','Óleo',NULL,_binary '',NULL,NULL,24,3,NULL,2),(639,'2025-04-05 19:05:52.000000',NULL,_binary '\0',_binary '','2025-04-28','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(640,'2027-01-01 21:03:40.000000',NULL,_binary '\0',_binary '\0','2027-01-25','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(641,'2025-05-11 19:45:36.000000',NULL,_binary '\0',_binary '\0','2025-06-02','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(642,'2025-12-05 03:58:25.000000',NULL,_binary '\0',_binary '\0','2025-12-30','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(643,'2027-11-09 11:50:36.000000',NULL,_binary '',_binary '\0','2027-11-15','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(644,'2026-10-06 21:04:33.000000',NULL,_binary '\0',_binary '','2026-10-29','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(645,'2024-04-13 02:23:16.000000',NULL,_binary '\0',_binary '\0','2024-05-05','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(646,'2027-08-25 05:53:07.000000',NULL,_binary '\0',_binary '','2027-08-26','Óleo',NULL,_binary '\0',NULL,NULL,4,3,NULL,2),(647,'2026-06-29 15:34:49.000000',NULL,_binary '\0',_binary '','2026-07-13','Óleo',NULL,_binary '\0',NULL,NULL,18,3,NULL,2),(648,'2024-01-10 22:34:12.000000',NULL,_binary '',_binary '','2024-02-06','Óleo',NULL,_binary '',NULL,NULL,20,3,NULL,2),(649,'2024-10-25 15:42:44.000000',NULL,_binary '',_binary '\0','2024-11-15','Óleo',NULL,_binary '',NULL,NULL,15,3,NULL,2),(650,'2027-01-18 01:23:37.000000',NULL,_binary '\0',_binary '','2027-01-22','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(651,'2024-02-22 06:26:39.000000',NULL,_binary '\0',_binary '\0','2024-02-26','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(652,'2026-10-25 15:12:06.000000',NULL,_binary '\0',_binary '\0','2026-11-13','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(653,'2024-05-28 20:34:12.000000',NULL,_binary '',_binary '\0','2024-06-17','Óleo',NULL,_binary '',NULL,NULL,13,3,NULL,2),(654,'2025-06-12 08:17:54.000000',NULL,_binary '',_binary '\0','2025-07-10','Óleo',NULL,_binary '\0',NULL,NULL,4,3,NULL,2),(655,'2027-11-27 10:00:00.000000',NULL,_binary '\0',_binary '','2027-11-30','Óleo',NULL,_binary '\0',NULL,NULL,25,3,NULL,2),(656,'2026-06-12 02:29:03.000000',NULL,_binary '',_binary '\0','2026-06-25','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(657,'2026-06-26 02:32:17.000000',NULL,_binary '',_binary '','2026-06-26','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(658,'2024-08-08 15:42:22.000000',NULL,_binary '',_binary '\0','2024-08-13','Óleo',NULL,_binary '',NULL,NULL,14,3,NULL,2),(659,'2024-05-22 21:38:35.000000',NULL,_binary '\0',_binary '\0','2024-05-28','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(660,'2025-05-18 17:01:52.000000',NULL,_binary '',_binary '\0','2025-06-07','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(661,'2024-11-23 23:16:03.000000',NULL,_binary '\0',_binary '','2024-12-01','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(662,'2027-09-28 23:57:22.000000',NULL,_binary '\0',_binary '','2027-09-28','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(663,'2027-12-04 15:51:13.000000',NULL,_binary '\0',_binary '','2028-01-01','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(664,'2024-06-05 08:00:51.000000',NULL,_binary '\0',_binary '','2024-06-25','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(665,'2026-05-08 13:57:11.000000',NULL,_binary '\0',_binary '','2026-05-20','Óleo',NULL,_binary '\0',NULL,NULL,5,3,NULL,2),(666,'2026-11-25 00:50:43.000000',NULL,_binary '',_binary '','2026-12-08','Óleo',NULL,_binary '\0',NULL,NULL,13,3,NULL,2),(667,'2025-01-01 17:23:35.000000',NULL,_binary '',_binary '\0','2025-01-09','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(668,'2025-07-07 09:00:35.000000',NULL,_binary '',_binary '','2025-07-25','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(669,'2025-01-31 01:32:50.000000',NULL,_binary '',_binary '\0','2025-02-06','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(670,'2026-01-25 11:43:25.000000',NULL,_binary '',_binary '','2026-02-01','Óleo',NULL,_binary '\0',NULL,NULL,10,3,NULL,2),(671,'2024-01-16 23:15:41.000000',NULL,_binary '',_binary '\0','2024-01-27','Óleo',NULL,_binary '',NULL,NULL,13,3,NULL,2),(672,'2024-11-08 15:03:50.000000',NULL,_binary '\0',_binary '','2024-11-22','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(673,'2026-10-22 14:58:20.000000',NULL,_binary '\0',_binary '\0','2026-11-17','Óleo',NULL,_binary '\0',NULL,NULL,23,3,NULL,2),(674,'2027-03-30 08:48:17.000000',NULL,_binary '\0',_binary '','2027-04-08','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(675,'2025-08-10 09:39:32.000000',NULL,_binary '',_binary '','2025-08-29','Óleo',NULL,_binary '\0',NULL,NULL,21,3,NULL,2),(676,'2024-11-01 13:00:26.000000',NULL,_binary '\0',_binary '','2024-11-21','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(677,'2027-12-24 23:23:45.000000',NULL,_binary '',_binary '','2028-01-19','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(678,'2024-01-09 05:11:17.000000',NULL,_binary '\0',_binary '','2024-01-13','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(679,'2025-02-11 03:47:11.000000',NULL,_binary '',_binary '\0','2025-02-28','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(680,'2025-05-08 15:40:50.000000',NULL,_binary '\0',_binary '\0','2025-05-31','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(681,'2025-08-19 04:54:57.000000',NULL,_binary '',_binary '\0','2025-09-03','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(682,'2026-04-14 14:07:28.000000',NULL,_binary '\0',_binary '\0','2026-04-20','Óleo',NULL,_binary '\0',NULL,NULL,23,3,NULL,2),(683,'2027-04-06 10:10:58.000000',NULL,_binary '',_binary '\0','2027-04-19','Óleo',NULL,_binary '\0',NULL,NULL,23,3,NULL,2),(684,'2024-12-15 11:11:49.000000',NULL,_binary '',_binary '','2024-12-31','Óleo',NULL,_binary '\0',NULL,NULL,17,3,NULL,2),(685,'2026-09-18 10:06:45.000000',NULL,_binary '\0',_binary '\0','2026-09-23','Óleo',NULL,_binary '\0',NULL,NULL,18,3,NULL,2),(686,'2024-01-03 20:44:16.000000',NULL,_binary '\0',_binary '','2024-02-01','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(687,'2027-04-26 06:45:13.000000',NULL,_binary '',_binary '','2027-05-25','Óleo',NULL,_binary '\0',NULL,NULL,17,3,NULL,2),(688,'2025-07-06 21:35:29.000000',NULL,_binary '\0',_binary '\0','2025-07-20','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(689,'2027-05-14 00:59:50.000000',NULL,_binary '',_binary '\0','2027-05-25','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(690,'2024-11-25 21:27:29.000000',NULL,_binary '',_binary '\0','2024-11-26','Óleo',NULL,_binary '',NULL,NULL,11,3,NULL,2),(691,'2027-11-21 13:48:38.000000',NULL,_binary '',_binary '\0','2027-12-04','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(692,'2027-03-31 23:24:10.000000',NULL,_binary '\0',_binary '\0','2027-03-31','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(693,'2026-01-27 15:19:58.000000',NULL,_binary '',_binary '\0','2026-02-09','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(694,'2026-11-21 09:05:57.000000',NULL,_binary '',_binary '\0','2026-11-30','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(695,'2025-02-22 07:26:41.000000',NULL,_binary '',_binary '','2025-03-09','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(696,'2027-07-20 03:35:06.000000',NULL,_binary '\0',_binary '','2027-08-06','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(697,'2026-06-10 19:28:23.000000',NULL,_binary '\0',_binary '','2026-07-02','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(698,'2025-12-11 04:01:53.000000',NULL,_binary '\0',_binary '\0','2026-01-04','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(699,'2025-02-05 12:34:18.000000',NULL,_binary '',_binary '\0','2025-02-23','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(700,'2025-11-08 17:47:15.000000',NULL,_binary '\0',_binary '\0','2025-12-01','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(701,'2025-01-03 11:35:52.000000',NULL,_binary '',_binary '','2025-01-09','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(702,'2025-10-28 09:27:59.000000',NULL,_binary '',_binary '','2025-11-06','Óleo',NULL,_binary '\0',NULL,NULL,5,3,NULL,2),(703,'2027-06-10 18:59:59.000000',NULL,_binary '\0',_binary '','2027-06-22','Óleo',NULL,_binary '\0',NULL,NULL,14,3,NULL,2),(704,'2025-07-08 08:03:23.000000',NULL,_binary '',_binary '','2025-08-01','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(705,'2026-07-25 03:44:04.000000',NULL,_binary '',_binary '','2026-08-07','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(706,'2026-07-03 18:27:41.000000',NULL,_binary '',_binary '','2026-07-25','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(707,'2025-01-28 01:28:49.000000',NULL,_binary '',_binary '\0','2025-01-30','Óleo',NULL,_binary '\0',NULL,NULL,12,3,NULL,2),(708,'2024-01-02 15:53:31.000000',NULL,_binary '\0',_binary '','2024-01-27','Óleo',NULL,_binary '\0',NULL,NULL,14,3,NULL,2),(709,'2024-08-23 04:49:01.000000',NULL,_binary '',_binary '','2024-09-04','Óleo',NULL,_binary '',NULL,NULL,3,3,NULL,2),(710,'2025-01-22 00:23:00.000000',NULL,_binary '\0',_binary '\0','2025-02-20','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(711,'2025-04-29 01:41:03.000000',NULL,_binary '\0',_binary '','2025-05-22','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(712,'2026-09-07 17:51:42.000000',NULL,_binary '',_binary '\0','2026-09-18','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(713,'2024-10-31 19:10:12.000000',NULL,_binary '\0',_binary '\0','2024-11-04','Óleo',NULL,_binary '\0',NULL,NULL,9,3,NULL,2),(714,'2025-01-22 07:42:43.000000',NULL,_binary '',_binary '\0','2025-01-22','Óleo',NULL,_binary '\0',NULL,NULL,23,3,NULL,2),(715,'2025-03-21 21:15:07.000000',NULL,_binary '',_binary '','2025-04-19','Óleo',NULL,_binary '\0',NULL,NULL,5,3,NULL,2),(716,'2027-09-15 02:59:21.000000',NULL,_binary '',_binary '','2027-10-03','Óleo',NULL,_binary '\0',NULL,NULL,17,3,NULL,2),(717,'2025-06-24 21:34:28.000000',NULL,_binary '\0',_binary '\0','2025-07-22','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(718,'2026-07-11 20:47:40.000000',NULL,_binary '\0',_binary '','2026-07-29','Óleo',NULL,_binary '\0',NULL,NULL,9,3,NULL,2),(719,'2027-04-10 02:10:22.000000',NULL,_binary '',_binary '','2027-04-26','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(720,'2025-05-21 22:47:02.000000',NULL,_binary '',_binary '','2025-05-30','Óleo',NULL,_binary '\0',NULL,NULL,12,3,NULL,2),(721,'2025-06-22 11:30:03.000000',NULL,_binary '\0',_binary '\0','2025-06-27','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(722,'2024-08-28 23:11:44.000000',NULL,_binary '\0',_binary '','2024-09-25','Óleo',NULL,_binary '\0',NULL,NULL,10,3,NULL,2),(723,'2024-02-12 00:22:42.000000',NULL,_binary '',_binary '','2024-02-29','Óleo',NULL,_binary '',NULL,NULL,4,3,NULL,2),(724,'2027-11-30 11:24:38.000000',NULL,_binary '\0',_binary '','2027-12-16','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(725,'2025-07-08 16:34:01.000000',NULL,_binary '\0',_binary '\0','2025-07-23','Óleo',NULL,_binary '\0',NULL,NULL,5,3,NULL,2),(726,'2025-04-01 00:22:43.000000',NULL,_binary '\0',_binary '','2025-04-27','Óleo',NULL,_binary '\0',NULL,NULL,9,3,NULL,2),(727,'2024-10-17 21:59:09.000000',NULL,_binary '',_binary '\0','2024-11-12','Óleo',NULL,_binary '',NULL,NULL,24,3,NULL,2),(728,'2027-10-17 23:38:35.000000',NULL,_binary '\0',_binary '\0','2027-11-14','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(729,'2024-10-27 19:25:58.000000',NULL,_binary '\0',_binary '','2024-11-05','Óleo',NULL,_binary '\0',NULL,NULL,12,3,NULL,2),(730,'2025-04-14 05:26:38.000000',NULL,_binary '\0',_binary '\0','2025-04-24','Óleo',NULL,_binary '\0',NULL,NULL,5,3,NULL,2),(731,'2027-11-03 05:03:42.000000',NULL,_binary '\0',_binary '\0','2027-11-22','Óleo',NULL,_binary '\0',NULL,NULL,14,3,NULL,2),(732,'2026-12-16 02:09:50.000000',NULL,_binary '\0',_binary '','2027-01-07','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(733,'2027-08-11 10:46:53.000000',NULL,_binary '',_binary '\0','2027-08-12','Óleo',NULL,_binary '\0',NULL,NULL,9,3,NULL,2),(734,'2025-08-20 01:59:00.000000',NULL,_binary '\0',_binary '','2025-09-14','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(735,'2026-02-06 23:30:34.000000',NULL,_binary '\0',_binary '','2026-02-16','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(736,'2026-08-17 01:44:04.000000',NULL,_binary '\0',_binary '','2026-08-31','Óleo',NULL,_binary '\0',NULL,NULL,7,3,NULL,2),(737,'2027-06-29 13:19:44.000000',NULL,_binary '\0',_binary '\0','2027-07-01','Óleo',NULL,_binary '\0',NULL,NULL,4,3,NULL,2),(738,'2025-09-14 16:50:59.000000',NULL,_binary '\0',_binary '\0','2025-10-01','Óleo',NULL,_binary '\0',NULL,NULL,18,3,NULL,2),(739,'2026-11-04 12:09:44.000000',NULL,_binary '\0',_binary '\0','2026-11-09','Óleo',NULL,_binary '\0',NULL,NULL,14,3,NULL,2),(740,'2024-08-16 03:11:59.000000',NULL,_binary '\0',_binary '','2024-08-25','Óleo',NULL,_binary '\0',NULL,NULL,23,3,NULL,2),(741,'2025-11-11 15:51:12.000000',NULL,_binary '',_binary '','2025-12-10','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(742,'2026-01-27 17:11:16.000000',NULL,_binary '\0',_binary '','2026-02-19','Óleo',NULL,_binary '\0',NULL,NULL,25,3,NULL,2),(743,'2026-08-09 06:12:58.000000',NULL,_binary '\0',_binary '','2026-08-26','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(744,'2024-12-09 13:33:10.000000',NULL,_binary '\0',_binary '','2024-12-12','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(745,'2025-04-28 19:54:31.000000',NULL,_binary '\0',_binary '\0','2025-05-26','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(746,'2027-07-07 12:53:59.000000',NULL,_binary '\0',_binary '','2027-07-08','Óleo',NULL,_binary '\0',NULL,NULL,7,3,NULL,2),(747,'2024-10-15 04:59:40.000000',NULL,_binary '\0',_binary '','2024-11-05','Óleo',NULL,_binary '\0',NULL,NULL,21,3,NULL,2),(748,'2027-05-19 19:18:53.000000',NULL,_binary '\0',_binary '\0','2027-06-07','Óleo',NULL,_binary '\0',NULL,NULL,7,3,NULL,2),(749,'2024-12-25 11:40:59.000000',NULL,_binary '',_binary '\0','2025-01-23','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(750,'2025-09-26 12:58:22.000000',NULL,_binary '\0',_binary '\0','2025-10-16','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(751,'2025-10-28 08:56:17.000000',NULL,_binary '\0',_binary '\0','2025-11-04','Óleo',NULL,_binary '\0',NULL,NULL,5,3,NULL,2),(752,'2024-09-22 08:43:11.000000',NULL,_binary '\0',_binary '\0','2024-10-07','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(753,'2025-03-11 04:33:43.000000',NULL,_binary '\0',_binary '','2025-03-22','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(754,'2026-02-09 10:57:46.000000',NULL,_binary '',_binary '\0','2026-02-25','Óleo',NULL,_binary '\0',NULL,NULL,10,3,NULL,2),(755,'2025-02-02 04:44:28.000000',NULL,_binary '\0',_binary '\0','2025-02-25','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(756,'2024-10-01 15:09:42.000000',NULL,_binary '',_binary '\0','2024-10-19','Óleo',NULL,_binary '',NULL,NULL,23,3,NULL,2),(757,'2026-02-24 00:58:48.000000',NULL,_binary '',_binary '','2026-03-06','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(758,'2026-01-19 14:42:23.000000',NULL,_binary '',_binary '','2026-01-28','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(759,'2026-04-03 21:15:32.000000',NULL,_binary '',_binary '\0','2026-05-01','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(760,'2025-02-13 12:51:26.000000',NULL,_binary '',_binary '','2025-02-24','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(761,'2027-09-07 22:43:36.000000',NULL,_binary '',_binary '\0','2027-09-11','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(762,'2024-10-16 19:05:49.000000',NULL,_binary '\0',_binary '','2024-10-30','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(763,'2027-01-22 07:04:32.000000',NULL,_binary '\0',_binary '\0','2027-02-05','Óleo',NULL,_binary '\0',NULL,NULL,12,3,NULL,2),(764,'2027-05-18 19:42:00.000000',NULL,_binary '',_binary '\0','2027-05-25','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(765,'2025-10-08 02:46:42.000000',NULL,_binary '\0',_binary '','2025-10-30','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(766,'2024-06-08 07:40:50.000000',NULL,_binary '\0',_binary '\0','2024-06-14','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(767,'2025-07-16 12:44:48.000000',NULL,_binary '\0',_binary '','2025-07-16','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(768,'2024-05-15 03:38:30.000000',NULL,_binary '\0',_binary '','2024-05-23','Óleo',NULL,_binary '\0',NULL,NULL,17,3,NULL,2),(769,'2025-05-26 19:19:09.000000',NULL,_binary '',_binary '\0','2025-06-04','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(770,'2026-02-14 17:47:27.000000',NULL,_binary '\0',_binary '\0','2026-02-25','Óleo',NULL,_binary '\0',NULL,NULL,21,3,NULL,2),(771,'2027-11-22 10:09:00.000000',NULL,_binary '\0',_binary '','2027-12-18','Óleo',NULL,_binary '\0',NULL,NULL,11,3,NULL,2),(772,'2025-04-24 10:17:41.000000',NULL,_binary '\0',_binary '','2025-04-26','Óleo',NULL,_binary '\0',NULL,NULL,21,3,NULL,2),(773,'2027-05-21 19:21:03.000000',NULL,_binary '\0',_binary '\0','2027-06-10','Óleo',NULL,_binary '\0',NULL,NULL,9,3,NULL,2),(774,'2026-05-22 23:57:47.000000',NULL,_binary '\0',_binary '','2026-06-02','Óleo',NULL,_binary '\0',NULL,NULL,25,3,NULL,2),(775,'2026-09-26 12:06:34.000000',NULL,_binary '\0',_binary '','2026-10-18','Óleo',NULL,_binary '\0',NULL,NULL,7,3,NULL,2),(776,'2027-11-11 02:35:20.000000',NULL,_binary '',_binary '','2027-11-25','Óleo',NULL,_binary '\0',NULL,NULL,18,3,NULL,2),(777,'2024-09-21 17:59:15.000000',NULL,_binary '\0',_binary '','2024-09-28','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(778,'2027-06-16 13:23:57.000000',NULL,_binary '\0',_binary '\0','2027-07-15','Óleo',NULL,_binary '\0',NULL,NULL,25,3,NULL,2),(779,'2027-08-10 14:24:04.000000',NULL,_binary '\0',_binary '','2027-08-23','Óleo',NULL,_binary '\0',NULL,NULL,7,3,NULL,2),(780,'2027-09-26 21:36:53.000000',NULL,_binary '',_binary '','2027-10-21','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(781,'2024-08-03 21:24:09.000000',NULL,_binary '\0',_binary '\0','2024-09-01','Óleo',NULL,_binary '\0',NULL,NULL,18,3,NULL,2),(782,'2026-03-16 15:42:57.000000',NULL,_binary '',_binary '\0','2026-04-09','Óleo',NULL,_binary '\0',NULL,NULL,17,3,NULL,2),(783,'2027-08-03 11:36:32.000000',NULL,_binary '',_binary '\0','2027-08-24','Óleo',NULL,_binary '\0',NULL,NULL,25,3,NULL,2),(784,'2027-05-27 06:39:20.000000',NULL,_binary '',_binary '\0','2027-06-01','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(785,'2027-01-30 06:45:56.000000',NULL,_binary '\0',_binary '','2027-02-26','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(786,'2025-04-08 18:25:12.000000',NULL,_binary '',_binary '\0','2025-05-07','Óleo',NULL,_binary '\0',NULL,NULL,13,3,NULL,2),(787,'2026-01-07 01:42:21.000000',NULL,_binary '',_binary '','2026-01-19','Óleo',NULL,_binary '\0',NULL,NULL,5,3,NULL,2),(788,'2026-06-23 13:13:36.000000',NULL,_binary '',_binary '','2026-07-06','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(789,'2026-05-20 14:27:54.000000',NULL,_binary '\0',_binary '\0','2026-06-16','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(790,'2024-08-19 01:39:55.000000',NULL,_binary '',_binary '\0','2024-08-23','Óleo',NULL,_binary '',NULL,NULL,6,3,NULL,2),(791,'2026-12-10 23:49:09.000000',NULL,_binary '',_binary '','2026-12-31','Óleo',NULL,_binary '\0',NULL,NULL,7,3,NULL,2),(792,'2024-04-14 14:26:22.000000',NULL,_binary '',_binary '\0','2024-04-26','Óleo',NULL,_binary '',NULL,NULL,16,3,NULL,2),(793,'2027-07-29 13:45:38.000000',NULL,_binary '\0',_binary '\0','2027-08-11','Óleo',NULL,_binary '\0',NULL,NULL,17,3,NULL,2),(794,'2027-12-18 22:39:35.000000',NULL,_binary '',_binary '','2027-12-25','Óleo',NULL,_binary '\0',NULL,NULL,13,3,NULL,2),(795,'2027-05-05 15:31:28.000000',NULL,_binary '',_binary '','2027-05-13','Óleo',NULL,_binary '\0',NULL,NULL,10,3,NULL,2),(796,'2027-10-24 16:14:51.000000',NULL,_binary '',_binary '','2027-11-03','Óleo',NULL,_binary '\0',NULL,NULL,25,3,NULL,2),(797,'2027-08-18 13:36:37.000000',NULL,_binary '\0',_binary '','2027-09-16','Óleo',NULL,_binary '\0',NULL,NULL,7,3,NULL,2),(798,'2025-09-17 08:06:45.000000',NULL,_binary '\0',_binary '\0','2025-10-12','Óleo',NULL,_binary '\0',NULL,NULL,4,3,NULL,2),(799,'2024-11-28 16:47:17.000000',NULL,_binary '',_binary '','2024-12-10','Óleo',NULL,_binary '\0',NULL,NULL,4,3,NULL,2),(800,'2025-08-20 16:03:24.000000',NULL,_binary '\0',_binary '','2025-09-05','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(801,'2024-06-08 17:12:04.000000',NULL,_binary '\0',_binary '\0','2024-07-04','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(802,'2027-01-26 13:29:42.000000',NULL,_binary '',_binary '','2027-02-16','Óleo',NULL,_binary '\0',NULL,NULL,1,3,NULL,2),(803,'2027-12-16 20:57:25.000000',NULL,_binary '\0',_binary '\0','2028-01-03','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(804,'2027-06-15 12:27:03.000000',NULL,_binary '\0',_binary '\0','2027-06-23','Óleo',NULL,_binary '\0',NULL,NULL,25,3,NULL,2),(805,'2024-07-01 15:53:37.000000',NULL,_binary '',_binary '','2024-07-20','Óleo',NULL,_binary '',NULL,NULL,7,3,NULL,2),(806,'2024-11-06 08:09:08.000000',NULL,_binary '\0',_binary '\0','2024-11-12','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(807,'2026-01-05 19:59:58.000000',NULL,_binary '',_binary '','2026-02-01','Óleo',NULL,_binary '\0',NULL,NULL,8,3,NULL,2),(808,'2026-10-04 13:42:02.000000',NULL,_binary '',_binary '\0','2026-10-24','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(809,'2026-09-22 04:38:32.000000',NULL,_binary '',_binary '\0','2026-10-03','Óleo',NULL,_binary '\0',NULL,NULL,21,3,NULL,2),(810,'2027-11-04 08:11:57.000000',NULL,_binary '',_binary '\0','2027-11-04','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(811,'2027-07-09 01:04:12.000000',NULL,_binary '',_binary '','2027-07-13','Óleo',NULL,_binary '\0',NULL,NULL,10,3,NULL,2),(812,'2025-07-29 21:12:47.000000',NULL,_binary '\0',_binary '','2025-08-27','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(813,'2025-01-18 14:44:07.000000',NULL,_binary '\0',_binary '','2025-02-16','Óleo',NULL,_binary '\0',NULL,NULL,4,3,NULL,2),(814,'2027-07-18 22:59:46.000000',NULL,_binary '\0',_binary '','2027-08-01','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(815,'2024-04-06 00:24:02.000000',NULL,_binary '',_binary '\0','2024-04-12','Óleo',NULL,_binary '',NULL,NULL,24,3,NULL,2),(816,'2024-03-11 10:22:38.000000',NULL,_binary '\0',_binary '','2024-04-06','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(817,'2027-04-08 18:56:43.000000',NULL,_binary '\0',_binary '\0','2027-04-08','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(818,'2024-08-31 06:36:29.000000',NULL,_binary '',_binary '','2024-09-04','Óleo',NULL,_binary '',NULL,NULL,3,3,NULL,2),(819,'2024-02-15 20:39:50.000000',NULL,_binary '\0',_binary '\0','2024-03-07','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(820,'2027-11-23 04:10:03.000000',NULL,_binary '',_binary '\0','2027-11-28','Óleo',NULL,_binary '\0',NULL,NULL,7,3,NULL,2),(821,'2027-05-03 08:34:05.000000',NULL,_binary '\0',_binary '\0','2027-05-27','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(822,'2024-03-25 23:28:42.000000',NULL,_binary '',_binary '','2024-03-28','Óleo',NULL,_binary '',NULL,NULL,16,3,NULL,2),(823,'2026-12-06 19:40:30.000000',NULL,_binary '',_binary '\0','2026-12-20','Óleo',NULL,_binary '\0',NULL,NULL,6,3,NULL,2),(824,'2027-03-07 06:14:12.000000',NULL,_binary '',_binary '','2027-03-12','Óleo',NULL,_binary '\0',NULL,NULL,13,3,NULL,2),(825,'2027-12-23 11:21:23.000000',NULL,_binary '\0',_binary '\0','2028-01-01','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(826,'2025-03-17 09:16:44.000000',NULL,_binary '\0',_binary '','2025-04-09','Óleo',NULL,_binary '\0',NULL,NULL,25,3,NULL,2),(827,'2025-12-11 13:07:12.000000',NULL,_binary '\0',_binary '','2026-01-04','Óleo',NULL,_binary '\0',NULL,NULL,23,3,NULL,2),(828,'2027-12-25 07:39:29.000000',NULL,_binary '',_binary '\0','2028-01-10','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(829,'2024-12-17 10:41:39.000000',NULL,_binary '',_binary '\0','2024-12-30','Óleo',NULL,_binary '\0',NULL,NULL,16,3,NULL,2),(830,'2027-03-26 03:57:31.000000',NULL,_binary '\0',_binary '','2027-04-04','Óleo',NULL,_binary '\0',NULL,NULL,2,3,NULL,2),(831,'2025-09-21 22:12:59.000000',NULL,_binary '\0',_binary '','2025-10-05','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(832,'2025-03-03 04:58:54.000000',NULL,_binary '\0',_binary '\0','2025-03-14','Óleo',NULL,_binary '\0',NULL,NULL,10,3,NULL,2),(833,'2026-10-20 09:49:56.000000',NULL,_binary '',_binary '\0','2026-11-08','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(834,'2027-01-04 13:13:59.000000',NULL,_binary '\0',_binary '','2027-01-24','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(835,'2026-08-10 10:15:17.000000',NULL,_binary '\0',_binary '','2026-08-25','Óleo',NULL,_binary '\0',NULL,NULL,19,3,NULL,2),(836,'2024-08-29 14:26:26.000000',NULL,_binary '',_binary '','2024-09-05','Óleo',NULL,_binary '',NULL,NULL,25,3,NULL,2),(837,'2024-08-29 20:59:08.000000',NULL,_binary '',_binary '','2024-09-02','Óleo',NULL,_binary '',NULL,NULL,14,3,NULL,2),(838,'2024-09-18 07:08:43.000000',NULL,_binary '',_binary '','2024-10-01','Óleo',NULL,_binary '',NULL,NULL,18,3,NULL,2),(839,'2024-11-04 21:35:40.000000',NULL,_binary '',_binary '','2024-11-19','Óleo',NULL,_binary '',NULL,NULL,18,3,NULL,2),(840,'2024-01-25 22:43:52.000000',NULL,_binary '',_binary '','2024-02-19','Óleo',NULL,_binary '',NULL,NULL,13,3,NULL,2),(841,'2024-01-31 13:26:40.000000',NULL,_binary '',_binary '\0','2024-02-24','Óleo',NULL,_binary '',NULL,NULL,3,3,NULL,2),(842,'2027-10-21 12:17:21.000000',NULL,_binary '',_binary '','2027-11-14','Óleo',NULL,_binary '\0',NULL,NULL,3,3,NULL,2),(843,'2024-04-28 02:20:51.000000',NULL,_binary '\0',_binary '','2024-05-25','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(844,'2024-08-25 11:19:05.000000',NULL,_binary '',_binary '','2024-08-26','Óleo',NULL,_binary '',NULL,NULL,12,3,NULL,2),(845,'2024-08-21 09:49:54.000000',NULL,_binary '',_binary '','2024-09-01','Óleo',NULL,_binary '',NULL,NULL,1,3,NULL,2),(846,'2027-12-26 21:53:25.000000',NULL,_binary '',_binary '\0','2028-01-20','Óleo',NULL,_binary '\0',NULL,NULL,24,3,NULL,2),(847,'2024-03-31 12:54:21.000000',NULL,_binary '',_binary '','2024-03-31','Óleo',NULL,_binary '',NULL,NULL,9,3,NULL,2),(848,'2026-12-10 14:40:37.000000',NULL,_binary '',_binary '\0','2026-12-26','Óleo',NULL,_binary '\0',NULL,NULL,12,3,NULL,2),(849,'2026-07-19 19:53:29.000000',NULL,_binary '\0',_binary '','2026-08-08','Óleo',NULL,_binary '\0',NULL,NULL,10,3,NULL,2),(850,'2027-03-05 20:56:25.000000',NULL,_binary '',_binary '\0','2027-03-19','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(851,'2026-01-25 19:00:06.000000',NULL,_binary '\0',_binary '','2026-01-26','Óleo',NULL,_binary '\0',NULL,NULL,9,3,NULL,2),(852,'2025-11-14 08:26:58.000000',NULL,_binary '\0',_binary '','2025-12-01','Óleo',NULL,_binary '\0',NULL,NULL,17,3,NULL,2),(853,'2026-06-01 00:52:21.000000',NULL,_binary '\0',_binary '','2026-06-17','Óleo',NULL,_binary '\0',NULL,NULL,13,3,NULL,2),(854,'2027-08-31 01:34:36.000000',NULL,_binary '',_binary '','2027-09-21','Óleo',NULL,_binary '\0',NULL,NULL,15,3,NULL,2),(855,'2026-07-06 10:54:42.000000',NULL,_binary '\0',_binary '','2026-07-27','Óleo',NULL,_binary '\0',NULL,NULL,22,3,NULL,2),(856,'2024-10-10 08:34:25.000000',NULL,_binary '\0',_binary '','2024-10-13','Óleo',NULL,_binary '\0',NULL,NULL,20,3,NULL,2),(857,'2026-05-15 13:50:44.000000',NULL,_binary '\0',_binary '','2026-06-05','Molho de Tomate',NULL,_binary '\0',NULL,NULL,3,4,NULL,3),(858,'2025-06-26 13:42:07.000000',NULL,_binary '',_binary '','2025-07-17','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(859,'2024-05-06 11:31:05.000000',NULL,_binary '\0',_binary '\0','2024-05-31','Molho de Tomate',NULL,_binary '\0',NULL,NULL,13,4,NULL,3),(860,'2027-12-22 10:25:47.000000',NULL,_binary '\0',_binary '','2028-01-11','Molho de Tomate',NULL,_binary '\0',NULL,NULL,12,4,NULL,3),(861,'2025-01-26 22:47:13.000000',NULL,_binary '',_binary '','2025-02-10','Molho de Tomate',NULL,_binary '\0',NULL,NULL,23,4,NULL,3),(862,'2024-03-09 12:04:03.000000',NULL,_binary '\0',_binary '\0','2024-03-29','Molho de Tomate',NULL,_binary '\0',NULL,NULL,8,4,NULL,3),(863,'2026-02-11 16:57:08.000000',NULL,_binary '',_binary '','2026-02-16','Molho de Tomate',NULL,_binary '\0',NULL,NULL,4,4,NULL,3),(864,'2024-03-30 22:23:48.000000',NULL,_binary '\0',_binary '','2024-04-16','Molho de Tomate',NULL,_binary '\0',NULL,NULL,4,4,NULL,3),(865,'2027-08-17 03:04:29.000000',NULL,_binary '',_binary '\0','2027-08-25','Molho de Tomate',NULL,_binary '\0',NULL,NULL,20,4,NULL,3),(866,'2024-01-11 17:34:22.000000',NULL,_binary '',_binary '\0','2024-01-13','Molho de Tomate',NULL,_binary '',NULL,NULL,11,4,NULL,3),(867,'2027-08-09 05:03:46.000000',NULL,_binary '\0',_binary '\0','2027-08-24','Molho de Tomate',NULL,_binary '\0',NULL,NULL,7,4,NULL,3),(868,'2026-12-28 22:55:57.000000',NULL,_binary '',_binary '','2027-01-08','Molho de Tomate',NULL,_binary '\0',NULL,NULL,14,4,NULL,3),(869,'2026-01-26 23:40:27.000000',NULL,_binary '\0',_binary '','2026-02-10','Molho de Tomate',NULL,_binary '\0',NULL,NULL,21,4,NULL,3),(870,'2026-04-01 07:59:15.000000',NULL,_binary '',_binary '','2026-04-14','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(871,'2027-12-24 22:48:44.000000',NULL,_binary '',_binary '','2028-01-10','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(872,'2024-03-09 08:53:31.000000',NULL,_binary '',_binary '\0','2024-03-12','Molho de Tomate',NULL,_binary '',NULL,NULL,5,4,NULL,3),(873,'2026-03-25 06:25:56.000000',NULL,_binary '',_binary '','2026-04-13','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(874,'2025-04-29 16:37:16.000000',NULL,_binary '\0',_binary '\0','2025-05-25','Molho de Tomate',NULL,_binary '\0',NULL,NULL,16,4,NULL,3),(875,'2025-12-13 13:33:40.000000',NULL,_binary '\0',_binary '\0','2025-12-27','Molho de Tomate',NULL,_binary '\0',NULL,NULL,3,4,NULL,3),(876,'2024-03-28 23:32:33.000000',NULL,_binary '',_binary '','2024-04-03','Molho de Tomate',NULL,_binary '',NULL,NULL,3,4,NULL,3),(877,'2027-07-31 02:56:58.000000',NULL,_binary '',_binary '\0','2027-08-16','Molho de Tomate',NULL,_binary '\0',NULL,NULL,25,4,NULL,3),(878,'2024-07-30 20:15:24.000000',NULL,_binary '',_binary '\0','2024-08-17','Molho de Tomate',NULL,_binary '',NULL,NULL,23,4,NULL,3),(879,'2026-08-29 14:46:22.000000',NULL,_binary '\0',_binary '','2026-09-15','Molho de Tomate',NULL,_binary '\0',NULL,NULL,4,4,NULL,3),(880,'2024-04-28 22:22:02.000000',NULL,_binary '\0',_binary '\0','2024-05-03','Molho de Tomate',NULL,_binary '\0',NULL,NULL,2,4,NULL,3),(881,'2026-12-23 13:06:25.000000',NULL,_binary '\0',_binary '','2027-01-13','Molho de Tomate',NULL,_binary '\0',NULL,NULL,3,4,NULL,3),(882,'2025-04-23 08:03:09.000000',NULL,_binary '',_binary '\0','2025-04-30','Molho de Tomate',NULL,_binary '\0',NULL,NULL,21,4,NULL,3),(883,'2025-04-05 03:45:18.000000',NULL,_binary '',_binary '','2025-04-05','Molho de Tomate',NULL,_binary '\0',NULL,NULL,1,4,NULL,3),(884,'2024-04-23 06:51:36.000000',NULL,_binary '\0',_binary '\0','2024-04-23','Molho de Tomate',NULL,_binary '\0',NULL,NULL,19,4,NULL,3),(885,'2026-06-08 20:19:12.000000',NULL,_binary '\0',_binary '\0','2026-06-14','Molho de Tomate',NULL,_binary '\0',NULL,NULL,15,4,NULL,3),(886,'2025-02-01 15:02:34.000000',NULL,_binary '\0',_binary '','2025-02-18','Molho de Tomate',NULL,_binary '\0',NULL,NULL,20,4,NULL,3),(887,'2024-07-31 09:34:17.000000',NULL,_binary '',_binary '','2024-08-08','Molho de Tomate',NULL,_binary '',NULL,NULL,15,4,NULL,3),(888,'2024-07-20 22:05:02.000000',NULL,_binary '\0',_binary '\0','2024-07-28','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(889,'2027-08-09 15:19:19.000000',NULL,_binary '\0',_binary '','2027-08-13','Molho de Tomate',NULL,_binary '\0',NULL,NULL,5,4,NULL,3),(890,'2025-09-14 14:39:43.000000',NULL,_binary '',_binary '\0','2025-10-10','Molho de Tomate',NULL,_binary '\0',NULL,NULL,7,4,NULL,3),(891,'2026-08-07 11:41:33.000000',NULL,_binary '\0',_binary '','2026-08-17','Molho de Tomate',NULL,_binary '\0',NULL,NULL,23,4,NULL,3),(892,'2025-09-02 09:30:18.000000',NULL,_binary '',_binary '\0','2025-09-03','Molho de Tomate',NULL,_binary '\0',NULL,NULL,23,4,NULL,3),(893,'2025-06-19 03:04:23.000000',NULL,_binary '',_binary '\0','2025-07-17','Molho de Tomate',NULL,_binary '\0',NULL,NULL,21,4,NULL,3),(894,'2025-01-31 21:03:43.000000',NULL,_binary '',_binary '\0','2025-02-13','Molho de Tomate',NULL,_binary '\0',NULL,NULL,14,4,NULL,3),(895,'2025-02-09 19:46:08.000000',NULL,_binary '\0',_binary '','2025-03-08','Molho de Tomate',NULL,_binary '\0',NULL,NULL,18,4,NULL,3),(896,'2026-10-29 11:26:39.000000',NULL,_binary '\0',_binary '','2026-11-16','Molho de Tomate',NULL,_binary '\0',NULL,NULL,10,4,NULL,3),(897,'2024-08-17 14:26:25.000000',NULL,_binary '',_binary '','2024-09-09','Molho de Tomate',NULL,_binary '',NULL,NULL,7,4,NULL,3),(898,'2027-07-15 16:47:00.000000',NULL,_binary '',_binary '\0','2027-07-16','Molho de Tomate',NULL,_binary '\0',NULL,NULL,22,4,NULL,3),(899,'2024-08-16 05:16:15.000000',NULL,_binary '',_binary '\0','2024-08-31','Molho de Tomate',NULL,_binary '',NULL,NULL,5,4,NULL,3),(900,'2025-02-15 21:32:53.000000',NULL,_binary '',_binary '','2025-03-08','Molho de Tomate',NULL,_binary '\0',NULL,NULL,25,4,NULL,3),(901,'2026-10-10 13:49:25.000000',NULL,_binary '',_binary '\0','2026-11-06','Molho de Tomate',NULL,_binary '\0',NULL,NULL,19,4,NULL,3),(902,'2027-12-04 16:38:14.000000',NULL,_binary '',_binary '','2027-12-06','Molho de Tomate',NULL,_binary '\0',NULL,NULL,20,4,NULL,3),(903,'2026-12-02 06:42:29.000000',NULL,_binary '\0',_binary '\0','2026-12-12','Molho de Tomate',NULL,_binary '\0',NULL,NULL,3,4,NULL,3),(904,'2026-03-21 10:28:57.000000',NULL,_binary '',_binary '\0','2026-04-15','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(905,'2024-11-10 01:03:53.000000',NULL,_binary '',_binary '','2024-12-09','Molho de Tomate',NULL,_binary '\0',NULL,NULL,19,4,NULL,3),(906,'2026-09-12 04:22:47.000000',NULL,_binary '',_binary '','2026-10-06','Molho de Tomate',NULL,_binary '\0',NULL,NULL,10,4,NULL,3),(907,'2025-06-30 18:58:56.000000',NULL,_binary '',_binary '','2025-07-12','Molho de Tomate',NULL,_binary '\0',NULL,NULL,21,4,NULL,3),(908,'2026-11-13 04:20:49.000000',NULL,_binary '',_binary '\0','2026-12-08','Molho de Tomate',NULL,_binary '\0',NULL,NULL,13,4,NULL,3),(909,'2024-05-07 21:11:04.000000',NULL,_binary '\0',_binary '\0','2024-05-09','Molho de Tomate',NULL,_binary '\0',NULL,NULL,2,4,NULL,3),(910,'2024-08-03 12:10:22.000000',NULL,_binary '\0',_binary '','2024-08-16','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(911,'2025-11-02 05:44:26.000000',NULL,_binary '',_binary '\0','2025-11-12','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(912,'2024-11-28 04:21:02.000000',NULL,_binary '\0',_binary '','2024-12-03','Molho de Tomate',NULL,_binary '\0',NULL,NULL,5,4,NULL,3),(913,'2025-03-22 00:44:49.000000',NULL,_binary '\0',_binary '\0','2025-04-14','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(914,'2027-06-25 09:47:23.000000',NULL,_binary '\0',_binary '','2027-07-03','Molho de Tomate',NULL,_binary '\0',NULL,NULL,18,4,NULL,3),(915,'2026-05-16 21:30:36.000000',NULL,_binary '',_binary '','2026-06-14','Molho de Tomate',NULL,_binary '\0',NULL,NULL,10,4,NULL,3),(916,'2024-05-10 05:59:06.000000',NULL,_binary '',_binary '\0','2024-06-03','Molho de Tomate',NULL,_binary '',NULL,NULL,16,4,NULL,3),(917,'2026-05-31 04:39:50.000000',NULL,_binary '\0',_binary '\0','2026-06-19','Molho de Tomate',NULL,_binary '\0',NULL,NULL,13,4,NULL,3),(918,'2026-05-12 10:58:45.000000',NULL,_binary '',_binary '\0','2026-05-26','Molho de Tomate',NULL,_binary '\0',NULL,NULL,21,4,NULL,3),(919,'2026-04-19 10:59:28.000000',NULL,_binary '',_binary '\0','2026-05-05','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(920,'2024-09-08 18:52:47.000000',NULL,_binary '\0',_binary '','2024-09-19','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(921,'2025-01-09 06:22:07.000000',NULL,_binary '',_binary '','2025-01-17','Molho de Tomate',NULL,_binary '\0',NULL,NULL,10,4,NULL,3),(922,'2024-08-04 13:31:27.000000',NULL,_binary '\0',_binary '\0','2024-08-26','Molho de Tomate',NULL,_binary '\0',NULL,NULL,6,4,NULL,3),(923,'2027-05-18 13:44:17.000000',NULL,_binary '\0',_binary '','2027-06-05','Molho de Tomate',NULL,_binary '\0',NULL,NULL,8,4,NULL,3),(924,'2026-12-28 18:50:31.000000',NULL,_binary '',_binary '\0','2027-01-02','Molho de Tomate',NULL,_binary '\0',NULL,NULL,21,4,NULL,3),(925,'2025-10-21 20:22:43.000000',NULL,_binary '',_binary '','2025-11-15','Molho de Tomate',NULL,_binary '\0',NULL,NULL,14,4,NULL,3),(926,'2024-08-14 03:38:17.000000',NULL,_binary '\0',_binary '\0','2024-08-18','Molho de Tomate',NULL,_binary '\0',NULL,NULL,19,4,NULL,3),(927,'2024-12-15 23:33:25.000000',NULL,_binary '\0',_binary '\0','2024-12-28','Molho de Tomate',NULL,_binary '\0',NULL,NULL,6,4,NULL,3),(928,'2027-04-06 09:12:22.000000',NULL,_binary '\0',_binary '\0','2027-04-23','Molho de Tomate',NULL,_binary '\0',NULL,NULL,8,4,NULL,3),(929,'2026-11-23 17:58:08.000000',NULL,_binary '',_binary '','2026-12-03','Molho de Tomate',NULL,_binary '\0',NULL,NULL,22,4,NULL,3),(930,'2024-12-29 16:32:36.000000',NULL,_binary '',_binary '\0','2024-12-30','Molho de Tomate',NULL,_binary '\0',NULL,NULL,1,4,NULL,3),(931,'2027-09-19 13:46:29.000000',NULL,_binary '\0',_binary '','2027-09-23','Molho de Tomate',NULL,_binary '\0',NULL,NULL,20,4,NULL,3),(932,'2025-09-24 19:19:54.000000',NULL,_binary '',_binary '\0','2025-10-22','Molho de Tomate',NULL,_binary '\0',NULL,NULL,2,4,NULL,3),(933,'2025-12-15 05:49:07.000000',NULL,_binary '',_binary '','2026-01-06','Molho de Tomate',NULL,_binary '\0',NULL,NULL,19,4,NULL,3),(934,'2026-02-20 09:45:09.000000',NULL,_binary '\0',_binary '','2026-02-28','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(935,'2025-07-30 00:59:38.000000',NULL,_binary '\0',_binary '','2025-08-25','Molho de Tomate',NULL,_binary '\0',NULL,NULL,12,4,NULL,3),(936,'2026-04-27 13:32:48.000000',NULL,_binary '\0',_binary '','2026-05-06','Molho de Tomate',NULL,_binary '\0',NULL,NULL,10,4,NULL,3),(937,'2027-12-13 19:20:05.000000',NULL,_binary '\0',_binary '','2027-12-23','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(938,'2027-01-30 23:44:20.000000',NULL,_binary '',_binary '\0','2027-02-02','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(939,'2025-02-25 16:19:37.000000',NULL,_binary '',_binary '','2025-03-14','Molho de Tomate',NULL,_binary '\0',NULL,NULL,2,4,NULL,3),(940,'2025-10-14 02:23:40.000000',NULL,_binary '\0',_binary '\0','2025-11-11','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(941,'2027-06-02 05:32:47.000000',NULL,_binary '',_binary '\0','2027-06-17','Molho de Tomate',NULL,_binary '\0',NULL,NULL,22,4,NULL,3),(942,'2026-09-22 20:26:38.000000',NULL,_binary '\0',_binary '','2026-10-20','Molho de Tomate',NULL,_binary '\0',NULL,NULL,4,4,NULL,3),(943,'2027-10-04 05:48:53.000000',NULL,_binary '\0',_binary '\0','2027-11-02','Molho de Tomate',NULL,_binary '\0',NULL,NULL,7,4,NULL,3),(944,'2025-01-07 13:00:48.000000',NULL,_binary '',_binary '\0','2025-01-27','Molho de Tomate',NULL,_binary '\0',NULL,NULL,4,4,NULL,3),(945,'2026-03-01 08:17:09.000000',NULL,_binary '\0',_binary '\0','2026-03-02','Molho de Tomate',NULL,_binary '\0',NULL,NULL,23,4,NULL,3),(946,'2025-01-15 15:16:24.000000',NULL,_binary '\0',_binary '\0','2025-01-22','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(947,'2027-09-22 20:53:15.000000',NULL,_binary '',_binary '\0','2027-09-27','Molho de Tomate',NULL,_binary '\0',NULL,NULL,12,4,NULL,3),(948,'2026-10-19 03:08:19.000000',NULL,_binary '',_binary '\0','2026-10-24','Molho de Tomate',NULL,_binary '\0',NULL,NULL,21,4,NULL,3),(949,'2026-05-17 11:28:30.000000',NULL,_binary '',_binary '','2026-05-22','Molho de Tomate',NULL,_binary '\0',NULL,NULL,3,4,NULL,3),(950,'2024-03-06 20:46:43.000000',NULL,_binary '\0',_binary '\0','2024-03-14','Molho de Tomate',NULL,_binary '\0',NULL,NULL,7,4,NULL,3),(951,'2025-12-16 15:51:31.000000',NULL,_binary '',_binary '\0','2025-12-28','Molho de Tomate',NULL,_binary '\0',NULL,NULL,15,4,NULL,3),(952,'2026-04-17 03:49:06.000000',NULL,_binary '\0',_binary '','2026-04-24','Molho de Tomate',NULL,_binary '\0',NULL,NULL,15,4,NULL,3),(953,'2024-07-23 23:05:00.000000',NULL,_binary '\0',_binary '\0','2024-07-26','Molho de Tomate',NULL,_binary '\0',NULL,NULL,10,4,NULL,3),(954,'2026-03-22 15:36:26.000000',NULL,_binary '',_binary '','2026-03-25','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(955,'2027-09-20 16:27:41.000000',NULL,_binary '',_binary '\0','2027-10-12','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(956,'2026-02-23 14:38:15.000000',NULL,_binary '\0',_binary '\0','2026-03-09','Molho de Tomate',NULL,_binary '\0',NULL,NULL,11,4,NULL,3),(957,'2026-01-27 09:16:05.000000',NULL,_binary '\0',_binary '','2026-02-09','Molho de Tomate',NULL,_binary '\0',NULL,NULL,2,4,NULL,3),(958,'2024-03-29 01:40:03.000000',NULL,_binary '\0',_binary '','2024-04-15','Molho de Tomate',NULL,_binary '\0',NULL,NULL,2,4,NULL,3),(959,'2026-01-23 10:17:23.000000',NULL,_binary '',_binary '','2026-02-12','Molho de Tomate',NULL,_binary '\0',NULL,NULL,8,4,NULL,3),(960,'2025-08-15 04:11:49.000000',NULL,_binary '',_binary '','2025-09-09','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(961,'2024-11-17 05:47:08.000000',NULL,_binary '',_binary '','2024-11-27','Molho de Tomate',NULL,_binary '',NULL,NULL,19,4,NULL,3),(962,'2026-11-30 09:07:00.000000',NULL,_binary '',_binary '\0','2026-12-29','Molho de Tomate',NULL,_binary '\0',NULL,NULL,16,4,NULL,3),(963,'2024-08-12 22:03:07.000000',NULL,_binary '\0',_binary '','2024-08-15','Molho de Tomate',NULL,_binary '\0',NULL,NULL,23,4,NULL,3),(964,'2024-07-24 23:56:12.000000',NULL,_binary '',_binary '','2024-08-07','Molho de Tomate',NULL,_binary '',NULL,NULL,23,4,NULL,3),(965,'2024-02-20 11:42:16.000000',NULL,_binary '\0',_binary '\0','2024-02-21','Molho de Tomate',NULL,_binary '\0',NULL,NULL,16,4,NULL,3),(966,'2027-09-12 18:46:48.000000',NULL,_binary '\0',_binary '\0','2027-09-20','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(967,'2027-05-28 06:22:46.000000',NULL,_binary '',_binary '\0','2027-05-29','Molho de Tomate',NULL,_binary '\0',NULL,NULL,1,4,NULL,3),(968,'2027-07-18 10:07:11.000000',NULL,_binary '\0',_binary '','2027-08-02','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(969,'2027-04-19 02:17:33.000000',NULL,_binary '\0',_binary '','2027-05-08','Molho de Tomate',NULL,_binary '\0',NULL,NULL,1,4,NULL,3),(970,'2024-09-24 20:24:34.000000',NULL,_binary '',_binary '','2024-10-14','Molho de Tomate',NULL,_binary '',NULL,NULL,13,4,NULL,3),(971,'2025-12-22 23:02:45.000000',NULL,_binary '\0',_binary '','2026-01-09','Molho de Tomate',NULL,_binary '\0',NULL,NULL,25,4,NULL,3),(972,'2027-10-09 19:57:25.000000',NULL,_binary '\0',_binary '\0','2027-10-30','Molho de Tomate',NULL,_binary '\0',NULL,NULL,6,4,NULL,3),(973,'2027-09-08 22:38:04.000000',NULL,_binary '',_binary '','2027-09-30','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(974,'2026-01-24 17:47:57.000000',NULL,_binary '\0',_binary '','2026-02-03','Molho de Tomate',NULL,_binary '\0',NULL,NULL,2,4,NULL,3),(975,'2024-11-06 21:46:19.000000',NULL,_binary '',_binary '','2024-11-10','Molho de Tomate',NULL,_binary '',NULL,NULL,11,4,NULL,3),(976,'2026-11-05 06:25:14.000000',NULL,_binary '\0',_binary '\0','2026-11-17','Molho de Tomate',NULL,_binary '\0',NULL,NULL,14,4,NULL,3),(977,'2025-08-17 09:53:41.000000',NULL,_binary '',_binary '','2025-08-25','Molho de Tomate',NULL,_binary '\0',NULL,NULL,15,4,NULL,3),(978,'2024-01-31 08:42:15.000000',NULL,_binary '',_binary '','2024-02-02','Molho de Tomate',NULL,_binary '',NULL,NULL,11,4,NULL,3),(979,'2027-05-25 23:39:25.000000',NULL,_binary '\0',_binary '','2027-06-11','Molho de Tomate',NULL,_binary '\0',NULL,NULL,1,4,NULL,3),(980,'2025-07-26 21:37:13.000000',NULL,_binary '\0',_binary '','2025-08-16','Molho de Tomate',NULL,_binary '\0',NULL,NULL,18,4,NULL,3),(981,'2025-11-29 05:35:53.000000',NULL,_binary '',_binary '','2025-12-16','Molho de Tomate',NULL,_binary '\0',NULL,NULL,1,4,NULL,3),(982,'2025-04-04 13:17:04.000000',NULL,_binary '',_binary '\0','2025-04-28','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(983,'2027-09-14 14:56:18.000000',NULL,_binary '\0',_binary '','2027-09-14','Molho de Tomate',NULL,_binary '\0',NULL,NULL,16,4,NULL,3),(984,'2024-04-05 11:33:25.000000',NULL,_binary '\0',_binary '','2024-04-17','Molho de Tomate',NULL,_binary '\0',NULL,NULL,8,4,NULL,3),(985,'2024-11-01 03:40:33.000000',NULL,_binary '\0',_binary '\0','2024-11-22','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(986,'2026-03-16 22:07:13.000000',NULL,_binary '',_binary '','2026-03-20','Molho de Tomate',NULL,_binary '\0',NULL,NULL,18,4,NULL,3),(987,'2024-05-15 08:30:09.000000',NULL,_binary '\0',_binary '\0','2024-05-31','Molho de Tomate',NULL,_binary '\0',NULL,NULL,14,4,NULL,3),(988,'2027-12-04 07:57:00.000000',NULL,_binary '',_binary '','2027-12-24','Molho de Tomate',NULL,_binary '\0',NULL,NULL,19,4,NULL,3),(989,'2026-06-25 21:31:29.000000',NULL,_binary '',_binary '\0','2026-07-02','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(990,'2027-11-27 01:34:42.000000',NULL,_binary '\0',_binary '','2027-12-19','Molho de Tomate',NULL,_binary '\0',NULL,NULL,11,4,NULL,3),(991,'2027-01-08 13:36:44.000000',NULL,_binary '',_binary '\0','2027-01-08','Molho de Tomate',NULL,_binary '\0',NULL,NULL,16,4,NULL,3),(992,'2024-02-29 08:44:15.000000',NULL,_binary '',_binary '\0','2024-03-26','Molho de Tomate',NULL,_binary '',NULL,NULL,8,4,NULL,3),(993,'2027-01-09 21:55:40.000000',NULL,_binary '\0',_binary '','2027-02-04','Molho de Tomate',NULL,_binary '\0',NULL,NULL,4,4,NULL,3),(994,'2024-01-17 15:59:42.000000',NULL,_binary '\0',_binary '\0','2024-02-03','Molho de Tomate',NULL,_binary '\0',NULL,NULL,11,4,NULL,3),(995,'2025-04-08 08:28:55.000000',NULL,_binary '',_binary '\0','2025-04-26','Molho de Tomate',NULL,_binary '\0',NULL,NULL,3,4,NULL,3),(996,'2026-08-11 22:31:59.000000',NULL,_binary '',_binary '','2026-08-13','Molho de Tomate',NULL,_binary '\0',NULL,NULL,21,4,NULL,3),(997,'2027-02-19 12:28:56.000000',NULL,_binary '\0',_binary '','2027-03-09','Molho de Tomate',NULL,_binary '\0',NULL,NULL,3,4,NULL,3),(998,'2026-10-13 03:12:43.000000',NULL,_binary '',_binary '','2026-11-05','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(999,'2025-10-17 04:24:26.000000',NULL,_binary '',_binary '\0','2025-11-11','Molho de Tomate',NULL,_binary '\0',NULL,NULL,7,4,NULL,3),(1000,'2026-11-09 20:13:38.000000',NULL,_binary '\0',_binary '','2026-12-05','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(1001,'2024-05-09 14:35:37.000000',NULL,_binary '',_binary '\0','2024-06-04','Molho de Tomate',NULL,_binary '',NULL,NULL,9,4,NULL,3),(1002,'2024-05-16 09:30:21.000000',NULL,_binary '',_binary '\0','2024-05-29','Molho de Tomate',NULL,_binary '',NULL,NULL,8,4,NULL,3),(1003,'2024-12-29 06:52:46.000000',NULL,_binary '',_binary '','2025-01-21','Molho de Tomate',NULL,_binary '\0',NULL,NULL,6,4,NULL,3),(1004,'2027-03-25 08:03:26.000000',NULL,_binary '\0',_binary '\0','2027-04-11','Molho de Tomate',NULL,_binary '\0',NULL,NULL,2,4,NULL,3),(1005,'2026-02-13 12:14:18.000000',NULL,_binary '',_binary '\0','2026-02-25','Molho de Tomate',NULL,_binary '\0',NULL,NULL,8,4,NULL,3),(1006,'2024-12-21 07:51:25.000000',NULL,_binary '',_binary '','2024-12-21','Molho de Tomate',NULL,_binary '\0',NULL,NULL,12,4,NULL,3),(1007,'2024-12-05 18:54:39.000000',NULL,_binary '\0',_binary '','2024-12-19','Molho de Tomate',NULL,_binary '\0',NULL,NULL,23,4,NULL,3),(1008,'2024-05-18 17:44:03.000000',NULL,_binary '\0',_binary '','2024-06-15','Molho de Tomate',NULL,_binary '\0',NULL,NULL,6,4,NULL,3),(1009,'2025-03-18 19:53:33.000000',NULL,_binary '\0',_binary '','2025-04-08','Molho de Tomate',NULL,_binary '\0',NULL,NULL,16,4,NULL,3),(1010,'2027-04-02 06:14:50.000000',NULL,_binary '',_binary '','2027-04-03','Molho de Tomate',NULL,_binary '\0',NULL,NULL,15,4,NULL,3),(1011,'2027-07-25 15:52:03.000000',NULL,_binary '',_binary '\0','2027-08-23','Molho de Tomate',NULL,_binary '\0',NULL,NULL,10,4,NULL,3),(1012,'2024-02-05 22:23:59.000000',NULL,_binary '',_binary '\0','2024-02-07','Molho de Tomate',NULL,_binary '',NULL,NULL,22,4,NULL,3),(1013,'2024-05-31 22:01:32.000000',NULL,_binary '\0',_binary '','2024-06-10','Molho de Tomate',NULL,_binary '\0',NULL,NULL,22,4,NULL,3),(1014,'2024-11-17 12:45:45.000000',NULL,_binary '',_binary '\0','2024-12-16','Molho de Tomate',NULL,_binary '\0',NULL,NULL,19,4,NULL,3),(1015,'2027-02-13 15:47:03.000000',NULL,_binary '',_binary '','2027-03-13','Molho de Tomate',NULL,_binary '\0',NULL,NULL,12,4,NULL,3),(1016,'2025-11-06 22:24:43.000000',NULL,_binary '\0',_binary '','2025-11-10','Molho de Tomate',NULL,_binary '\0',NULL,NULL,1,4,NULL,3),(1017,'2026-02-23 16:12:28.000000',NULL,_binary '',_binary '','2026-03-15','Molho de Tomate',NULL,_binary '\0',NULL,NULL,1,4,NULL,3),(1018,'2027-12-08 21:56:05.000000',NULL,_binary '',_binary '\0','2028-01-02','Molho de Tomate',NULL,_binary '\0',NULL,NULL,5,4,NULL,3),(1019,'2025-09-23 14:09:07.000000',NULL,_binary '',_binary '\0','2025-10-07','Molho de Tomate',NULL,_binary '\0',NULL,NULL,23,4,NULL,3),(1020,'2024-05-24 18:52:15.000000',NULL,_binary '',_binary '','2024-05-29','Molho de Tomate',NULL,_binary '',NULL,NULL,11,4,NULL,3),(1021,'2026-07-31 22:08:32.000000',NULL,_binary '',_binary '','2026-07-31','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(1022,'2026-01-13 14:02:41.000000',NULL,_binary '\0',_binary '\0','2026-02-11','Molho de Tomate',NULL,_binary '\0',NULL,NULL,5,4,NULL,3),(1023,'2027-09-23 03:35:57.000000',NULL,_binary '',_binary '\0','2027-10-13','Molho de Tomate',NULL,_binary '\0',NULL,NULL,14,4,NULL,3),(1024,'2026-02-28 03:17:07.000000',NULL,_binary '\0',_binary '','2026-03-09','Molho de Tomate',NULL,_binary '\0',NULL,NULL,24,4,NULL,3),(1025,'2026-07-09 09:16:43.000000',NULL,_binary '\0',_binary '\0','2026-07-12','Molho de Tomate',NULL,_binary '\0',NULL,NULL,13,4,NULL,3),(1026,'2024-02-01 15:59:51.000000',NULL,_binary '\0',_binary '\0','2024-02-28','Molho de Tomate',NULL,_binary '\0',NULL,NULL,14,4,NULL,3),(1027,'2027-11-04 04:23:24.000000',NULL,_binary '\0',_binary '','2027-12-02','Molho de Tomate',NULL,_binary '\0',NULL,NULL,22,4,NULL,3),(1028,'2026-01-04 22:16:34.000000',NULL,_binary '\0',_binary '','2026-02-02','Molho de Tomate',NULL,_binary '\0',NULL,NULL,8,4,NULL,3),(1029,'2026-03-17 20:31:27.000000',NULL,_binary '',_binary '','2026-04-09','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(1030,'2025-01-21 08:37:44.000000',NULL,_binary '\0',_binary '','2025-02-10','Molho de Tomate',NULL,_binary '\0',NULL,NULL,16,4,NULL,3),(1031,'2024-02-02 06:16:12.000000',NULL,_binary '\0',_binary '\0','2024-02-12','Molho de Tomate',NULL,_binary '\0',NULL,NULL,13,4,NULL,3),(1032,'2025-11-13 19:52:25.000000',NULL,_binary '',_binary '\0','2025-12-08','Molho de Tomate',NULL,_binary '\0',NULL,NULL,14,4,NULL,3),(1033,'2024-11-30 12:05:26.000000',NULL,_binary '',_binary '','2024-12-22','Molho de Tomate',NULL,_binary '\0',NULL,NULL,19,4,NULL,3),(1034,'2026-01-13 07:33:38.000000',NULL,_binary '\0',_binary '\0','2026-01-22','Molho de Tomate',NULL,_binary '\0',NULL,NULL,18,4,NULL,3),(1035,'2026-06-14 22:12:13.000000',NULL,_binary '',_binary '\0','2026-06-26','Molho de Tomate',NULL,_binary '\0',NULL,NULL,17,4,NULL,3),(1036,'2024-04-23 08:52:53.000000',NULL,_binary '',_binary '','2024-04-23','Molho de Tomate',NULL,_binary '',NULL,NULL,4,4,NULL,3),(1037,'2026-10-05 00:25:34.000000',NULL,_binary '\0',_binary '\0','2026-10-07','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(1038,'2025-07-16 22:50:24.000000',NULL,_binary '',_binary '\0','2025-08-13','Molho de Tomate',NULL,_binary '\0',NULL,NULL,9,4,NULL,3),(1039,'2027-07-13 08:26:30.000000',NULL,_binary '\0',_binary '\0','2027-07-17','Molho de Tomate',NULL,_binary '\0',NULL,NULL,6,4,NULL,3),(1040,'2026-05-22 09:14:58.000000',NULL,_binary '\0',_binary '','2026-05-26','Molho de Tomate',NULL,_binary '\0',NULL,NULL,7,4,NULL,3),(1041,'2027-04-17 08:06:35.000000',NULL,_binary '\0',_binary '\0','2027-05-08','Molho de Tomate',NULL,_binary '\0',NULL,NULL,11,4,NULL,3),(1042,'2027-10-06 10:11:44.000000',NULL,_binary '\0',_binary '\0','2027-10-12','Molho de Tomate',NULL,_binary '\0',NULL,NULL,12,4,NULL,3),(1043,'2026-05-17 14:34:47.000000',NULL,_binary '\0',_binary '\0','2026-05-31','Molho de Tomate',NULL,_binary '\0',NULL,NULL,4,4,NULL,3),(1044,'2024-08-30 10:27:30.000000',NULL,_binary '',_binary '\0','2024-09-11','Molho de Tomate',NULL,_binary '',NULL,NULL,21,4,NULL,3),(1045,'2027-03-05 13:04:34.000000',NULL,_binary '\0',_binary '\0','2027-03-15','Molho de Tomate',NULL,_binary '\0',NULL,NULL,13,4,NULL,3),(1046,'2025-11-27 21:06:50.000000',NULL,_binary '',_binary '\0','2025-11-29','Molho de Tomate',NULL,_binary '\0',NULL,NULL,19,4,NULL,3),(1047,'2026-05-18 16:42:02.000000',NULL,_binary '',_binary '\0','2026-06-11','Molho de Tomate',NULL,_binary '\0',NULL,NULL,1,4,NULL,3),(1048,'2026-02-04 14:42:19.000000',NULL,_binary '\0',_binary '','2026-02-22','Molho de Tomate',NULL,_binary '\0',NULL,NULL,5,4,NULL,3),(1049,'2024-02-18 02:13:35.000000',NULL,_binary '\0',_binary '\0','2024-02-18','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(1050,'2024-07-23 01:18:12.000000',NULL,_binary '',_binary '','2024-07-27','Arroz',NULL,_binary '',NULL,NULL,11,1,NULL,1),(1051,'2024-08-27 00:10:44.000000',NULL,_binary '\0',_binary '\0','2024-09-07','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(1052,'2024-09-23 17:18:30.000000',NULL,_binary '\0',_binary '','2024-09-30','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(1053,'2024-03-14 05:18:30.000000',NULL,_binary '',_binary '','2024-04-04','Arroz',NULL,_binary '',NULL,NULL,1,1,NULL,1),(1054,'2024-12-28 21:14:35.000000',NULL,_binary '\0',_binary '','2025-01-15','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(1055,'2024-10-01 19:04:51.000000',NULL,_binary '',_binary '\0','2024-10-25','Arroz',NULL,_binary '',NULL,NULL,15,1,NULL,1),(1056,'2024-05-06 00:46:56.000000',NULL,_binary '\0',_binary '','2024-05-10','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(1057,'2024-01-17 07:11:42.000000',NULL,_binary '\0',_binary '','2024-02-02','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(1058,'2024-11-19 17:35:14.000000',NULL,_binary '\0',_binary '','2024-11-24','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(1059,'2024-03-03 20:17:49.000000',NULL,_binary '',_binary '\0','2024-03-04','Arroz',NULL,_binary '',NULL,NULL,5,1,NULL,1),(1060,'2024-08-20 16:46:35.000000',NULL,_binary '',_binary '','2024-08-31','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1061,'2024-03-05 11:12:39.000000',NULL,_binary '',_binary '','2024-03-28','Arroz',NULL,_binary '',NULL,NULL,1,1,NULL,1),(1062,'2024-10-10 19:05:32.000000',NULL,_binary '',_binary '','2024-10-17','Arroz',NULL,_binary '',NULL,NULL,18,1,NULL,1),(1063,'2024-10-14 19:52:28.000000',NULL,_binary '',_binary '\0','2024-11-04','Arroz',NULL,_binary '',NULL,NULL,11,1,NULL,1),(1064,'2024-11-21 04:52:44.000000',NULL,_binary '\0',_binary '\0','2024-12-05','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(1065,'2024-05-21 09:41:39.000000',NULL,_binary '',_binary '\0','2024-06-15','Arroz',NULL,_binary '',NULL,NULL,25,1,NULL,1),(1066,'2024-06-04 03:24:42.000000',NULL,_binary '\0',_binary '','2024-06-16','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1),(1067,'2024-10-28 16:56:51.000000',NULL,_binary '\0',_binary '\0','2024-11-12','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1068,'2024-03-18 14:54:24.000000',NULL,_binary '\0',_binary '\0','2024-04-15','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(1069,'2024-12-28 20:10:08.000000',NULL,_binary '\0',_binary '','2025-01-08','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(1070,'2024-01-25 05:14:55.000000',NULL,_binary '',_binary '','2024-02-06','Arroz',NULL,_binary '',NULL,NULL,14,1,NULL,1),(1071,'2024-07-28 04:55:53.000000',NULL,_binary '\0',_binary '','2024-08-15','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(1072,'2024-09-09 13:31:09.000000',NULL,_binary '',_binary '\0','2024-10-03','Arroz',NULL,_binary '',NULL,NULL,3,1,NULL,1),(1073,'2024-01-19 22:32:52.000000',NULL,_binary '',_binary '','2024-02-13','Arroz',NULL,_binary '',NULL,NULL,13,1,NULL,1),(1074,'2024-12-22 09:31:39.000000',NULL,_binary '\0',_binary '\0','2024-12-28','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(1075,'2024-10-24 08:57:39.000000',NULL,_binary '\0',_binary '\0','2024-11-15','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1076,'2024-09-05 00:35:50.000000',NULL,_binary '\0',_binary '\0','2024-09-16','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1077,'2024-04-13 18:56:23.000000',NULL,_binary '\0',_binary '\0','2024-04-18','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(1078,'2024-10-10 20:57:30.000000',NULL,_binary '\0',_binary '','2024-11-01','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(1079,'2024-09-06 11:36:50.000000',NULL,_binary '\0',_binary '\0','2024-09-29','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1080,'2024-07-14 08:20:43.000000',NULL,_binary '\0',_binary '','2024-08-05','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1081,'2024-02-09 22:02:38.000000',NULL,_binary '\0',_binary '','2024-02-12','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1082,'2024-12-24 07:01:22.000000',NULL,_binary '',_binary '','2024-12-24','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(1083,'2024-05-31 10:03:09.000000',NULL,_binary '',_binary '','2024-06-12','Arroz',NULL,_binary '',NULL,NULL,1,1,NULL,1),(1084,'2024-12-22 18:39:30.000000',NULL,_binary '',_binary '\0','2025-01-01','Arroz',NULL,_binary '\0',NULL,NULL,13,1,NULL,1),(1085,'2024-05-08 06:59:26.000000',NULL,_binary '\0',_binary '\0','2024-05-20','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1086,'2024-05-19 17:19:01.000000',NULL,_binary '\0',_binary '\0','2024-05-30','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1087,'2024-03-14 14:03:10.000000',NULL,_binary '\0',_binary '','2024-03-24','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(1088,'2024-11-15 19:15:54.000000',NULL,_binary '\0',_binary '','2024-12-01','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(1089,'2024-02-18 04:06:32.000000',NULL,_binary '\0',_binary '','2024-03-05','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1090,'2024-07-14 08:09:23.000000',NULL,_binary '\0',_binary '\0','2024-07-14','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(1091,'2024-05-26 22:38:50.000000',NULL,_binary '',_binary '','2024-05-29','Arroz',NULL,_binary '',NULL,NULL,10,1,NULL,1),(1092,'2024-07-14 13:10:24.000000',NULL,_binary '\0',_binary '\0','2024-08-08','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1093,'2024-03-01 09:03:45.000000',NULL,_binary '\0',_binary '','2024-03-26','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1094,'2024-09-28 03:16:30.000000',NULL,_binary '\0',_binary '','2024-10-23','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1095,'2024-03-11 17:08:44.000000',NULL,_binary '',_binary '','2024-03-13','Arroz',NULL,_binary '',NULL,NULL,23,1,NULL,1),(1096,'2024-05-19 03:42:17.000000',NULL,_binary '',_binary '','2024-06-03','Arroz',NULL,_binary '',NULL,NULL,14,1,NULL,1),(1097,'2024-01-31 20:24:44.000000',NULL,_binary '',_binary '\0','2024-02-05','Arroz',NULL,_binary '',NULL,NULL,17,1,NULL,1),(1098,'2024-10-09 20:25:39.000000',NULL,_binary '',_binary '\0','2024-10-31','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1099,'2024-12-09 09:03:18.000000',NULL,_binary '\0',_binary '\0','2025-01-02','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1100,'2024-11-06 20:59:19.000000',NULL,_binary '',_binary '\0','2024-11-06','Arroz',NULL,_binary '',NULL,NULL,14,1,NULL,1),(1101,'2024-08-29 16:56:40.000000',NULL,_binary '',_binary '','2024-09-09','Arroz',NULL,_binary '',NULL,NULL,2,1,NULL,1),(1102,'2024-03-21 21:37:41.000000',NULL,_binary '',_binary '','2024-04-19','Arroz',NULL,_binary '',NULL,NULL,11,1,NULL,1),(1103,'2024-01-25 03:05:42.000000',NULL,_binary '\0',_binary '','2024-02-19','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(1104,'2024-11-22 10:13:36.000000',NULL,_binary '\0',_binary '','2024-12-07','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(1105,'2024-08-09 03:51:51.000000',NULL,_binary '',_binary '\0','2024-08-13','Arroz',NULL,_binary '',NULL,NULL,14,1,NULL,1),(1106,'2024-02-22 03:39:50.000000',NULL,_binary '\0',_binary '\0','2024-03-22','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(1107,'2024-12-02 11:06:14.000000',NULL,_binary '',_binary '\0','2024-12-06','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(1108,'2024-12-19 18:53:50.000000',NULL,_binary '\0',_binary '','2025-01-13','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1109,'2024-10-27 12:03:37.000000',NULL,_binary '\0',_binary '','2024-11-05','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(1110,'2024-12-11 23:19:18.000000',NULL,_binary '\0',_binary '\0','2025-01-03','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(1111,'2024-09-15 07:18:58.000000',NULL,_binary '\0',_binary '\0','2024-09-23','Arroz',NULL,_binary '\0',NULL,NULL,3,1,NULL,1),(1112,'2024-09-10 03:34:28.000000',NULL,_binary '',_binary '','2024-09-20','Arroz',NULL,_binary '',NULL,NULL,5,1,NULL,1),(1113,'2024-11-27 22:31:47.000000',NULL,_binary '',_binary '\0','2024-12-06','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1114,'2024-06-02 15:58:08.000000',NULL,_binary '\0',_binary '\0','2024-06-15','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(1115,'2024-12-24 02:38:33.000000',NULL,_binary '',_binary '','2025-01-12','Arroz',NULL,_binary '\0',NULL,NULL,3,1,NULL,1),(1116,'2024-08-09 17:38:01.000000',NULL,_binary '',_binary '\0','2024-08-28','Arroz',NULL,_binary '',NULL,NULL,5,1,NULL,1),(1117,'2024-01-01 09:51:32.000000',NULL,_binary '\0',_binary '\0','2024-01-27','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(1118,'2024-07-04 05:26:22.000000',NULL,_binary '',_binary '\0','2024-07-05','Arroz',NULL,_binary '',NULL,NULL,5,1,NULL,1),(1119,'2024-08-31 19:46:43.000000',NULL,_binary '\0',_binary '\0','2024-09-07','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(1120,'2024-11-19 14:59:59.000000',NULL,_binary '\0',_binary '\0','2024-12-17','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(1121,'2024-11-22 10:06:00.000000',NULL,_binary '\0',_binary '','2024-12-19','Arroz',NULL,_binary '\0',NULL,NULL,3,1,NULL,1),(1122,'2024-08-29 01:24:25.000000',NULL,_binary '\0',_binary '\0','2024-09-25','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1123,'2024-07-10 06:22:23.000000',NULL,_binary '',_binary '','2024-07-29','Arroz',NULL,_binary '',NULL,NULL,9,1,NULL,1),(1124,'2024-09-05 09:58:28.000000',NULL,_binary '\0',_binary '','2024-09-20','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1125,'2024-03-22 21:05:52.000000',NULL,_binary '',_binary '','2024-04-14','Arroz',NULL,_binary '',NULL,NULL,25,1,NULL,1),(1126,'2024-07-06 15:20:26.000000',NULL,_binary '',_binary '\0','2024-07-28','Arroz',NULL,_binary '',NULL,NULL,18,1,NULL,1),(1127,'2024-04-27 11:16:37.000000',NULL,_binary '\0',_binary '','2024-05-09','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(1128,'2024-09-24 20:19:46.000000',NULL,_binary '\0',_binary '','2024-09-27','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(1129,'2024-10-03 22:28:31.000000',NULL,_binary '\0',_binary '\0','2024-10-31','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(1130,'2024-04-12 08:02:25.000000',NULL,_binary '',_binary '\0','2024-04-20','Arroz',NULL,_binary '',NULL,NULL,24,1,NULL,1),(1131,'2024-10-29 08:09:54.000000',NULL,_binary '\0',_binary '\0','2024-11-17','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1132,'2024-08-19 19:04:07.000000',NULL,_binary '\0',_binary '','2024-09-08','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1133,'2024-04-16 01:23:14.000000',NULL,_binary '\0',_binary '','2024-04-22','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1134,'2024-08-07 15:12:45.000000',NULL,_binary '\0',_binary '','2024-08-24','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(1135,'2024-06-25 07:26:50.000000',NULL,_binary '\0',_binary '','2024-07-09','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1136,'2024-07-02 02:57:13.000000',NULL,_binary '\0',_binary '\0','2024-07-17','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(1137,'2024-10-20 19:37:07.000000',NULL,_binary '',_binary '','2024-11-04','Arroz',NULL,_binary '',NULL,NULL,21,1,NULL,1),(1138,'2024-08-28 18:39:19.000000',NULL,_binary '',_binary '\0','2024-09-08','Arroz',NULL,_binary '',NULL,NULL,8,1,NULL,1),(1139,'2024-05-15 22:02:33.000000',NULL,_binary '\0',_binary '','2024-06-05','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(1140,'2024-02-22 18:18:27.000000',NULL,_binary '\0',_binary '','2024-03-21','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1),(1141,'2024-05-12 07:34:54.000000',NULL,_binary '\0',_binary '\0','2024-06-10','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1142,'2024-06-03 16:26:25.000000',NULL,_binary '\0',_binary '','2024-06-04','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(1143,'2024-11-21 19:19:02.000000',NULL,_binary '\0',_binary '\0','2024-12-09','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(1144,'2024-04-20 10:46:17.000000',NULL,_binary '\0',_binary '\0','2024-05-09','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(1145,'2024-03-22 10:15:40.000000',NULL,_binary '\0',_binary '\0','2024-04-15','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(1146,'2024-02-26 00:37:42.000000',NULL,_binary '',_binary '\0','2024-03-06','Arroz',NULL,_binary '',NULL,NULL,19,1,NULL,1),(1147,'2024-09-24 11:35:57.000000',NULL,_binary '\0',_binary '','2024-10-09','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(1148,'2024-07-23 23:15:38.000000',NULL,_binary '\0',_binary '','2024-07-23','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(1149,'2024-02-09 05:12:54.000000',NULL,_binary '',_binary '\0','2024-02-26','Arroz',NULL,_binary '',NULL,NULL,10,1,NULL,1),(1150,'2024-02-06 09:39:13.000000',NULL,_binary '',_binary '\0','2024-02-22','Arroz',NULL,_binary '',NULL,NULL,21,1,NULL,1),(1151,'2024-04-27 04:54:49.000000',NULL,_binary '\0',_binary '','2024-05-02','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1152,'2024-09-18 01:10:50.000000',NULL,_binary '\0',_binary '\0','2024-09-28','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1153,'2024-11-06 21:42:26.000000',NULL,_binary '',_binary '\0','2024-11-30','Arroz',NULL,_binary '',NULL,NULL,18,1,NULL,1),(1154,'2024-01-03 22:26:50.000000',NULL,_binary '',_binary '\0','2024-01-15','Arroz',NULL,_binary '',NULL,NULL,18,1,NULL,1),(1155,'2024-03-31 02:53:33.000000',NULL,_binary '',_binary '','2024-04-01','Arroz',NULL,_binary '',NULL,NULL,11,1,NULL,1),(1156,'2024-01-27 01:01:15.000000',NULL,_binary '',_binary '','2024-02-04','Arroz',NULL,_binary '',NULL,NULL,23,1,NULL,1),(1157,'2024-07-21 02:50:22.000000',NULL,_binary '',_binary '\0','2024-08-08','Arroz',NULL,_binary '',NULL,NULL,6,1,NULL,1),(1158,'2024-04-17 18:57:17.000000',NULL,_binary '\0',_binary '','2024-05-06','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(1159,'2024-10-02 17:52:06.000000',NULL,_binary '\0',_binary '\0','2024-10-31','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(1160,'2024-08-14 22:57:38.000000',NULL,_binary '',_binary '','2024-09-08','Arroz',NULL,_binary '',NULL,NULL,3,1,NULL,1),(1161,'2024-12-11 10:26:08.000000',NULL,_binary '\0',_binary '\0','2025-01-02','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(1162,'2024-03-15 22:58:15.000000',NULL,_binary '\0',_binary '','2024-03-27','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1163,'2024-06-19 21:35:17.000000',NULL,_binary '\0',_binary '','2024-07-06','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(1164,'2024-01-12 12:09:58.000000',NULL,_binary '\0',_binary '','2024-01-14','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1165,'2024-11-26 04:58:46.000000',NULL,_binary '\0',_binary '','2024-12-24','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1166,'2024-11-13 03:21:26.000000',NULL,_binary '\0',_binary '\0','2024-12-11','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(1167,'2024-07-01 10:59:44.000000',NULL,_binary '',_binary '','2024-07-18','Arroz',NULL,_binary '',NULL,NULL,4,1,NULL,1),(1168,'2024-12-25 11:24:38.000000',NULL,_binary '\0',_binary '','2024-12-31','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(1169,'2024-06-16 05:05:24.000000',NULL,_binary '',_binary '','2024-07-12','Arroz',NULL,_binary '',NULL,NULL,1,1,NULL,1),(1170,'2024-06-20 06:53:28.000000',NULL,_binary '\0',_binary '\0','2024-06-30','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1171,'2024-03-21 13:17:53.000000',NULL,_binary '\0',_binary '','2024-03-24','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(1172,'2024-02-17 23:12:30.000000',NULL,_binary '\0',_binary '\0','2024-02-27','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1173,'2024-08-04 18:42:28.000000',NULL,_binary '\0',_binary '\0','2024-09-01','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(1174,'2024-12-02 17:54:23.000000',NULL,_binary '',_binary '','2024-12-05','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1175,'2024-05-05 12:18:48.000000',NULL,_binary '',_binary '\0','2024-05-08','Arroz',NULL,_binary '',NULL,NULL,5,1,NULL,1),(1176,'2024-06-30 23:12:29.000000',NULL,_binary '\0',_binary '','2024-07-01','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1177,'2024-10-17 14:42:42.000000',NULL,_binary '',_binary '','2024-11-09','Arroz',NULL,_binary '',NULL,NULL,6,1,NULL,1),(1178,'2024-10-01 02:21:12.000000',NULL,_binary '\0',_binary '','2024-10-22','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1179,'2024-03-12 09:36:03.000000',NULL,_binary '\0',_binary '','2024-03-14','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1),(1180,'2024-12-07 03:57:42.000000',NULL,_binary '\0',_binary '','2025-01-01','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(1181,'2024-02-08 22:15:13.000000',NULL,_binary '\0',_binary '','2024-02-10','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(1182,'2024-01-08 21:48:01.000000',NULL,_binary '\0',_binary '','2024-02-06','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1183,'2024-05-29 10:19:38.000000',NULL,_binary '',_binary '\0','2024-06-21','Arroz',NULL,_binary '',NULL,NULL,25,1,NULL,1),(1184,'2024-06-24 12:25:48.000000',NULL,_binary '\0',_binary '\0','2024-07-07','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1185,'2024-06-18 00:17:07.000000',NULL,_binary '',_binary '\0','2024-07-01','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1186,'2024-11-06 21:52:05.000000',NULL,_binary '',_binary '\0','2024-11-15','Arroz',NULL,_binary '',NULL,NULL,22,1,NULL,1),(1187,'2024-03-28 16:03:51.000000',NULL,_binary '',_binary '\0','2024-04-17','Arroz',NULL,_binary '',NULL,NULL,2,1,NULL,1),(1188,'2024-05-03 10:58:37.000000',NULL,_binary '\0',_binary '\0','2024-05-08','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(1189,'2024-01-25 13:28:45.000000',NULL,_binary '',_binary '\0','2024-02-20','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1190,'2024-08-12 16:39:05.000000',NULL,_binary '',_binary '\0','2024-08-19','Arroz',NULL,_binary '',NULL,NULL,5,1,NULL,1),(1191,'2024-03-21 12:27:09.000000',NULL,_binary '',_binary '\0','2024-04-10','Arroz',NULL,_binary '',NULL,NULL,3,1,NULL,1),(1192,'2024-06-04 20:43:35.000000',NULL,_binary '\0',_binary '','2024-07-01','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(1193,'2024-11-14 05:03:09.000000',NULL,_binary '\0',_binary '','2024-11-24','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(1194,'2024-01-08 10:29:59.000000',NULL,_binary '\0',_binary '\0','2024-01-13','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(1195,'2024-02-18 21:04:27.000000',NULL,_binary '',_binary '\0','2024-03-07','Arroz',NULL,_binary '',NULL,NULL,5,1,NULL,1),(1196,'2024-12-30 11:06:12.000000',NULL,_binary '\0',_binary '\0','2025-01-01','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1197,'2024-08-15 19:19:15.000000',NULL,_binary '\0',_binary '\0','2024-08-23','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(1198,'2024-12-01 12:54:39.000000',NULL,_binary '',_binary '\0','2024-12-16','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(1199,'2024-06-07 23:25:09.000000',NULL,_binary '',_binary '','2024-06-08','Arroz',NULL,_binary '',NULL,NULL,11,1,NULL,1),(1200,'2024-11-24 06:02:41.000000',NULL,_binary '',_binary '\0','2024-12-11','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1),(1201,'2024-04-17 00:20:24.000000',NULL,_binary '\0',_binary '','2024-05-16','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(1202,'2024-03-14 07:05:32.000000',NULL,_binary '',_binary '\0','2024-04-05','Arroz',NULL,_binary '',NULL,NULL,9,1,NULL,1),(1203,'2024-05-26 00:29:19.000000',NULL,_binary '',_binary '\0','2024-06-06','Arroz',NULL,_binary '',NULL,NULL,17,1,NULL,1),(1204,'2024-02-28 19:39:12.000000',NULL,_binary '',_binary '','2024-03-06','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1205,'2024-06-10 20:56:29.000000',NULL,_binary '\0',_binary '','2024-07-01','Arroz',NULL,_binary '\0',NULL,NULL,23,1,NULL,1),(1206,'2024-05-31 07:42:22.000000',NULL,_binary '\0',_binary '','2024-06-04','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(1207,'2024-08-24 13:51:15.000000',NULL,_binary '',_binary '','2024-08-25','Arroz',NULL,_binary '',NULL,NULL,8,1,NULL,1),(1208,'2024-06-05 04:51:33.000000',NULL,_binary '',_binary '\0','2024-07-02','Arroz',NULL,_binary '',NULL,NULL,14,1,NULL,1),(1209,'2024-12-08 01:43:36.000000',NULL,_binary '',_binary '','2025-01-05','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1210,'2024-11-14 22:57:57.000000',NULL,_binary '\0',_binary '','2024-11-22','Arroz',NULL,_binary '\0',NULL,NULL,13,1,NULL,1),(1211,'2024-09-22 02:37:47.000000',NULL,_binary '\0',_binary '\0','2024-10-02','Arroz',NULL,_binary '\0',NULL,NULL,9,1,NULL,1),(1212,'2024-07-19 18:28:08.000000',NULL,_binary '\0',_binary '','2024-08-14','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(1213,'2024-09-07 15:48:42.000000',NULL,_binary '\0',_binary '\0','2024-09-15','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1214,'2024-01-19 22:26:52.000000',NULL,_binary '',_binary '','2024-02-02','Arroz',NULL,_binary '',NULL,NULL,1,1,NULL,1),(1215,'2024-09-06 07:32:27.000000',NULL,_binary '',_binary '','2024-09-29','Arroz',NULL,_binary '',NULL,NULL,23,1,NULL,1),(1216,'2024-03-02 03:16:37.000000',NULL,_binary '\0',_binary '\0','2024-03-25','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(1217,'2024-06-01 10:04:13.000000',NULL,_binary '',_binary '','2024-06-09','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1218,'2024-07-12 05:55:22.000000',NULL,_binary '',_binary '\0','2024-07-25','Arroz',NULL,_binary '',NULL,NULL,22,1,NULL,1),(1219,'2024-12-16 04:40:31.000000',NULL,_binary '\0',_binary '','2024-12-20','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(1220,'2024-11-29 08:28:20.000000',NULL,_binary '\0',_binary '\0','2024-12-08','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(1221,'2024-11-08 04:33:10.000000',NULL,_binary '\0',_binary '\0','2024-11-22','Arroz',NULL,_binary '\0',NULL,NULL,13,1,NULL,1),(1222,'2024-12-29 11:54:28.000000',NULL,_binary '\0',_binary '','2025-01-07','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1223,'2024-09-18 08:56:07.000000',NULL,_binary '',_binary '\0','2024-09-20','Arroz',NULL,_binary '',NULL,NULL,3,1,NULL,1),(1224,'2024-04-03 23:14:40.000000',NULL,_binary '\0',_binary '\0','2024-04-06','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1225,'2024-06-17 19:57:43.000000',NULL,_binary '',_binary '\0','2024-07-02','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1226,'2024-09-19 06:01:23.000000',NULL,_binary '\0',_binary '','2024-09-29','Arroz',NULL,_binary '\0',NULL,NULL,13,1,NULL,1),(1227,'2024-07-25 06:38:38.000000',NULL,_binary '',_binary '','2024-07-25','Arroz',NULL,_binary '',NULL,NULL,6,1,NULL,1),(1228,'2024-02-07 19:41:11.000000',NULL,_binary '',_binary '','2024-02-12','Arroz',NULL,_binary '',NULL,NULL,10,1,NULL,1),(1229,'2024-05-12 15:48:47.000000',NULL,_binary '\0',_binary '\0','2024-06-02','Arroz',NULL,_binary '\0',NULL,NULL,10,1,NULL,1),(1230,'2024-09-05 07:19:31.000000',NULL,_binary '\0',_binary '','2024-09-09','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(1231,'2024-06-07 15:33:59.000000',NULL,_binary '',_binary '','2024-07-03','Arroz',NULL,_binary '',NULL,NULL,5,1,NULL,1),(1232,'2024-03-19 13:45:58.000000',NULL,_binary '\0',_binary '\0','2024-03-25','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(1233,'2024-06-13 03:51:14.000000',NULL,_binary '\0',_binary '','2024-06-29','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(1234,'2024-06-06 21:34:47.000000',NULL,_binary '\0',_binary '\0','2024-06-06','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(1235,'2024-03-22 23:30:01.000000',NULL,_binary '\0',_binary '\0','2024-03-29','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(1236,'2024-09-10 09:56:04.000000',NULL,_binary '',_binary '','2024-09-22','Arroz',NULL,_binary '',NULL,NULL,2,1,NULL,1),(1237,'2024-01-17 01:13:35.000000',NULL,_binary '\0',_binary '\0','2024-02-12','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(1238,'2024-07-09 12:37:00.000000',NULL,_binary '\0',_binary '','2024-07-22','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1239,'2024-03-29 20:06:08.000000',NULL,_binary '\0',_binary '','2024-04-13','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(1240,'2024-07-23 03:29:30.000000',NULL,_binary '\0',_binary '','2024-08-18','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(1241,'2024-05-03 16:40:31.000000',NULL,_binary '\0',_binary '\0','2024-05-25','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(1242,'2024-01-31 05:14:19.000000',NULL,_binary '',_binary '','2024-02-06','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1243,'2024-08-09 16:06:33.000000',NULL,_binary '',_binary '','2024-09-01','Arroz',NULL,_binary '',NULL,NULL,21,1,NULL,1),(1244,'2024-10-10 10:16:04.000000',NULL,_binary '',_binary '','2024-10-23','Arroz',NULL,_binary '',NULL,NULL,24,1,NULL,1),(1245,'2024-04-17 16:20:09.000000',NULL,_binary '',_binary '','2024-04-23','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1246,'2024-08-07 15:29:18.000000',NULL,_binary '\0',_binary '\0','2024-08-23','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(1247,'2024-08-04 05:26:19.000000',NULL,_binary '\0',_binary '\0','2024-08-15','Arroz',NULL,_binary '\0',NULL,NULL,18,1,NULL,1),(1248,'2024-05-10 15:51:55.000000',NULL,_binary '\0',_binary '\0','2024-05-14','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(1249,'2024-12-12 21:15:55.000000',NULL,_binary '',_binary '\0','2024-12-29','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1250,'2024-11-20 01:17:48.000000',NULL,_binary '',_binary '','2024-12-04','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1251,'2024-06-14 22:45:41.000000',NULL,_binary '\0',_binary '\0','2024-06-21','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(1252,'2024-03-22 03:16:24.000000',NULL,_binary '\0',_binary '','2024-03-29','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(1253,'2024-08-07 04:50:42.000000',NULL,_binary '\0',_binary '\0','2024-08-20','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(1254,'2024-07-07 16:25:38.000000',NULL,_binary '',_binary '\0','2024-08-02','Arroz',NULL,_binary '',NULL,NULL,15,1,NULL,1),(1255,'2024-04-01 11:30:32.000000',NULL,_binary '',_binary '','2024-04-03','Arroz',NULL,_binary '',NULL,NULL,25,1,NULL,1),(1256,'2024-08-13 04:13:35.000000',NULL,_binary '\0',_binary '','2024-08-13','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(1257,'2024-02-19 22:59:06.000000',NULL,_binary '\0',_binary '\0','2024-02-20','Arroz',NULL,_binary '\0',NULL,NULL,3,1,NULL,1),(1258,'2024-04-24 07:22:15.000000',NULL,_binary '',_binary '\0','2024-05-09','Arroz',NULL,_binary '',NULL,NULL,9,1,NULL,1),(1259,'2024-03-02 20:01:26.000000',NULL,_binary '',_binary '','2024-03-08','Arroz',NULL,_binary '',NULL,NULL,13,1,NULL,1),(1260,'2024-11-09 19:20:12.000000',NULL,_binary '\0',_binary '','2024-12-07','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1261,'2024-10-30 18:11:05.000000',NULL,_binary '\0',_binary '\0','2024-11-02','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(1262,'2024-10-31 00:49:33.000000',NULL,_binary '',_binary '\0','2024-11-06','Arroz',NULL,_binary '',NULL,NULL,9,1,NULL,1),(1263,'2024-01-04 01:30:46.000000',NULL,_binary '\0',_binary '\0','2024-01-13','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1264,'2024-04-16 22:13:29.000000',NULL,_binary '',_binary '\0','2024-05-09','Arroz',NULL,_binary '',NULL,NULL,21,1,NULL,1),(1265,'2024-10-28 15:34:35.000000',NULL,_binary '',_binary '','2024-10-31','Arroz',NULL,_binary '',NULL,NULL,24,1,NULL,1),(1266,'2024-04-10 14:25:12.000000',NULL,_binary '\0',_binary '\0','2024-05-09','Arroz',NULL,_binary '\0',NULL,NULL,16,1,NULL,1),(1267,'2024-02-17 19:05:27.000000',NULL,_binary '',_binary '','2024-03-17','Arroz',NULL,_binary '',NULL,NULL,6,1,NULL,1),(1268,'2024-02-09 22:25:06.000000',NULL,_binary '\0',_binary '','2024-02-27','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(1269,'2024-04-29 23:01:27.000000',NULL,_binary '',_binary '\0','2024-05-13','Arroz',NULL,_binary '',NULL,NULL,23,1,NULL,1),(1270,'2024-12-11 01:58:01.000000',NULL,_binary '',_binary '','2024-12-22','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1271,'2024-06-03 17:47:22.000000',NULL,_binary '\0',_binary '','2024-06-18','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(1272,'2024-10-27 02:26:21.000000',NULL,_binary '\0',_binary '','2024-11-03','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(1273,'2024-07-11 15:51:10.000000',NULL,_binary '',_binary '','2024-08-08','Arroz',NULL,_binary '',NULL,NULL,23,1,NULL,1),(1274,'2024-09-03 15:39:02.000000',NULL,_binary '\0',_binary '\0','2024-09-13','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1275,'2024-08-18 17:48:40.000000',NULL,_binary '',_binary '','2024-09-11','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1276,'2024-12-01 04:55:07.000000',NULL,_binary '\0',_binary '','2024-12-22','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1277,'2024-03-10 13:10:23.000000',NULL,_binary '\0',_binary '\0','2024-03-29','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(1278,'2024-09-01 18:52:47.000000',NULL,_binary '',_binary '\0','2024-09-16','Arroz',NULL,_binary '',NULL,NULL,21,1,NULL,1),(1279,'2024-06-25 23:54:11.000000',NULL,_binary '',_binary '','2024-07-17','Arroz',NULL,_binary '',NULL,NULL,20,1,NULL,1),(1280,'2024-08-26 21:44:33.000000',NULL,_binary '',_binary '\0','2024-09-23','Arroz',NULL,_binary '',NULL,NULL,10,1,NULL,1),(1281,'2024-01-13 00:48:36.000000',NULL,_binary '\0',_binary '\0','2024-02-08','Arroz',NULL,_binary '\0',NULL,NULL,20,1,NULL,1),(1282,'2024-03-22 19:02:59.000000',NULL,_binary '\0',_binary '\0','2024-04-10','Arroz',NULL,_binary '\0',NULL,NULL,22,1,NULL,1),(1283,'2024-06-03 12:27:56.000000',NULL,_binary '\0',_binary '\0','2024-06-13','Arroz',NULL,_binary '\0',NULL,NULL,15,1,NULL,1),(1284,'2024-11-05 11:40:54.000000',NULL,_binary '',_binary '','2024-11-14','Arroz',NULL,_binary '',NULL,NULL,15,1,NULL,1),(1285,'2024-12-27 04:33:21.000000',NULL,_binary '',_binary '\0','2025-01-15','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(1286,'2024-04-26 20:36:07.000000',NULL,_binary '\0',_binary '\0','2024-05-09','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(1287,'2024-11-07 02:50:22.000000',NULL,_binary '\0',_binary '','2024-12-03','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(1288,'2024-06-02 01:46:50.000000',NULL,_binary '\0',_binary '\0','2024-06-08','Arroz',NULL,_binary '\0',NULL,NULL,5,1,NULL,1),(1289,'2024-03-20 13:30:07.000000',NULL,_binary '\0',_binary '\0','2024-03-22','Arroz',NULL,_binary '\0',NULL,NULL,2,1,NULL,1),(1290,'2024-01-21 02:30:10.000000',NULL,_binary '\0',_binary '\0','2024-01-27','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1291,'2024-12-22 16:51:28.000000',NULL,_binary '',_binary '','2024-12-30','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(1292,'2024-02-03 12:01:43.000000',NULL,_binary '\0',_binary '','2024-02-18','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(1293,'2024-09-10 12:49:19.000000',NULL,_binary '',_binary '\0','2024-10-06','Arroz',NULL,_binary '',NULL,NULL,11,1,NULL,1),(1294,'2024-06-10 23:13:01.000000',NULL,_binary '',_binary '','2024-06-28','Arroz',NULL,_binary '',NULL,NULL,7,1,NULL,1),(1295,'2024-06-21 13:05:29.000000',NULL,_binary '\0',_binary '','2024-07-07','Arroz',NULL,_binary '\0',NULL,NULL,1,1,NULL,1),(1296,'2024-06-26 08:48:17.000000',NULL,_binary '\0',_binary '','2024-07-20','Arroz',NULL,_binary '\0',NULL,NULL,17,1,NULL,1),(1297,'2024-11-22 11:41:23.000000',NULL,_binary '',_binary '\0','2024-11-29','Arroz',NULL,_binary '',NULL,NULL,7,1,NULL,1),(1298,'2024-09-03 13:15:59.000000',NULL,_binary '',_binary '\0','2024-09-30','Arroz',NULL,_binary '',NULL,NULL,12,1,NULL,1),(1299,'2024-08-22 18:57:59.000000',NULL,_binary '\0',_binary '','2024-09-11','Arroz',NULL,_binary '\0',NULL,NULL,4,1,NULL,1),(1300,'2024-09-16 02:20:47.000000',NULL,_binary '\0',_binary '','2024-09-29','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1301,'2024-04-20 07:49:55.000000',NULL,_binary '',_binary '','2024-05-19','Arroz',NULL,_binary '',NULL,NULL,25,1,NULL,1),(1302,'2024-11-27 15:48:49.000000',NULL,_binary '',_binary '','2024-12-13','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(1303,'2024-08-31 12:17:39.000000',NULL,_binary '',_binary '\0','2024-09-20','Arroz',NULL,_binary '',NULL,NULL,16,1,NULL,1),(1304,'2024-01-24 10:41:18.000000',NULL,_binary '\0',_binary '','2024-02-22','Arroz',NULL,_binary '\0',NULL,NULL,11,1,NULL,1),(1305,'2024-03-19 18:57:51.000000',NULL,_binary '\0',_binary '\0','2024-04-16','Arroz',NULL,_binary '\0',NULL,NULL,6,1,NULL,1),(1306,'2024-04-23 20:22:31.000000',NULL,_binary '\0',_binary '\0','2024-04-29','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(1307,'2024-01-28 13:30:06.000000',NULL,_binary '',_binary '\0','2024-02-10','Arroz',NULL,_binary '',NULL,NULL,13,1,NULL,1),(1308,'2024-02-19 04:50:13.000000',NULL,_binary '',_binary '\0','2024-02-24','Arroz',NULL,_binary '',NULL,NULL,18,1,NULL,1),(1309,'2024-01-03 21:52:45.000000',NULL,_binary '',_binary '','2024-01-05','Arroz',NULL,_binary '',NULL,NULL,16,1,NULL,1),(1310,'2024-11-01 07:50:01.000000',NULL,_binary '\0',_binary '','2024-11-24','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(1311,'2024-07-18 19:38:30.000000',NULL,_binary '\0',_binary '','2024-08-07','Arroz',NULL,_binary '\0',NULL,NULL,24,1,NULL,1),(1312,'2024-09-14 16:45:50.000000',NULL,_binary '\0',_binary '','2024-10-05','Arroz',NULL,_binary '\0',NULL,NULL,8,1,NULL,1),(1313,'2024-05-24 00:53:39.000000',NULL,_binary '\0',_binary '','2024-06-06','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(1314,'2024-05-18 06:41:42.000000',NULL,_binary '\0',_binary '\0','2024-05-30','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1315,'2024-06-19 02:56:59.000000',NULL,_binary '\0',_binary '','2024-07-13','Arroz',NULL,_binary '\0',NULL,NULL,25,1,NULL,1),(1316,'2024-07-09 15:07:54.000000',NULL,_binary '',_binary '\0','2024-07-24','Arroz',NULL,_binary '',NULL,NULL,11,1,NULL,1),(1317,'2024-07-18 11:19:03.000000',NULL,_binary '',_binary '\0','2024-08-08','Arroz',NULL,_binary '',NULL,NULL,2,1,NULL,1),(1318,'2024-03-26 22:19:48.000000',NULL,_binary '',_binary '','2024-04-24','Arroz',NULL,_binary '',NULL,NULL,25,1,NULL,1),(1319,'2024-11-30 16:22:04.000000',NULL,_binary '',_binary '\0','2024-12-09','Arroz',NULL,_binary '\0',NULL,NULL,19,1,NULL,1),(1320,'2024-10-09 15:49:09.000000',NULL,_binary '',_binary '','2024-10-27','Arroz',NULL,_binary '',NULL,NULL,8,1,NULL,1),(1321,'2024-09-25 17:49:43.000000',NULL,_binary '',_binary '\0','2024-09-26','Arroz',NULL,_binary '',NULL,NULL,8,1,NULL,1),(1322,'2024-04-22 16:14:05.000000',NULL,_binary '\0',_binary '\0','2024-05-17','Arroz',NULL,_binary '\0',NULL,NULL,14,1,NULL,1),(1323,'2024-03-04 05:31:04.000000',NULL,_binary '',_binary '\0','2024-03-12','Arroz',NULL,_binary '',NULL,NULL,3,1,NULL,1),(1324,'2024-08-17 20:47:50.000000',NULL,_binary '\0',_binary '','2024-09-12','Arroz',NULL,_binary '\0',NULL,NULL,12,1,NULL,1),(1325,'2024-08-01 14:18:22.000000',NULL,_binary '\0',_binary '\0','2024-08-02','Arroz',NULL,_binary '\0',NULL,NULL,7,1,NULL,1),(1326,'2024-03-06 01:39:24.000000',NULL,_binary '',_binary '','2024-03-29','Arroz',NULL,_binary '',NULL,NULL,10,1,NULL,1),(1327,'2024-07-15 13:38:46.000000',NULL,_binary '\0',_binary '\0','2024-07-27','Arroz',NULL,_binary '\0',NULL,NULL,21,1,NULL,1);
/*!40000 ALTER TABLE `produto_unitario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rota`
--

DROP TABLE IF EXISTS `rota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rota` (
  `id` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `data_historico` date DEFAULT NULL,
  `hora_fim` time(6) DEFAULT NULL,
  `hora_inicio` time(6) DEFAULT NULL,
  `km_rodados` int DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `qtd_colaboradores` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota`
--

LOCK TABLES `rota` WRITE;
/*!40000 ALTER TABLE `rota` DISABLE KEYS */;
/*!40000 ALTER TABLE `rota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_campanha`
--

DROP TABLE IF EXISTS `tipo_campanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_campanha` (
  `id_tipo_campanha` int NOT NULL AUTO_INCREMENT,
  `criado_em` datetime(6) DEFAULT NULL,
  `modificado_em` datetime(6) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_campanha`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_campanha`
--

LOCK TABLES `tipo_campanha` WRITE;
/*!40000 ALTER TABLE `tipo_campanha` DISABLE KEYS */;
INSERT INTO `tipo_campanha` VALUES (1,'2024-12-02 20:01:19.966328',NULL,'Arroz');
/*!40000 ALTER TABLE `tipo_campanha` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cesta`
--

LOCK TABLES `tipo_cesta` WRITE;
/*!40000 ALTER TABLE `tipo_cesta` DISABLE KEYS */;
INSERT INTO `tipo_cesta` VALUES (1,'2024-12-02 20:01:04.598176',NULL,'Básica');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_produto`
--

LOCK TABLES `tipo_produto` WRITE;
/*!40000 ALTER TABLE `tipo_produto` DISABLE KEYS */;
INSERT INTO `tipo_produto` VALUES (1,'2024-12-02 20:00:49.178800',NULL,'Alimento');
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
  `representacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade_medida`
--

LOCK TABLES `unidade_medida` WRITE;
/*!40000 ALTER TABLE `unidade_medida` DISABLE KEYS */;
INSERT INTO `unidade_medida` VALUES (1,'2024-12-02 20:00:10.789433',NULL,'Quilo','KG'),(2,'2024-12-02 20:00:20.456180',NULL,'Litro','L'),(3,'2024-12-02 20:00:34.802370',NULL,'Unidade','Unidade');
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
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo_usuario` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'2024-12-02 19:59:39.869030',NULL,'fulvia@itapora.com','Fulvia Cristina','$2a$10$Qo9HQchoJTBlHaIg6Chfp.lmPKGSrOiceXXe2xzP/G9NtXqTer9bK',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_produto_unitario_qtd_ativo_por_mes`
--

DROP TABLE IF EXISTS `v_produto_unitario_qtd_ativo_por_mes`;
/*!50001 DROP VIEW IF EXISTS `v_produto_unitario_qtd_ativo_por_mes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_produto_unitario_qtd_ativo_por_mes` AS SELECT 
 1 AS `id`,
 1 AS `criado_em`,
 1 AS `qtd`,
 1 AS `produto_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_produto_unitario_qtd_vencido_por_mes`
--

DROP TABLE IF EXISTS `v_produto_unitario_qtd_vencido_por_mes`;
/*!50001 DROP VIEW IF EXISTS `v_produto_unitario_qtd_vencido_por_mes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_produto_unitario_qtd_vencido_por_mes` AS SELECT 
 1 AS `id`,
 1 AS `data_validade`,
 1 AS `qtd`,
 1 AS `produto_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_produto_unitario_vencido_arrecadado`
--

DROP TABLE IF EXISTS `v_produto_unitario_vencido_arrecadado`;
/*!50001 DROP VIEW IF EXISTS `v_produto_unitario_vencido_arrecadado`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_produto_unitario_vencido_arrecadado` AS SELECT 
 1 AS `nome`,
 1 AS `arrecadado`,
 1 AS `vencido`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_produto_unitario_vencimento_15_e_30_dias`
--

DROP TABLE IF EXISTS `v_produto_unitario_vencimento_15_e_30_dias`;
/*!50001 DROP VIEW IF EXISTS `v_produto_unitario_vencimento_15_e_30_dias`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_produto_unitario_vencimento_15_e_30_dias` AS SELECT 
 1 AS `vencimento15`,
 1 AS `vencimento30`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_produtos_conforme_nao_conforme_campanhas`
--

DROP TABLE IF EXISTS `v_produtos_conforme_nao_conforme_campanhas`;
/*!50001 DROP VIEW IF EXISTS `v_produtos_conforme_nao_conforme_campanhas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_produtos_conforme_nao_conforme_campanhas` AS SELECT 
 1 AS `nome`,
 1 AS `conforme`,
 1 AS `nao_conforme`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_qtd_discrepancia_condominios`
--

DROP TABLE IF EXISTS `v_qtd_discrepancia_condominios`;
/*!50001 DROP VIEW IF EXISTS `v_qtd_discrepancia_condominios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_qtd_discrepancia_condominios` AS SELECT 
 1 AS `nome_condominio`,
 1 AS `nome_produto`,
 1 AS `qtd_conforme`,
 1 AS `qtd_nao_conforme`,
 1 AS `discrepancia`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_qtd_doacoes_por_campanha`
--

DROP TABLE IF EXISTS `v_qtd_doacoes_por_campanha`;
/*!50001 DROP VIEW IF EXISTS `v_qtd_doacoes_por_campanha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_qtd_doacoes_por_campanha` AS SELECT 
 1 AS `id`,
 1 AS `qtd_arrecadada`,
 1 AS `nome`,
 1 AS `data_campanha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_qtd_produto_por_campanha`
--

DROP TABLE IF EXISTS `v_qtd_produto_por_campanha`;
/*!50001 DROP VIEW IF EXISTS `v_qtd_produto_por_campanha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_qtd_produto_por_campanha` AS SELECT 
 1 AS `id`,
 1 AS `campanha_id`,
 1 AS `nome`,
 1 AS `produto_id`,
 1 AS `qtd_produtos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_qtd_produto_por_condominio`
--

DROP TABLE IF EXISTS `v_qtd_produto_por_condominio`;
/*!50001 DROP VIEW IF EXISTS `v_qtd_produto_por_condominio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_qtd_produto_por_condominio` AS SELECT 
 1 AS `id`,
 1 AS `condominio_id`,
 1 AS `nome`,
 1 AS `produto_id`,
 1 AS `qtd_produtos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_qtd_produtos_n_conforme_por_condominio`
--

DROP TABLE IF EXISTS `v_qtd_produtos_n_conforme_por_condominio`;
/*!50001 DROP VIEW IF EXISTS `v_qtd_produtos_n_conforme_por_condominio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_qtd_produtos_n_conforme_por_condominio` AS SELECT 
 1 AS `id`,
 1 AS `condominio_id`,
 1 AS `nome_condominio`,
 1 AS `qtd_produtos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_qtd_produtos_por_nome_condominio`
--

DROP TABLE IF EXISTS `v_qtd_produtos_por_nome_condominio`;
/*!50001 DROP VIEW IF EXISTS `v_qtd_produtos_por_nome_condominio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_qtd_produtos_por_nome_condominio` AS SELECT 
 1 AS `id`,
 1 AS `nome_condominio`,
 1 AS `criado_em`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_qtd_produtos_vencidos_por_campanha`
--

DROP TABLE IF EXISTS `v_qtd_produtos_vencidos_por_campanha`;
/*!50001 DROP VIEW IF EXISTS `v_qtd_produtos_vencidos_por_campanha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_qtd_produtos_vencidos_por_campanha` AS SELECT 
 1 AS `id`,
 1 AS `campanha_id`,
 1 AS `nome`,
 1 AS `produto_id`,
 1 AS `qtd_produtos_vencidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_qtd_produtos_vencidos_por_condominio`
--

DROP TABLE IF EXISTS `v_qtd_produtos_vencidos_por_condominio`;
/*!50001 DROP VIEW IF EXISTS `v_qtd_produtos_vencidos_por_condominio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_qtd_produtos_vencidos_por_condominio` AS SELECT 
 1 AS `id`,
 1 AS `condominio_id`,
 1 AS `nome_condominio`,
 1 AS `qtd_vencidos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_qtd_total_alimentos_arrecadados_por_mes`
--

DROP TABLE IF EXISTS `v_qtd_total_alimentos_arrecadados_por_mes`;
/*!50001 DROP VIEW IF EXISTS `v_qtd_total_alimentos_arrecadados_por_mes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_qtd_total_alimentos_arrecadados_por_mes` AS SELECT 
 1 AS `id`,
 1 AS `qtd_arrecadada`,
 1 AS `data_campanha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_total_produtos_arrecadados_por_mes`
--

DROP TABLE IF EXISTS `v_total_produtos_arrecadados_por_mes`;
/*!50001 DROP VIEW IF EXISTS `v_total_produtos_arrecadados_por_mes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_total_produtos_arrecadados_por_mes` AS SELECT 
 1 AS `criado_em`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_total_produtos_arrecadados_por_mes_condominio`
--

DROP TABLE IF EXISTS `v_total_produtos_arrecadados_por_mes_condominio`;
/*!50001 DROP VIEW IF EXISTS `v_total_produtos_arrecadados_por_mes_condominio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_total_produtos_arrecadados_por_mes_condominio` AS SELECT 
 1 AS `condominio_id`,
 1 AS `criado_em`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_produto_unitario_qtd_ativo_por_mes`
--

/*!50001 DROP VIEW IF EXISTS `v_produto_unitario_qtd_ativo_por_mes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_produto_unitario_qtd_ativo_por_mes` AS select row_number() OVER (ORDER BY cast(`pu`.`criado_em` as date) )  AS `id`,cast(`pu`.`criado_em` as date) AS `criado_em`,count(0) AS `qtd`,`pu`.`produto_id` AS `produto_id` from `produto_unitario` `pu` group by cast(`pu`.`criado_em` as date),`pu`.`produto_id` order by cast(`pu`.`criado_em` as date) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_produto_unitario_qtd_vencido_por_mes`
--

/*!50001 DROP VIEW IF EXISTS `v_produto_unitario_qtd_vencido_por_mes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_produto_unitario_qtd_vencido_por_mes` AS select row_number() OVER (ORDER BY cast(`pu`.`data_validade` as date) )  AS `id`,cast(`pu`.`data_validade` as date) AS `data_validade`,count(0) AS `qtd`,`pu`.`produto_id` AS `produto_id` from `produto_unitario` `pu` where (`pu`.`vencido` = 1) group by cast(`pu`.`data_validade` as date),`pu`.`produto_id` order by cast(`pu`.`data_validade` as date) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_produto_unitario_vencido_arrecadado`
--

/*!50001 DROP VIEW IF EXISTS `v_produto_unitario_vencido_arrecadado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_produto_unitario_vencido_arrecadado` AS select `p`.`nome` AS `nome`,sum((case when (`pu`.`vencido` = false) then 1 else 0 end)) AS `arrecadado`,sum((case when (`pu`.`vencido` = true) then 1 else 0 end)) AS `vencido` from (`produto_unitario` `pu` join `produto` `p` on((`pu`.`produto_id` = `p`.`id`))) group by `p`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_produto_unitario_vencimento_15_e_30_dias`
--

/*!50001 DROP VIEW IF EXISTS `v_produto_unitario_vencimento_15_e_30_dias`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_produto_unitario_vencimento_15_e_30_dias` AS select (select count(0) from `produto_unitario` `pu` where (`pu`.`data_validade` between curdate() and (curdate() + interval 15 day))) AS `vencimento15`,(select count(0) from `produto_unitario` `pu` where (`pu`.`data_validade` > (curdate() + interval 16 day))) AS `vencimento30` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_produtos_conforme_nao_conforme_campanhas`
--

/*!50001 DROP VIEW IF EXISTS `v_produtos_conforme_nao_conforme_campanhas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_produtos_conforme_nao_conforme_campanhas` AS select `c`.`local_campanha` AS `nome`,sum((case when (`pu`.`vencido` = false) then 1 else 0 end)) AS `conforme`,sum((case when (`pu`.`vencido` = true) then 1 else 0 end)) AS `nao_conforme` from (((`produto_unitario` `pu` join `produto` `p` on((`pu`.`produto_id` = `p`.`id`))) join `origem` `o` on((`pu`.`origem_id` = `o`.`id`))) join `campanha` `c` on((`o`.`campanha_id` = `c`.`id`))) group by `c`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_qtd_discrepancia_condominios`
--

/*!50001 DROP VIEW IF EXISTS `v_qtd_discrepancia_condominios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_qtd_discrepancia_condominios` AS select `condominio`.`nome` AS `nome_condominio`,`produto_unitario`.`nome` AS `nome_produto`,count((case when (`produto_unitario`.`conforme` = 0) then 1 else NULL end)) AS `qtd_conforme`,count((case when (`produto_unitario`.`conforme` = 1) then 1 else NULL end)) AS `qtd_nao_conforme`,count((case when (`produto_unitario`.`conforme` = 0) then 1 else NULL end)) AS `discrepancia` from ((`produto_unitario` join `origem` on((`origem`.`id` = `produto_unitario`.`origem_id`))) join `condominio` on((`condominio`.`id` = `origem`.`condominio_id`))) group by `condominio`.`id`,`produto_unitario`.`nome` order by `discrepancia` desc limit 4 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_qtd_doacoes_por_campanha`
--

/*!50001 DROP VIEW IF EXISTS `v_qtd_doacoes_por_campanha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_qtd_doacoes_por_campanha` AS select row_number() OVER (ORDER BY `campanha`.`local_campanha`,cast(`campanha`.`data_campanha` as date) )  AS `id`,sum(`campanha`.`qtd_arrecadada`) AS `qtd_arrecadada`,`campanha`.`local_campanha` AS `nome`,cast(`campanha`.`data_campanha` as date) AS `data_campanha` from `campanha` group by `campanha`.`local_campanha`,cast(`campanha`.`data_campanha` as date) order by `nome`,`data_campanha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_qtd_produto_por_campanha`
--

/*!50001 DROP VIEW IF EXISTS `v_qtd_produto_por_campanha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_qtd_produto_por_campanha` AS select row_number() OVER (ORDER BY `campanha`.`local_campanha` )  AS `id`,`campanha`.`id` AS `campanha_id`,`campanha`.`local_campanha` AS `nome`,`produto_unitario`.`produto_id` AS `produto_id`,count(`produto_unitario`.`id`) AS `qtd_produtos` from ((`produto_unitario` join `origem` on((`origem`.`id` = `produto_unitario`.`origem_id`))) join `campanha` on((`campanha`.`id` = `origem`.`campanha_id`))) group by `campanha`.`id`,`produto_unitario`.`produto_id` order by `campanha`.`local_campanha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_qtd_produto_por_condominio`
--

/*!50001 DROP VIEW IF EXISTS `v_qtd_produto_por_condominio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_qtd_produto_por_condominio` AS select row_number() OVER (ORDER BY `condominio`.`nome` )  AS `id`,`condominio`.`id` AS `condominio_id`,`condominio`.`nome` AS `nome`,`produto_unitario`.`produto_id` AS `produto_id`,count(`produto_unitario`.`id`) AS `qtd_produtos` from ((`produto_unitario` join `origem` on((`origem`.`id` = `produto_unitario`.`origem_id`))) join `condominio` on((`condominio`.`id` = `origem`.`condominio_id`))) group by `condominio`.`id`,`produto_unitario`.`produto_id` order by `condominio`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_qtd_produtos_n_conforme_por_condominio`
--

/*!50001 DROP VIEW IF EXISTS `v_qtd_produtos_n_conforme_por_condominio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_qtd_produtos_n_conforme_por_condominio` AS select row_number() OVER (ORDER BY `condominio`.`nome` )  AS `id`,`condominio`.`id` AS `condominio_id`,`condominio`.`nome` AS `nome_condominio`,count(`produto_unitario`.`conforme`) AS `qtd_produtos` from ((`produto_unitario` join `origem` on((`origem`.`id` = `produto_unitario`.`origem_id`))) join `condominio` on((`condominio`.`id` = `origem`.`condominio_id`))) where (`produto_unitario`.`conforme` = 1) group by `condominio`.`id` order by `condominio`.`nome` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_qtd_produtos_por_nome_condominio`
--

/*!50001 DROP VIEW IF EXISTS `v_qtd_produtos_por_nome_condominio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_qtd_produtos_por_nome_condominio` AS select row_number() OVER (ORDER BY `condominio`.`nome`,cast(`produto_unitario`.`criado_em` as date) )  AS `id`,`condominio`.`nome` AS `nome_condominio`,cast(`produto_unitario`.`criado_em` as date) AS `criado_em`,count(`produto_unitario`.`id`) AS `count` from ((`produto_unitario` join `origem` on((`origem`.`id` = `produto_unitario`.`origem_id`))) join `condominio` on((`condominio`.`id` = `origem`.`condominio_id`))) group by `condominio`.`nome`,cast(`produto_unitario`.`criado_em` as date) order by `condominio`.`nome`,`criado_em` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_qtd_produtos_vencidos_por_campanha`
--

/*!50001 DROP VIEW IF EXISTS `v_qtd_produtos_vencidos_por_campanha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_qtd_produtos_vencidos_por_campanha` AS select row_number() OVER (ORDER BY `campanha`.`id` )  AS `id`,`campanha`.`id` AS `campanha_id`,`campanha`.`local_campanha` AS `nome`,`produto_unitario`.`produto_id` AS `produto_id`,count(`produto_unitario`.`id`) AS `qtd_produtos_vencidos` from ((`produto_unitario` join `origem` on((`origem`.`id` = `produto_unitario`.`origem_id`))) join `campanha` on((`campanha`.`id` = `origem`.`campanha_id`))) where (`produto_unitario`.`vencido` = true) group by `campanha`.`id`,`produto_unitario`.`produto_id` order by `campanha`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_qtd_produtos_vencidos_por_condominio`
--

/*!50001 DROP VIEW IF EXISTS `v_qtd_produtos_vencidos_por_condominio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_qtd_produtos_vencidos_por_condominio` AS select row_number() OVER (ORDER BY `condominio`.`id` )  AS `id`,`condominio`.`id` AS `condominio_id`,`condominio`.`nome` AS `nome_condominio`,count(`produto_unitario`.`id`) AS `qtd_vencidos` from ((`produto_unitario` join `origem` on((`origem`.`id` = `produto_unitario`.`origem_id`))) join `condominio` on((`condominio`.`id` = `origem`.`condominio_id`))) where (`produto_unitario`.`data_validade` < curdate()) group by `condominio`.`id` order by `condominio`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_qtd_total_alimentos_arrecadados_por_mes`
--

/*!50001 DROP VIEW IF EXISTS `v_qtd_total_alimentos_arrecadados_por_mes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_qtd_total_alimentos_arrecadados_por_mes` AS select row_number() OVER (ORDER BY cast(`campanha`.`data_campanha` as date) )  AS `id`,sum(`campanha`.`qtd_arrecadada`) AS `qtd_arrecadada`,cast(`campanha`.`data_campanha` as date) AS `data_campanha` from `campanha` group by cast(`campanha`.`data_campanha` as date) order by `data_campanha` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_total_produtos_arrecadados_por_mes`
--

/*!50001 DROP VIEW IF EXISTS `v_total_produtos_arrecadados_por_mes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_total_produtos_arrecadados_por_mes` AS select cast(`produto_unitario`.`criado_em` as date) AS `criado_em`,count(`produto_unitario`.`id`) AS `count` from ((`produto_unitario` join `origem` on((`origem`.`id` = `produto_unitario`.`origem_id`))) join `condominio` on((`condominio`.`id` = `origem`.`condominio_id`))) group by cast(`produto_unitario`.`criado_em` as date) order by `criado_em` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_total_produtos_arrecadados_por_mes_condominio`
--

/*!50001 DROP VIEW IF EXISTS `v_total_produtos_arrecadados_por_mes_condominio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_total_produtos_arrecadados_por_mes_condominio` AS select `condominio`.`id` AS `condominio_id`,cast(`produto_unitario`.`criado_em` as date) AS `criado_em`,count(`produto_unitario`.`id`) AS `count` from ((`produto_unitario` join `origem` on((`origem`.`id` = `produto_unitario`.`origem_id`))) join `condominio` on((`condominio`.`id` = `origem`.`condominio_id`))) where (cast(`produto_unitario`.`criado_em` as date) = (select cast(max(`produto_unitario`.`criado_em`) as date) from `produto_unitario`)) group by cast(`produto_unitario`.`criado_em` as date),`condominio`.`id` order by `condominio`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 19:54:52
