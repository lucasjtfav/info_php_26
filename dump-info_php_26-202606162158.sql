-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: info_php_26
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.23-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidades` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nomeCidade` varchar(100) NOT NULL,
  `idEstado` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cidades_estados_FK` (`idEstado`),
  CONSTRAINT `cidades_estados_FK` FOREIGN KEY (`idEstado`) REFERENCES `estados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'Bento Gonçalves',20),(2,'Fortaleza',6);
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `estado` varchar(2) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `rua` varchar(512) NOT NULL,
  `numero` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'RS','BG','95707000','Centro','das andradas','123'),(5,'SC','Floripa','95706000','Centro','Dom Pedro II','456'),(6,'SC','BC','94850330','Cohab','Marechal Peixoto','852'),(7,'SC','Floripa','95706000','Licorsul','Dom Pedro II','74'),(8,'RS','BG','95707000','Maria Goretti','Pedro Ernesto','S/N'),(9,'RS','BG','95707000','Borgo','Sao Paulo','951'),(10,'PR','Londrina','85707012','Centro','13 De Maio','10'),(11,'PR','Pato Branco','85707000','Centro','Dom Pedro II','741'),(12,'SC','BC','94850330','Atlantica','1580','3');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nomeEstado` varchar(40) NOT NULL,
  `siglaEstado` varchar(2) NOT NULL,
  `regiao` varchar(14) NOT NULL,
  `criadoEm` timestamp NULL DEFAULT NULL,
  `atualizadoEm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Acre','AC','Norte',NULL,'2026-06-17 00:55:39'),(2,'Alagoas','AL','Norte',NULL,'2026-06-17 00:55:39'),(3,'Amapá','AP','Norte',NULL,'2026-06-17 00:55:39'),(4,'Amazonas','AM','Norte',NULL,'2026-06-17 00:55:39'),(5,'Bahia','BA','Nordeste',NULL,'2026-06-17 00:55:39'),(6,'Ceará','CE','Nordeste',NULL,'2026-06-17 00:55:39'),(7,'Distrito Federal','DF','Centro-Oeste',NULL,'2026-06-17 00:55:39'),(8,'Espírito Santo','ES','Sudeste',NULL,'2026-06-17 00:55:39'),(9,'Goiás','GO','Centro-Oeste',NULL,'2026-06-17 00:55:39'),(10,'Maranhão','MA','Norte',NULL,'2026-06-17 00:55:39'),(11,'Mato Grosso','MT','Centro-Oeste',NULL,'2026-06-17 00:55:39'),(12,'Mato Grosso do Sul','MS','Centro-Oeste',NULL,'2026-06-17 00:55:39'),(13,'Minas Gerais','MG','Sudeste',NULL,'2026-06-17 00:55:39'),(14,'Pará','PA','Norte',NULL,'2026-06-17 00:55:39'),(15,'Paraíba','PB','Nordeste',NULL,'2026-06-17 00:55:39'),(16,'Paraná','PR','Sul',NULL,'2026-06-17 00:55:39'),(17,'Pernambuco','PE','Nordeste',NULL,'2026-06-17 00:55:39'),(18,'Piaui','PI','Nordeste',NULL,'2026-06-17 00:55:39'),(19,'Rio de Janeiro','RJ','Sudeste',NULL,'2026-06-17 00:55:39'),(20,'Rio Grande do Sul','RS','Sul',NULL,'2026-06-17 00:55:39'),(21,'Rio Grande do Norte','RN','Nordeste',NULL,'2026-06-17 00:55:39'),(22,'Rondônia','RO','Norte',NULL,'2026-06-17 00:55:39'),(23,'Roraima','RR','Norte',NULL,'2026-06-17 00:55:39'),(24,'Santa Catarina','SC','Sul',NULL,'2026-06-17 00:55:39'),(25,'São Paulo','SP','Sudeste',NULL,'2026-06-17 00:55:39'),(26,'Sergipe','SE','Nordeste',NULL,'2026-06-17 00:55:39'),(27,'Tocantins','TO','Norte',NULL,'2026-06-17 00:55:39');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `salario` decimal(10,0) NOT NULL,
  `cargo` varchar(512) NOT NULL,
  `setor` varchar(150) NOT NULL,
  `cracha` varchar(15) NOT NULL,
  `idPessoa` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `funcionario_pessoa_FK` (`idPessoa`),
  CONSTRAINT `funcionario_pessoa_FK` FOREIGN KEY (`idPessoa`) REFERENCES `pessoa` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (2,'Ariel','Felippi',1223456,'Professor','Desenvolvimento','4501',3),(3,'Maria','Silva',456789123,'Secretaria','Atendimento','0052',8);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nome` varchar(512) NOT NULL,
  `idade` int(11) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `tipoPessoa` enum('F','J') NOT NULL DEFAULT 'F',
  `idEndereco` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pessoa_endereco_FK` (`idEndereco`),
  CONSTRAINT `pessoa_endereco_FK` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (3,'Ariel',33,'30552022','01234567891',NULL,'F',8),(4,'Enzo',18,'549995933','19876543210',NULL,'F',5),(5,'Rafaella',25,'54999915742','15975398741',NULL,'F',8),(6,'Lucas',22,'55981235879','00012458534',NULL,'F',12),(7,'Guilherme',30,'51987563247','55234794219','8526547886000185','J',12),(8,'Maria',22,'54982658434','52348698712','8526547892000175','J',9);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'info_php_26'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-16 21:58:22
