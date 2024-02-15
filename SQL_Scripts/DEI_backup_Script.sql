CREATE DATABASE  IF NOT EXISTS `team03_dei` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `team03_dei`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: team03_dei
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `accomodations`
--

DROP TABLE IF EXISTS `accomodations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accomodations` (
  `Accomodation_id` int NOT NULL,
  `Accomodations` varchar(20) NOT NULL,
  PRIMARY KEY (`Accomodation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accomodations`
--

LOCK TABLES `accomodations` WRITE;
/*!40000 ALTER TABLE `accomodations` DISABLE KEYS */;
INSERT INTO `accomodations` VALUES (1,'Yes'),(2,'No'),(3,'Prefer not to say');
/*!40000 ALTER TABLE `accomodations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `age_sexual_orientation`
--

DROP TABLE IF EXISTS `age_sexual_orientation`;
/*!50001 DROP VIEW IF EXISTS `age_sexual_orientation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `age_sexual_orientation` AS SELECT 
 1 AS `Sexual_Orientation`,
 1 AS `average_age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_salary_range_vs_avg_satisfaction_rate`
--

DROP TABLE IF EXISTS `avg_salary_range_vs_avg_satisfaction_rate`;
/*!50001 DROP VIEW IF EXISTS `avg_salary_range_vs_avg_satisfaction_rate`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_salary_range_vs_avg_satisfaction_rate` AS SELECT 
 1 AS `Salary_Comparison`,
 1 AS `Average_satisfaction_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `department_employee_summary`
--

DROP TABLE IF EXISTS `department_employee_summary`;
/*!50001 DROP VIEW IF EXISTS `department_employee_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `department_employee_summary` AS SELECT 
 1 AS `Department_name`,
 1 AS `total_employees`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `Department_ID` int NOT NULL,
  `Department_name` varchar(20) NOT NULL,
  `Satisfaction_ID` int NOT NULL,
  PRIMARY KEY (`Department_ID`),
  UNIQUE KEY `Department_ID_UNIQUE` (`Department_ID`),
  KEY `fk_Departments_Employee_satisfaction1_idx` (`Satisfaction_ID`),
  CONSTRAINT `fk_Departments_Employee_satisfaction1` FOREIGN KEY (`Satisfaction_ID`) REFERENCES `satisfaction` (`Satisfaction_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'IT',5),(2,'Marketing',4),(3,'Finance',3),(4,'HR',4),(5,'RD',3),(6,'Sales',1),(7,'Operations',5);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dept_diversity_satisfaction`
--

DROP TABLE IF EXISTS `dept_diversity_satisfaction`;
/*!50001 DROP VIEW IF EXISTS `dept_diversity_satisfaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `dept_diversity_satisfaction` AS SELECT 
 1 AS `Department_name`,
 1 AS `sexual_orientation_count`,
 1 AS `gender_count`,
 1 AS `department_satisfaction`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `disabilities`
--

DROP TABLE IF EXISTS `disabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `disabilities` (
  `Disability_ID` int NOT NULL,
  `Disability_description` varchar(45) NOT NULL,
  PRIMARY KEY (`Disability_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disabilities`
--

LOCK TABLES `disabilities` WRITE;
/*!40000 ALTER TABLE `disabilities` DISABLE KEYS */;
INSERT INTO `disabilities` VALUES (1,'Yes'),(2,'No'),(3,'Prefer not to say');
/*!40000 ALTER TABLE `disabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `disability_satisfaction_score`
--

DROP TABLE IF EXISTS `disability_satisfaction_score`;
/*!50001 DROP VIEW IF EXISTS `disability_satisfaction_score`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `disability_satisfaction_score` AS SELECT 
 1 AS `disability_status`,
 1 AS `avg_satisfaction_score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Employee_ID` int NOT NULL,
  `Employee_first_name` varchar(45) NOT NULL,
  `Employee_last_name` varchar(45) NOT NULL,
  `Prefered_name` varchar(45) DEFAULT NULL,
  `Employee_age` smallint NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Salary` int NOT NULL,
  `Mobile_number` varchar(12) NOT NULL,
  `Email_address` varchar(30) NOT NULL,
  `Nationality_ID` int NOT NULL,
  `Department_ID` int NOT NULL,
  `Satisfaction_ID` int NOT NULL,
  `Gender_ID` int NOT NULL,
  `Disability_ID` int NOT NULL,
  `Accomodations_ID` int NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `Employee_ID_UNIQUE` (`Employee_ID`),
  KEY `fk_Employees_Departments_idx` (`Department_ID`),
  KEY `fk_Employees_Employee_satisfaction1_idx` (`Satisfaction_ID`),
  KEY `fk_Employees_Genders1_idx` (`Gender_ID`),
  KEY `fk_Employees_Nationalities1_idx` (`Nationality_ID`),
  KEY `fk_Employees_Disabilities_idx` (`Disability_ID`),
  KEY `fk_Employees_Accomodations_idx` (`Accomodations_ID`),
  CONSTRAINT `fk_Employees_Accomodations` FOREIGN KEY (`Accomodations_ID`) REFERENCES `accomodations` (`Accomodation_id`),
  CONSTRAINT `fk_Employees_Departments` FOREIGN KEY (`Department_ID`) REFERENCES `departments` (`Department_ID`),
  CONSTRAINT `fk_Employees_Disabilities` FOREIGN KEY (`Disability_ID`) REFERENCES `disabilities` (`Disability_ID`),
  CONSTRAINT `fk_Employees_Employee_satisfaction` FOREIGN KEY (`Satisfaction_ID`) REFERENCES `satisfaction` (`Satisfaction_ID`),
  CONSTRAINT `fk_Employees_Genders` FOREIGN KEY (`Gender_ID`) REFERENCES `genders` (`Gender_ID`),
  CONSTRAINT `fk_Employees_Nationalities` FOREIGN KEY (`Nationality_ID`) REFERENCES `nationalities` (`Nationality_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Deborah','Addison','Deborah',29,'1993-06-04',62506,'363 436 1096','Deborah.Addison@mail.ca',82,1,5,6,1,1),(2,'Mona','Hill','Mona',59,'1963-08-02',104437,'905 980 9989','Mona.Hill@mail.ca',58,2,5,2,2,2),(3,'Kimberly','Shelton','Kimberly',43,'1979-04-25',64955,'788 356 1577','Kimberly.Shelton@mail.ca',17,3,4,1,2,2),(4,'Denis','Robinson','Denis',44,'1978-02-11',64991,'946 855 5822','Denis.Robinson@mail.ca',17,4,4,2,1,1),(5,'Carmen','Gunn','Carmen',50,'1972-03-11',50825,'537 895 4532','Carmen.Gunn@mail.ca',56,5,3,2,2,2),(6,'Nathan','Furnell','Nathan',37,'1985-01-11',57568,'317 280 1655','Nathan.Furnell@mail.ca',17,6,4,2,2,2),(7,'Luke','Sinclair','Luke',34,'1988-09-04',95660,'500 192 9313','Luke.Sinclair@mail.ca',31,2,3,2,2,2),(8,'Fred','Callan','Fred',27,'1994-11-09',59365,'531 698 4421','Fred.Callan@mail.ca',76,6,1,2,2,2),(9,'Carter','Owen','Carter',52,'1970-03-02',47837,'273 624 1755','Carter.Owen@mail.ca',45,3,2,2,2,2),(10,'Harry','Dobson','Harry',47,'1975-02-28',50178,'648 541 9503','Harry.Dobson@mail.ca',45,6,2,2,2,2),(11,'Ramon','Mccall','Ramon',54,'1968-03-27',54670,'502 332 1292','Ramon.Mccall@mail.ca',45,6,3,2,2,2),(12,'Fred','Wilton','Fred',35,'1987-01-01',47211,'773 530 6142','Fred.Wilton@mail.ca',45,5,4,1,2,2),(13,'Nick','Sloan','Nick',54,'1968-01-11',92328,'568 569 7849','Nick.Sloan@mail.ca',54,7,4,5,2,2),(14,'Kassandra','Jarrett','Kassandra',32,'1990-02-13',58709,'790 679 8854','Kassandra.Jarrett@mail.ca',95,7,3,2,2,2),(15,'Russel','Larsen','Russel',29,'1993-01-11',52505,'368 391 2838','Russel.Larsen@mail.ca',17,6,4,2,2,2),(16,'Rhea','Latham','Rhea',32,'1990-08-06',57834,'869 635 9373','Rhea.Latham@mail.ca',13,1,5,2,2,2),(17,'Liliana','Todd','Liliana',39,'1983-02-17',70131,'431 833 4660','Liliana.Todd@mail.ca',17,4,4,2,2,2),(18,'Brad','Windsor','Brad',33,'1988-10-14',59026,'593 241 3231','Brad.Windsor@mail.ca',17,7,3,2,2,2),(19,'David','Russel','David',29,'1993-06-08',110000,'182 385 7034','David.Russel@mail.ca',17,1,4,3,2,2),(20,'Carina','Robertson','Carina',34,'1987-10-19',53250,'692 380 3747','Carina.Robertson@mail.ca',12,4,4,5,2,2),(21,'Henry','Ainsworth','Henry',29,'1993-05-12',51044,'214 787 9989','Henry.Ainsworth@mail.ca',4,7,2,2,2,2),(22,'Chester','Carson','Chester',40,'1982-01-30',64919,'493 511 7039','Chester.Carson@mail.ca',17,1,2,2,2,2),(23,'Ronald','Varley','Ronald',52,'1969-12-21',62910,'931 603 5682','Ronald.Varley@mail.ca',17,6,3,1,2,2),(24,'Chester','Foxley','Chester',43,'1979-02-09',66441,'793 897 8748','Chester.Foxley@mail.ca',106,1,5,2,2,2),(25,'John','Underhill','John',26,'1995-11-20',57815,'958 565 2880','John.Underhill@mail.ca',17,2,5,5,2,2),(26,'Oliver','Page','Oliver',30,'1991-10-31',103613,'826 118 8037','Oliver.Page@mail.ca',45,6,4,2,2,2),(27,'Rosa','Hunt','Rosa',29,'1993-03-11',106367,'993 386 8408','Rosa.Hunt@mail.ca',68,4,4,2,2,2),(28,'Fiona','Willis','Fiona',43,'1979-02-22',74312,'446 760 5498','Fiona.Willis@mail.ca',64,6,4,1,1,2),(29,'Evelynn','Maxwell','Evelynn',36,'1985-11-14',53492,'677 933 4579','Evelynn.Maxwell@mail.ca',4,6,4,2,2,2),(30,'Nicholas','Cadman','Nicholas',37,'1985-08-19',63000,'565 775 1146','Nicholas.Cadman@mail.ca',19,3,5,2,1,2),(31,'Eduardo','Holmes','Eduardo',34,'1987-09-30',65288,'303 248 3841','Eduardo.Holmes@mail.ca',17,6,5,2,2,2),(32,'Marvin','Allcott','Marvin',27,'1995-02-04',64375,'290 815 7299','Marvin.Allcott@mail.ca',17,1,3,1,1,3),(33,'Domenic','Redfern','Domenic',35,'1987-04-13',74326,'522 397 4848','Domenic.Redfern@mail.ca',45,6,4,2,2,2),(34,'Lindsay','Michael','Lindsay',26,'1996-05-10',63763,'784 801 7206','Lindsay.Michael@mail.ca',17,1,1,2,2,2),(35,'Oliver','Yang','Oliver',28,'1994-02-11',62162,'666 740 8589','Oliver.Yang@mail.ca',17,3,5,1,2,2),(36,'Eduardo','Roberts','Eduardo',35,'1986-12-14',77692,'931 305 3573','Eduardo.Roberts@mail.ca',17,1,5,2,3,2),(37,'Carissa','King','Carissa',37,'1985-01-29',72640,'689 122 2638','Carissa.King@mail.ca',17,1,4,6,2,2),(38,'Jane','Boyle','Jane',49,'1973-07-22',93396,'936 910 6940','Jane.Boyle@mail.ca',56,2,4,2,1,1),(39,'Jasmine','Waterhouse','Jasmine',30,'1992-02-27',52846,'918 265 4724','Jasmine.Waterhouse@mail.ca',17,2,3,2,2,2),(40,'Logan','Ingham','Logan',31,'1990-11-30',100031,'424 969 6428','Logan.Ingham@mail.ca',82,2,4,2,1,2),(41,'Julianna','Rixon','Julianna',34,'1987-11-16',71860,'318 853 6881','Julianna.Rixon@mail.ca',17,1,3,1,1,2),(42,'Emery','Booth','Emery',34,'1987-10-25',61656,'508 386 6867','Emery.Booth@mail.ca',17,5,1,1,2,2),(43,'Gabriel','Ellery','Gabriel',30,'1992-04-12',110929,'458 989 6641','Gabriel.Ellery@mail.ca',17,3,2,1,2,2),(44,'Hannah','Goldsmith','Hannah',30,'1992-01-23',54237,'986 605 6457','Hannah.Goldsmith@mail.ca',45,3,2,2,2,2),(45,'Domenic','Tyrrell','Domenic',54,'1968-08-27',60380,'862 127 9550','Domenic.Tyrrell@mail.ca',31,2,3,2,2,2),(46,'Nick','Jeffery','Nick',41,'1981-03-17',66808,'689 972 2225','Nick.Jeffery@mail.ca',17,4,4,2,2,2),(47,'Chuck','Heaton','Chuck',34,'1988-08-01',64786,'860 197 3628','Chuck.Heaton@mail.ca',17,6,4,2,2,2),(48,'Doug','Clifford','Doug',43,'1979-02-07',64816,'837 237 4683','Doug.Clifford@mail.ca',39,1,3,2,2,2),(49,'Ramon','Allington','Ramon',45,'1977-03-06',68678,'173 240 9426','Ramon.Allington@mail.ca',45,6,4,2,2,2),(50,'Ron','Kennedy','Ron',27,'1995-04-30',64066,'214 815 1009','Ron.Kennedy@mail.ca',17,2,5,2,2,2),(51,'Domenic','Potts','Domenic',56,'1966-05-16',59369,'186 143 3215','Domenic.Potts@mail.ca',45,1,4,2,2,2),(52,'Hadley','Farrell','Hadley',47,'1975-07-03',50373,'758 851 9338','Hadley.Farrell@mail.ca',76,3,3,1,1,1),(53,'Audrey','Bolton','Audrey',42,'1980-02-08',63108,'867 758 4133','Audrey.Bolton@mail.ca',39,2,4,1,2,2),(54,'Tara','Dallas','Tara',40,'1982-03-01',59144,'128 357 8106','Tara.Dallas@mail.ca',17,6,4,2,2,2),(55,'Mason','Farrant','Mason',34,'1988-01-19',68051,'304 153 2163','Mason.Farrant@mail.ca',17,4,2,2,2,2),(56,'Percy','Farrell','Percy',50,'1972-07-18',170500,'348 830 7834','Percy.Farrell@mail.ca',6,7,2,2,1,3),(57,'Liam','Santos','Liam',56,'1966-06-29',63381,'544 557 9964','Liam.Santos@mail.ca',45,6,3,2,2,2),(58,'Joseph','Gosling','Joseph',30,'1992-04-25',83552,'545 741 7764','Joseph.Gosling@mail.ca',19,3,5,2,2,2),(59,'Phoebe','Knight','Phoebe',35,'1986-10-07',56149,'315 288 6360','Phoebe.Knight@mail.ca',17,2,5,2,2,2),(60,'Jackeline','Phillips','Jackeline',34,'1988-04-04',92329,'962 870 5492','Jackeline.Phillips@mail.ca',4,1,4,2,2,2),(61,'John','Stone','John',39,'1982-12-19',65729,'728 889 8402','John.Stone@mail.ca',17,6,4,2,1,3),(62,'Sienna','Edwards','Sienna',25,'1996-11-08',85028,'486 323 9314','Sienna.Edwards@mail.ca',17,2,4,1,2,2),(63,'Marilyn','Patel','Marilyn',58,'1964-07-19',57583,'390 849 6622','Marilyn.Patel@mail.ca',1,6,4,1,2,2),(64,'Taylor','Mitchell','Taylor',26,'1995-10-03',56294,'228 219 7919','Taylor.Mitchell@mail.ca',45,4,5,1,2,2),(65,'Mark','Baker','Mark',57,'1965-01-04',56991,'772 605 8807','Mark.Baker@mail.ca',17,3,5,2,2,2),(66,'Hayden','Wigley','Hayden',36,'1986-08-29',55722,'172 570 3847','Hayden.Wigley@mail.ca',45,1,3,1,2,2),(67,'Kurt','Addis','Kurt',42,'1980-09-07',101199,'543 666 7514','Kurt.Addis@mail.ca',44,1,4,5,2,2),(68,'Candice','Graham','Candice',43,'1979-03-27',61568,'864 755 1667','Candice.Graham@mail.ca',4,4,1,2,1,2),(69,'Chelsea','Wright','Chelsea',65,'1957-03-13',58275,'955 837 6502','Chelsea.Wright@mail.ca',17,1,5,1,2,2),(70,'Agnes','Irwin','Agnes',27,'1995-05-31',53189,'215 228 4665','Agnes.Irwin@mail.ca',4,7,5,1,2,2),(71,'Josh','Price','Josh',42,'1980-07-02',96820,'641 905 5732','Josh.Price@mail.ca',17,1,4,1,2,2),(72,'Barney','Spencer','Barney',38,'1984-08-23',51259,'642 556 5569','Barney.Spencer@mail.ca',17,7,4,1,2,2),(73,'Aiden','Yarwood','Aiden',26,'1996-02-03',59231,'662 628 7643','Aiden.Yarwood@mail.ca',21,6,3,2,2,2),(74,'Noah','Wilkinson','Noah',30,'1992-06-28',61584,'952 847 8976','Noah.Wilkinson@mail.ca',17,4,4,1,1,2),(75,'Clint','Ellison','Clint',35,'1987-02-20',46335,'359 438 6928','Clint.Ellison@mail.ca',17,6,3,2,2,2),(76,'Liam','Zaoui','Liam',27,'1995-06-19',70621,'263 509 6750','Liam.Zaoui@mail.ca',17,6,1,2,2,2),(77,'Ellen','Simpson','Ellen',30,'1991-11-19',138888,'230 303 3364','Ellen.Simpson@mail.ca',24,7,2,2,2,2),(78,'Kassandra','Coleman','Kassandra',43,'1979-09-30',74241,'848 754 6408','Kassandra.Coleman@mail.ca',17,6,2,1,2,2),(79,'Amelia','Murray','Amelia',43,'1978-10-21',75188,'352 810 2070','Amelia.Murray@mail.ca',95,1,3,2,2,2),(80,'Bob','Evans','Bob',48,'1973-11-11',62514,'191 738 3765','Bob.Evans@mail.ca',17,6,4,2,2,2),(81,'Elijah','Fall','Elijah',45,'1977-03-05',60070,'699 579 4052','Elijah.Fall@mail.ca',17,3,4,4,2,2),(82,'Ruby','Blackwall','Ruby',33,'1988-10-30',48888,'829 690 1748','Ruby.Blackwall@mail.ca',34,6,3,2,2,2),(83,'Erin','Watson','Erin',35,'1987-03-17',54285,'366 595 7218','Erin.Watson@mail.ca',17,6,4,1,2,2),(84,'Sonya','Avery','Sonya',31,'1991-05-04',56847,'163 385 9920','Sonya.Avery@mail.ca',17,6,5,2,2,2),(85,'Barry','Hood','Barry',27,'1995-06-04',60340,'803 137 3040','Barry.Hood@mail.ca',17,7,4,1,2,2),(86,'Florence','Andrews','Florence',26,'1996-07-15',59124,'620 699 1072','Florence.Andrews@mail.ca',45,4,3,2,2,2),(87,'Karen','Amstead','Karen',36,'1986-04-08',99280,'700 323 2378','Karen.Amstead@mail.ca',4,6,4,2,1,1),(88,'Ethan','Quinton','Ethan',42,'1980-06-03',71776,'876 655 4343','Ethan.Quinton@mail.ca',45,6,4,2,2,2),(89,'Enoch','Gilmore','Enoch',45,'1977-09-24',65902,'691 140 8691','Enoch.Gilmore@mail.ca',45,6,2,2,2,2),(90,'Amelia','Andrews','Amelia',38,'1984-07-10',57748,'364 514 9454','Amelia.Andrews@mail.ca',82,7,2,2,2,2),(91,'Lynn','Bishop','Lynn',53,'1969-03-31',64057,'837 614 5080','Lynn.Bishop@mail.ca',45,4,3,2,2,2),(92,'Noah','Weldon','Noah',54,'1968-06-23',53366,'862 268 9812','Noah.Weldon@mail.ca',17,6,5,1,2,2),(93,'Holly','London','Holly',27,'1994-12-28',58530,'822 248 3014','Holly.London@mail.ca',17,7,5,1,2,2),(94,'Clint','Williams','Clint',35,'1987-04-03',72609,'463 471 7475','Clint.Williams@mail.ca',17,6,4,1,2,2),(95,'Melinda','Wallace','Melinda',45,'1977-02-28',55965,'181 957 5349','Melinda.Wallace@mail.ca',4,1,4,3,2,2),(96,'Matthew','Plumb','Matthew',30,'1992-07-30',70187,'477 462 5429','Matthew.Plumb@mail.ca',17,6,4,2,2,2),(97,'Adeline','Khan','Adeline',26,'1996-02-24',178000,'535 143 2179','Adeline.Khan@mail.ca',4,4,4,5,2,2),(98,'Elijah','Olivier','Elijah',28,'1993-12-08',99351,'335 990 8319','Elijah.Olivier@mail.ca',4,3,5,5,2,2),(99,'Phillip','Shelton','Phillip',33,'1989-01-28',67251,'493 310 3903','Phillip.Shelton@mail.ca',17,1,5,2,2,2),(100,'Abbey','Graham','Abbey',46,'1976-01-09',65707,'506 342 9475','Abbey.Graham@mail.ca',17,6,3,5,2,2),(101,'Daniel','Harper','Daniel',43,'1979-08-22',52249,'981 740 2341','Daniel.Harper@mail.ca',17,6,4,2,2,2),(102,'Hayden','Moss','Hayden',30,'1991-10-24',53171,'373 394 9242','Hayden.Moss@mail.ca',82,6,1,1,2,2),(103,'Chuck','Hunt','Chuck',26,'1995-10-24',51337,'827 827 1521','Chuck.Hunt@mail.ca',19,2,4,1,2,2),(104,'Charlotte','Payne','Charlotte',58,'1964-09-06',51505,'865 713 4330','Charlotte.Payne@mail.ca',17,1,5,2,1,2),(105,'Christine','Chappell','Christine',25,'1997-03-28',59370,'669 555 9000','Christine.Chappell@mail.ca',4,6,3,2,2,2),(106,'Brooklyn','Cork','Brooklyn',29,'1992-10-13',54933,'687 767 9763','Brooklyn.Cork@mail.ca',4,2,3,2,1,2),(107,'Tyler','Hastings','Tyler',64,'1957-10-12',57815,'786 299 2525','Tyler.Hastings@mail.ca',31,6,4,2,2,2),(108,'Mark','Mcgee','Mark',32,'1990-04-25',61555,'777 134 1022','Mark.Mcgee@mail.ca',17,2,5,1,2,2),(109,'Mike','Tyler','Mike',57,'1965-01-09',114800,'108 786 3512','Mike.Tyler@mail.ca',45,4,5,2,1,1),(110,'Rick','Parr','Rick',28,'1994-07-14',74679,'588 715 3938','Rick.Parr@mail.ca',17,7,5,2,1,1),(111,'Anne','Button','Anne',54,'1968-04-19',53018,'730 915 1243','Anne.Button@mail.ca',69,1,4,2,2,2),(112,'Enoch','Higgs','Enoch',30,'1992-06-24',59892,'542 218 8463','Enoch.Higgs@mail.ca',17,4,4,2,2,2),(113,'Benjamin','Graham','Benjamin',39,'1982-10-28',68898,'654 422 2157','Benjamin.Graham@mail.ca',45,2,3,1,2,2),(114,'Remy','Potter','Remy',46,'1975-10-31',61242,'814 569 3223','Remy.Potter@mail.ca',17,4,4,2,2,2),(115,'Marie','Brown','Marie',42,'1980-01-10',66825,'213 888 6621','Marie.Brown@mail.ca',17,6,3,2,2,2),(116,'Benny','Moore','Benny',41,'1981-06-13',48285,'348 180 4316','Benny.Moore@mail.ca',8,6,1,2,2,2),(117,'Rocco','Garcia','Rocco',29,'1992-11-01',66149,'930 105 4310','Rocco.Garcia@mail.ca',82,6,2,1,3,2),(118,'Drew','Drummond','Drew',35,'1986-10-23',49256,'418 747 1125','Drew.Drummond@mail.ca',17,6,2,1,2,2),(119,'Sage','Kelly','Sage',32,'1990-09-06',62957,'276 823 7958','Sage.Kelly@mail.ca',13,6,3,1,2,2),(120,'Alan','Dann','Alan',44,'1978-07-24',63813,'991 785 9201','Alan.Dann@mail.ca',17,4,4,2,2,2),(121,'Rhea','Jarvis','Rhea',49,'1973-08-31',99020,'102 380 9231','Rhea.Jarvis@mail.ca',45,3,4,2,2,2),(122,'Clint','Gray','Clint',42,'1980-08-10',71707,'327 245 8349','Clint.Gray@mail.ca',17,2,3,2,2,2),(123,'Bart','Kelly','Bart',36,'1986-07-31',54828,'916 776 8448','Bart.Kelly@mail.ca',43,6,4,2,2,2),(124,'Ciara','Ellis','Ciara',58,'1964-09-26',64246,'540 828 8359','Ciara.Ellis@mail.ca',17,7,5,2,1,1),(125,'Enoch','Morrow','Enoch',47,'1975-03-07',52177,'379 385 7855','Enoch.Morrow@mail.ca',17,6,4,2,2,2),(126,'Robyn','Whittle','Robyn',65,'1957-04-19',62065,'687 349 4646','Robyn.Whittle@mail.ca',17,5,3,1,2,2),(127,'Mandy','Mullins','Mandy',60,'1962-01-11',46998,'621 560 4347','Mandy.Mullins@mail.ca',17,3,4,2,2,2),(128,'Roger','Neville','Roger',33,'1989-03-10',68099,'208 121 8553','Roger.Neville@mail.ca',20,6,4,2,1,1),(129,'Noemi','Ward','Noemi',27,'1995-08-02',70545,'609 183 1049','Noemi.Ward@mail.ca',17,7,2,2,2,2),(130,'Ilona','Wright','Ilona',50,'1972-02-18',63478,'468 355 1374','Ilona.Wright@mail.ca',4,1,2,2,2,2),(131,'Kimberly','Brown','Kimberly',52,'1970-04-26',97999,'385 932 2451','Kimberly.Brown@mail.ca',17,1,3,1,1,1),(132,'Charlize','Graham','Charlize',25,'1997-02-01',180000,'815 593 1048','Charlize.Graham@mail.ca',56,6,5,1,2,2),(133,'Brooklyn','Palmer','Brooklyn',26,'1996-08-21',49920,'209 458 3242','Brooklyn.Palmer@mail.ca',26,7,5,1,2,2),(134,'Alexander','Kent','Alexander',44,'1978-09-22',55425,'922 121 3183','Alexander.Kent@mail.ca',45,4,4,2,1,1),(135,'Russel','Freeburn','Russel',53,'1969-03-19',69340,'552 253 4586','Russel.Freeburn@mail.ca',111,1,4,2,2,2),(136,'Florence','Stevens','Florence',27,'1995-07-20',64995,'442 139 6015','Florence.Stevens@mail.ca',17,1,4,2,2,2),(137,'Chelsea','Rivers','Chelsea',38,'1984-06-06',68182,'716 118 1843','Chelsea.Rivers@mail.ca',60,7,4,2,1,2),(138,'Daron','Palmer','Daron',31,'1991-06-04',83082,'745 126 4054','Daron.Palmer@mail.ca',88,2,5,1,2,2),(139,'Christine','Collins','Christine',54,'1967-10-28',51908,'851 626 8478','Christine.Collins@mail.ca',17,1,5,2,2,2),(140,'Michael','Lowe','Michael',41,'1981-03-03',61242,'207 555 6037','Michael.Lowe@mail.ca',45,4,3,2,2,2),(141,'Zara','Gibson','Zara',35,'1986-12-30',45069,'353 482 2728','Zara.Gibson@mail.ca',13,6,4,2,2,2),(142,'Rocco','Bradshaw','Rocco',28,'1994-01-30',60724,'743 619 8811','Rocco.Bradshaw@mail.ca',17,6,1,2,2,2),(143,'Jayden','Collins','Jayden',39,'1983-08-08',60436,'719 196 7258','Jayden.Collins@mail.ca',17,2,2,2,2,2),(144,'Paula','Harrington','Paula',50,'1972-05-29',46837,'648 563 7254','Paula.Harrington@mail.ca',59,7,5,1,2,2),(145,'Rosalyn','Umney','Rosalyn',26,'1996-07-18',105700,'610 983 1849','Rosalyn.Umney@mail.ca',17,6,5,2,2,2),(146,'Logan','Noon','Logan',34,'1988-07-15',63322,'830 524 9269','Logan.Noon@mail.ca',58,1,4,1,2,2),(147,'Savannah','Mcgee','Savannah',62,'1960-03-16',61154,'865 252 5032','Savannah.Mcgee@mail.ca',13,6,4,2,2,2),(148,'Mandy','Tennant','Mandy',29,'1993-04-30',68999,'441 687 3077','Mandy.Tennant@mail.ca',45,6,3,1,2,2),(149,'Benjamin','Hopkins','Benjamin',33,'1988-11-21',50482,'829 271 1992','Benjamin.Hopkins@mail.ca',4,1,4,1,2,2),(150,'Piper','Selby','Piper',33,'1989-08-07',65310,'841 715 2841','Piper.Selby@mail.ca',17,7,3,2,2,2),(151,'Felicity','Richards','Felicity',48,'1974-06-01',250000,'419 198 5273','Felicity.Richards@mail.ca',17,2,1,1,1,3),(152,'Rose','Cooper','Rose',35,'1987-04-20',54005,'578 817 8343','Rose.Cooper@mail.ca',17,7,2,2,1,2),(153,'Elijah','Welsch','Elijah',44,'1978-04-11',45433,'954 663 8676','Elijah.Welsch@mail.ca',80,3,2,2,2,2),(154,'Aiden','Latham','Aiden',33,'1989-01-07',46654,'347 845 9874','Aiden.Latham@mail.ca',45,3,3,2,2,2),(155,'Leroy','Saunders','Leroy',29,'1993-05-09',63973,'322 207 7393','Leroy.Saunders@mail.ca',31,3,4,1,2,2),(156,'Michael','Thatcher','Michael',45,'1977-04-05',71339,'475 720 5249','Michael.Thatcher@mail.ca',69,5,4,1,1,2),(157,'Charlotte','Bailey','Charlotte',38,'1984-04-07',93206,'759 623 3394','Charlotte.Bailey@mail.ca',4,2,3,2,2,2),(158,'Darlene','Parsons','Darlene',27,'1995-04-19',82758,'795 347 3851','Darlene.Parsons@mail.ca',95,3,4,2,3,2),(159,'Diane','Addison','Diane',40,'1982-03-10',66074,'682 942 1110','Diane.Addison@mail.ca',109,1,5,2,2,2),(160,'Luke','Harrison','Luke',26,'1996-09-20',46120,'967 948 6946','Luke.Harrison@mail.ca',17,6,4,2,2,2),(161,'Zoe','Gray','Zoe',48,'1974-08-24',64520,'179 247 2212','Zoe.Gray@mail.ca',19,4,3,1,2,2),(162,'Kimberly','Chester','Kimberly',29,'1993-02-01',61962,'388 296 6712','Kimberly.Chester@mail.ca',17,7,4,2,2,2),(163,'Camellia','Harvey','Camellia',45,'1977-04-22',81584,'728 219 5014','Camellia.Harvey@mail.ca',45,6,4,2,2,2),(164,'Ryan','Cowan','Ryan',44,'1978-04-04',63676,'443 433 5041','Ryan.Cowan@mail.ca',64,7,2,2,1,1),(165,'Elijah','Baker','Elijah',32,'1990-03-01',93046,'897 154 7157','Elijah.Baker@mail.ca',17,6,2,1,2,2),(166,'Erica','Weasley','Erica',38,'1983-12-26',64738,'204 278 1794','Erica.Weasley@mail.ca',64,1,3,2,2,2),(167,'Cameron','Niles','Cameron',48,'1973-10-14',70468,'875 892 7877','Cameron.Niles@mail.ca',82,1,5,2,1,1),(168,'Daron','Moore','Daron',35,'1987-04-27',77915,'469 858 4294','Daron.Moore@mail.ca',45,2,5,5,1,1),(169,'Florence','West','Florence',29,'1992-12-13',52624,'931 303 5148','Florence.West@mail.ca',75,5,4,2,2,2),(170,'Carissa','Wren','Carissa',30,'1992-03-26',63450,'968 368 6015','Carissa.Wren@mail.ca',17,1,4,2,2,2),(171,'Anthony','Neville','Anthony',32,'1990-01-28',51777,'151 657 1993','Anthony.Neville@mail.ca',4,2,4,2,2,2),(172,'Doris','Stuart','Doris',42,'1980-07-23',67237,'466 897 1394','Doris.Stuart@mail.ca',17,1,4,2,1,1),(173,'Rowan','Ashwell','Rowan',40,'1982-09-11',73330,'551 604 2485','Rowan.Ashwell@mail.ca',17,5,5,2,3,2),(174,'Vanessa','Glass','Vanessa',34,'1987-11-10',52057,'605 141 8703','Vanessa.Glass@mail.ca',85,3,5,2,2,2),(175,'Alessandra','Thomson','Alessandra',29,'1992-10-14',47434,'774 914 7733','Alessandra.Thomson@mail.ca',17,6,3,2,2,2),(176,'Karla','Spencer','Karla',26,'1996-06-23',52788,'907 199 7435','Karla.Spencer@mail.ca',45,4,4,2,2,2),(177,'Josephine','Watson','Josephine',28,'1994-03-31',45395,'252 997 3202','Josephine.Watson@mail.ca',17,6,1,1,2,2),(178,'Erica','Shaw','Erica',32,'1990-07-08',62385,'330 934 5597','Erica.Shaw@mail.ca',37,6,5,2,2,2),(179,'Alexia','Thompson','Alexia',44,'1978-08-31',68407,'746 581 1867','Alexia.Thompson@mail.ca',31,2,5,2,1,1),(180,'Matthew','King','Matthew',27,'1995-09-08',61349,'667 748 6056','Matthew.King@mail.ca',13,6,4,1,1,3),(181,'Eve','Jones','Eve',41,'1981-03-27',105688,'468 362 6219','Eve.Jones@mail.ca',17,1,4,2,2,2),(182,'Harmony','James','Harmony',55,'1966-11-15',54132,'418 973 3437','Harmony.James@mail.ca',56,1,3,1,1,2),(183,'Destiny','Murray','Destiny',31,'1991-05-11',55315,'483 213 8212','Destiny.Murray@mail.ca',4,1,4,2,1,2),(184,'Alexa','Chadwick','Alexa',43,'1979-09-01',62810,'550 661 1961','Alexa.Chadwick@mail.ca',18,1,3,3,2,2),(185,'Roger','Ashley','Roger',36,'1986-03-23',63291,'302 358 7233','Roger.Ashley@mail.ca',45,2,1,1,2,2),(186,'Olivia','Yarlett','Olivia',27,'1995-09-23',62659,'759 397 1778','Olivia.Yarlett@mail.ca',18,1,2,2,1,2),(187,'Hank','Chester','Hank',33,'1988-11-27',55688,'738 500 3406','Hank.Chester@mail.ca',6,6,2,1,2,2),(188,'Barney','Abbot','Barney',50,'1972-09-13',83667,'931 544 3515','Barney.Abbot@mail.ca',17,3,3,5,1,2),(189,'Zoe','Todd','Zoe',36,'1986-08-05',55800,'166 122 4577','Zoe.Todd@mail.ca',45,7,4,2,2,2),(190,'Anais','Parker','Anais',40,'1982-06-03',58207,'753 758 1843','Anais.Parker@mail.ca',17,7,4,1,2,2),(191,'Carl','Bingham','Carl',42,'1980-06-29',157000,'967 654 6245','Carl.Bingham@mail.ca',13,1,3,1,2,2),(192,'Carl','Richards','Carl',28,'1994-04-13',72460,'450 456 1916','Carl.Richards@mail.ca',45,1,4,1,2,2),(193,'Elijah','Cooper','Elijah',47,'1974-12-26',72106,'268 109 3393','Elijah.Cooper@mail.ca',17,6,5,1,2,2),(194,'Kenzie','Fowler','Kenzie',42,'1980-06-24',52599,'986 259 9276','Kenzie.Fowler@mail.ca',69,3,4,5,2,2),(195,'Chanelle','Mcguire','Chanelle',53,'1969-07-13',63430,'540 737 7294','Chanelle.Mcguire@mail.ca',17,4,3,2,1,2),(196,'Maxwell','Verdon','Maxwell',43,'1979-01-23',74417,'122 741 8165','Maxwell.Verdon@mail.ca',4,6,4,2,2,2),(197,'Grace','Mcleod','Grace',38,'1984-07-14',57575,'775 447 7577','Grace.Mcleod@mail.ca',17,4,4,1,2,2),(198,'Ember','Barrett','Ember',38,'1984-04-02',87921,'449 204 4604','Ember.Barrett@mail.ca',34,7,2,2,2,2),(199,'Ryan','Leslie','Ryan',26,'1996-07-17',50470,'549 247 9827','Ryan.Leslie@mail.ca',20,6,2,2,2,2),(200,'Luke','Sinclair','Luke',35,'1986-11-09',46664,'147 714 3331','Luke.Sinclair@mail.ca',17,6,3,2,2,2);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_ethnicity`
--

DROP TABLE IF EXISTS `employees_ethnicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_ethnicity` (
  `Employee_ID` int NOT NULL,
  `Ethnicity_ID` int NOT NULL,
  KEY `fk_Employees_has_Ethinicity_Ethinicity1_idx` (`Ethnicity_ID`),
  KEY `fk_Employees_has_Ethinicity_Employees1_idx` (`Employee_ID`),
  CONSTRAINT `fk_Employees_has_Ethinicity` FOREIGN KEY (`Ethnicity_ID`) REFERENCES `ethnicity` (`Ethnicity_ID`),
  CONSTRAINT `fk_Employees_has_Ethinicity_Employees` FOREIGN KEY (`Employee_ID`) REFERENCES `employees` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_ethnicity`
--

LOCK TABLES `employees_ethnicity` WRITE;
/*!40000 ALTER TABLE `employees_ethnicity` DISABLE KEYS */;
INSERT INTO `employees_ethnicity` VALUES (1,7),(2,1),(2,7),(3,7),(4,7),(5,1),(6,2),(7,4),(7,7),(8,7),(9,2),(9,4),(10,2),(11,7),(12,4),(13,2),(14,2),(14,4),(15,7),(16,4),(17,7),(18,3),(18,7),(19,7),(20,7),(21,7),(22,7),(23,3),(23,7),(24,7),(25,2),(26,7),(27,7),(28,7),(29,7),(30,7),(31,7),(32,7),(33,7),(34,7),(35,1),(35,4),(36,7),(37,5),(38,7),(39,7),(40,7),(41,7),(42,1),(43,1),(43,4),(44,7),(45,7),(46,7),(47,1),(48,2),(49,2),(50,7),(51,7),(52,7),(53,7),(54,1),(55,1),(56,1),(57,2),(58,7),(59,7),(60,3),(60,7),(61,7),(62,7),(63,2),(63,4),(64,7),(65,1),(66,7),(67,7),(68,3),(68,7),(69,6),(70,1),(70,3),(71,7),(72,7),(73,7),(74,7),(75,3),(75,7),(76,7),(77,3),(77,7),(78,7),(79,7),(80,4),(80,7),(81,1),(81,3),(82,3),(82,7),(83,7),(84,7),(85,7),(86,7),(87,7),(88,1),(88,3),(89,7),(90,7),(91,1),(91,3),(92,7),(93,7),(94,6),(95,7),(96,7),(97,7),(98,1),(98,4),(99,6),(100,4),(100,7),(101,7),(102,7),(103,4),(103,7),(104,7),(105,1),(106,2),(107,2),(108,7),(109,7),(110,7),(111,7),(112,7),(113,6),(114,3),(114,7),(115,7),(116,7),(117,2),(118,1),(118,7),(119,7),(120,1),(120,7),(121,7),(122,7),(123,4),(123,7),(124,1),(124,7),(125,7),(126,7),(127,3),(127,7),(128,4),(128,7),(129,1),(129,7),(130,1),(131,7),(132,2),(132,3),(133,7),(134,4),(134,7),(135,7),(136,7),(137,7),(138,3),(138,7),(139,7),(140,2),(141,7),(142,7),(143,1),(144,2),(144,4),(145,2),(146,7),(147,7),(148,7),(149,7),(150,1),(151,7),(152,2),(153,7),(154,2),(154,4),(155,2),(155,4),(156,7),(157,7),(158,7),(159,7),(160,7),(161,7),(162,3),(162,7),(163,1),(163,4),(163,7),(164,7),(165,1),(166,1),(166,2),(167,3),(167,7),(168,7),(169,1),(169,7),(170,7),(171,1),(171,7),(172,7),(173,7),(174,7),(175,7),(176,3),(176,7),(177,7),(178,7),(179,7),(180,7),(181,7),(182,7),(183,1),(184,1),(185,1),(185,4),(186,7),(187,7),(188,4),(188,7),(189,7),(190,7),(191,2),(191,4),(192,3),(192,7),(193,7),(194,7),(195,7),(196,1),(197,3),(197,7),(198,7),(199,1),(199,7),(200,4),(200,7);
/*!40000 ALTER TABLE `employees_ethnicity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_pronouns`
--

DROP TABLE IF EXISTS `employees_pronouns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_pronouns` (
  `Employee_ID` int NOT NULL,
  `Pronoun_ID` int NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Pronoun_ID`),
  KEY `fk_Employees_has_Pronouns_Pronouns1_idx` (`Pronoun_ID`),
  KEY `fk_Employees_has_Pronouns_Employees1_idx` (`Employee_ID`),
  CONSTRAINT `fk_Employees_has_Pronouns_Employees1` FOREIGN KEY (`Employee_ID`) REFERENCES `employees` (`Employee_ID`),
  CONSTRAINT `fk_Employees_has_Pronouns_Pronouns1` FOREIGN KEY (`Pronoun_ID`) REFERENCES `pronouns` (`Pronoun_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_pronouns`
--

LOCK TABLES `employees_pronouns` WRITE;
/*!40000 ALTER TABLE `employees_pronouns` DISABLE KEYS */;
INSERT INTO `employees_pronouns` VALUES (1,1),(15,1),(16,1),(59,1),(70,1),(120,1),(125,1),(136,1),(171,1),(183,1),(200,1),(31,2),(82,2),(83,2),(158,2),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(11,3),(12,3),(13,3),(14,3),(17,3),(18,3),(19,3),(21,3),(22,3),(23,3),(24,3),(25,3),(27,3),(28,3),(30,3),(32,3),(33,3),(34,3),(37,3),(38,3),(39,3),(40,3),(41,3),(42,3),(43,3),(46,3),(47,3),(48,3),(49,3),(50,3),(51,3),(52,3),(53,3),(57,3),(60,3),(63,3),(65,3),(66,3),(67,3),(68,3),(69,3),(70,3),(72,3),(74,3),(75,3),(76,3),(77,3),(81,3),(82,3),(83,3),(84,3),(87,3),(88,3),(89,3),(91,3),(92,3),(93,3),(95,3),(96,3),(97,3),(100,3),(101,3),(102,3),(103,3),(105,3),(106,3),(107,3),(108,3),(112,3),(113,3),(114,3),(116,3),(117,3),(118,3),(119,3),(120,3),(122,3),(124,3),(125,3),(126,3),(127,3),(128,3),(129,3),(130,3),(132,3),(133,3),(134,3),(135,3),(137,3),(138,3),(139,3),(140,3),(141,3),(142,3),(143,3),(144,3),(145,3),(147,3),(149,3),(152,3),(153,3),(154,3),(159,3),(160,3),(162,3),(163,3),(164,3),(165,3),(166,3),(167,3),(169,3),(171,3),(176,3),(177,3),(178,3),(179,3),(181,3),(182,3),(184,3),(185,3),(187,3),(188,3),(189,3),(190,3),(191,3),(192,3),(193,3),(194,3),(195,3),(196,3),(197,3),(199,3),(2,4),(5,4),(9,4),(18,4),(23,4),(26,4),(29,4),(35,4),(36,4),(44,4),(45,4),(54,4),(55,4),(56,4),(58,4),(60,4),(61,4),(62,4),(63,4),(64,4),(68,4),(71,4),(73,4),(78,4),(79,4),(80,4),(85,4),(86,4),(90,4),(94,4),(98,4),(99,4),(104,4),(109,4),(110,4),(111,4),(115,4),(120,4),(121,4),(123,4),(124,4),(127,4),(128,4),(131,4),(134,4),(144,4),(146,4),(148,4),(151,4),(153,4),(155,4),(156,4),(157,4),(161,4),(167,4),(168,4),(169,4),(170,4),(172,4),(173,4),(174,4),(175,4),(176,4),(180,4),(185,4),(186,4),(191,4),(197,4),(198,4),(199,4),(200,4),(10,6),(20,6),(32,6),(80,7),(81,7),(150,7),(154,7);
/*!40000 ALTER TABLE `employees_pronouns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_sexual_orientations`
--

DROP TABLE IF EXISTS `employees_sexual_orientations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_sexual_orientations` (
  `Employee_ID` int NOT NULL,
  `Sexual_orientation_ID` int NOT NULL,
  PRIMARY KEY (`Employee_ID`,`Sexual_orientation_ID`),
  KEY `fk_Employees_has_Sexual_orientations_Sexual_orientations1_idx` (`Sexual_orientation_ID`),
  KEY `fk_Employees_has_Sexual_orientations_Employees1_idx` (`Employee_ID`),
  CONSTRAINT `fk_Employees_has_Sexual_orientations_Employees1` FOREIGN KEY (`Employee_ID`) REFERENCES `employees` (`Employee_ID`),
  CONSTRAINT `fk_Employees_has_Sexual_orientations_Sexual_orientations1` FOREIGN KEY (`Sexual_orientation_ID`) REFERENCES `sexual_orientations` (`Sexual_orientation_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_sexual_orientations`
--

LOCK TABLES `employees_sexual_orientations` WRITE;
/*!40000 ALTER TABLE `employees_sexual_orientations` DISABLE KEYS */;
INSERT INTO `employees_sexual_orientations` VALUES (7,1),(14,1),(18,1),(32,1),(35,1),(43,1),(60,1),(70,1),(80,1),(88,1),(98,1),(103,1),(120,1),(125,1),(131,1),(136,1),(141,1),(142,1),(144,1),(152,1),(153,1),(166,1),(187,1),(188,1),(189,1),(196,1),(199,1),(1,2),(2,2),(3,2),(4,2),(5,2),(7,2),(8,2),(9,2),(10,2),(11,2),(13,2),(14,2),(15,2),(17,2),(18,2),(19,2),(20,2),(23,2),(25,2),(26,2),(27,2),(28,2),(30,2),(32,2),(33,2),(34,2),(35,2),(37,2),(38,2),(39,2),(40,2),(42,2),(43,2),(44,2),(45,2),(46,2),(49,2),(50,2),(51,2),(52,2),(53,2),(54,2),(56,2),(57,2),(58,2),(59,2),(61,2),(62,2),(63,2),(64,2),(65,2),(66,2),(67,2),(69,2),(70,2),(71,2),(72,2),(73,2),(74,2),(75,2),(76,2),(77,2),(79,2),(81,2),(82,2),(83,2),(84,2),(85,2),(86,2),(87,2),(89,2),(90,2),(91,2),(92,2),(93,2),(95,2),(96,2),(97,2),(99,2),(100,2),(102,2),(103,2),(104,2),(105,2),(106,2),(107,2),(109,2),(110,2),(111,2),(112,2),(113,2),(114,2),(115,2),(116,2),(118,2),(119,2),(120,2),(121,2),(122,2),(123,2),(124,2),(126,2),(127,2),(128,2),(129,2),(130,2),(132,2),(134,2),(135,2),(137,2),(138,2),(139,2),(140,2),(141,2),(143,2),(144,2),(147,2),(148,2),(149,2),(150,2),(151,2),(152,2),(153,2),(154,2),(155,2),(156,2),(157,2),(158,2),(159,2),(160,2),(161,2),(162,2),(163,2),(165,2),(166,2),(167,2),(169,2),(170,2),(171,2),(172,2),(173,2),(176,2),(177,2),(178,2),(179,2),(180,2),(181,2),(183,2),(184,2),(185,2),(186,2),(187,2),(188,2),(190,2),(191,2),(192,2),(193,2),(194,2),(195,2),(197,2),(198,2),(199,2),(200,2),(2,3),(9,3),(21,3),(23,3),(29,3),(60,3),(76,3),(77,3),(80,3),(88,3),(98,3),(132,3),(134,3),(145,3),(174,3),(185,3),(200,3),(12,4),(48,4),(55,4),(117,4),(125,4),(129,4),(164,4),(168,4),(197,4),(6,5),(16,5),(22,5),(24,5),(31,5),(36,5),(41,5),(47,5),(68,5),(78,5),(94,5),(101,5),(108,5),(123,5),(133,5),(146,5),(163,5),(175,5),(182,5),(192,5);
/*!40000 ALTER TABLE `employees_sexual_orientations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ethnic_diversity`
--

DROP TABLE IF EXISTS `ethnic_diversity`;
/*!50001 DROP VIEW IF EXISTS `ethnic_diversity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ethnic_diversity` AS SELECT 
 1 AS `Department_name`,
 1 AS `ethnicity_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ethnicity`
--

DROP TABLE IF EXISTS `ethnicity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ethnicity` (
  `Ethnicity_ID` int NOT NULL,
  `Ethnicity_description` varchar(45) NOT NULL,
  PRIMARY KEY (`Ethnicity_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ethnicity`
--

LOCK TABLES `ethnicity` WRITE;
/*!40000 ALTER TABLE `ethnicity` DISABLE KEYS */;
INSERT INTO `ethnicity` VALUES (1,'Asian'),(2,'Black'),(3,'Latin'),(4,'Middle Eastern'),(5,'Other'),(6,'Prefer not to say'),(7,'White');
/*!40000 ALTER TABLE `ethnicity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ethnicity_avg_salary`
--

DROP TABLE IF EXISTS `ethnicity_avg_salary`;
/*!50001 DROP VIEW IF EXISTS `ethnicity_avg_salary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ethnicity_avg_salary` AS SELECT 
 1 AS `Ethnicity`,
 1 AS `Average_salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genders`
--

DROP TABLE IF EXISTS `genders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genders` (
  `Gender_ID` int NOT NULL,
  `Gender_description` varchar(45) NOT NULL,
  PRIMARY KEY (`Gender_ID`),
  UNIQUE KEY `Description_UNIQUE` (`Gender_description`),
  UNIQUE KEY `Gender_ID_UNIQUE` (`Gender_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genders`
--

LOCK TABLES `genders` WRITE;
/*!40000 ALTER TABLE `genders` DISABLE KEYS */;
INSERT INTO `genders` VALUES (1,'Female'),(2,'Male'),(3,'Non-binary/non-conforming'),(4,'Other'),(5,'Prefer not to say'),(6,'Transgender');
/*!40000 ALTER TABLE `genders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `highest_salary_employees_satisfaction`
--

DROP TABLE IF EXISTS `highest_salary_employees_satisfaction`;
/*!50001 DROP VIEW IF EXISTS `highest_salary_employees_satisfaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highest_salary_employees_satisfaction` AS SELECT 
 1 AS `Employee_ID`,
 1 AS `Employee_first_name`,
 1 AS `Employee_last_name`,
 1 AS `Salary`,
 1 AS `Satisfaction_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `nationalities`
--

DROP TABLE IF EXISTS `nationalities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationalities` (
  `Nationality_ID` int NOT NULL,
  `Nationality` varchar(45) NOT NULL,
  PRIMARY KEY (`Nationality_ID`),
  UNIQUE KEY `Country_name_UNIQUE` (`Nationality`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationalities`
--

LOCK TABLES `nationalities` WRITE;
/*!40000 ALTER TABLE `nationalities` DISABLE KEYS */;
INSERT INTO `nationalities` VALUES (1,'Afghan'),(2,'Albanian'),(3,'Algerian'),(4,'American'),(5,'Argentinian'),(6,'Australian'),(7,'Austrian'),(8,'Bangladeshi'),(9,'Batswana'),(10,'Belgian'),(11,'Bolivian'),(12,'Brazilian'),(13,'British'),(14,'Bulgarian'),(15,'Cambodian'),(16,'Cameroonian'),(17,'Canadian'),(18,'Chilean'),(19,'Chinese'),(20,'Colombian'),(21,'Costa Rican'),(22,'Croatian'),(23,'Cuban'),(24,'Czech'),(25,'Danish'),(26,'Dominican'),(27,'Dutch'),(28,'Ecuadorian'),(29,'Egyptian'),(30,'Emirati'),(31,'English'),(32,'Estonian'),(33,'Ethiopian'),(34,'Fijian'),(35,'Finnish'),(36,'French'),(37,'German'),(38,'Ghanaian'),(39,'Greek'),(40,'Guatemalan'),(41,'Haitian'),(42,'Honduran'),(43,'Hungarian'),(44,'Icelandic'),(45,'Indian'),(46,'Indonesian'),(47,'Iranian'),(48,'Iraqi'),(49,'Irish'),(50,'Israeli'),(51,'Italian'),(52,'Jamaican'),(53,'Japanese'),(54,'Jordanian'),(55,'Kenyan'),(56,'Korean'),(57,'Kuwaiti'),(58,'Lao'),(59,'Latvian'),(60,'Lebanese'),(61,'Libyan'),(62,'Lithuanian'),(63,'Malagasy'),(64,'Malaysian'),(65,'Malian'),(66,'Maltese'),(67,'Mexican'),(68,'Mongolian'),(69,'Moroccan'),(70,'Mozambican'),(71,'Namibian'),(72,'Nepalese'),(73,'New Zealand'),(74,'Nicaraguan'),(75,'Nigerian'),(76,'Norwegian'),(77,'Pakistani'),(78,'Panamanian'),(79,'Paraguayan'),(80,'Peruvian'),(81,'Philippine'),(82,'Polish'),(83,'Portuguese'),(84,'Romanian'),(85,'Russian'),(86,'Salvadorian'),(87,'Saudi'),(88,'Scottish'),(89,'Senegalese'),(90,'Serbian'),(91,'Singaporean'),(92,'Slovak'),(93,'South African'),(94,'Spanish'),(95,'Sri Lankan'),(96,'Sudanese'),(97,'Swedish'),(98,'Swiss'),(99,'Syrian'),(100,'Taiwanese'),(101,'Tajikistani'),(102,'Thai'),(103,'Tongan'),(104,'Tunisian'),(105,'Turkish'),(106,'Ukrainian'),(107,'Uruguayan'),(108,'Venezuelan'),(109,'Vietnamese'),(110,'Welsh'),(111,'Zambian'),(112,'Zimbabwean');
/*!40000 ALTER TABLE `nationalities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nationality_groups`
--

DROP TABLE IF EXISTS `nationality_groups`;
/*!50001 DROP VIEW IF EXISTS `nationality_groups`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nationality_groups` AS SELECT 
 1 AS `Department_name`,
 1 AS `nationality_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pronouns`
--

DROP TABLE IF EXISTS `pronouns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pronouns` (
  `Pronoun_ID` int NOT NULL,
  `Pronoun` varchar(45) NOT NULL,
  PRIMARY KEY (`Pronoun_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pronouns`
--

LOCK TABLES `pronouns` WRITE;
/*!40000 ALTER TABLE `pronouns` DISABLE KEYS */;
INSERT INTO `pronouns` VALUES (1,'They/them/theirs'),(2,'E/em/eirs'),(3,'He/him/his'),(4,'She/her/hers'),(5,'Xe/xem/xyrs'),(6,'Ze/hir/hirs'),(7,'Ze/zir/zirs');
/*!40000 ALTER TABLE `pronouns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `salary_statistics_by_department`
--

DROP TABLE IF EXISTS `salary_statistics_by_department`;
/*!50001 DROP VIEW IF EXISTS `salary_statistics_by_department`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `salary_statistics_by_department` AS SELECT 
 1 AS `Department_name`,
 1 AS `Total_salary`,
 1 AS `Average_salary`,
 1 AS `Satisfaction_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `satisfaction`
--

DROP TABLE IF EXISTS `satisfaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `satisfaction` (
  `Satisfaction_ID` int NOT NULL,
  `Satisfaction_description` varchar(45) NOT NULL,
  PRIMARY KEY (`Satisfaction_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satisfaction`
--

LOCK TABLES `satisfaction` WRITE;
/*!40000 ALTER TABLE `satisfaction` DISABLE KEYS */;
INSERT INTO `satisfaction` VALUES (1,'Very poor'),(2,'Poor'),(3,'Fair'),(4,'Good'),(5,'Excellent');
/*!40000 ALTER TABLE `satisfaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexual_orientations`
--

DROP TABLE IF EXISTS `sexual_orientations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexual_orientations` (
  `Sexual_orientation_ID` int NOT NULL,
  `Sexual_orientation_description` varchar(45) NOT NULL,
  PRIMARY KEY (`Sexual_orientation_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexual_orientations`
--

LOCK TABLES `sexual_orientations` WRITE;
/*!40000 ALTER TABLE `sexual_orientations` DISABLE KEYS */;
INSERT INTO `sexual_orientations` VALUES (1,'Bisexual'),(2,'Heterosexual'),(3,'Homosexual'),(4,'Other'),(5,'Prefer not to say');
/*!40000 ALTER TABLE `sexual_orientations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `age_sexual_orientation`
--

/*!50001 DROP VIEW IF EXISTS `age_sexual_orientation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `age_sexual_orientation` AS select `sexual_orientations`.`Sexual_orientation_description` AS `Sexual_Orientation`,round(avg(`employees`.`Employee_age`),2) AS `average_age` from ((`employees` join `employees_sexual_orientations` on((`employees`.`Employee_ID` = `employees_sexual_orientations`.`Employee_ID`))) join `sexual_orientations` on((`employees_sexual_orientations`.`Sexual_orientation_ID` = `sexual_orientations`.`Sexual_orientation_ID`))) group by `Sexual_Orientation` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_salary_range_vs_avg_satisfaction_rate`
--

/*!50001 DROP VIEW IF EXISTS `avg_salary_range_vs_avg_satisfaction_rate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_salary_range_vs_avg_satisfaction_rate` AS select 'Greater than average Salary' AS `Salary_Comparison`,avg(`employees`.`Satisfaction_ID`) AS `Average_satisfaction_rate` from `employees` where (`employees`.`Salary` >= (select avg(`employees`.`Salary`) from `employees`)) union select 'Lesser than average Salary' AS `Salary_Comparison`,avg(`employees`.`Satisfaction_ID`) AS `Average_satisfaction_rate` from `employees` where (`employees`.`Salary` < (select avg(`employees`.`Salary`) from `employees`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `department_employee_summary`
--

/*!50001 DROP VIEW IF EXISTS `department_employee_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `department_employee_summary` AS select `departments`.`Department_name` AS `Department_name`,count(`employees`.`Employee_ID`) AS `total_employees` from (`employees` join `departments` on((`employees`.`Department_ID` = `departments`.`Department_ID`))) group by `departments`.`Department_name` with rollup order by `total_employees` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `dept_diversity_satisfaction`
--

/*!50001 DROP VIEW IF EXISTS `dept_diversity_satisfaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dept_diversity_satisfaction` AS select `departments`.`Department_name` AS `Department_name`,count(distinct `employees_sexual_orientations`.`Sexual_orientation_ID`) AS `sexual_orientation_count`,count(distinct `employees`.`Gender_ID`) AS `gender_count`,`satisfaction`.`Satisfaction_description` AS `department_satisfaction` from ((((`employees` join `departments` on((`employees`.`Department_ID` = `departments`.`Department_ID`))) join `employees_sexual_orientations` on((`employees`.`Employee_ID` = `employees_sexual_orientations`.`Employee_ID`))) join `sexual_orientations` on((`employees_sexual_orientations`.`Sexual_orientation_ID` = `sexual_orientations`.`Sexual_orientation_ID`))) join `satisfaction` on((`departments`.`Satisfaction_ID` = `satisfaction`.`Satisfaction_ID`))) where ((`departments`.`Department_name` = 'Finance') or (`departments`.`Department_name` = 'RD')) group by `departments`.`Department_name`,`satisfaction`.`Satisfaction_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `disability_satisfaction_score`
--

/*!50001 DROP VIEW IF EXISTS `disability_satisfaction_score`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `disability_satisfaction_score` AS select (case when (`employees`.`Disability_ID` = '1') then 'Disabled' when (`employees`.`Disability_ID` = '2') then 'non-Disabled' else 'Prefer not to say' end) AS `disability_status`,avg(`employees`.`Satisfaction_ID`) AS `avg_satisfaction_score` from `employees` group by `disability_status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ethnic_diversity`
--

/*!50001 DROP VIEW IF EXISTS `ethnic_diversity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ethnic_diversity` AS select `departments`.`Department_name` AS `Department_name`,count(distinct `employees_ethnicity`.`Ethnicity_ID`) AS `ethnicity_count` from (((`employees` join `departments` on((`employees`.`Department_ID` = `departments`.`Department_ID`))) join `employees_ethnicity` on((`employees`.`Employee_ID` = `employees_ethnicity`.`Employee_ID`))) join `ethnicity` on((`employees_ethnicity`.`Ethnicity_ID` = `ethnicity`.`Ethnicity_ID`))) group by `departments`.`Department_name` order by `ethnicity_count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ethnicity_avg_salary`
--

/*!50001 DROP VIEW IF EXISTS `ethnicity_avg_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ethnicity_avg_salary` AS select `ethnicity`.`Ethnicity_description` AS `Ethnicity`,concat('$',convert(format(avg(`employees`.`Salary`),2) using utf8mb4)) AS `Average_salary` from ((`employees` join `employees_ethnicity` on((`employees`.`Employee_ID` = `employees_ethnicity`.`Employee_ID`))) join `ethnicity` on((`employees_ethnicity`.`Ethnicity_ID` = `ethnicity`.`Ethnicity_ID`))) group by `employees_ethnicity`.`Ethnicity_ID` order by `Average_salary` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `highest_salary_employees_satisfaction`
--

/*!50001 DROP VIEW IF EXISTS `highest_salary_employees_satisfaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highest_salary_employees_satisfaction` AS select `employees`.`Employee_ID` AS `Employee_ID`,`employees`.`Employee_first_name` AS `Employee_first_name`,`employees`.`Employee_last_name` AS `Employee_last_name`,concat('$',convert(format(`employees`.`Salary`,2) using utf8mb4)) AS `Salary`,`satisfaction`.`Satisfaction_description` AS `Satisfaction_description` from (`employees` join `satisfaction` on((`employees`.`Satisfaction_ID` = `satisfaction`.`Satisfaction_ID`))) where (`employees`.`Salary` = (select max(`e1`.`Salary`) from `employees` `e1` where (`e1`.`Department_ID` = `employees`.`Department_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nationality_groups`
--

/*!50001 DROP VIEW IF EXISTS `nationality_groups`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nationality_groups` AS select `departments`.`Department_name` AS `Department_name`,count(distinct `employees`.`Nationality_ID`) AS `nationality_count` from (`employees` join `departments` on((`employees`.`Department_ID` = `departments`.`Department_ID`))) group by `departments`.`Department_name` order by `nationality_count` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `salary_statistics_by_department`
--

/*!50001 DROP VIEW IF EXISTS `salary_statistics_by_department`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `salary_statistics_by_department` AS select `departments`.`Department_name` AS `Department_name`,concat('$',convert(format(sum(`employees`.`Salary`),2) using utf8mb4)) AS `Total_salary`,concat('$',convert(format(avg(`employees`.`Salary`),2) using utf8mb4)) AS `Average_salary`,`satisfaction`.`Satisfaction_description` AS `Satisfaction_description` from ((`employees` join `departments` on((`employees`.`Department_ID` = `departments`.`Department_ID`))) join `satisfaction` on((`departments`.`Satisfaction_ID` = `satisfaction`.`Satisfaction_ID`))) group by `departments`.`Department_name`,`satisfaction`.`Satisfaction_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-09 21:33:40
