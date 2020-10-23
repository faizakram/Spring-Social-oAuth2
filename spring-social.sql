-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.6-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for spring_social
CREATE DATABASE IF NOT EXISTS `spring_social` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `spring_social`;

-- Dumping structure for table spring_social.app_role
CREATE TABLE IF NOT EXISTS `app_role` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(30) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `APP_ROLE_UK` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table spring_social.app_role: 0 rows
/*!40000 ALTER TABLE `app_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_role` ENABLE KEYS */;

-- Dumping structure for table spring_social.app_user
CREATE TABLE IF NOT EXISTS `app_user` (
  `user_id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `encryted_password` varchar(128) NOT NULL,
  `first_name` varchar(36) DEFAULT NULL,
  `last_name` varchar(36) DEFAULT NULL,
  `user_name` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `APP_USER_UK` (`user_name`),
  UNIQUE KEY `APP_USER_UK2` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table spring_social.app_user: 0 rows
/*!40000 ALTER TABLE `app_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_user` ENABLE KEYS */;

-- Dumping structure for table spring_social.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table spring_social.hibernate_sequence: 3 rows
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(1),
	(1),
	(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Dumping structure for table spring_social.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `email_verified` bit(1) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table spring_social.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table spring_social.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `USER_ROLE_UK` (`user_id`,`role_id`),
  KEY `FKp6m37g6n6c288s096400uw8fw` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table spring_social.user_role: 0 rows
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
