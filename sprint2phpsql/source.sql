-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysitedb
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tComentarios`
--

DROP TABLE IF EXISTS `tComentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tComentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(2000) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `pelicula_id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pelicula_id` (`pelicula_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `tComentarios_ibfk_1` FOREIGN KEY (`pelicula_id`) REFERENCES `tPeliculas` (`id`),
  CONSTRAINT `tComentarios_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `tUsuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tComentarios`
--

LOCK TABLES `tComentarios` WRITE;
/*!40000 ALTER TABLE `tComentarios` DISABLE KEYS */;
INSERT INTO `tComentarios` VALUES (1,'blablabla',1,2,NULL),(2,'blebleble',3,1,NULL),(3,'bliblibli',4,3,NULL),(4,'blobloblo',3,2,NULL),(5,'blublublu',1,1,NULL),(6,'dfgg',NULL,1,NULL),(7,'sjhdfhhf',NULL,1,NULL),(8,'ffdsa',NULL,1,NULL),(9,'hjdkfkg',NULL,2,NULL),(10,'hshdjdkf',NULL,1,NULL),(11,'dgyhhyj',NULL,1,NULL),(12,'ddsdggfhh',NULL,1,NULL),(13,'jahjshjdhjdh',2,2,'2002-01-02'),(14,'dfgg',NULL,1,'2022-10-18'),(15,'kjk',NULL,1,'2022-10-18'),(16,'sfghd',NULL,1,'2022-10-18'),(17,'tyyugufgjykgyu',NULL,1,'2022-10-20'),(18,'fcgbgnng',NULL,2,'2022-10-24'),(19,'jekshfjkrjghjdg',4,3,'2022-10-24');
/*!40000 ALTER TABLE `tComentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tPeliculas`
--

DROP TABLE IF EXISTS `tPeliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tPeliculas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `url_imagen` varchar(200) DEFAULT NULL,
  `duracion_minutos` int(11) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tPeliculas`
--

LOCK TABLES `tPeliculas` WRITE;
/*!40000 ALTER TABLE `tPeliculas` DISABLE KEYS */;
INSERT INTO `tPeliculas` VALUES (1,'Gru','https://i.ebayimg.com/images/g/DLkAAOSwdLJfcflD/s-l1600.jpg',120,'comedia'),(2,'el vasco','https://m.media-amazon.com/images/I/41lAzkJW+2L._SX331_BO1,204,203,200_.jpg',100,'drama'),(3,'Avatar','https://as01.epimg.net/meristation/imagenes/2022/09/30/reportajes/1664534991_626157_1664615989_noticia_normal.jpg',161,'ciencia ficcion'),(4,'The wild life','https://m.media-amazon.com/images/I/51Tdim4puhL.jpg',99,'Animacion');
/*!40000 ALTER TABLE `tPeliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tUsuarios`
--

DROP TABLE IF EXISTS `tUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tUsuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `contraseña` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuarios`
--

LOCK TABLES `tUsuarios` WRITE;
/*!40000 ALTER TABLE `tUsuarios` DISABLE KEYS */;
INSERT INTO `tUsuarios` VALUES (1,'Maria','Perez','maria@hotmail.com','maroap'),(2,'Francisco','Garcia','francisco@hotmail.com','frang'),(3,'Macarena','Rodriguez','macarena@hotmail.com','macarenar'),(4,'Cristina','Diz','cristina@hotmail.com','cristinad'),(5,'Raul','Chas','raul@hotmail.com','raulc');
/*!40000 ALTER TABLE `tUsuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-25 13:34:38
