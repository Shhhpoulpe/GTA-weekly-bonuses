/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/ gta_week /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE gta_week;

DROP TABLE IF EXISTS car_promotion;
CREATE TABLE `car_promotion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name` varchar(100) DEFAULT NULL COMMENT 'name of the car',
  `price` int DEFAULT NULL COMMENT 'current price of the car',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS double_money;
CREATE TABLE `double_money` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name` varchar(100) DEFAULT NULL COMMENT 'name of the activity with double reward',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS login_bonus;
CREATE TABLE `login_bonus` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name` varchar(100) DEFAULT NULL COMMENT 'name of the login bonus',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS podium_car;
CREATE TABLE `podium_car` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name` varchar(100) DEFAULT NULL COMMENT 'name of the car on the podium',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS properties_promotion;
CREATE TABLE `properties_promotion` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name` varchar(100) DEFAULT NULL COMMENT 'name of the property',
  `reduction` int DEFAULT NULL COMMENT 'current reduction of the property in %',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

DROP TABLE IF EXISTS triple_money;
CREATE TABLE `triple_money` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `name` varchar(100) DEFAULT NULL COMMENT 'name of the activity with triple reward',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

INSERT INTO car_promotion(id,name,price) VALUES(1,'Annis ZR350',1130500),(2,'Progen PR4',2460500),(3,'Overflod Imorgon',1299000),(4,'Lampadati Michelli GT',735000),(5,'Declasse Hotring Sabre',498000),(6,'Buckingham Alpha-Z1',1272810),(7,'Blimp',714210);

INSERT INTO double_money(id,name) VALUES(1,'Adversary Mode - Vehicule Vendetta');

INSERT INTO login_bonus(id,name) VALUES(1,'None');

INSERT INTO podium_car(id,name) VALUES(1,'Truffade Ader');

INSERT INTO properties_promotion(id,name,reduction) VALUES(1,'Nightclubs',40);
INSERT INTO triple_money(id,name) VALUES(1,'None');