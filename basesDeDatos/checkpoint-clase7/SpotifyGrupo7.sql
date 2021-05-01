-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spotify
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `id_album` int NOT NULL AUTO_INCREMENT,
  `titulo_album` varchar(50) NOT NULL,
  `cantidad_canciones` int NOT NULL,
  `anio_publicacion` date NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `id_discograficas` int NOT NULL,
  `id_artistas` int NOT NULL,
  PRIMARY KEY (`id_album`),
  KEY `fk_album_discograficas1_idx` (`id_discograficas`),
  KEY `fk_album_artistas1_idx` (`id_artistas`),
  CONSTRAINT `fk_album_artistas1` FOREIGN KEY (`id_artistas`) REFERENCES `artistas` (`id_artistas`),
  CONSTRAINT `fk_album_discograficas1` FOREIGN KEY (`id_discograficas`) REFERENCES `discograficas` (`id_discograficas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Back in black',10,'1997-01-01','portada album',1,1),(2,'Blink-182',10,'2000-03-01','portada album',2,2),(3,'Fade to black',15,'1989-02-01','portada album',3,3);
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas` (
  `id_artistas` int NOT NULL AUTO_INCREMENT,
  `nombre_artistas` varchar(100) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  PRIMARY KEY (`id_artistas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Fito Paez','foto artista'),(2,'AC/DC','foto artista'),(3,'Miranda','foto artista');
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canciones`
--

DROP TABLE IF EXISTS `canciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canciones` (
  `id_canciones` int NOT NULL AUTO_INCREMENT,
  `titulo_canciones` varchar(50) NOT NULL,
  `duracion` time NOT NULL,
  `reproducciones` int DEFAULT NULL,
  `cantidad_likes` int DEFAULT NULL,
  `id_album` int NOT NULL,
  `id_generos` int NOT NULL,
  PRIMARY KEY (`id_canciones`),
  KEY `fk_canciones_album1_idx` (`id_album`),
  KEY `fk_canciones_generos1_idx` (`id_generos`),
  CONSTRAINT `fk_canciones_album1` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`),
  CONSTRAINT `fk_canciones_generos1` FOREIGN KEY (`id_generos`) REFERENCES `generos` (`id_generos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canciones`
--

LOCK TABLES `canciones` WRITE;
/*!40000 ALTER TABLE `canciones` DISABLE KEYS */;
INSERT INTO `canciones` VALUES (1,'Back in black','00:05:00',NULL,NULL,1,1),(2,'Memories','00:06:00',NULL,NULL,2,2),(3,'Without you','00:07:00',NULL,NULL,3,3);
/*!40000 ALTER TABLE `canciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discograficas`
--

DROP TABLE IF EXISTS `discograficas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discograficas` (
  `id_discograficas` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `pais` varchar(50) NOT NULL,
  PRIMARY KEY (`id_discograficas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discograficas`
--

LOCK TABLES `discograficas` WRITE;
/*!40000 ALTER TABLE `discograficas` DISABLE KEYS */;
INSERT INTO `discograficas` VALUES (1,'Discografica1','argentina'),(2,'Discografica2','perú'),(3,'Discografica3','uruguay');
/*!40000 ALTER TABLE `discograficas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pago` (
  `id_forma_pago` int NOT NULL,
  PRIMARY KEY (`id_forma_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pago`
--

LOCK TABLES `forma_pago` WRITE;
/*!40000 ALTER TABLE `forma_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generos`
--

DROP TABLE IF EXISTS `generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generos` (
  `id_generos` int NOT NULL AUTO_INCREMENT,
  `nombre_generos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_generos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generos`
--

LOCK TABLES `generos` WRITE;
/*!40000 ALTER TABLE `generos` DISABLE KEYS */;
INSERT INTO `generos` VALUES (1,'Rock'),(2,'Pop'),(3,'Balada');
/*!40000 ALTER TABLE `generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwords`
--

DROP TABLE IF EXISTS `passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passwords` (
  `id_passwords` int NOT NULL,
  `password` varchar(45) NOT NULL,
  `id_usuarios` int NOT NULL,
  `fecha_modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id_passwords`),
  KEY `fk_passwords_usuarios1_idx` (`id_usuarios`),
  CONSTRAINT `fk_passwords_usuarios1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwords`
--

LOCK TABLES `passwords` WRITE;
/*!40000 ALTER TABLE `passwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `id_playlists` int NOT NULL AUTO_INCREMENT,
  `titulo_playlists` varchar(45) NOT NULL,
  `cantidad_canciones` int NOT NULL,
  `fecha_creacion` date NOT NULL,
  `estado` enum('Activa','Borrada') NOT NULL,
  `fecha_eliminacion` date DEFAULT NULL,
  `id_usuarios` int NOT NULL,
  PRIMARY KEY (`id_playlists`),
  KEY `fk_playlists_usuarios1_idx` (`id_usuarios`),
  CONSTRAINT `fk_playlists_usuarios1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists_canciones`
--

DROP TABLE IF EXISTS `playlists_canciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists_canciones` (
  `id_playlists` int NOT NULL,
  `id_canciones` int NOT NULL,
  PRIMARY KEY (`id_playlists`,`id_canciones`),
  KEY `fk_playlists_has_canciones_canciones1_idx` (`id_canciones`),
  KEY `fk_playlists_has_canciones_playlists1_idx` (`id_playlists`),
  CONSTRAINT `fk_playlists_has_canciones_canciones1` FOREIGN KEY (`id_canciones`) REFERENCES `canciones` (`id_canciones`),
  CONSTRAINT `fk_playlists_has_canciones_playlists1` FOREIGN KEY (`id_playlists`) REFERENCES `playlists` (`id_playlists`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists_canciones`
--

LOCK TABLES `playlists_canciones` WRITE;
/*!40000 ALTER TABLE `playlists_canciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlists_canciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suscripciones` (
  `id_suscripciones` int NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_renovacion` date NOT NULL,
  `tipo_suscripcion` enum('Standard','Premium') NOT NULL,
  `id_forma_pago` int NOT NULL,
  `id_usuarios` int NOT NULL,
  PRIMARY KEY (`id_suscripciones`),
  KEY `fk_suscripciones_forma_pago1_idx` (`id_forma_pago`),
  KEY `fk_suscripciones_usuarios1_idx` (`id_usuarios`),
  CONSTRAINT `fk_suscripciones_forma_pago1` FOREIGN KEY (`id_forma_pago`) REFERENCES `forma_pago` (`id_forma_pago`),
  CONSTRAINT `fk_suscripciones_usuarios1` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suscripciones`
--

LOCK TABLES `suscripciones` WRITE;
/*!40000 ALTER TABLE `suscripciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `suscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetas` (
  `id_tarjetas` int NOT NULL AUTO_INCREMENT,
  `marca_tarjeta` varchar(100) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `ultimos_digitos` tinyint NOT NULL,
  `id_forma_pago` int NOT NULL,
  PRIMARY KEY (`id_tarjetas`),
  KEY `fk_tarjetas_forma_pago1_idx` (`id_forma_pago`),
  CONSTRAINT `fk_tarjetas_forma_pago1` FOREIGN KEY (`id_forma_pago`) REFERENCES `forma_pago` (`id_forma_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferencias`
--

DROP TABLE IF EXISTS `transferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transferencias` (
  `id_transferencias` int NOT NULL AUTO_INCREMENT,
  `cbu_alias` varchar(45) NOT NULL,
  `id_forma_pago` int NOT NULL,
  PRIMARY KEY (`id_transferencias`),
  KEY `fk_transferencias_forma_pago1_idx` (`id_forma_pago`),
  CONSTRAINT `fk_transferencias_forma_pago1` FOREIGN KEY (`id_forma_pago`) REFERENCES `forma_pago` (`id_forma_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferencias`
--

LOCK TABLES `transferencias` WRITE;
/*!40000 ALTER TABLE `transferencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `sexo` enum('Masculino','Femenino') NOT NULL,
  `pais` varchar(50) NOT NULL,
  `codigo_postal` varchar(45) NOT NULL,
  PRIMARY KEY (`id_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'unemail@gmail.com','Masculino','Argentina','1054'),(2,'emailnuevo@gmail.com','Femenino','Argentina','1000'),(3,'otroemail@gmail.com','Masculino','Argentina','2457');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-08 13:12:14
