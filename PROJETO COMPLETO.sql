-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: loja_esportiva
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(50) DEFAULT NULL,
  `cpf_cliente` varchar(20) DEFAULT NULL,
  `email_cliente` varchar(50) DEFAULT NULL,
  `telefone_cliente` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João Silva','12345678901','joao@email.com','21987654321'),(2,'Maria Santos','23456789012','maria@email.com','21987654322'),(3,'Pedro Souza','34567890123','pedro@email.com','21987654323'),(4,'Ana Oliveira','45678901234','ana@email.com','21987654324'),(5,'Carlos Mendes','56789012345','carlos@email.com','21987654325');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_venda`
--

DROP TABLE IF EXISTS `item_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_venda` (
  `id_item` int NOT NULL AUTO_INCREMENT,
  `id_venda` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `quantidade` int NOT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_item`),
  KEY `id_venda` (`id_venda`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `item_venda_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`),
  CONSTRAINT `item_venda_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_venda`
--

LOCK TABLES `item_venda` WRITE;
/*!40000 ALTER TABLE `item_venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(50) DEFAULT NULL,
  `preco_produto` decimal(10,2) DEFAULT NULL,
  `estoque` int DEFAULT NULL,
  `descricao` text,
  PRIMARY KEY (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Nike Air Max SC',499.90,15,'Tenis esportivo Nike para uso diario'),(2,'Nike Revolution 7',349.90,20,'Tenis Nike para corrida e caminhada'),(3,'Nike Court Vision',429.90,12,'Tenis casual Nike'),(4,'Adidas Grand Court',299.90,18,'Tenis casual Adidas'),(5,'Adidas Runfalcon 3',279.90,14,'Tenis Adidas para corrida'),(6,'Adidas Duramo SL',399.90,10,'Tenis esportivo Adidas'),(7,'Camiseta Nike Dri-FIT',149.90,30,'Camiseta masculina Nike para treino'),(8,'Camiseta Adidas Essentials',119.90,25,'Camiseta masculina Adidas'),(9,'Camiseta Nike Sportswear',139.90,22,'Camiseta casual Nike'),(10,'Camiseta Adidas Trefoil',129.90,20,'Camiseta Adidas com logo Trefoil'),(11,'Camiseta Nike Feminina',129.90,18,'Camiseta feminina Nike'),(12,'Camiseta Adidas Feminina',119.90,16,'Camiseta feminina Adidas'),(13,'Short Nike Dri-FIT',159.90,20,'Short masculino para atividades fisicas'),(14,'Short Adidas Train Essentials',139.90,17,'Short esportivo Adidas'),(15,'Calca Nike Sportswear',299.90,12,'Calca esportiva Nike'),(16,'Calca Adidas Essentials',279.90,14,'Calca esportiva Adidas'),(17,'Moletom Nike Club',349.90,10,'Moletom masculino Nike'),(18,'Moletom Adidas Essentials',329.90,11,'Moletom Adidas'),(19,'Jaqueta Nike Windrunner',499.90,8,'Jaqueta esportiva Nike'),(20,'Jaqueta Adidas Tiro',399.90,9,'Jaqueta esportiva Adidas'),(21,'Nike Air Max SC',499.90,15,'Tenis esportivo Nike para uso diario'),(22,'Nike Revolution 7',349.90,20,'Tenis Nike para corrida e caminhada'),(23,'Nike Court Vision',429.90,12,'Tenis casual Nike'),(24,'Adidas Grand Court',299.90,18,'Tenis casual Adidas'),(25,'Adidas Runfalcon 3',279.90,14,'Tenis Adidas para corrida'),(26,'Adidas Duramo SL',399.90,10,'Tenis esportivo Adidas'),(27,'Camiseta Nike Dri-FIT',149.90,30,'Camiseta masculina Nike para treino'),(28,'Camiseta Adidas Essentials',119.90,25,'Camiseta masculina Adidas'),(29,'Camiseta Nike Sportswear',139.90,22,'Camiseta casual Nike'),(30,'Camiseta Adidas Trefoil',129.90,20,'Camiseta Adidas com logo Trefoil'),(31,'Camiseta Nike Feminina',129.90,18,'Camiseta feminina Nike'),(32,'Camiseta Adidas Feminina',119.90,16,'Camiseta feminina Adidas'),(33,'Short Nike Dri-FIT',159.90,20,'Short masculino para atividades fisicas'),(34,'Short Adidas Train Essentials',139.90,17,'Short esportivo Adidas'),(35,'Calca Nike Sportswear',299.90,12,'Calca esportiva Nike'),(36,'Calca Adidas Essentials',279.90,14,'Calca esportiva Adidas'),(37,'Moletom Nike Club',349.90,10,'Moletom masculino Nike'),(38,'Moletom Adidas Essentials',329.90,11,'Moletom Adidas'),(39,'Jaqueta Nike Windrunner',499.90,8,'Jaqueta esportiva Nike'),(40,'Jaqueta Adidas Tiro',399.90,9,'Jaqueta esportiva Adidas'),(41,'Nike Air Max SC',499.90,15,'Tenis esportivo Nike para uso diario'),(42,'Nike Revolution 7',349.90,20,'Tenis Nike para corrida e caminhada'),(43,'Nike Court Vision',429.90,12,'Tenis casual Nike'),(44,'Adidas Grand Court',299.90,18,'Tenis casual Adidas'),(45,'Adidas Runfalcon 3',279.90,14,'Tenis Adidas para corrida'),(46,'Adidas Duramo SL',399.90,10,'Tenis esportivo Adidas'),(47,'Camiseta Nike Dri-FIT',149.90,30,'Camiseta masculina Nike para treino'),(48,'Camiseta Adidas Essentials',119.90,25,'Camiseta masculina Adidas'),(49,'Camiseta Nike Sportswear',139.90,22,'Camiseta casual Nike'),(50,'Camiseta Adidas Trefoil',129.90,20,'Camiseta Adidas com logo Trefoil'),(51,'Camiseta Nike Feminina',129.90,18,'Camiseta feminina Nike'),(52,'Camiseta Adidas Feminina',119.90,16,'Camiseta feminina Adidas'),(53,'Short Nike Dri-FIT',159.90,20,'Short masculino para atividades fisicas'),(54,'Short Adidas Train Essentials',139.90,17,'Short esportivo Adidas'),(55,'Calca Nike Sportswear',299.90,12,'Calca esportiva Nike'),(56,'Calca Adidas Essentials',279.90,14,'Calca esportiva Adidas'),(57,'Moletom Nike Club',349.90,10,'Moletom masculino Nike'),(58,'Moletom Adidas Essentials',329.90,11,'Moletom Adidas'),(59,'Jaqueta Nike Windrunner',499.90,8,'Jaqueta esportiva Nike'),(60,'Jaqueta Adidas Tiro',399.90,9,'Jaqueta esportiva Adidas'),(61,'Nike Air Max SC',499.90,15,'Tenis esportivo Nike para uso diario'),(62,'Nike Revolution 7',349.90,20,'Tenis Nike para corrida e caminhada'),(63,'Nike Court Vision',429.90,12,'Tenis casual Nike'),(64,'Adidas Grand Court',299.90,18,'Tenis casual Adidas'),(65,'Adidas Runfalcon 3',279.90,14,'Tenis Adidas para corrida'),(66,'Adidas Duramo SL',399.90,10,'Tenis esportivo Adidas'),(67,'Camiseta Nike Dri-FIT',149.90,30,'Camiseta masculina Nike para treino'),(68,'Camiseta Adidas Essentials',119.90,25,'Camiseta masculina Adidas'),(69,'Camiseta Nike Sportswear',139.90,22,'Camiseta casual Nike'),(70,'Camiseta Adidas Trefoil',129.90,20,'Camiseta Adidas com logo Trefoil'),(71,'Camiseta Nike Feminina',129.90,18,'Camiseta feminina Nike'),(72,'Camiseta Adidas Feminina',119.90,16,'Camiseta feminina Adidas'),(73,'Short Nike Dri-FIT',159.90,20,'Short masculino para atividades fisicas'),(74,'Short Adidas Train Essentials',139.90,17,'Short esportivo Adidas'),(75,'Calca Nike Sportswear',299.90,12,'Calca esportiva Nike'),(76,'Calca Adidas Essentials',279.90,14,'Calca esportiva Adidas'),(77,'Moletom Nike Club',349.90,10,'Moletom masculino Nike'),(78,'Moletom Adidas Essentials',329.90,11,'Moletom Adidas'),(79,'Jaqueta Nike Windrunner',499.90,8,'Jaqueta esportiva Nike'),(80,'Jaqueta Adidas Tiro',399.90,9,'Jaqueta esportiva Adidas');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `id_venda` int NOT NULL AUTO_INCREMENT,
  `data_venda` datetime DEFAULT CURRENT_TIMESTAMP,
  `status_venda` varchar(30) DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_venda`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,'2026-11-10 18:50:18','Concluida',1),(2,'2026-11-10 18:50:18','Concluida',2),(3,'2026-11-10 18:50:18','Concluida',3),(4,'2026-11-10 18:50:18','Pendente',4),(5,'2026-11-10 18:50:18','Concluida',5),(6,'2026-11-10 18:50:18','Concluida',1),(7,'2026-11-10 18:50:18','Pendente',2),(8,'2026-11-10 18:50:18','Concluida',3),(9,'2026-11-10 18:50:18','Concluida',4),(10,'2026-11-10 18:50:18','Concluida',5),(11,'2026-11-10 18:50:18','Concluida',1),(12,'2026-11-10 18:50:18','Concluida',2),(13,'2026-11-10 18:50:18','Concluida',3),(14,'2026-11-10 18:50:18','Pendente',4),(15,'2026-11-10 18:50:18','Concluida',5),(16,'2026-11-10 18:50:18','Concluida',1),(17,'2026-11-10 18:50:18','Pendente',2),(18,'2026-11-10 18:50:18','Concluida',3),(19,'2026-11-10 18:50:18','Concluida',4),(20,'2026-11-10 18:50:18','Concluida',5),(21,'2026-11-10 18:50:18','Concluida',1),(22,'2026-11-10 18:50:18','Concluida',2),(23,'2026-11-10 18:50:18','Concluida',3),(24,'2026-11-10 18:50:18','Pendente',4),(25,'2026-11-10 18:50:18','Concluida',5),(26,'2026-11-10 18:50:18','Concluida',1),(27,'2026-11-10 18:50:18','Pendente',2),(28,'2026-11-10 18:50:18','Concluida',3),(29,'2026-11-10 18:50:18','Concluida',4),(30,'2026-11-10 18:50:18','Concluida',5);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-23 15:11:03
