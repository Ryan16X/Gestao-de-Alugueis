-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: alugueis
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
-- Table structure for table `tbl_aluga`
--

DROP TABLE IF EXISTS `tbl_aluga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aluga` (
  `id_locador` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(30) DEFAULT NULL,
  `Sobrenome` varchar(20) DEFAULT NULL,
  `Cpf` varchar(15) DEFAULT NULL,
  `Telefone` varchar(30) DEFAULT NULL,
  `Qntmesas` varchar(5) DEFAULT NULL,
  `Debitos` double DEFAULT NULL,
  PRIMARY KEY (`id_locador`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aluga`
--

LOCK TABLES `tbl_aluga` WRITE;
/*!40000 ALTER TABLE `tbl_aluga` DISABLE KEYS */;
INSERT INTO `tbl_aluga` VALUES (1,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(2,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(3,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(4,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(5,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(6,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(7,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(8,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(9,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(10,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(11,'Carlos Alberto','Farias','123.456.789-10','964381447','50',350),(12,'Ryan Carlos','Laia','123.456.789-10','993739420','20',140),(13,'Ryan Carlos','Laia','123.456.789-10','993739420','20',140),(14,'Ryan Carlos','Laia','123.456.789-10','993739420','20',140),(15,'Ryan Carlos','Laia','123.456.789-10','993739420','20',140),(16,'Ryan Carlos','Laia','123.456.789-10','993739420','20',140),(17,'Ryan Carlos','Laia','123.456.789-10','993739420','20',140),(18,'Ryan Carlos','Laia','123.456.789-10','993739420','20',140),(19,'Ryan Carlos','Laia','123.456.789-10','993739420','20',140),(20,'Ryan Carlos','Laia','123.456.789-10','993739420','20',140);
/*!40000 ALTER TABLE `tbl_aluga` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-27 13:27:26
