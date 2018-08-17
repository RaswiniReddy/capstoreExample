-- --------------------------------------------------------
-- Host:                         10.220.57.107
-- Server version:               5.6.22-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5280
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table capstore.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.admin: 0 rows
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table capstore.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL,
  `end_time` date DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `start_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.cart: 0 rows
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table capstore.cart_product
CREATE TABLE IF NOT EXISTS `cart_product` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  UNIQUE KEY `UK_23mn69dwnudyul90odbyx1oia` (`product_id`),
  KEY `FKlv5x4iresnv4xspvomrwd8ej9` (`cart_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.cart_product: 0 rows
/*!40000 ALTER TABLE `cart_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_product` ENABLE KEYS */;

-- Dumping structure for table capstore.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `end_time` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.category: 5 rows
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `end_time`, `name`, `start_time`) VALUES
	(21, NULL, 'Clothes', '2018-08-17'),
	(22, NULL, 'Computers', '2018-08-17'),
	(23, NULL, 'Mobiles', '2018-08-17'),
	(24, NULL, 'Electronics', '2018-08-17'),
	(25, NULL, 'Cosmetics', '2018-08-17');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table capstore.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `security_answer` varchar(255) DEFAULT NULL,
  `security_question` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `wish_list_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKam4cgy6fxmjm52m8otoph84m3` (`cart_id`),
  KEY `FKijdvh7rgx48eio418lr9wqff0` (`wish_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.customer: 1 rows
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `address`, `email`, `end_time`, `image_url`, `name`, `password`, `phone`, `security_answer`, `security_question`, `start_time`, `cart_id`, `wish_list_id`) VALUES
	(18, 'Pune', 'sunkari.apoorva@gmail.com', NULL, 'www.merchant.com', 'Apoorva', 'Active@12', '98765432105', 'aps', 'What is your NickName', NULL, NULL, NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table capstore.discount
CREATE TABLE IF NOT EXISTS `discount` (
  `id` int(11) NOT NULL,
  `discount_percentage` int(11) NOT NULL,
  `discounted_price` float NOT NULL,
  `end_time` date DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9qcsopl406ufumbitfi9u7jop` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.discount: 0 rows
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;

-- Dumping structure for table capstore.feed_back
CREATE TABLE IF NOT EXISTS `feed_back` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `feedback_response` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `start_time` date DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmkase4x4u9qmuil7ak3kknpc` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.feed_back: 0 rows
/*!40000 ALTER TABLE `feed_back` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed_back` ENABLE KEYS */;

-- Dumping structure for table capstore.hibernate_sequence
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.hibernate_sequence: 11 rows
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` (`next_val`) VALUES
	(29),
	(29),
	(29),
	(29),
	(29),
	(29),
	(29),
	(29),
	(29),
	(29),
	(29);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;

-- Dumping structure for table capstore.merchant
CREATE TABLE IF NOT EXISTS `merchant` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `average_rating` float NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `security_answer` varchar(255) DEFAULT NULL,
  `security_question` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Not Approved',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.merchant: 0 rows
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;

-- Dumping structure for table capstore.merchant_product
CREATE TABLE IF NOT EXISTS `merchant_product` (
  `merchant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  UNIQUE KEY `UK_das1aaf7nq3834awnkofilgry` (`product_id`),
  KEY `FK4evy0lr4cnn8qh69rwxa7fdot` (`merchant_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.merchant_product: 0 rows
/*!40000 ALTER TABLE `merchant_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `merchant_product` ENABLE KEYS */;

-- Dumping structure for table capstore.order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `end_time` date DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `start_time` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3x5l78p8fkdgbqgt1ta6ro5lm` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.order_details: 0 rows
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

-- Dumping structure for table capstore.order_details_product
CREATE TABLE IF NOT EXISTS `order_details_product` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_details_id` int(11) NOT NULL,
  UNIQUE KEY `UK_k5l2p9d2j9cg5bdbauplthyk8` (`product_id`),
  KEY `FK4gmijiien73v4ejxtkdxb6a6o` (`order_id`),
  KEY `FK78m1h1gkp6nvidok6vi06wj2d` (`order_details_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.order_details_product: 0 rows
/*!40000 ALTER TABLE `order_details_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details_product` ENABLE KEYS */;

-- Dumping structure for table capstore.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `average_rating` float NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `cost` float NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_time` date DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `start_time` date DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Not Approved',
  `view_count` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsvd966mo45g15ecqo1t59vsie` (`product`),
  KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`),
  KEY `FKps2e0q9jpd0i9kj83je4rsmf1` (`discount_id`),
  KEY `FKk47qmalv2pg906heielteubu7` (`merchant_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.product: 0 rows
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table capstore.product_cart
CREATE TABLE IF NOT EXISTS `product_cart` (
  `product_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  KEY `FKb6kl1le0tfrqjytklkpl48f60` (`cart_id`),
  KEY `FKhpnrxdy3jhujameyod08ilvvw` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.product_cart: 0 rows
/*!40000 ALTER TABLE `product_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_cart` ENABLE KEYS */;

-- Dumping structure for table capstore.product_feedback
CREATE TABLE IF NOT EXISTS `product_feedback` (
  `product_id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  UNIQUE KEY `UK_oqq1gm0w07pep460rwtuvy9a` (`feedback_id`),
  KEY `FK3tfkw18e5bap3034niuo20i9i` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.product_feedback: 0 rows
/*!40000 ALTER TABLE `product_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_feedback` ENABLE KEYS */;

-- Dumping structure for table capstore.product_order
CREATE TABLE IF NOT EXISTS `product_order` (
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  KEY `FKl6ruxqjmpl0c2qp9oyfpjr9o1` (`order_id`),
  KEY `FKh73acsd9s5wp6l0e55td6jr1m` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.product_order: 0 rows
/*!40000 ALTER TABLE `product_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_order` ENABLE KEYS */;

-- Dumping structure for table capstore.promo_code
CREATE TABLE IF NOT EXISTS `promo_code` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `discount_amount` float NOT NULL,
  `end_time` date DEFAULT NULL,
  `minimum_amount` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.promo_code: 1 rows
/*!40000 ALTER TABLE `promo_code` DISABLE KEYS */;
INSERT INTO `promo_code` (`id`, `description`, `discount_amount`, `end_time`, `minimum_amount`, `name`, `start_time`) VALUES
	(28, '350 off on purchase of 3500', 350, '2018-08-25', 3500, 'GET350', '2018-08-17');
/*!40000 ALTER TABLE `promo_code` ENABLE KEYS */;

-- Dumping structure for table capstore.user_record
CREATE TABLE IF NOT EXISTS `user_record` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hello` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.user_record: 0 rows
/*!40000 ALTER TABLE `user_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_record` ENABLE KEYS */;

-- Dumping structure for table capstore.wish_list
CREATE TABLE IF NOT EXISTS `wish_list` (
  `id` int(11) NOT NULL,
  `end_time` date DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.wish_list: 0 rows
/*!40000 ALTER TABLE `wish_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `wish_list` ENABLE KEYS */;

-- Dumping structure for table capstore.wish_list_product
CREATE TABLE IF NOT EXISTS `wish_list_product` (
  `wish_list_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  UNIQUE KEY `UK_3v7ckd2bs9rs5a7pynwrjxvvr` (`product_id`),
  KEY `FKberd6fnnrooo75iar4agj0wn` (`wish_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table capstore.wish_list_product: 0 rows
/*!40000 ALTER TABLE `wish_list_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `wish_list_product` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
