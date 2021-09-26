-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: concurso
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `premio` int(11) NOT NULL,
  PRIMARY KEY (`idCategorias`),
  UNIQUE KEY `idCategorias_UNIQUE` (`idCategorias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Animales',100),(2,'Plantas',400),(3,'Cuerpo Humano',800),(4,'Cultura General',1200),(5,'Programación',5000);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jugador` (
  `idJugador` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `identificacion` int(15) NOT NULL,
  `premioAcumulado` int(11) DEFAULT NULL,
  `estadoJuego` varchar(45) DEFAULT NULL,
  `fecha_juegoGanado` date DEFAULT NULL,
  PRIMARY KEY (`idJugador`),
  UNIQUE KEY `idJugador_UNIQUE` (`idJugador`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'Lorena',2625,7500,NULL,NULL),(2,'Laura',97524,7500,NULL,'2021-09-25'),(3,'Paula',782525,0,NULL,'2021-09-25'),(4,'Julian',927362,100,NULL,'2021-09-25'),(5,'Paola',72534,1300,NULL,'2021-09-25'),(6,'Julian',82254416,7500,'Ganado','2021-09-25'),(7,'Maria',98252,500,'Retiro Voluntario','2021-09-25');
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `idPreguntas` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(200) NOT NULL,
  `Categorias_idCategorias` int(11) NOT NULL,
  PRIMARY KEY (`idPreguntas`,`Categorias_idCategorias`),
  UNIQUE KEY `idPreguntas_UNIQUE` (`idPreguntas`),
  KEY `fk_Preguntas_Categorias1_idx` (`Categorias_idCategorias`),
  CONSTRAINT `fk_Preguntas_Categorias1` FOREIGN KEY (`Categorias_idCategorias`) REFERENCES `categorias` (`idCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
INSERT INTO `preguntas` VALUES (26,'¿Cuál es el mamífero marino más grande?',1),(27,'¿Cuál es el mamífero más rápido del mundo?',1),(28,'¿Cuál es el felino más grande del mundo?',1),(29,'¿Cómo se llaman los órganos respiratorios de los peces?',1),(30,'¿Cómo son denominados los animales que se alimentan únicamente de plantas?',1),(31,'¿Cuál es el embrión de las plantas?',2),(32,'¿Como se le llama al polvo que sueltan las plantas con flores para reproducirse?',2),(33,'¿Como se reproducen algunas plantas sin flor?',2),(34,'¿Cuales son caracteristicas de las plantas?',2),(35,'¿Para que sirve la fotosintesis en las plantas?',2),(36,'¿Cuál es la arteria más grande del cuerpo?',3),(37,'¿Cómo se conoce a la capa superior de la piel?',3),(38,'¿Que crea el sistema linfático?',3),(39,'¿Cuál es el único organo del cuerpo humano que puede regenerarse?',3),(40,'¿Qué hace que nuestro cerebro sea más grande que el de la mayoría de mamiferos?',3),(41,'¿Cuál es el nombre del río más largo del mundo?',4),(42,'¿Cuál es el océano más grande del mundo?',4),(43,'¿Cuál es la nación más pequeña del mundo?',4),(44,'¿Cuándo terminó la II Guerra Mundial?',4),(45,'¿En qué año llegó Cristobal Colón a América?',4),(46,'¿Que es un sistemas operativo?',5),(47,'¿Que es un lenguaje de programación?',5),(48,'¿Cuáles son los tipos de lenguaje de programación?',5),(49,'¿Cuales son tipos de datos que se manejan en Programación?',5),(50,'¿Que es una Clase en Programación?',5);
/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuestas`
--

DROP TABLE IF EXISTS `respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `respuestas` (
  `idRespuestas` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta` varchar(500) NOT NULL,
  `Preguntas_idPreguntas` int(11) NOT NULL,
  `verificacion` char(1) NOT NULL,
  PRIMARY KEY (`idRespuestas`,`Preguntas_idPreguntas`),
  UNIQUE KEY `idRespuestas_UNIQUE` (`idRespuestas`),
  KEY `fk_Respuestas_Preguntas1_idx` (`Preguntas_idPreguntas`),
  CONSTRAINT `fk_Respuestas_Preguntas1` FOREIGN KEY (`Preguntas_idPreguntas`) REFERENCES `preguntas` (`idPreguntas`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuestas`
--

LOCK TABLES `respuestas` WRITE;
/*!40000 ALTER TABLE `respuestas` DISABLE KEYS */;
INSERT INTO `respuestas` VALUES (1,'La Ballena Azul',26,'1'),(2,'El Delfin',26,'0'),(3,'El Tiburon',26,'0'),(4,'La Foca',26,'0'),(5,'El Leon',27,'0'),(6,'El Tigre',27,'0'),(7,'El Guepardo',27,'1'),(8,'La Pantera',27,'0'),(9,'La Pantera',28,'0'),(10,'El Tigre',28,'1'),(11,'El Gorila',28,'0'),(12,'La Jirafa',28,'0'),(13,'Branquias',29,'1'),(14,'Los Pulmones',29,'0'),(15,'Las Plaquetas',29,'0'),(16,'Las Branquitas',29,'0'),(17,'Carnivoros',30,'0'),(18,'Plantivoros',30,'0'),(19,'Hervivoros',30,'1'),(20,'Oviparos',30,'0'),(21,'Feto',31,'0'),(22,'Semillas',31,'1'),(23,'Esporas',31,'0'),(24,'Ninguna de las Anteriores',31,'0'),(25,'Polen',32,'1'),(26,'Esporas',32,'0'),(27,'Semillas',32,'0'),(28,'Embriones',32,'0'),(29,'Por medio de esporas',33,'0'),(30,'Por sus hojas',33,'0'),(31,'Por el polen',33,'0'),(32,'Por esporas',33,'1'),(33,'Son seres Vivos',34,'0'),(34,'Tienen reproduccion de dos tipos(asexual, sexual)',34,'0'),(35,'Su embrion es la semilla',34,'0'),(36,'Todas las anteriores',34,'1'),(37,'Para reproducirse',35,'0'),(38,'Para nacer y morir',35,'0'),(39,'Para elaborar su propio alimento',35,'1'),(40,'Para su crecimiento',35,'0'),(41,'Carotida',36,'0'),(42,'Femoral',36,'0'),(43,'Yugular',36,'0'),(44,'Aorta',36,'1'),(45,'Hipodermis',37,'0'),(46,'Epidermis',37,'1'),(47,'Dermis',37,'0'),(48,'Ninguna de las Anteriores',37,'0'),(49,'Globulos Blancos',38,'1'),(50,'Plaquetas',38,'0'),(51,'Globulos Rojos',38,'0'),(52,'Globulos Amarillos',38,'0'),(53,'Cerebro',39,'0'),(54,'Corazón',39,'0'),(55,'Pulmones',39,'0'),(56,'Higado',39,'1'),(57,'Cerebelo',40,'0'),(58,'Corteza Cerebral',40,'0'),(59,'Lobulo Paretal',40,'0'),(60,'Hipotalamo',40,'0'),(61,'Río Nilo',41,'0'),(62,'Río Amazonas',41,'1'),(63,'Río Danubio',41,'0'),(64,'Río Costero',41,'0'),(65,'Océano Pacífico',42,'0'),(66,'Océano Índico',42,'0'),(67,'Océano Atlántico',42,'1'),(68,'Oceano Antartico',42,'0'),(69,'Andorra',43,'0'),(70,'Mónaco',43,'0'),(71,'El Vaticano',43,'1'),(72,'Ninguna de las Anteriores',43,'0'),(73,'1945',44,'1'),(74,'1947',44,'0'),(75,'1943',44,'0'),(76,'1986',44,'0'),(77,'1429',45,'0'),(78,'1492',45,'1'),(79,'1592',45,'0'),(80,'1491',45,'0'),(81,'Es una unidad de medida utilizada en informática que equivale a 1.024 bytes',46,'0'),(82,'Es el software básico de una computadora que provee una interfaz entre el resto de programas del ordenador, los dispositivos hardware y el usuario',46,'1'),(83,'Es un sistema complejo de la computadora que puede llegar a estar constituido por millones de componentes electrónicos elementales.',46,'0'),(84,'Es módulo ordenado de elementos para la computadora que se encuentran interrelacionados y que interactúan entre sí, en apoyo al usuario.',46,'0'),(85,'Es un compilador estable y potente para la solución de problemas humanos y los entienda físicamente la PC.',47,'0'),(86,'Se puede también utilizar una alternativa diferente de los compiladores para traducir lenguajes de alto nivel.',47,'0'),(87,'Es un Programa que define un medio de comunicación compartido por un grupo de personas y la PC (por ejemplo: inglés o francés).',47,'0'),(88,'Es un lenguaje o Sfw diseñado para describir un conjunto de acciones consecutivas que un equipo debe ejecutar.',47,'1'),(89,'Lenguaje Estructural, Máquina, Ensambladores, Fisico-Humano, lenguajes de bajo nivel y de lenguajes de alto nivel',48,'0'),(90,'Únicamente de bajo nivel y lenguajes de alto nivel.',48,'0'),(91,'El lenguaje máquina, Lenguajes ensambladores y de lenguajes de alto nivel',48,'0'),(92,'MS-DOS, C, C++, Java, Visual Basic, SQL, SQL Server.',48,'1'),(93,'Tipo Java, C++, Smalltalk, Python, Object Pascal, Visual .net, Visual Basic, Delphi, Perl, entre otros.',49,'0'),(94,'Cadena, Boleano, Carácter, Numeros, alfanuemrico, Entero.',49,'0'),(95,'String, Boolean, Char, Integer, int, etc.',49,'1'),(96,'Simbólicos, de estructura, de cadena, de complemento, generales, particulares, entre otros.',49,'0'),(97,'Es un programa contable que traduce un programa escrito en un lenguaje de programación a otro lenguaje de programación.',50,'0'),(98,'Es un programa que transforma código fuente escrito en java a un código neutral a la plataforma conocido como java.',50,'0'),(99,'Es un atributo de una parte de los datos que indica al ordenador (y/o al programador) algo sobre la clase de datos sobre los que se va a procesar',50,'0'),(100,'Es una colección o conjunto de objetos que comparten características comunes entre si.',50,'1');
/*!40000 ALTER TABLE `respuestas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-25 22:53:38
