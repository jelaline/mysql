CREATE DATABASE  IF NOT EXISTS `livraria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `livraria`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: livraria
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `livros`
--

DROP TABLE IF EXISTS `livros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livros` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Autor` varchar(255) NOT NULL,
  `Sexo_Autor` enum('MASCULINO','FEMININO') NOT NULL,
  `Numero_Paginas` int NOT NULL,
  `Editora` varchar(255) NOT NULL,
  `Valor_Capa` float NOT NULL,
  `Valor_Kindle` float NOT NULL,
  `Ano_Publicacao` int NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (1,'Robert T Kiyosaki','MASCULINO',336,'Alta Books',61.53,58.45,2018),(2,'Robert T Kiyosaki','MASCULINO',336,'Alta Books',61.53,58.45,2018),(3,'Robert T Kiyosaki','MASCULINO',336,'Alta Books',61.53,58.45,2018),(4,'Robert T Kiyosaki','MASCULINO',336,'Alta Books',61.53,58.45,2018),(5,'Carlos S Dweck','FEMININO',312,'Objetiva',38.99,14.95,2017),(6,'Robert T Kiyosaki','MASCULINO',336,'Alta Books',61.53,58.45,2018),(7,'Carlos S Dweck','FEMININO',312,'Objetiva',38.99,14.95,2017),(8,'Dale Carnegie','MASCULINO',256,'Sextante',38.99,33.24,2019),(9,'Willian P Young','MASCULINO',240,'Arqueiro',35.99,17.9,2008),(10,'Charles Duhigg','MASCULINO',408,'Objetiva',42.99,29.9,2012),(11,'Robert C Martin','MASCULINO',425,'Alta Books',91.99,87.39,2009),(12,'Greg Mckeown','MASCULINO',272,'Sextante',53.58,33.24,2015),(13,'Nathalia Arcuri','FEMININO',176,'Sextante',32.86,17.09,2018),(14,'Simon Sinek','MASCULINO',256,'Sextante',50.58,24.9,2018),(15,'Paulo Coelho','MASCULINO',206,'Paralela',24.7,14.7,2017);
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-24 22:25:59
