-- MySQL dump 10.13  Distrib 5.7.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: virtualyou
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.23-MariaDB-1:10.5.23+maria~ubu2004

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
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `assetType` varchar(255) DEFAULT NULL,
  `accountNo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `websiteUser` varchar(255) DEFAULT NULL,
  `websitePassword` varchar(255) DEFAULT NULL,
  `holdingCompany` varchar(255) DEFAULT NULL,
  `holdingCompanyAddress` varchar(255) DEFAULT NULL,
  `holdingCompanyPhone` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `userKey` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` (`id`, `name`, `assetType`, `accountNo`, `website`, `websiteUser`, `websitePassword`, `holdingCompany`, `holdingCompanyAddress`, `holdingCompanyPhone`, `balance`, `userKey`, `createdAt`, `updatedAt`) VALUES (1,'Savings LFCU','Savings','AT-00-9999234','https://lfcu.com','popeye2','ssap123','Langley Federal Credit Union','45 Stagecoach Ln, Carson City, NV, 25289','800-429-2035','15000.00',1,'2023-12-18 20:34:05','2023-12-18 20:34:05'),(2,'Checking LFCU','Regular Checking','AT-00-9999235','https://lfcu.com','popeye2','ssap123','Langley Federal Credit Union','45 Stagecoach Ln, Carson City, NV, 25289','800-429-2035','3879.13',1,'2023-12-18 20:34:05','2023-12-18 20:34:05');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `debts`
--

DROP TABLE IF EXISTS `debts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `debtType` varchar(255) DEFAULT NULL,
  `accountNo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `websiteUser` varchar(255) DEFAULT NULL,
  `websitePassword` varchar(255) DEFAULT NULL,
  `holdingCompany` varchar(255) DEFAULT NULL,
  `holdingCompanyAddress` varchar(255) DEFAULT NULL,
  `holdingCompanyPhone` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `frequency` varchar(255) DEFAULT NULL,
  `due` datetime DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `userKey` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `debts`
--

LOCK TABLES `debts` WRITE;
/*!40000 ALTER TABLE `debts` DISABLE KEYS */;
INSERT INTO `debts` (`id`, `name`, `debtType`, `accountNo`, `website`, `websiteUser`, `websitePassword`, `holdingCompany`, `holdingCompanyAddress`, `holdingCompanyPhone`, `balance`, `frequency`, `due`, `payment`, `userKey`, `createdAt`, `updatedAt`) VALUES (1,'Water Utility','Utility','123456','https://vawater.gov','guitarman77','pass123','Virginia Water Utility','23 North Pike, Petersburg, VA 12345','800-123-4567','0.00','Monthly','2023-11-15 05:00:00','65.75',1,'2023-12-18 20:34:05','2023-12-18 20:34:05'),(2,'Dominion Power','Utility','123783','https://vadominion.com','consumerHog62','pass123','VA Dominion Power Inc.','2344 Taylor Ln, Richmond, VA 23799','800-877-1938','0.00','Monthly','2023-12-31 05:00:00','178.24',1,'2023-12-18 20:34:05','2023-12-18 20:47:39'),(3,'Rocket Mortgage','Mortgage','823-100009','https://rocket.com','dlw12999','pass123','Rocket Mortgage LLC','399 West Toll Road, Sterling, VA 28444','800-940-2309','0.00','Monthly','2023-12-01 05:00:00','1478.02',1,'2023-12-18 20:34:05','2023-12-18 20:34:05'),(5,'Loan from Pop','Family','','','','','','','','$5575.00','monthly','2023-12-31 05:00:00','$100',1,'2023-12-18 21:03:10','2023-12-18 21:03:10');
/*!40000 ALTER TABLE `debts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docs`
--

DROP TABLE IF EXISTS `docs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `userKey` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docs`
--

LOCK TABLES `docs` WRITE;
/*!40000 ALTER TABLE `docs` DISABLE KEYS */;
INSERT INTO `docs` (`id`, `name`, `type`, `link`, `userKey`, `createdAt`, `updatedAt`) VALUES (1,'Health Care Directive','Google Drive Doc','https://drive.google.com/file/d/1jdCdPD23QS2_L9WJqUKGl9A551PfxmSS/view?usp=drive_link',1,'2023-12-18 22:49:35','2023-12-18 22:49:35'),(2,'Last Will and Testament','Google Drive Doc','https://drive.google.com/file/d/1RlBpKPUWtAagUz5RjaAFmFLu6PW9F-8o/view?usp=drive_link',1,'2023-12-18 22:49:35','2023-12-18 22:49:35');
/*!40000 ALTER TABLE `docs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peeps`
--

DROP TABLE IF EXISTS `peeps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peeps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `userKey` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peeps`
--

LOCK TABLES `peeps` WRITE;
/*!40000 ALTER TABLE `peeps` DISABLE KEYS */;
INSERT INTO `peeps` (`id`, `name`, `phone1`, `phone2`, `email`, `address`, `note`, `userKey`, `createdAt`, `updatedAt`) VALUES (1,'David Knoxville','919-888-3000','','me@dlwhitehurst.com','123 Anywhere Ln, Sampleville, ND, 23045','Insurance Agent',1,'2023-12-12 06:46:49','2023-12-12 06:46:49'),(2,'Nancy Reynolds','800-825-9274','','nrey@acme.com','','Nurse',1,'2023-12-12 06:46:49','2023-12-12 06:46:49'),(3,'Patty Brown','722-310-1288','','pbrown@schwartz.com','4922 Clamstrip St, Middlebury, CT, 29300','Good friend',1,'2023-12-12 06:46:49','2023-12-12 06:46:49'),(4,'Robert Sandberg','877-655-2309','','rsandberg@gmail.com','','Jeweler',1,'2023-12-12 06:46:49','2023-12-12 06:46:49'),(5,'Peggy Smith','892-123-7702','','psmith@yahoo.com','3456 Jaybird Ct, Gloucester Pt. VA, 23062','Mother in Law',1,'2023-12-12 06:46:49','2023-12-12 06:46:49'),(14,'Sally Fields','800-123-4567','','sally@gmail.com','','',1,'2023-12-17 17:27:46','2023-12-17 17:27:46'),(15,'Bob Hope','800-123-4567','','bob@gmail.com','','',1,'2023-12-18 20:15:32','2023-12-18 20:15:32');
/*!40000 ALTER TABLE `peeps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescriptions`
--

DROP TABLE IF EXISTS `prescriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `identNo` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `form` varchar(255) DEFAULT NULL,
  `rxUnit` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `pharmacy` varchar(255) DEFAULT NULL,
  `pharmacyPhone` varchar(255) DEFAULT NULL,
  `written` datetime DEFAULT NULL,
  `writtenBy` varchar(255) DEFAULT NULL,
  `filled` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `refillNote` varchar(255) DEFAULT NULL,
  `manufacturedBy` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `userKey` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescriptions`
--

LOCK TABLES `prescriptions` WRITE;
/*!40000 ALTER TABLE `prescriptions` DISABLE KEYS */;
INSERT INTO `prescriptions` (`id`, `name`, `identNo`, `size`, `form`, `rxUnit`, `quantity`, `pharmacy`, `pharmacyPhone`, `written`, `writtenBy`, `filled`, `expires`, `refillNote`, `manufacturedBy`, `note`, `userKey`, `createdAt`, `updatedAt`) VALUES (1,'Metformin','6792303','','tablet','500mg','60','Kroger','919-567-5499','2023-12-01 05:00:00','Dr. Smith','2023-12-01 05:00:00','2025-06-01 04:00:00','2 refills by 02/07/2024','Mylan','Take with food',1,'2023-12-18 21:44:23','2023-12-18 21:44:23'),(2,'Pravastatin','6733303','','tablet','20mg','60','Kroger','919-567-5499','2023-12-01 05:00:00','Dr. Smith','2023-12-01 05:00:00','2025-10-23 04:00:00','2 refills by 02/07/2024','Zocor','Take one tablet nightly',1,'2023-12-18 21:44:23','2023-12-18 21:44:23'),(3,'Amlodipine','6802323','','tablet','10mg','60','Kroger','919-567-5499',NULL,'Dr. Smith',NULL,NULL,'2 refills by 02/07/2024','Eli Lily','Take as needed',1,'2023-12-18 21:44:23','2023-12-18 21:57:39');
/*!40000 ALTER TABLE `prescriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES (1,'owner','2023-12-12 01:17:35','2023-12-12 01:17:35'),(2,'agent','2023-12-12 01:17:35','2023-12-12 01:17:35'),(3,'monitor','2023-12-12 01:17:35','2023-12-12 01:17:35'),(4,'admin','2023-12-12 01:17:35','2023-12-12 01:17:35');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `due` datetime DEFAULT NULL,
  `completed` datetime DEFAULT NULL,
  `trigger` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `userKey` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` (`id`, `name`, `type`, `priority`, `due`, `completed`, `trigger`, `note`, `userKey`, `createdAt`, `updatedAt`) VALUES (1,'Change Air Filters','Maintenance','Normal','2023-11-29 05:00:00','2023-12-22 05:00:00','','',1,'2023-12-18 21:31:16','2023-12-18 21:32:47'),(2,'Take Antibiotic','Health','High','2023-12-01 05:00:00','2023-12-15 05:00:00','','',1,'2023-12-18 21:31:16','2023-12-18 21:31:16'),(3,'Send Taxes','Obligation','High','2023-12-01 05:00:00','2023-12-15 05:00:00','Pending W-2','',1,'2023-12-18 21:31:16','2023-12-18 21:31:16'),(4,'Take out Trash','Weekly','','2023-12-18 05:00:00','2023-12-18 05:00:00','','',1,'2023-12-18 21:37:27','2023-12-18 21:37:27');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES ('2023-12-12 01:19:04','2023-12-12 01:19:04',1,1),('2023-12-12 01:19:32','2023-12-12 01:19:32',2,2),('2023-12-12 01:19:53','2023-12-12 01:19:53',3,3),('2023-12-12 01:20:14','2023-12-12 01:20:14',4,4);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `agentMnemonic` varchar(255) DEFAULT NULL,
  `monitorMnemonic` varchar(255) DEFAULT NULL,
  `agentId` int(11) DEFAULT NULL,
  `monitorId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `email`, `password`, `ownerId`, `agentMnemonic`, `monitorMnemonic`, `agentId`, `monitorId`, `createdAt`, `updatedAt`) VALUES (1,'owner','owner3@yahoo.com','$2a$08$.elX290RfOdrzZsOGS3.KOV/P7iQRIJuD3lmByiLJlTPZ0f3aF4p6',0,'text better sad cherry foil accident elevator century artwork frozen people fuel','what door just correct carry number seven crop cloud demand cricket fatigue',0,0,'2023-12-12 01:19:04','2023-12-12 01:19:04'),(2,'agent','agent@yahoo.com','$2a$08$sMVZGyrk3yIv.9/t97B35.hSLsVc2E1SqloiVIfotKYEm9Mj0K.DC',0,'pass march slab lobster hill gown bicycle dirt viable link game match','chest ketchup mandate eternal soap wet theory mom asthma chronic minor giraffe',0,0,'2023-12-12 01:19:32','2023-12-12 01:19:32'),(3,'monitor','monitor@yahoo.com','$2a$08$0PL8JiMqJziz8mVcwmMK1ef..tTbkAetDpu4Kf8w/qGzbENDdVuK6',0,'kingdom clutch radar village cabbage diary jaguar often liar deposit prepare bleak','vault tortoise excite crystal dry oven obtain space vapor west endless way',0,0,'2023-12-12 01:19:53','2023-12-12 01:19:53'),(4,'admin','admin@yahoo.com','$2a$08$6SW6wp3l.k3yBDGNSM37A.9RHhymzuEHHDILwoDm1qCWqYi9POSou',0,'move celery yard subway expire such food topple mule glue soap energy','desk video setup doll taste depend acid code south ecology lucky text',0,0,'2023-12-12 01:20:14','2023-12-12 01:20:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 17:51:21
