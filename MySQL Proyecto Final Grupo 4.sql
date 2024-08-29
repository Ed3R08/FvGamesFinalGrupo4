CREATE DATABASE  IF NOT EXISTS `fvgames` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fvgames`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: fvgames
-- ------------------------------------------------------
-- Server version	8.0.39
 
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
-- Table structure for table `carritocompras`
--
 
DROP TABLE IF EXISTS `carritocompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carritocompras` (
  `idCarritoCompras` int NOT NULL AUTO_INCREMENT,
  `idCliente` int DEFAULT NULL,
  `idProducto` int DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCarritoCompras`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
 
--
-- Dumping data for table `carritocompras`
--
 
LOCK TABLES `carritocompras` WRITE;
/*!40000 ALTER TABLE `carritocompras` DISABLE KEYS */;
/*!40000 ALTER TABLE `carritocompras` ENABLE KEYS */;
UNLOCK TABLES;
 
--
-- Table structure for table `cliente`
--
 
DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellidos` varchar(45) DEFAULT NULL,
  `Cedula` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Dinero` varchar(45) DEFAULT NULL,
  `MetodoPago` varchar(45) DEFAULT NULL,
  `Foto` varchar(450) DEFAULT NULL,
  `NumeroTarjeta` varchar(450) DEFAULT NULL,
  `NumeroCuentaBanco` varchar(450) DEFAULT NULL,
  `Contrasena` varchar(45) DEFAULT NULL,
  `TipoCliente` varchar(45) DEFAULT 'Cliente',
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
 
--
-- Dumping data for table `cliente`
--
 
LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'1','111','1','1','1','1','Efectivo','','','','1','Cliente'),(2,'2','2','2','2','2','2','Transferencia','','','','2','Cliente');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
 
--
-- Table structure for table `paquetes`
--
 
DROP TABLE IF EXISTS `paquetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquetes` (
  `idPaquete` int NOT NULL AUTO_INCREMENT,
  `NombrePaquete` varchar(45) DEFAULT NULL,
  `Descuento` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPaquete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
 
--
-- Dumping data for table `paquetes`
--
 
LOCK TABLES `paquetes` WRITE;
/*!40000 ALTER TABLE `paquetes` DISABLE KEYS */;
/*!40000 ALTER TABLE `paquetes` ENABLE KEYS */;
UNLOCK TABLES;
 
--
-- Table structure for table `productos`
--
 
DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProductos` int NOT NULL AUTO_INCREMENT,
  `Producto` varchar(100) DEFAULT NULL,
  `Cantidad` int DEFAULT '0',
  `Activo` varchar(45) DEFAULT 'Si',
  `Categoria` varchar(100) DEFAULT NULL,
  `Precio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProductos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
 
--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'PS5',5,'Si','Consola','300'),(2,'ControlPS5',23,'Si','Control','50'),(3,'Xbox',6,'Si','Consola','229'),(4,'Nintendo Switch',88,'Si','Consola','100'),(5,'Control Xbox',40,'Si','Control','100'),(6,'Control Switch',40,'Si','Control','50'),(7,'Call of Duty',55,'Si','Juego','60'),(8,'FC25',300,'Si','Juego','60'),(9,'Rayman',20,'Si','Juego','60'),(10,'PS+',15,'Si','Suscripcion','30'),(11,'GamePass',15,'Si','Suscripcion','15'),(12,'SwitchOnline',10,'Si','Suscripcion','15');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
 
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;