CREATE DATABASE  IF NOT EXISTS `carsdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `carsdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carsdb
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `idcar` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `yearmodel` smallint DEFAULT NULL,
  PRIMARY KEY (`idcar`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES (1,'Audi','A4',2017),(2,'Audi','A6',2015),(3,'BMW','530',2019),(4,'BMW','320',2017),(5,'Citroen','C5',2016),(6,'Volvo','V70',2015),(7,'Volvo','S60',2018),(8,'Kia','Rio',2020),(9,'Kia','Niro',2020);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carowner`
--

DROP TABLE IF EXISTS `carowner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carowner` (
  `idcarowner` int NOT NULL AUTO_INCREMENT,
  `idcar` int DEFAULT NULL,
  `idowner` int DEFAULT NULL,
  PRIMARY KEY (`idcarowner`),
  KEY `car_carowner_idx` (`idcar`),
  KEY `owner_carowner_idx` (`idowner`),
  CONSTRAINT `car_carowner` FOREIGN KEY (`idcar`) REFERENCES `car` (`idcar`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `owner_carowner` FOREIGN KEY (`idowner`) REFERENCES `owner` (`idowner`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carowner`
--

LOCK TABLES `carowner` WRITE;
/*!40000 ALTER TABLE `carowner` DISABLE KEYS */;
INSERT INTO `carowner` VALUES (1,1,1),(2,1,2),(3,2,3),(4,3,4),(5,4,5),(6,4,6),(7,5,5),(8,5,6),(9,6,7),(10,7,8),(11,8,9),(12,8,10),(13,9,9),(14,9,10);
/*!40000 ALTER TABLE `carowner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner` (
  `idowner` int NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `streetaddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idowner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'Jim','Smith','Kotkantie 1'),(2,'Ann','Smith','Kotkantie 1'),(3,'Bob','Jones','Uusikatu 7'),(4,'Lisa','Simpson','Hallituskatu 2'),(5,'Mary','Wilson','Torikatu 2'),(6,'Jack','Wilson','Torikatu 2'),(7,'Tom','Daniels','Uusikatu 2'),(8,'Ally','Jones','Hallituskatu 7'),(9,'Rita','Ramon','Isokatu 4'),(10,'Matt','Ramon','Isokatu 4');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-25 12:43:44