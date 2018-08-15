-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: demoacceleo
-- ------------------------------------------------------
-- Server version	5.7.22-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departamento`
--
DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` ( 
`representante` VARCHAR(100) DEFAULT NULL,
`nombredepto` VARCHAR(100) DEFAULT NULL,
`empresaId` int(11) DEFAULT NULL,
`departamentoId` INT NOT NULL AUTO_INCREMENT, 
PRIMARY KEY(`departamentoId`),
KEY `empresaId_idx` (`empresaId`),
CONSTRAINT `empresaId` FOREIGN KEY (`empresaId`) 
REFERENCES `empresa` (`empresaId`) ON DELETE NO ACTION ON UPDATE NO ACTION
)ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


/* Table Insert */
INSERT INTO `grupo` (NAME) VALUES ('DEPARTAMENTO');
COMMIT;
INSERT INTO `privilege` (NAME, ID_GRUPO, ENABLED, CREATIONDATE) VALUES ('DEPARTAMENTOSEARCH',(SELECT ID_GRUPO FROM `grupo` WHERE NAME = 'DEPARTAMENTO'),1,now());
INSERT INTO `privilege` (NAME, ID_GRUPO, ENABLED, CREATIONDATE) VALUES ('DEPARTAMENTOUPDATE',(SELECT ID_GRUPO FROM `grupo` WHERE NAME = 'DEPARTAMENTO'),1,now());
INSERT INTO `privilege` (NAME, ID_GRUPO, ENABLED, CREATIONDATE) VALUES ('DEPARTAMENTODELETE',(SELECT ID_GRUPO FROM `grupo` WHERE NAME = 'DEPARTAMENTO'),1,now());
INSERT INTO `privilege` (NAME, ID_GRUPO, ENABLED, CREATIONDATE) VALUES ('DEPARTAMENTOCREATE',(SELECT ID_GRUPO FROM `grupo` WHERE NAME = 'DEPARTAMENTO'),1,now());
COMMIT;

