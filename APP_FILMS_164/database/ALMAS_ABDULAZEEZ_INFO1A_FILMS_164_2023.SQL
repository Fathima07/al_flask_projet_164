-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: MACCAUD_OLIVIER_INFO1X_FILMS_164_2023

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS shopping_online;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS shopping_online;

-- Utilisation de cette base de donnée

USE shopping_online;
-- --------------------------------------------------------

--
-- Structure de la table `t_film`
--
-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.1.72-community - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for shopping_online
DROP DATABASE IF EXISTS `shopping_online`;
CREATE DATABASE IF NOT EXISTS `shopping_online` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shopping_online`;

-- Dumping structure for table shopping_online.t_brands
DROP TABLE IF EXISTS `t_brands`;
CREATE TABLE IF NOT EXISTS `t_brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table shopping_online.t_brands: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_brands` DISABLE KEYS */;
INSERT INTO `t_brands` (`brand_id`, `brand_title`) VALUES
	(1, 'nike');
/*!40000 ALTER TABLE `t_brands` ENABLE KEYS */;

-- Dumping structure for table shopping_online.t_category
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE IF NOT EXISTS `t_category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_title` varchar(50) DEFAULT '0',
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table shopping_online.t_category: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;

-- Dumping structure for table shopping_online.t_products
DROP TABLE IF EXISTS `t_products`;
CREATE TABLE IF NOT EXISTS `t_products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(50) DEFAULT NULL,
  `product_desc` varchar(500) DEFAULT NULL,
  `product_image1` varchar(500) DEFAULT NULL,
  `product_price` varchar(500) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table shopping_online.t_products: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_products` ENABLE KEYS */;

-- Dumping structure for table shopping_online.t_user
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE IF NOT EXISTS `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL,
  `user_phone` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_image` varchar(50) DEFAULT NULL,
  `user_ip` varchar(50) DEFAULT NULL,
  `user_address` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table shopping_online.t_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`user_id`, `user_name`, `user_mail`, `user_phone`, `user_password`, `user_image`, `user_ip`, `user_address`, `date`) VALUES
	(1, 'almas', 'almas@yahoo.com', '0772357335', '123', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
