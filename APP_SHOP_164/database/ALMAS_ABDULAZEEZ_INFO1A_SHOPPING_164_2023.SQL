-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: MACCAUD_OLIVIER_INFO1X_FILMS_164_2023

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS ALMAS_ABDULAZEEZ_INFO1A_SHOPPING_164_2023;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS ALMAS_ABDULAZEEZ_INFO1A_SHOPPING_164_2023;

-- Utilisation de cette base de donnée

USE ALMAS_ABDULAZEEZ_INFO1A_SHOPPING_164_2023;
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


-- Dumping database structure for almas_abdulazeez_info1a_shopping_164_2023
DROP DATABASE IF EXISTS `almas_abdulazeez_info1a_shopping_164_2023`;
CREATE DATABASE IF NOT EXISTS `almas_abdulazeez_info1a_shopping_164_2023` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `almas_abdulazeez_info1a_shopping_164_2023`;

-- Dumping structure for table almas_abdulazeez_info1a_shopping_164_2023.t_brands
DROP TABLE IF EXISTS `t_brands`;
CREATE TABLE IF NOT EXISTS `t_brands` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_title` varchar(50) DEFAULT NULL,
  `date_ins_brand` datetime DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table almas_abdulazeez_info1a_shopping_164_2023.t_brands: ~5 rows (approximately)
/*!40000 ALTER TABLE `t_brands` DISABLE KEYS */;
INSERT INTO `t_brands` (`brand_id`, `brand_title`, `date_ins_brand`) VALUES
	(1, 'Nike', NULL),
	(2, 'adidas', NULL),
	(3, 'balmain', NULL),
	(4, 'louis vuitton', '2023-05-02 00:00:00'),
	(6, 'nike', NULL);
/*!40000 ALTER TABLE `t_brands` ENABLE KEYS */;

-- Dumping structure for table almas_abdulazeez_info1a_shopping_164_2023.t_brand_product
DROP TABLE IF EXISTS `t_brand_product`;
CREATE TABLE IF NOT EXISTS `t_brand_product` (
  `id_brand_pro` int(11) NOT NULL AUTO_INCREMENT,
  `fk_product` int(11) DEFAULT NULL,
  `fk_brand` int(11) DEFAULT NULL,
  `date_enter` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_brand_pro`),
  KEY `fk_brand_product_t_brand` (`fk_brand`),
  KEY `fk_brand_product_t_product` (`fk_product`),
  CONSTRAINT `fk_brand_product_t_brand` FOREIGN KEY (`fk_brand`) REFERENCES `t_brands` (`brand_id`),
  CONSTRAINT `fk_brand_product_t_product` FOREIGN KEY (`fk_product`) REFERENCES `t_products` (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table almas_abdulazeez_info1a_shopping_164_2023.t_brand_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_brand_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_brand_product` ENABLE KEYS */;

-- Dumping structure for table almas_abdulazeez_info1a_shopping_164_2023.t_category
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE IF NOT EXISTS `t_category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_title` varchar(50) DEFAULT '0',
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table almas_abdulazeez_info1a_shopping_164_2023.t_category: ~3 rows (approximately)
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
INSERT INTO `t_category` (`cate_id`, `cate_title`) VALUES
	(1, 'dress'),
	(2, 'shoes'),
	(3, 'accessories');
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;

-- Dumping structure for table almas_abdulazeez_info1a_shopping_164_2023.t_products
DROP TABLE IF EXISTS `t_products`;
CREATE TABLE IF NOT EXISTS `t_products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(50) DEFAULT NULL,
  `product_desc` varchar(500) DEFAULT NULL,
  `product_image1` varchar(500) DEFAULT NULL,
  `product_price` varchar(500) DEFAULT NULL,
  `status` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table almas_abdulazeez_info1a_shopping_164_2023.t_products: ~5 rows (approximately)
/*!40000 ALTER TABLE `t_products` DISABLE KEYS */;
INSERT INTO `t_products` (`products_id`, `product_title`, `product_desc`, `product_image1`, `product_price`, `status`) VALUES
	(2, 'tie', '1', '', '30', NULL),
	(3, 'shoe', 'white', NULL, '70', NULL),
	(4, 'tshir', NULL, NULL, NULL, NULL),
	(5, 'tshirt', NULL, NULL, NULL, NULL),
	(6, 'louis vuitton', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `t_products` ENABLE KEYS */;

-- Dumping structure for table almas_abdulazeez_info1a_shopping_164_2023.t_user
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table almas_abdulazeez_info1a_shopping_164_2023.t_user: ~3 rows (approximately)
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`user_id`, `user_name`, `user_mail`, `user_phone`, `user_password`, `user_image`, `user_ip`, `user_address`, `date`) VALUES
	(1, 'almas', 'almas@yahoo.com', '0772357335', '123', NULL, NULL, NULL, NULL),
	(2, 'hamna', 'hamna@yahoo.com', '0769874825', '987', NULL, NULL, NULL, NULL),
	(3, 'fathima', 'fathima@gmail.com', '0785693256', '654', NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
