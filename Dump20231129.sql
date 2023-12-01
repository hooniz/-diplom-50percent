-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: diploma
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `all_cars`
--

DROP TABLE IF EXISTS `all_cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Cars` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='						';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_cars`
--

LOCK TABLES `all_cars` WRITE;
/*!40000 ALTER TABLE `all_cars` DISABLE KEYS */;
INSERT INTO `all_cars` VALUES (1,'Audi'),(2,'BMW'),(3,'Chevrolet'),(4,'Citroen'),(5,'Dodge'),(6,'Ferrari'),(7,'Fiat'),(8,'Ford'),(9,'Honda'),(10,'Hyundai'),(11,'Infiniti'),(12,'Jaguar'),(13,'Jeep'),(14,'Kia'),(15,'Lada'),(16,'Lancia'),(17,'Land-Rover'),(18,'Lexus'),(19,'Mazda'),(20,'Mercedes-Benz'),(21,'Mini'),(22,'Mitsubishi'),(23,'Nissan'),(24,'Opel'),(25,'Peugeot'),(26,'Porsche'),(27,'Renault'),(28,'Seat'),(29,'Skoda'),(30,'Subaru'),(31,'Toyota'),(32,'Volkswagen'),(33,'Volvo');
/*!40000 ALTER TABLE `all_cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `application` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Time` varchar(45) NOT NULL,
  `Client_ID` int unsigned NOT NULL,
  `Comments` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_client` (`Client_ID`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_clientss` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (112,'2023-05-31','12:00',31,'диагностика'),(113,'2023-06-02','12:00',48,'Посмотрите пожалуйста двигатель!'),(116,'2023-06-16','14:00',57,'Проверьте пожалуйста автомобиль'),(117,'2023-06-15','13:00',32,'Диагностика'),(118,'2023-06-21','15:00',31,'Диагностика'),(119,'2023-06-20','14:00',58,'Проверьте подвеску');
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authorized`
--

DROP TABLE IF EXISTS `authorized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authorized` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Login` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Login_UNIQUE` (`Login`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `id_UNIQUE` (`id`) /*!80000 INVISIBLE */
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authorized`
--

LOCK TABLES `authorized` WRITE;
/*!40000 ALTER TABLE `authorized` DISABLE KEYS */;
INSERT INTO `authorized` VALUES (1,'andrey','b59c67bf196a4758191e42f76670ceba','an.step1234@gmail.com'),(2,'admini333453543534255','202cb962ac59075b964b07152d234b70','an.stsep124124134@gmail.com'),(3,'admini3334535435342253','202cb962ac59075b964b07152d234b70','an.s3tep1231244124124@gmail.com'),(4,'admini3334234123','202cb962ac59075b964b07152d234b70','an.st33ep123245234523454@gmail.com'),(5,'admini3311223','202cb962ac59075b964b07152d234b70','an.st3333ep1252323235232334@gmail.com'),(6,'admini','202cb962ac59075b964b07152d234b70','an.step123456@gmail.com'),(7,'admini333','202cb962ac59075b964b07152d234b70','an.step1234324@gmail.com'),(8,'admini3334','b59c67bf196a4758191e42f76670ceba','an.step122342334@gmail.com'),(9,'admini33345','b59c67bf196a4758191e42f76670ceba','an.step1232334@gmail.com'),(10,'wow','202cb962ac59075b964b07152d234b70','an.step1423234@gmail.com'),(11,'admini333453','202cb962ac59075b964b07152d234b70','an.step1234442@gmail.com'),(12,'admini3332323453534534523453','202cb962ac59075b964b07152d234b70','an.step1234633334364514@gmail.com'),(13,'admini333454','202cb962ac59075b964b07152d234b70','an.step12334324324@gmail.com'),(14,'admini33345523','202cb962ac59075b964b07152d234b70','an.step12314522154@gmail.com'),(15,'admini3334123','81dc9bdb52d04dc20036dbd8313ed055','an.step123123124@gmail.com'),(16,'admini3334234','202cb962ac59075b964b07152d234b70','an.step1223423434@gmail.com'),(17,'admini33342345325346457679878971289087987','202cb962ac59075b964b07152d234b70','an.step12324512211212234523454@gmail.com'),(18,'admini3334536436341231','202cb962ac59075b964b07152d234b70','an.step124322132313433434234@gmail.com'),(31,'1','c4ca4238a0b923820dcc509a6f75849b','1@gmail.com'),(32,'2','c81e728d9d4c2f636f067f89cc14862c','2@gmail.com'),(33,'3','c4ca4238a0b923820dcc509a6f75849b','3@gmail.com'),(34,'4','a87ff679a2f3e71d9181a67b7542122c','4@gmail.com'),(35,'5','e4da3b7fbbce2345d7772b0674a318d5','5@gmail.com'),(42,'6','1679091c5a880faf6fb5e6087eb1b2dc','6@gmail.com'),(43,'7','8f14e45fceea167a5a36dedd4bea2543','7@gmail.com'),(44,'8','c9f0f895fb98ab9159f51fd0297e236d','8@mail.ru'),(45,'9','45c48cce2e2d7fbdea1afc51c7c6ad26','9@mail.ru'),(46,'10','d3d9446802a44259755d38e6d163e820','10@gmail.com'),(47,'11','6512bd43d9caa6e02c990b0a82652dca','11@gmail.com'),(48,'waflya','202cb962ac59075b964b07152d234b70','waflya@gmail.com'),(56,'1123','2cfd4560539f887a5e420412b370b361','1123@gmail.com'),(57,'vasyapup','202cb962ac59075b964b07152d234b70','vasyapup123@gmail.com'),(58,'5555','6074c6aa3488f3c2dddff2a7ca821aab','5555@gmail.com');
/*!40000 ALTER TABLE `authorized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Client_ID` int unsigned NOT NULL,
  `Car_Name` varchar(45) DEFAULT NULL,
  `Number` varchar(45) DEFAULT NULL,
  `Region` varchar(45) DEFAULT NULL,
  `Run` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliet_idx` (`Client_ID`),
  CONSTRAINT `fk_cliet` FOREIGN KEY (`Client_ID`) REFERENCES `clients` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,1,'Lada','А999МР','77',15999),(2,2,'BMW','С911СС','16',12341),(3,3,'Volvo','В991РС','116',16666),(4,4,'Renault','Е914ХС','716',666666),(5,5,'Subaru','Н751НС','116',32523),(6,6,'Renault','К113КЕ','716',634633),(7,7,'Mazda','Н851РС','98',123452),(8,8,'Fiat','Х814ХО','116',214513),(9,9,'Lada','Р819РУ','99',12313),(10,10,'Volvo','Н333НЕ','116',534212),(11,11,'Dodge','У914УК','116',345431),(12,12,'Toyota','Е832СР','116',442221),(13,13,'Skoda','Е789КХ','716',231233),(14,14,'Lada','Р812РУ','116',444412),(15,15,'Renault','Н923УУ','116',444411),(16,16,'Mazda','Р943ОК','716',66663),(17,17,'Infiniti','У999УН','16',66456),(18,18,'Mercedes-Benz','К823КО','16',123790),(31,31,'BMW','В898ВО','116',45612),(32,32,'Toyota','Р438РЕ','197',12333),(33,33,'Toyota','В001АХ','16',42323),(35,35,'Mini','М776НН','716',78133),(42,42,'Hyundai','Н987РЕ','716',98700),(45,45,'Skoda','Х987ЕС','116',98370),(46,46,'Volvo','Х987АС','98',76832),(47,47,'Mazda','Х008НЕ','116',98999),(48,48,'Lada','Н978ХХ','977',79990),(57,57,'Mazda','Х009РН','116',99569),(58,58,'Seat','Х997АС','116',116789);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `SurName` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Patronymic` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `tg` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Рыжков','Иван','Иванович','+79997772151',NULL),(2,'Евсеев','Агафон','Иванович','+79192321321',NULL),(3,'Кудрявцев','Тихон','Донатович','+79192161311',NULL),(4,'Крылов','Гавриил','Максимович','+79192371321',NULL),(5,'Крылов','Агафон','Еремеевич','+79192311321',NULL),(6,'Кудрявцев','Михаил','Михайлович','+79144361311',NULL),(7,'Горбунов','Венедикт','Кимович','+79192366321',NULL),(8,'Вафин','Андрей','Федотович','+79196495678',NULL),(9,'Харитонов','Юлиан','Григорьевич','+79192361331',NULL),(10,'Рожков','Велор','Донатович','+79194323321',NULL),(11,'Нестеров','Кондрат','Лаврентьевич','+79197821321',NULL),(12,'Зыков','Матвей','Даниилович','+79192390311',NULL),(13,'Захарова','Номи','Парфеньевна','+79192321300',NULL),(14,'Уварова','Леся','Романовна','+79192361333',NULL),(15,'Кабанова','Жанна','Онисимовна','+79192364411',NULL),(16,'Егорова','Николь','Романовна','+79195231321',NULL),(17,'Гущина','Лигия','Федотовна','+79192352321',NULL),(18,'Потапова','Сильвия','Владимировна','+79193335311',NULL),(31,'Степанов','Андрей','Олегович','+79196495678','a_stepanovv'),(32,'Захаров','Леонид','Владимирович','+79306914699','sowhisu'),(33,'Егоров','Михаил','Иванович','+79342381413',NULL),(34,'Лузунов','Альберт','Грибоедович','+79196495676',NULL),(35,'Вафин','Анатолий','Анатольевич','+79196495670',NULL),(36,'Крипоев','Крип','Крипоевич','+79627935378',NULL),(42,'Валеев','Николай','Андромедович','+79524487985',NULL),(44,'Иванов','Иван','Иванович','+79218494781',NULL),(45,'Альбертов','Альберт','Альбертович','+79196495623',NULL),(46,'Грибоедов','Денис','Александрович','+79848658675',NULL),(47,'Безруков','Александр','Васильевич','+79890987987',NULL),(48,'Константинов','Константин','Анатольевич','+79196495983',NULL),(57,'Кузнецов','Василий','Васильевич','+79178967895',NULL),(58,'Вафин','Анатолий','Олегович','+79196495620',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historyautoservice`
--

DROP TABLE IF EXISTS `historyautoservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historyautoservice` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Past_ID` int DEFAULT NULL,
  `DateVisit` date DEFAULT NULL,
  `Done` varchar(45) DEFAULT NULL,
  `DateReady` date DEFAULT NULL,
  `Clients_ID` varchar(45) NOT NULL,
  `Masters_ID` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historyautoservice`
--

LOCK TABLES `historyautoservice` WRITE;
/*!40000 ALTER TABLE `historyautoservice` DISABLE KEYS */;
INSERT INTO `historyautoservice` VALUES (1,1,'2023-03-07','Завершено','2023-03-15','31','1'),(2,2,'2023-03-10','Завершено','2023-03-20','31','2'),(3,3,'2023-03-10','Завершено','2023-03-26','32','2'),(4,4,'2023-03-04','Завершено','2023-03-15','31','1'),(31,5,'2023-04-04','Завершено','2023-04-05','5','3'),(32,5,'2023-04-01','Завершено','2023-04-09','5','4'),(33,3,'2023-04-01','Завершено','2023-04-09','31','5'),(37,6,'2023-05-01','Завершено','2023-05-09','8','4'),(38,5,'2023-04-29','Завершено','2023-05-05','4','3'),(39,4,'2023-04-02','Завершено','2023-05-06','1','4'),(41,5,'2023-05-09','Завершено','2023-05-20','32','4'),(42,5,'2023-05-01','Завершено','2023-05-09','32','4'),(43,6,'2023-05-11','Завершено','2023-05-24','35','1'),(45,4,'2023-05-10','Завершено','2023-05-19','4','5'),(46,6,'2023-05-19','Завершено','2023-06-01','32','3'),(47,7,'2023-05-15','Завершено','2023-05-30','31','5'),(48,9,'2023-05-14','Завершено','2023-05-22','31','6'),(49,3,'2023-05-12','Завершено','2023-05-29','31','3'),(50,9,'2023-05-24','Завершено','2023-05-21','47','5'),(52,9,'2023-05-19','Завершено','2023-06-14','32','2'),(53,9,'2023-06-02','Завершено','2023-06-13','31','2'),(54,11,'2023-06-12','Завершено','2023-06-17','39','4');
/*!40000 ALTER TABLE `historyautoservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masters`
--

DROP TABLE IF EXISTS `masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `masters` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `SurName` varchar(45) NOT NULL,
  `Patronymic` varchar(45) NOT NULL,
  `Post` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Reg_Date` date NOT NULL,
  `Birthday` date DEFAULT NULL,
  `Img_ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masters`
--

LOCK TABLES `masters` WRITE;
/*!40000 ALTER TABLE `masters` DISABLE KEYS */;
INSERT INTO `masters` VALUES (1,'Родион','Степанов','Евгеньевич','Механик','+79212348919','2022-03-22','2000-01-24','1'),(2,'Валерий','Валерьев','Валерьевич','Моторист','+79991299562','2022-05-11','1985-09-09','2'),(3,'Алан','Валерьев','Давидович','Маляр','+75691224891','2022-12-09','1996-02-05','3'),(4,'Глеб','Васильев','Гордеевич','Механик','+79424190414','2023-02-15','1999-12-01','4'),(5,'Глеб','Романов','Петрович','Арматурщик','+79432421604','2023-03-01','1995-10-04','5'),(6,'Виктория','Авдеева','Викторовна','Мастер приемщик','+79196597777','2023-04-04','2002-06-21','6'),(7,'Геннадий','Сулейманов','Салаватович','Мастер приемщик','+79302849029','2023-05-17','1992-07-25','7'),(8,'Андрей','Вафин','Олегович','Моторист','+79197846987','2023-04-04','2001-06-23','8');
/*!40000 ALTER TABLE `masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queryautoservice`
--

DROP TABLE IF EXISTS `queryautoservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `queryautoservice` (
  `ID` int unsigned NOT NULL,
  `DateVisit` date NOT NULL,
  `Time` varchar(45) NOT NULL,
  `Clients_ID` int unsigned NOT NULL,
  `Masters_ID` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  KEY `fk_ibfk_3_idx` (`Masters_ID`),
  KEY `fk_clients_idx` (`Clients_ID`),
  CONSTRAINT `fk_clients` FOREIGN KEY (`Clients_ID`) REFERENCES `clients` (`ID`),
  CONSTRAINT `fk_ibfk_3` FOREIGN KEY (`Masters_ID`) REFERENCES `masters` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queryautoservice`
--

LOCK TABLES `queryautoservice` WRITE;
/*!40000 ALTER TABLE `queryautoservice` DISABLE KEYS */;
INSERT INTO `queryautoservice` VALUES (1,'2023-05-15','18:00',3,1),(2,'2023-05-16','19:00',8,2),(5,'2023-05-22','13:00',35,1),(6,'2023-05-30','14:00',45,4),(7,'2023-05-26','16:00',46,6),(8,'2023-05-23','14:00',31,5),(9,'2023-06-03','11:00',48,4),(10,'2023-06-16','15:00',57,8),(11,'2023-06-20','15:00',58,5);
/*!40000 ALTER TABLE `queryautoservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `ID` int unsigned NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `Details` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Замена масла','15000','Масло Pure Light+'),(2,'Замена маслосъемных колпачков','40000','Маслосъемные колпачки Tournament 300'),(3,'Замена жидкости гура','14000','Жидкость для гура Easy Flash 2000'),(4,'Замена колес','100000','4 колеса Winter Power'),(5,'Замена подушки безопаности','60000','Подушка безопаности Safety Pass'),(6,'Замена сайлентблоков подвески','5000','Сайлентблоки повышенной надежности Grenade+'),(7,'Капитальный ремонт двигателя','100000','Серийный двигатель'),(8,'Капитальный ремонт коробки передач','100000','Серийная коробка передач'),(9,'Замена камер 360','100000','Камеры Sony 360'),(10,'Переборка подвески','100000','Подвеска Billstein'),(11,'Замена муфты полного привода','150000','Муфта Haldex 5'),(12,'Замена бочка омывателя','5000','Бочек омывателя Hard Water'),(13,'Замена масла в коробке','20000','Масло Pure Top'),(14,'Замена аккумулятора','10000','Аккумулятор Energy Start'),(15,'Замена блока цилиндров','70000','Серийный блок цилиндров'),(16,'Замена лобового стекла','20000','Lobovuha'),(17,'Установка музыки','50000','Автозвук'),(18,'Замена термостата','33000','Термостат'),(19,'Установка тонировки','15000','Тонировка TOP');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_has_historyautoservice`
--

DROP TABLE IF EXISTS `services_has_historyautoservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_has_historyautoservice` (
  `idH` int unsigned NOT NULL,
  `idS` varchar(45) NOT NULL,
  `idC` varchar(45) NOT NULL,
  `idW` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idH`,`idS`),
  KEY `fk_h` (`idH`),
  CONSTRAINT `fk_h` FOREIGN KEY (`idH`) REFERENCES `historyautoservice` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_has_historyautoservice`
--

LOCK TABLES `services_has_historyautoservice` WRITE;
/*!40000 ALTER TABLE `services_has_historyautoservice` DISABLE KEYS */;
INSERT INTO `services_has_historyautoservice` VALUES (1,'Замена маслосъемных колпачков','40000','31'),(1,'Замена подушки безопаности','60000','31'),(2,'Замена масла','15000','31'),(3,'Замена лобового стекла','20000','32'),(3,'Замена подушки безопаности','60000','32'),(4,'Замена бочка омывателя','5000','31'),(4,'Замена лобового стекла','20000','31'),(4,'Капитальный ремонт двигателя','100000','31'),(4,'Капитальный ремонт коробки передач','100000','31'),(31,'Замена аккумулятора','10000','5'),(31,'Замена камер 360','100000','5'),(31,'Замена масла в коробке','20000','5'),(31,'Капитальный ремонт двигателя','100000','5'),(32,'Замена бочка омывателя','5000','5'),(32,'Замена муфты полного привода','150000','5'),(32,'Переборка подвески','100000','5'),(33,'Замена аккумулятора','10000','31'),(33,'Замена масла','15000','31'),(33,'Замена муфты полного привода','150000','31'),(33,'Переборка подвески','100000','31'),(33,'Установка музыки','50000','31'),(37,'Замена колес','100000','6'),(37,'Замена лобового стекла','20000','6'),(37,'Замена маслосъемных колпачков','40000','6'),(37,'Капитальный ремонт двигателя','100000','6'),(37,'Капитальный ремонт коробки передач','100000','6'),(37,'Установка музыки','50000','6'),(38,'Замена бочка омывателя','5000','5'),(38,'Замена маслосъемных колпачков','40000','5'),(38,'Замена муфты полного привода','150000','5'),(39,'Замена маслосъемных колпачков','40000','4'),(39,'Замена подушки безопаности','60000','4'),(39,'Капитальный ремонт двигателя','100000','4'),(39,'Капитальный ремонт коробки передач','100000','4'),(41,'Переборка подвески','100000','32'),(42,'Переборка подвески','100000','32'),(43,'Замена масла','15000','35'),(43,'Замена маслосъемных колпачков','40000','35'),(45,'Замена бочка омывателя','5000','4'),(45,'Замена жидкости гура','14000','4'),(45,'Замена масла в коробке','20000','4'),(45,'Замена маслосъемных колпачков','40000','4'),(45,'Замена термостата','33000','4'),(45,'Переборка подвески','100000','4'),(45,'Установка тонировки','15000','4'),(46,'Замена аккумулятора','10000','32'),(46,'Замена лобового стекла','20000','32'),(47,'Замена лобового стекла','20000','42'),(47,'Замена масла','15000','42'),(47,'Переборка подвески','100000','42'),(49,'Замена жидкости гура','14000','31'),(49,'Замена колес','100000','31'),(49,'Замена лобового стекла','20000','31'),(49,'Замена маслосъемных колпачков','40000','31'),(49,'Замена термостата','33000','31'),(49,'Установка музыки','50000','31'),(50,'Переборка подвески','100000','47'),(50,'Установка музыки','50000','47'),(52,'Замена аккумулятора','10000','31'),(52,'Установка музыки','50000','31'),(53,'Замена масла','15000','48'),(53,'Замена сайлентблоков подвески','5000','48'),(53,'Капитальный ремонт двигателя','100000','48'),(54,'Замена блока цилиндров','70000','56'),(54,'Замена колес','100000','56'),(54,'Замена термостата','33000','56');
/*!40000 ALTER TABLE `services_has_historyautoservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_has_queryautoservice`
--

DROP TABLE IF EXISTS `services_has_queryautoservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_has_queryautoservice` (
  `Queryautoservice_ID` int unsigned NOT NULL,
  `Services_ID` int unsigned NOT NULL,
  `Clients_ID` int unsigned NOT NULL,
  PRIMARY KEY (`Queryautoservice_ID`,`Services_ID`,`Clients_ID`),
  KEY `fk_serv_idx` (`Services_ID`),
  KEY `fk_client_idx` (`Clients_ID`),
  CONSTRAINT `fk_client` FOREIGN KEY (`Clients_ID`) REFERENCES `clients` (`ID`),
  CONSTRAINT `fk_query` FOREIGN KEY (`Queryautoservice_ID`) REFERENCES `queryautoservice` (`ID`),
  CONSTRAINT `fk_serv` FOREIGN KEY (`Services_ID`) REFERENCES `services` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_has_queryautoservice`
--

LOCK TABLES `services_has_queryautoservice` WRITE;
/*!40000 ALTER TABLE `services_has_queryautoservice` DISABLE KEYS */;
INSERT INTO `services_has_queryautoservice` VALUES (2,1,8),(8,1,31),(9,2,48),(2,3,8),(5,3,35),(8,3,31),(8,4,31),(5,5,35),(8,5,31),(9,5,48),(6,6,45),(8,6,31),(11,6,58),(8,7,31),(9,9,48),(6,10,45),(8,10,31),(11,10,58),(1,12,3),(2,12,8),(10,12,57),(7,14,46),(1,15,3),(2,15,8),(7,15,46),(2,16,8),(8,16,31),(1,17,3),(2,17,8),(7,17,46),(2,18,8),(10,18,57);
/*!40000 ALTER TABLE `services_has_queryautoservice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-29 15:41:13
