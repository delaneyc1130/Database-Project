 -- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version   5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,MYSQL323' */;


--
-- Create schema travelbookings
--

CREATE DATABASE IF NOT EXISTS travelbookings;
USE travelbookings;

--
-- Definition of table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE `bookings` (
  `booking_id` int(10) NOT NULL,
  `booking_destination` varchar(45) default NULL,
  `customer_id` int(10) NOT NULL,
  `travel_agency_id` int(10) NOT NULL,
  `status_id` int(10) NOT NULL,
  `result_id` int(10) NOT NULL,
  `booking_date` date default NULL,
  PRIMARY KEY  (`booking_id`),
  KEY `booking_id` (`booking_id`),
  KEY `customer_id` (`customer_id`),
  KEY `travel_agency_id` (`travel_agency_id`),
  KEY `status_id` (`status_id`),
  KEY `result_id` (`result_id`)

) ENGINE=InnoDB;

-
-- Dumping data for table `bookings`
--

/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` (`booking_id`, `booking_destination`,`customer_id`,`travel_agency_id`,`status_id`, `result_id`, `booking_date`) VALUES
 (101101,'Orlando','201','101','1', '2','2020-02-18'),
 (102202,'Seattle','202','103','2', '2','2020-04-22'),
 ('103303','Miami','203','105','1','2', '2020-09-01'),
 ('104404','Honolulu','204','107','1','1','2020-07-03'),
 ('105505','Miami','205','109','1', '1', '2020-01-03'),
 ('106606','New York','305','102','1','2','2020-05-30'),
 ('107707','Los Angeles','315','104','2', '2', '2020-06-18'),
 ('108808','Dallas','325','106','1','2','2020-11-30'),
 ('109909','Maui','225','108','2', '1','2020-09-26'),
 ('102304','St. Louis','288','115','2','2','2020-08-10'),
 ('105607','San Francisco','375','113','1','2','2020-03-06'),
 ('108900','Las Vegas','222','110','1', '2','2020-12-22'),
 ('101305','Denver','333','112','2', '1', '2020-10-29'),
 ('102406','Juneau','250','111','2', '2', '2020-11-08'),
 ('103609','San Francisco','211','114','2', '1', '2020-04-01'),
 ('104607','Seattle','375','108','1','1','2020-04-09'),
 ('101900','New York','101','110','1', '2','2020-10-12'),
 ('102305','Dallas','333','211','2', '1', '2020-12-29'),
 ('109406','Juneau','250','106','2', '2', '2020-10-28'),
 ('104609','Miami','375','114','2', '2', '2020-08-11');



/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;


--
-- Definition of table `travel_agency`
--

DROP TABLE IF EXISTS `travel_agency`;
CREATE TABLE `travel_agency` (
  `travel_agency_id` int(10) NOT NULL,
  `agency_name` varchar(50) default NULL,
  `travel_agency_info` varchar(75) default NULL,
  PRIMARY KEY  (`travel_agency_id`),
  KEY `travel_agency_id` (`travel_agency_id`)

) ENGINE=InnoDB;

--
-- Dumping data for table `travel_agency`
--

/*!40000 ALTER TABLE `travel_agency` DISABLE KEYS */;
INSERT INTO `travel_agency` (`travel_agency_id`,`agency_name`,`travel_agency_info`) VALUES 
 ('101','Destination Vacation','Find the top 10 destinations for your travelling needs.'),
 ('102','Homeward Holidays','Find your home away from home.'),
 ('103','Great Getaways','The best deals to travel anywhere in the world.'),
 ('104','Oasis Travel','Find your dream vacation.'),
 ('105','Tropical Travel','Find the best islands to relax for your dream vacation.'),
 ('106','Exploration Travel','Explore new regions that you never knew existed.'),
 ('107','Destination Anywhere','Travel anywhere in the world for the lowest prices.'),
 ('108','Paradise Travel','The top destinations for paradise.'),
 ('109','Royalty Travel','Travel to destinations and feel treated like royalty.'),
 ('110','Travel Right','The best deals and best amenities for travel.'),
 ('111','Speedy Getaways','Book vacations and fast and efficiently.'),
 ('112','Wilderness Explorers','Experience nature by travelling the wilderness.'),
 ('113','Westshore Travel','The best places to travel in the West.'),
 ('114','Safari Travel','Experience safaris while travelling in beautiful locations.'),
 ('115','City Sightseeing','All the best destinations to go when in the city.');

/*!40000 ALTER TABLE `travel_agency` ENABLE KEYS */;


--
-- Definition of table `booking_services`
--

DROP TABLE IF EXISTS `booking_services`;
CREATE TABLE `booking_services` (
  `booking_services_id` int(10) NOT NULL,
  `booking_id` int(10) NOT NULL,
  `services_id` int(10) NOT NULL,
  PRIMARY KEY  (`booking_services_id`),
  KEY `booking_services_id` (`booking_services_id`),
  KEY `booking_id` (`booking_id`),
  KEY `services_id` (`services_id`)

) ENGINE=InnoDB;

--
-- Dumping data for table `booking_services`
--

/*!40000 ALTER TABLE `booking_services` DISABLE KEYS */;
INSERT INTO `booking_services` (`booking_services_id`, `booking_id`,`services_id`) VALUES 
 (1, '101101','2'),
 (2, '102202','3'),
 (3, '103303','5'),
 (4, '104404','7'),
 (5, '105505','9'),
 (6, '106606','2'),
 (7, '107707','4'),
 (8, '108808','6'),
 (9, '109909','8'),
 (10, '102304','5'),
 (11, '105607','3'),
 (12, '108900','10'),
 (13, '101305','8'),
 (14, '102406','1'),
 (15, '106606','10'),
 (16, '107707','8'),
 (17, '108808','2'),
 (18, '109909','9'),
 (19, '102304','1'),
 (20, '101101','3'),
 (21, '102202','6'),
 (22, '103303','1'),
 (23, '104404','3'),
 (24, '105505','2'),
 (25, '106606','5'),
 (26, '105607','8'),
 (27, '108900','9'),
 (28, '101305','2'),
 (29, '101101','9'),
 (30, '102202','2'),
 (31, '103303','8'),
 (32, '104404','1'),
 (33, '105505','8'),
 (34, '106606','3'),
 (35, '107707','10'),
 (36, '108808','9'),
 (37, '109909','2'),
 (38, '102304','7'),
 (39, '105607','1'),
 (40, '108900','3'),
 (41, '101305','4'),
 (42, '102406','8'),
 (43, '106606','6'),
 (44, '107707','1'),
 (45, '108808','3'),
 (46, '109909','9'),
 (47, '102304','10'),
 (48, '101101','7'),
 (49, '102202','9'),
 (50, '103303','3'),
 (51, '104404','7'),
 (52, '105505','1'),
 (53, '106606','6'),
 (54, '105607','4'),
 (55, '108900','5'),
 (56, '101305','9'), 
 (57, '103609','1'),
 (58, '104607','2'),
 (59, '101900','5'),
 (60, '102305','7'),
 (61, '109406','10'),
 (62, '104609','8');

/*!40000 ALTER TABLE `booking_services` ENABLE KEYS */;


--
-- Definition of table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `services_id` int(10) NOT NULL,
  `service_type` varchar(45) default NULL,
  PRIMARY KEY  (`services_id`),
  KEY `services_id` (`services_id`)

) ENGINE=InnoDB;

--
-- Dumping data for table `services`
--

/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` (`services_id`,`service_type`) VALUES 
 ('1','Airlines'),
 ('2','Vehicle Rental'),
 ('3','Railways'),
 ('4','Insurance'),
 ('5','Cruise Lines'),
 ('6','Public Transportation Timetable'),
 ('7','Hotels'),
 ('8','Apartments'),
 ('9','Outdoor Recreation Activities'),
 ('10','Mansions');

/*!40000 ALTER TABLE `booking_services` ENABLE KEYS */;


--
-- Definition of table `booking_status`
--

DROP TABLE IF EXISTS `booking_status`;
CREATE TABLE `booking_status` (
  `booking_status_id` int(10) NOT NULL,
  `status_info` varchar(45) default NULL,
  PRIMARY KEY  (`booking_status_id`),
  KEY `booking_status_id` (`booking_status_id`)

) ENGINE=InnoDB;

--
-- Dumping data for table `booking_status`
--

/*!40000 ALTER TABLE `booking_status` DISABLE KEYS */;
INSERT INTO `booking_status` (`booking_status_id`,`status_info`) VALUES 
  ('1', 'Reserved'),
  ('2', 'Available');

/*!40000 ALTER TABLE `booking_status` ENABLE KEYS */;

--
-- Definition of table `booking_result`
--

DROP TABLE IF EXISTS `booking_result`;
CREATE TABLE `booking_result` (
  `booking_result_id` int(10) NOT NULL,
  `result_info` varchar(45) default NULL,
  PRIMARY KEY  (`booking_result_id`),
  KEY `booking_status_id` (`booking_result_id`)

) ENGINE=InnoDB;

--
-- Dumping data for table `booking_result`
--

/*!40000 ALTER TABLE `booking_result` DISABLE KEYS */;
INSERT INTO `booking_result` (`booking_result_id`,`result_info`) VALUES 
  ('1', 'Cancelled'),
  ('2', 'Successful');

/*!40000 ALTER TABLE `booking_result` ENABLE KEYS */;


--
-- Definition of table `address_of_customer`
--

DROP TABLE IF EXISTS `address_of_customer`;
CREATE TABLE `address_of_customer` (
  `address_of_customer_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `address_id` int(10) NOT NULL,
  `street` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `state` varchar(2) default NULL,
  `zipcode` varchar(9) default NULL,
  PRIMARY KEY  (`address_of_customer_id`),
  KEY `address_of_customer_id` (`address_of_customer_id`),
  KEY `customer_id` (`customer_id`),
  KEY `address_id` (`address_id`)


) ENGINE=InnoDB;

--
-- Dumping data for table `address_of_customer`
--

/*!40000 ALTER TABLE `address_of_customer` DISABLE KEYS */;
INSERT INTO `address_of_customer` (`address_of_customer_id`,`customer_id`,`address_id`,`street`,`city`,`state`,`zipcode`) VALUES 
 ('301', '201','4','345 Randolph Circle','Apopka','FL','30458'),
 ('302', '202','5','3230 Dade St.','Phoenix','AZ','85002'),
 ('303', '203','6','103 Landis Hall','Boston','MA','02110'),
 ('304', '204','6','76 Main St.','Salt Lake City','UT','84044'),
 ('401', '205','5','9501 Lafayette St.','Houma','LA','44099'),
 ('402', '305','4','123 Main St.','Apopka','FL','30458'),
 ('403', '315','5','14325 N. Bankside St.','Godfrey','IL','43580'),
 ('404', '325','6','101 Thanet St.','Austin','TX','73301'),
 ('405', '225','4','4402 Elm St.','Little Rock','AR','71602'),
 ('408', '288','5','997 Johnson St.', 'Seattle', 'WA', '98501'),
 ('450', '375','6','4400 Montro Dr.', 'Portland', 'OR', '97451'),
 ('412', '222','4','123 Brown Way', 'San Diego', 'CA', '91932'),
 ('455','333','5','97542 S. Phoenix St.', 'New York', 'NY', '10002'),
 ('490', '250','6','430 Chambers Dr.', 'Denver', 'CO', '80014'),
 ('333', '211','5','500 Anderson Way', 'Olympia', 'WA', '98501');

/*!40000 ALTER TABLE `address_of_customer` ENABLE KEYS */;



--
-- Definition of table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `lastName` varchar(50) default NULL,
  `firstName` varchar(50) default NULL,
  PRIMARY KEY  (`customer_id`),
  KEY `accountId` (`customer_id`)

) ENGINE=InnoDB;

--
-- Dumping data for table `customer`
--

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`customer_id`,`firstName`,`lastName`) VALUES 
 ('201','Sarah','Jones'),
 ('202','Mike','Smith'),
 ('203','April','Wilford'),
 ('204','John','Peterson'),
 ('205','Sam','Barns'),
 ('305','Will','McDonald'),
 ('315','Amy','Williams'),
 ('325','Emily','Johnson'),
 ('225','Pam','Miller'),
 ('288','Jim','Wilson'),
 ('375','Amelia','Brown'),
 ('222','Lizzy','Lopez'),
 ('333','Matt','Rodriquez'),
 ('250','Carl','Clarke'),
 ('211','Donna','Anderson');


/*!40000 ALTER TABLE `customer` ENABLE KEYS */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;



