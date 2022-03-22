-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: db_generation_game_online
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `tb_personagem`
--

DROP TABLE IF EXISTS `tb_personagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_personagem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `ataque` decimal(10,0) NOT NULL,
  `defesa` decimal(10,0) NOT NULL,
  `poder` varchar(60) NOT NULL,
  `fk_id_classe` int NOT NULL,
  `tb_classe_id` bigint NOT NULL,
  PRIMARY KEY (`id`,`tb_classe_id`),
  KEY `fk_tb_personagem_tb_classe_idx` (`tb_classe_id`),
  CONSTRAINT `fk_tb_personagem_tb_classe` FOREIGN KEY (`tb_classe_id`) REFERENCES `tb_classe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_personagem`
--

LOCK TABLES `tb_personagem` WRITE;
/*!40000 ALTER TABLE `tb_personagem` DISABLE KEYS */;
INSERT INTO `tb_personagem` VALUES (33,'Merlin',1500,1950,'flechas bidimencionais',1,1),(34,'Diane',2100,1700,'dominacao do ar e ataque aereo',4,4),(35,'Joseph',3600,2800,'manipulacao e criacao de estalagmite',3,3),(36,'Chin',2700,2000,'manipulacao do fogo',2,2),(37,'Cooper',1800,1950,'magia do tempo',5,5),(38,'Hayna',4150,3650,'magia do tempo',5,5),(39,'Hyoga',1850,2150,'manipulacao e criacao de estalagmite',3,3),(40,'Jordanna',3000,2500,'flechas bidimencionais',1,1);
/*!40000 ALTER TABLE `tb_personagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-23 23:52:22
