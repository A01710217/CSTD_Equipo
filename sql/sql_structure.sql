-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: prueba_zebrands
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `IDCompra` int NOT NULL AUTO_INCREMENT,
  `FechaVenta` datetime DEFAULT NULL,
  PRIMARY KEY (`IDCompra`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `comprador`
--

DROP TABLE IF EXISTS `comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprador` (
  `IDComprador` int NOT NULL AUTO_INCREMENT,
  `CorreoElectronico` varchar(50) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IDComprador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `compraproducto`
--

DROP TABLE IF EXISTS `compraproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compraproducto` (
  `IDCompraProducto` int NOT NULL AUTO_INCREMENT,
  `ItemCode` varchar(20) NOT NULL,
  `IDCompra` int NOT NULL,
  `IDEncuestaRespondida` int DEFAULT NULL,
  PRIMARY KEY (`IDCompraProducto`),
  KEY `ItemCode` (`ItemCode`),
  KEY `IDCompra` (`IDCompra`),
  KEY `IDEncuestaRespondida` (`IDEncuestaRespondida`),
  CONSTRAINT `compraproducto_ibfk_1` FOREIGN KEY (`ItemCode`) REFERENCES `producto` (`ItemCode`),
  CONSTRAINT `compraproducto_ibfk_2` FOREIGN KEY (`IDCompra`) REFERENCES `compra` (`IDCompra`),
  CONSTRAINT `IDEncuestaRespondida` FOREIGN KEY (`IDEncuestaRespondida`) REFERENCES `encuestarespondida` (`IDEncuestaRespondida`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `encuestaformato`
--

DROP TABLE IF EXISTS `encuestaformato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encuestaformato` (
  `IDEncuestaFormato` int NOT NULL AUTO_INCREMENT,
  `IDMarca` int NOT NULL,
  PRIMARY KEY (`IDEncuestaFormato`),
  KEY `IDMarca` (`IDMarca`),
  CONSTRAINT `encuestaformato_ibfk_1` FOREIGN KEY (`IDMarca`) REFERENCES `marca` (`IDMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `encuestarespondida`
--

DROP TABLE IF EXISTS `encuestarespondida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encuestarespondida` (
  `IDEncuestaRespondida` int NOT NULL AUTO_INCREMENT,
  `IDCompraProducto` int NOT NULL,
  `FechaRespuesta` datetime DEFAULT NULL,
  `IDResenia` int DEFAULT NULL,
  PRIMARY KEY (`IDEncuestaRespondida`),
  KEY `IDCompraProducto` (`IDCompraProducto`),
  KEY `IDResenia` (`IDResenia`),
  CONSTRAINT `encuestarespondida_ibfk_1` FOREIGN KEY (`IDCompraProducto`) REFERENCES `compraproducto` (`IDCompraProducto`),
  CONSTRAINT `IDResenia` FOREIGN KEY (`IDResenia`) REFERENCES `resenia` (`IDResenia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `IDMarca` int NOT NULL AUTO_INCREMENT,
  `Brand` varchar(20) DEFAULT NULL,
  `IDEncuestaFormato` int DEFAULT NULL,
  `DiasEnviar` int NOT NULL,
  PRIMARY KEY (`IDMarca`),
  KEY `IDEncuestaFormato` (`IDEncuestaFormato`),
  CONSTRAINT `IDEncuestaFormato` FOREIGN KEY (`IDEncuestaFormato`) REFERENCES `encuestaformato` (`IDEncuestaFormato`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `opcion`
--

DROP TABLE IF EXISTS `opcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opcion` (
  `IDOpcion` int NOT NULL AUTO_INCREMENT,
  `IDPregunta` int NOT NULL,
  `Texto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDOpcion`),
  KEY `IDPregunta` (`IDPregunta`),
  CONSTRAINT `opcion_ibfk_1` FOREIGN KEY (`IDPregunta`) REFERENCES `pregunta` (`IDPregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pertenece`
--

DROP TABLE IF EXISTS `pertenece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pertenece` (
  `ItemCode` varchar(10) NOT NULL,
  `IDMarca` int NOT NULL,
  PRIMARY KEY (`ItemCode`,`IDMarca`),
  KEY `IDMarca` (`IDMarca`),
  CONSTRAINT `pertenece_ibfk_1` FOREIGN KEY (`ItemCode`) REFERENCES `producto` (`ItemCode`),
  CONSTRAINT `pertenece_ibfk_2` FOREIGN KEY (`IDMarca`) REFERENCES `marca` (`IDMarca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pregunta`
--

DROP TABLE IF EXISTS `pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregunta` (
  `IDPregunta` int NOT NULL AUTO_INCREMENT,
  `IDEncuestaFormato` int NOT NULL,
  `IDTipo` int NOT NULL,
  `TextoPregunta` varchar(200) DEFAULT NULL,
  `StatusObligatorio` tinyint DEFAULT NULL,
  PRIMARY KEY (`IDPregunta`),
  KEY `IDEncuestaFormato` (`IDEncuestaFormato`),
  KEY `IDTipo` (`IDTipo`),
  CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`IDEncuestaFormato`) REFERENCES `encuestaformato` (`IDEncuestaFormato`),
  CONSTRAINT `pregunta_ibfk_2` FOREIGN KEY (`IDTipo`) REFERENCES `tipo` (`IDTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `ItemCode` varchar(20) NOT NULL,
  `Nombre` varchar(60) DEFAULT NULL,
  `Imagen` varchar(400) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`ItemCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `realiza`
--

DROP TABLE IF EXISTS `realiza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realiza` (
  `IDComprador` int NOT NULL,
  `IDCompra` int NOT NULL,
  PRIMARY KEY (`IDComprador`,`IDCompra`),
  KEY `IDCompra` (`IDCompra`),
  CONSTRAINT `realiza_ibfk_1` FOREIGN KEY (`IDComprador`) REFERENCES `comprador` (`IDComprador`),
  CONSTRAINT `realiza_ibfk_2` FOREIGN KEY (`IDCompra`) REFERENCES `compra` (`IDCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resenia`
--

DROP TABLE IF EXISTS `resenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resenia` (
  `IDResenia` int NOT NULL AUTO_INCREMENT,
  `IDEncuestaRespondida` int NOT NULL,
  `CalificacionEstrellas` int DEFAULT NULL,
  `Visibilidad` tinyint DEFAULT NULL,
  `Texto` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`IDResenia`),
  KEY `IDEncuestaRespondida` (`IDEncuestaRespondida`),
  CONSTRAINT `resenia_ibfk_1` FOREIGN KEY (`IDEncuestaRespondida`) REFERENCES `encuestarespondida` (`IDEncuestaRespondida`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `respuesta`
--

DROP TABLE IF EXISTS `respuesta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuesta` (
  `IDRespuesta` int NOT NULL AUTO_INCREMENT,
  `IDEncuestaRespondida` int NOT NULL,
  `IDPregunta` int NOT NULL,
  `Texto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IDRespuesta`),
  KEY `IDEncuestaRespondida` (`IDEncuestaRespondida`),
  KEY `IDPregunta` (`IDPregunta`),
  CONSTRAINT `respuesta_ibfk_1` FOREIGN KEY (`IDEncuestaRespondida`) REFERENCES `encuestarespondida` (`IDEncuestaRespondida`),
  CONSTRAINT `respuesta_ibfk_2` FOREIGN KEY (`IDPregunta`) REFERENCES `pregunta` (`IDPregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `IDTipo` int NOT NULL AUTO_INCREMENT,
  `Texto` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`IDTipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-18 20:59:34
