-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 05:16 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `winiadm_db_winiharto`
--

-- --------------------------------------------------------

--
-- Table structure for table `g_about`
--

CREATE TABLE IF NOT EXISTS `g_about` (
  `REC_ID` int(11) NOT NULL,
  `CONTENT` text,
  `USER_ID` varchar(15) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `IMAGE` varchar(100) NOT NULL,
  PRIMARY KEY (`REC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `g_about`
--

INSERT INTO `g_about` (`REC_ID`, `CONTENT`, `USER_ID`, `UPDATED`, `CREATED`, `IMAGE`) VALUES
(1, 'asd', 'admin', '2016-05-16 14:38:22', NULL, 'Koala.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `g_about_company`
--

CREATE TABLE IF NOT EXISTS `g_about_company` (
  `REC_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CONTENT` text,
  PRIMARY KEY (`REC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `g_about_company`
--

INSERT INTO `g_about_company` (`REC_ID`, `CONTENT`) VALUES
(1, '<ul>\r\n<li>about us</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `g_brand`
--

CREATE TABLE IF NOT EXISTS `g_brand` (
  `REC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(30) NOT NULL DEFAULT '',
  `NAME` varchar(30) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(250) NOT NULL DEFAULT '',
  `IMAGE` varchar(150) DEFAULT NULL,
  `ORDER_NO` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`REC_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `g_brand`
--

INSERT INTO `g_brand` (`REC_ID`, `ID`, `NAME`, `DESCRIPTION`, `IMAGE`, `ORDER_NO`) VALUES
(1, 'SARTORIUS', 'Sartorius', '', NULL, NULL),
(2, 'MEDLINE', 'Medline', '', NULL, NULL),
(3, 'CHINA', 'Made in China', '', '', '3'),
(4, 'PT', 'PT', '', '', ''),
(5, 'CN', 'CN', '', '', ''),
(6, 'Biohit', 'Biohit', 'Biohit', '', ''),
(7, 'DETS', 'Daeyang ETS', 'Daeyang ETS (Korea)', '', ''),
(15, 'Testing Incube', '', '', NULL, NULL),
(16, 'Samsung', 'note', 'note 12 pro', NULL, NULL),
(17, 'Incheon', 'Samsung', 'laptop mahal dong', NULL, NULL),
(18, 'PES', 'PES', 'PES', NULL, NULL),
(19, 'LO', 'LO', 'LO', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g_brand_category`
--

CREATE TABLE IF NOT EXISTS `g_brand_category` (
  `REC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(11) NOT NULL DEFAULT '',
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `BRAND_ID` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`REC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `g_brand_category`
--

INSERT INTO `g_brand_category` (`REC_ID`, `ID`, `NAME`, `BRAND_ID`) VALUES
(1, 'BNZ-01', 'Generator Set', 'BANZAI'),
(2, 'BNZ-02', 'Side Slip Tester', 'BANZAI'),
(3, 'BNZ-03', 'Axle Load Meter', 'BANZAI'),
(4, 'BNZ-04', 'Compressor', 'BANZAI'),
(5, 'BNZ-05', 'Head Light Tester', 'BANZAI'),
(6, 'BNZ-06', 'CO/HC Exhaust Emission Analyzer', 'BANZAI'),
(7, 'BNZ-07', 'Axle Play Detector', 'BANZAI'),
(8, 'BNZ-08', 'Sound Level Meter', 'BANZAI'),
(9, 'BNZ-09', 'Diesel Smoke Meter', 'BANZAI'),
(10, 'BNZ-10', 'Pit Lift', 'BANZAI'),
(11, 'FTC-01', 'Load Cells', 'FLINTEC'),
(12, 'FTC-02', 'Weighing Indicator', 'FLINTEC'),
(13, 'GCC-01', 'Animal Scales', 'GCC'),
(14, 'GCC-02', 'Axle Scales', 'GCC'),
(15, 'GCC-03', 'Bench Scales', 'GCC'),
(16, 'GCC-04', 'Crane Scales', 'GCC'),
(17, 'GCC-05', 'Floor Scales', 'GCC'),
(18, 'GCC-06', 'Logicstic Scales', 'GCC'),
(19, 'GCC-07', 'Pallet Truck Scales', 'GCC'),
(20, 'GCC-08', 'Truck Scales', 'GCC'),
(21, 'GCC-09', 'Weighing Indicator', 'GCC'),
(22, 'INC48', 'INCUBE SOLUTIONS', 'INCUBE SOLUTIONSSSS'),
(23, 'MNB-01', 'Load Cells', 'MINEBEA INTEC'),
(24, 'MNB-02', 'Weight Indicator', 'MINEBEA INTEC'),
(25, 'MNB-05', 'Bench & Floor Scales', 'MINEBEA INTEC'),
(26, 'MNB-06', 'Ex Solutions', 'MINEBEA INTEC'),
(27, 'MNB-07', 'Process Software', 'MINEBEA INTEC'),
(28, 'MNB-08', 'Tanks and Hoppers', 'MINEBEA INTEC'),
(29, 'N/A-1', 'Checkweighters', 'MINEBEA-N/A'),
(30, 'N/A-2', 'Foreign Body Detector', 'MINEBEA-N/A'),
(31, 'SRS-01', 'Mass Comparator & Metrology', 'SARTORIUS'),
(32, 'SRS-02', 'Laboratory Balances ', 'SARTORIUS'),
(33, 'SRS-03', 'Moisture Analyzers', 'SARTORIUS'),
(34, 'SRS-04', 'Gold & Carat Balances', 'SARTORIUS'),
(35, 'SRS-05', 'Paint Mixing Systems', 'SARTORIUS'),
(36, 'SRS-06', 'Weights | Weight Set', 'SARTORIUS'),
(37, 'asd', 'testing', 'DETS');

-- --------------------------------------------------------

--
-- Table structure for table `g_brand_subcategory`
--

CREATE TABLE IF NOT EXISTS `g_brand_subcategory` (
  `REC_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(11) NOT NULL DEFAULT '',
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `PARENT_CATEGORY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`REC_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `g_brand_subcategory`
--

INSERT INTO `g_brand_subcategory` (`REC_ID`, `ID`, `NAME`, `PARENT_CATEGORY`) VALUES
(1, 'FTC-S-01', 'Beam Load Cells', 'FTC-01'),
(2, 'FTC-S-02', 'Single Point Load Cells', 'FTC-01'),
(3, 'FTC-S-03', 'Compression Load Cells', 'FTC-01'),
(4, 'FTC-S-04', 'Planar Beam Load Cells', 'FTC-01'),
(5, 'FTC-S-05', 'Tension Load Cells', 'FTC-01'),
(6, 'FTC-S-06', 'Load Cell Mounts', 'FTC-01'),
(7, 'MNB-L-01', 'Vessels and Silos Scales', 'MNB-01'),
(8, 'MNB-L-02', 'Bench & Floor Scales & Machines', 'MNB-01'),
(9, 'MNB-L-03', 'Truck Scales', 'MNB-01'),
(10, 'MNB-L-04', 'Hygienic Design', 'MNB-01'),
(11, 'MNB-L-05', 'Digital Technology', 'MNB-01'),
(12, 'MNB-W-01', 'Weight Terminals for Vessels and Silos Scales', 'MNB-02'),
(13, 'MNB-W-02', 'Programmable Weight Terminal', 'MNB-02'),
(14, 'MNB-W-03', 'Weight Indicator for Bench & Floor Scales', 'MNB-02'),
(15, 'MNB-W-04', 'Truck Scales', 'MNB-02'),
(16, 'MNB-F-01', 'Industrial Metal Detector', 'MNB-03'),
(17, 'MNB-F-02', 'X-Ray Inspection for Packaged Food', 'MNB-03'),
(18, 'MNB-F-03', 'X-Ray Inspection for Bottles, Cans, and Jars', 'MNB-03'),
(19, 'MNB-F-04', 'X-Ray Inspection for Bulk Material', 'MNB-03'),
(20, 'MNB-C-01', 'Checkweigher Metal & Detector Combination', 'MNB-04'),
(21, 'MNB-C-02', 'End of Line Checkweighers', 'MNB-04'),
(22, 'MNB-C-03', 'In-Line Checkweighers ', 'MNB-04'),
(23, 'MNB-C-04', 'OEM Weighing Kit', 'MNB-04'),
(24, 'MNB-B-01', 'Complete Scales', 'MNB-05'),
(25, 'MNB-B-02', 'Weighing Platform & Floor Scales', 'MNB-05'),
(26, 'MNB-B-03', 'Pallet Scales', 'MNB-05'),
(27, 'MNB-B-04', 'High Resolution Scales', 'MNB-05'),
(28, 'MNB-H-01', 'Load Cells for Hazardous Area', 'MNB-06'),
(29, 'MNB-H-02', 'Bench and Floor Scales for Hazardous Area', 'MNB-06'),
(30, 'MNB-H-03', 'Weighing Terminal for Hazardous Area', 'MNB-06'),
(31, 'MNB-P-01', 'Statistical Process Control', 'MNB-07'),
(32, 'MNB-P-02', 'Batching & Formulation', 'MNB-07'),
(33, 'MNB-P-03', 'Software Tools', 'MNB-07'),
(34, 'SRS-M-02', 'Automatic Mass Comparator', 'SRS-01'),
(35, 'SRS-M-03', 'Manual Mass Comparator', 'SRS-01'),
(36, 'SRS-M-04', 'Robot System', 'SRS-01'),
(37, 'SRS-M-05', 'System', 'SRS-01'),
(38, 'SRS-M-06', 'Susceptometer', 'SRS-01'),
(39, 'SRS-M-07', 'Volume and Density Determination', 'SRS-01'),
(40, 'SRS-L-01', 'Ultramicro | Micro', 'SRS-02'),
(41, 'SRS-L-02', 'Analytical', 'SRS-02'),
(42, 'SRS-L-03', 'Precision', 'SRS-02'),
(43, 'SRS-P-01', 'Paint Mixing Scales', 'SRS-05'),
(44, 'SRS-P-02', 'Paint Mixing Terminals', 'SRS-05'),
(45, 'SRS-P-03', 'Paint Mixing Accesories', 'SRS-05'),
(46, 'SRS-W-01', 'Accesories for Weight and Weight Sets', 'SRS-06'),
(47, 'SRS-W-02', 'Cylindrical Weights', 'SRS-06'),
(48, 'SRS-W-03', 'Knob Weights', 'SRS-06'),
(49, 'SRS-W-04', 'Leaf Weights', 'SRS-06'),
(50, 'SRS-W-05', 'Weight Sets', 'SRS-06'),
(51, 'SRS-W-06', 'Wire Weights', 'SRS-06'),
(52, 'SRS-A-01', 'Moisture Meter LMA200', 'SRS-03'),
(53, 'SRS-A-02', 'Moisture Meter MA', 'SRS-03'),
(54, 'SRS-A-03', 'Mark 3 Moisture Analyzer', 'SRS-03'),
(55, 'Incube', 'Testing Incube', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `g_customer`
--

CREATE TABLE IF NOT EXISTS `g_customer` (
  `REC_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CONTENT` text,
  PRIMARY KEY (`REC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `g_customer`
--

INSERT INTO `g_customer` (`REC_ID`, `CONTENT`) VALUES
(1, '<p>Best Customers dong</p>'),
(2, 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `g_distribution_history`
--

CREATE TABLE IF NOT EXISTS `g_distribution_history` (
  `REC_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CONTENT` text,
  PRIMARY KEY (`REC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `g_distribution_history`
--

INSERT INTO `g_distribution_history` (`REC_ID`, `CONTENT`) VALUES
(1, '<p>History Winiharto</p>');

-- --------------------------------------------------------

--
-- Table structure for table `g_latest_news`
--

CREATE TABLE IF NOT EXISTS `g_latest_news` (
  `REC_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CONTENT` text,
  PRIMARY KEY (`REC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `g_latest_news`
--

INSERT INTO `g_latest_news` (`REC_ID`, `CONTENT`) VALUES
(1, '<p>Berita hari ini dipersembahkan oleh</p>');

-- --------------------------------------------------------

--
-- Table structure for table `g_user`
--

CREATE TABLE IF NOT EXISTS `g_user` (
  `user_id` varchar(15) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pass` varchar(50) DEFAULT NULL,
  `user_group_id` varchar(15) DEFAULT NULL,
  `user_status` varchar(15) DEFAULT NULL,
  `user_attempted_login` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `g_user`
--

INSERT INTO `g_user` (`user_id`, `user_name`, `user_pass`, `user_group_id`, `user_status`, `user_attempted_login`) VALUES
('admin', 'administrator', 'e99a18c428cb38d5f260853678922e03', 'ADMIN', 'ACTIVE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `g_vision`
--

CREATE TABLE IF NOT EXISTS `g_vision` (
  `REC_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CONTENT` text,
  PRIMARY KEY (`REC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `g_vision`
--

INSERT INTO `g_vision` (`REC_ID`, `CONTENT`) VALUES
(1, '<p>Lorem Ipsum Loroddddddd</p>');

-- --------------------------------------------------------

--
-- Table structure for table `g_workshop`
--

CREATE TABLE IF NOT EXISTS `g_workshop` (
  `REC_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CONTENT` text,
  PRIMARY KEY (`REC_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `g_workshop`
--

INSERT INTO `g_workshop` (`REC_ID`, `CONTENT`) VALUES
(1, '<p>Workshop itu adalah sesuatu hal yang berguna</p>');

-- --------------------------------------------------------

--
-- Table structure for table `p_category`
--

CREATE TABLE IF NOT EXISTS `p_category` (
  `ID` varchar(30) NOT NULL DEFAULT '',
  `NAME` varchar(40) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(250) NOT NULL DEFAULT '',
  `ORDER_NO` varchar(10) DEFAULT NULL,
  `DIVISION` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_category`
--

INSERT INTO `p_category` (`ID`, `NAME`, `DESCRIPTION`, `ORDER_NO`, `DIVISION`) VALUES
('BAL-02', 'Laboratory Balances', 'BAL', 'LB01', 'BAL'),
('CAT002', 'pHMeters', 'LAB', 'LB02', 'LAB'),
('BAL-03', 'Moisture Analyzers', 'BAL', 'LB03', 'BAL'),
('CAT004', 'Centrifuges', 'LAB', 'LB04', 'LAB'),
('CAT005', 'Incubator, Shakers and Stirrer', 'LAB', 'LB05', 'LAB'),
('CAT006', 'Homogenizers', 'LAB', 'LB05', 'LAB'),
('CAT007', 'Spectrophotometers', 'LAB', 'LB07', 'LAB'),
('IND-01', 'Bench Scales', 'IND', 'IND01', 'IND'),
('IND-02', 'Tank and Silo Weighing', 'IND', 'IND04', 'IND'),
('IND-03', 'Truck Scales', 'IND', 'IND05', 'IND'),
('BAL-01', 'Mass Comparator', 'BAL', 'LB08', 'BAL'),
('BAL-06', 'Weights | Weight Sets', 'BAL', 'LB09', 'BAL'),
('CAT010', 'Refractometers', 'LAB', 'LB10', 'LAB'),
('CAT011', 'Lab Water System', 'LAB', 'LB11', 'LAB'),
('CAT019', 'Laboratory Waterbaths ', 'LAB', 'LB19', 'LAB'),
('CAT013', 'CETI Microscopes ', 'LAB', 'LB13', 'LAB'),
('CAT014', 'Liquid Handling System', 'LAB', 'LB14', 'LAB'),
('CAT015', 'Camera Analysis and Software -', 'LAB', 'LB15', 'LAB'),
('CAT018', 'Laboratory Oven ', 'LAB', 'LB18', 'LAB'),
('CAT020', 'Polarimeters ', 'LAB', 'LB20', 'LAB'),
('IND-05', 'Ex Weighing Equipment', 'IND', 'IND03', 'IND'),
('IND-06', 'Software', 'OTH', 'OTH02', 'OTH'),
('IND-07', 'Calibration Certificate', 'OTH', 'OTH03', 'OTH'),
('IND-04', 'Platform Scales and Load Cells', 'IND', 'IND02', 'IND'),
('CAT023', 'Bench Top Equipments', 'LAB', 'LB23', 'LAB'),
('GRG-01', 'Generator Set', 'GRG', 'GRG01', 'GRG'),
('GRG-02', 'Side Slip Tester', 'GRG', 'GRG02', 'GRG'),
('GRG-03', 'Axle Load Meter', 'GRG', 'GRG03', 'GRG'),
('GRG-04', 'Compressor', 'GRG', 'GRG04', 'GRG'),
('GRG-05', 'Head Light Tester', 'GRG', 'GRG05', 'GRG'),
('GRG-06', 'CO/HC Exhaust Emission Analyzer', 'GRG', 'GRG06', 'GRG'),
('GRG-07', 'Axle Play Detector', 'GRG', 'GRG07', 'GRG'),
('GRG-08', 'Sound Level Meter', 'GRG', 'GRG08', 'GRG'),
('GRG-09', 'Diesel Smoke Meter', 'GRG', 'GRG09', 'GRG'),
('GRG-10', 'Pit Lift', 'GRG', 'GRG10', 'GRG');

-- --------------------------------------------------------

--
-- Table structure for table `p_new_products`
--

CREATE TABLE IF NOT EXISTS `p_new_products` (
  `PROD_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  `PRODUCT_ID` varchar(50) DEFAULT NULL,
  `BRAND_CATEGORY` varchar(50) DEFAULT NULL,
  `BRAND_ID` varchar(50) DEFAULT NULL,
  `BRAND_SUBCATEGORY` varchar(50) DEFAULT NULL,
  `SUMMARY` text,
  `IMAGES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROD_ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=470 ;

--
-- Dumping data for table `p_new_products`
--

INSERT INTO `p_new_products` (`PROD_ID`, `NAME`, `PRODUCT_ID`, `BRAND_CATEGORY`, `BRAND_ID`, `BRAND_SUBCATEGORY`, `SUMMARY`, `IMAGES`) VALUES
(1, 'BK2 Beam Load Cell (200 - 2,000kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-01', '<p>Capacities from 200 - 2,000kg. Stainless steel construction. Environmentally sealed by potting. Low profile </p>', 'https://www.flintec.com/wp-content/uploads/2016/09/bk2-beam-load-cell-main-447x316.jpg'),
(2, 'SB2 Beam Load Cell (20.4t & 45.4t)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-01', '<p>Capacities of 20.4t & 45.4t. Tool steel construction.  Hermetically sealed. Painted finish </p>', 'https://www.flintec.com/wp-content/uploads/2016/09/sb2-beam-load-cell-main-447x316.jpg'),
(3, 'SB4 Beam Load Cell (510 - 10,197kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-01', '<p>Capacities from 510 - 10,197kg. Stainless steel construction. Hermetically sealed</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/sb4-beam-load-cell-main-447x316.jpg'),
(4, 'SB8L Beam Load Cell (300 - 1,000kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-01', '<p>Capacities from 300 - 1,000kg. Stainless steel construction. Hermetically sealed</p>', 'https://www.flintec.com/wp-content/uploads/sb8l-beam-load-cell-tilted-447x316.jpg'),
(5, 'SB9 Beam Load Cell (250 - 2,000kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-01', '<p>Capacities from 250 - 2000kg. Stainless steel construction. Environmentally sealed by potting. Hermetically sealed. Ideal for industrial platform scales</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/sb9-beam-load-cell-main-447x316.jpg'),
(6, 'PC7 Single Point Load Cell (100kg, 250kg, 500kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-02', '<p>Capacities of 100kg, 250kg & 500kg. Stainless steel construction. Hermetically sealed. Electro-polished finish. For platform sizes of 600 x 600mm</p>', 'https://www.flintec.com/wp-content/uploads/pc7-single-point-load-cell-alt-447x316.jpg'),
(7, 'PC7H Single Point Load Cell (1,000kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-02', '<p>Capacities of 1000kg. Stainless steel construction. Hermetically sealed. Rugged construction. Off-center load compensated. Designed for on-board vehicle weighing</p>', 'https://www.flintec.com/wp-content/uploads/2017/10/pc7h-single-point-load-cell-tilted-447x316.jpg'),
(8, 'PC12 Single Point Load Cell (20kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-02', '<p>Capacities of 20kg. Stainless steel construction. Hermetically sealed. For platform sizes of 600 x 600mm. Developed for dynamic weighing</p>', 'https://www.flintec.com/wp-content/uploads/pc12-single-point-load-cell-tilted-447x316.jpg'),
(9, 'PC22 Single Point Load Cell (5 - 40kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-02', '<p>Capacities from 5 - 40kg. Aluminium construction. Environmentally sealed by potting. Low profile design. For platform sizes of 350 x 350mm</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/pc12-single-point-load-cell-447x316.jpg'),
(10, 'RC1 Compression Load Cell (25.5t - 91.8t)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-03', '<p>Capacities from 25.5t - 91.8t. All stainless steel construction. Hermetically sealed. Self-restoring column design</p>', 'https://www.flintec.com/wp-content/uploads/rc1-compression-load-cell-alt-447x316.jpg'),
(11, 'RC3 Compression Load Cell (7.5t - 300t)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-03', '<p>Capacities from 7.5t - 300t. All stainless steel construction. Hermetically sealed. Self-restoring column design</p>', 'https://www.flintec.com/wp-content/uploads/rc3-compression-load-cell-tilted-1-447x316.jpg'),
(12, 'Q50 Compression Load Cell (0.5 - 30t)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-03', '<p>Capacities from 500kg - 30T. All stainless steel construction. Hermetically sealed. Low profile. Hygienic design for food industry applications</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/q50-compression-load-cell-447x316.jpg'),
(13, 'JF1 Press Force Sensor (2 - 100kN)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-03', '<p>Capacities from 2kN - 100 kN. Low profile. Stainless steel construction. Designed for press fit applications</p>', 'https://www.flintec.com/wp-content/uploads/2016/10/jf1-miniature-press-force-sensor-447x316.jpg'),
(14, 'PB Planar Beam Load Cell (3.75 - 375kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-04', '<p>Ultra-low profile. Wide range of capacities. 1000? strain gauge bridge for battery powered devices. Aluminium construction. </br>\nEnvironmentally sealed by potting. High accuracy</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/pb-planar-beam-load-cell-447x316.jpg'),
(15, 'PBW Planar Beam Load Cell (12.5 - 240lb)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-04', '<p>Ultra-low profile. Wide range of capacities. 1000? strain gauge bridge for battery powered devices. Aluminium construction. </br>\nEnvironmentally sealed by potting. High accuracy</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/pbw-planar-beam-load-cell-447x316.jpg'),
(16, 'ZLB Planar Beam Load Cell (20 - 200kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-04', '<p>Ultra-low profile. Wide range of capacities. 1000? strain gauge bridge for battery powered devices. Aluminium construction. </br>\nEnvironmentally sealed by potting. High accuracy. Bolt-hole compatible with SB6, SB8 and SB61C load cells</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/zlb-planar-beam-load-cell-447x316.jpg'),
(17, 'ZLS Planar Beam Load Cell (20 - 200kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-04', '<p>Stainless steel construction. Environmentally sealed by potting. Very low profile</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/zls-planar-beam-load-cell-447x316.jpg'),
(18, 'ULB Tension Load Cell (100 - 5,000kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-05', '<p>Stainless steel construction. Environmentally sealed by potting. Tension and compression loading</br>\nWide range of capacities. High accuracy</p>', 'https://www.flintec.com/wp-content/uploads/ulb-tension-load-cell-alt-447x316.jpg'),
(20, 'UB6 Tension Load Cell (75 - 500kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-05', '<p>Stainless steel construction. Environmentally sealed by potting. Tension and compression loading</br>\nWide range of capacities. High accuracy</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ub6-tension-load-cell-447x316.jpg'),
(19, 'UB1 Tension Load Cell (1,000 - 10,000kg)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-05', '<p>Stainless steel construction. Environmentally sealed by potting. Tension and compression loading</br>\nWide range of capacities. High accuracy</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ub1-tension-load-cell-447x316.jpg'),
(21, 'ISA S-Beam Force Sensor (1 - 10lb)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-05', '<p>High accuracy ± 0.1%. Compact design. Built-in overload protection. Aluminium construction. Temperature compensated -15°C ? + 71°C</br>\nTension & compression force measurement. Low weight. Environmental protection to IP40</p>', 'https://www.flintec.com/wp-content/uploads/2016/10/isa-isb-miniature-sbeam-force-sensor-wired-1-447x316.jpg'),
(22, 'ISB S-Beam Force Sensor (25 - 100lb)', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-05', '<p>High accuracy ± 0.1%. Compact design. Built-in overload protection. Aluminium construction. Temperature compensated -15°C ? + 71°C</br>\nTension & compression force measurement. Low weight. Environmental protection to IP40</p>', 'https://www.flintec.com/wp-content/uploads/2016/10/isa-isb-miniature-sbeam-force-sensor-wired-1-447x316.jpg'),
(23, '52-00 Base Plate', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-06', '<p>Stainless steel construction. Available with optional overload protection. </br>\nAvailable in a wide range of sizes to suit the Flintec range of beam load cells</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/52-00-base-plate-413x316.jpg'),
(24, '52-02 Rubber Foot', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-06', '<p>Zinc plated tool steel or stainless steel construction options. Sizes Available to suit a wide range of load cell capacities</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/52-02-rubber-foot-413x316.jpg'),
(25, '52-10 Height Adjustable Rubber Foot', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-06', '<p>Zinc plated tool steel or stainless steel construction options. Sizes Available to suit a wide range of load cell capacities</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/52-10-height-adjustable-rubber-foot-413x316.jpg'),
(26, '55-01-07A Rocker System', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-06', '<p>Zinc plated steel construction. Very easy to install and maintain. </br>\nAnti-rotation device</p>\n', 'https://www.flintec.com/wp-content/uploads/2016/09/55-01-07a-rocker-system-413x316.jpg'),
(27, '55-01-07C Rocker System', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-06', '<p>Zinc plated steel construction. Very easy to install and maintain. </br>\nAnti-rotation device. Supplied with grounding strap<p>\n', 'https://www.flintec.com/wp-content/uploads/2016/09/55-01-07c-rocker-system-378x316.jpg'),
(28, '55-01-07H Rocker System', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-06', '<p>Zinc plated steel construction. Very easy to install and maintain. </br>\nAnti-rotation device. Self-aligning</p>\n', 'https://www.flintec.com/wp-content/uploads/2016/09/55-01-07h-rocker-system-413x316.jpg'),
(29, 'Load Mount For ZLB/ZLS Planar Beam Load Cell', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-06', '<p>Zinc plated steel and natural rubber construction. Available for capacities of the ZLB/ZLS planar beam range</br>\nDesigned for high accuracy weighing performance</p>\n', 'https://www.flintec.com/wp-content/uploads/2016/09/load-mount-for-zlbzls-316x316.jpg'),
(30, 'Load Mount For PB/PBW Planar Beam Load Cell', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-06', '<p>Zinc plated steel and natural rubber construction. Available for capacities of the PB/PBW planar beam range</br>\nDesigned for high accuracy weighing performance</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/load-mount-for-pbpbw-316x316.jpg'),
(31, '53-04 Tension Assembly', 'IND-04', 'FLINTEC', 'FTC-01', 'FTC-S-06', '<p>Zinc plated steel construction. Compatible with the full range of Flintec S-load cells.</br> \nVery easy to install. Supplied with earthing strap<p>\n', 'https://www.flintec.com/wp-content/uploads/2016/09/53-04-tension-assembly-e1474458819469-158x316.jpg'),
(32, 'DAS 72.1 Process Indicator', '', 'FLINTEC', 'FTC-02', '', '<p>2400 measurements/sec. 5 digit LED display. DIN mounted. Ideal for both static and dynamic weighing</br>\nSerial interface. Analogue output</p>\n', 'https://www.flintec.com/wp-content/uploads/2016/09/das-72.1-process-indicator-211x167.jpg'),
(33, 'DAD 141.1 Weight Indicator', '', 'FLINTEC', 'FTC-02', '', '<p>OIML certified to 10,000d. DIN mounted. 6 digit 7-segment display. </br>\n600 measurements/sec. serial interface RS422/RS485</p>\n', 'https://www.flintec.com/wp-content/uploads/2017/11/DAD-141_-211x149.jpg'),
(34, 'DAD 142.2 Weight Indicator', '', 'FLINTEC', 'FTC-02', '', '<p>EU Type approved for 10 000 intervalls ( in progress). Linearity better than 0.001 %. </br>\nLoad cell exitation 5 V DC for up to 6 load cells a 350 ? or 18 load cells 1100 ?. 6-wire technology</br>\nCalibration with weight or in mV/V. Max. conversion rate of 600 updates / s. Digital filters, programmable. Local display.</br>\nSerial interface RS422/485. Profibus interface. 2 digital inputs (isolated). 3 digital outputs (isolated). Power supply 10?30V DC. DIN rail mounting TS35</p>\n\n', 'https://www.flintec.com/wp-content/uploads/2016/11/DAD142.2-No-Logo-211x96.jpg'),
(35, 'FT-112 Weighing Indicator', '', 'FLINTEC', 'FTC-02', '', '<p>OIML certified to 10,000d. Connect up to 8 load cells 350 ? or 25 load cells 1 100 ?</br>\nConnect up to 2 scales with sum function. 4-wire or 6-wire technology. 5 steps programmable adaptive filter</br>\nStandard Interface RS232C, RS485, Ethernet TCP/IP, USB. SD card slot for additional memory. Smart Track function</br>\nCalibration with eCal or test weights. Power supply 100?240 V AC or 12?28 V DC</p>\n', 'https://www.flintec.com/wp-content/uploads/2017/09/FT-112-bearbeitet-Kopie-211x162.jpg'),
(36, 'FT-112D Digital Weighing Indicator', '', 'FLINTEC', 'FTC-02', '', '<p>OIML certified to 10,000d. Connect up to 16 digital load cells RC3D. 4-wire or 6-wire technology</br>\n5 steps programmable adaptive filter. Standard Interface RS232C, RS485, Ethernet TCP/IP, USB. SD card slot for additional memory</br>\nSmartAPP function. Calibration with eCal or test weights. Power supply 100?240 V AC</br>', 'https://www.flintec.com/wp-content/uploads/FT-112D_2-211x129.jpg'),
(38, 'Compression Load Cell Inteco', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-01', '<p>The versatile, innovative weighing solution for silo and vessel weighing. Further development of the PR 6201 load cell</br>\nNEW: Output signal of 2 mV/V. NEW: additional load levels 60 t and 75 t. NEW: Accuracy class (C6) from 3 t. NEW: even higher corrosion resistance </p>\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/d/csm_Load_Cell_Inteco_Minebea_Intec_90b3ff4f05.jpg'),
(39, 'Contego Weighing Module', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-01', '<p>Preassembled weighing module, including load cell, integrated constrainer and lift-off protection saving installation time </br>\nEHEDG-certified product. Integrated jack-up function to quickly lift the vessel without hydraulic lifters.  Sophisticated sealing </br>\ntechnology ensures an optimum hygienic design </p>\n\n\n\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/8/csm_PIC_Contego_Weighing_Module_RGB_b5c2423baa.jpg'),
(40, 'Weighing Module Novego', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-01', '<p>Hygienic weighing module ensures efficient cleaning. Quick and easy commissioning due to smart add-on parts </br>\nHigh degree of process reliability and precision thanks to the innovative side-force-resistant system. Durable, reliable weighing solution with excellent corrosion resistance</p>\n\n\n\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/4/b/csm_PIC_Novego_weighing_module_Minebea_Intec_e6120921bd.jpg'),
(41, 'Compression S-Type Load Cell PR 6241', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-01', '<p>Ultra-high precision load cell for batching applications. Corresponding mounting kits. Load cell capacity range from 100 kg to 5 t</br>\nAccuracy class: 0.04 % - 0.008 %</p>\n\n\n\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/4/csm_wi0774d1-WH_b45149e9b6.jpg'),
(42, 'Platform Load Cell MP 55', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-02', '<p>Full stainless steel construction. Platform size up to 600 mm x 600 mm. Hermetically welded seal (IP68, IP69K). </br>\nEx-Version available (MP55/...E) Integrated Mounting spacer </p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/9/2/csm_gw0084d1-WH_6f32e47989.jpg'),
(43, 'MP 72', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-02', '<p>Aluminium alloy construction. Compatible with other sources. Platform size up to 600 mm x 600 mm </br>\nApproved according to OIML R60</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/6/csm_wi0778d1-WH_dc74561ba6.jpg'),
(44, 'MP 71', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-02', '<p>Aluminium alloy construction. Compatible with other sources. Platform size up to 400 mm x 400 mm </br>\nApproved according to OIML R60</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/c/csm_gw0085d1-WH_17e42265bb.jpg'),
(45, 'MP 70', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-02', '<p>Aluminium alloy construction. Compatible with other sources. Platform size up to 350 mm x 350 mm </br>\nApproved according to OIML R60</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/0/4/csm_wi0779d1-WH_c15e476061.jpg'),
(46, 'Truck Scale Load Cell PR 6221', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-03', '<p>Easy installation and commissioning. Precise measurement results from 12.5 t to 75 t. High overload capacity</br>\nMaximum IP protection (IP68 and IP69). Patented measuring element geometry </p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/b/csm_gw0054d1-WH_48a41e2a3e.jpg'),
(47, 'Pendeo® Truck', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-03', '<p>Ideally suited to use in weighbridges. Standardized, maintenance-free, extremely compact design. Special strain-gauge technology for significantly</br>\n improved lightning protection. High overload range (up to 150 %). Suitable for use in ATEX zone 2/22 </p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/c/e/csm_gw0021d1-WH_a7452b69fd.jpg'),
(48, 'Weighing Module Novego', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-04', '<p>Hygienic weighing module ensures efficient cleaning. Quick and easy commissioning due to smart add-on parts </br>\nHigh degree of process reliability and precision thanks to the innovative side-force-resistant system. Durable, reliable weighing solution with excellent corrosion resistance</p> \n\n\n\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/4/b/csm_PIC_Novego_weighing_module_Minebea_Intec_e6120921bd.jpg'),
(49, 'Contego Weighing Module', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-04', '<p>Preassembled weighing module, including load cell, integrated constrainer and lift-off protection saving installation time </br>\nEHEDG-certified product. Integrated jack-up function to quickly lift the vessel without hydraulic lifters . Sophisticated sealing technology ensures an optimum hygienic design </p>\n\n\n\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/8/csm_PIC_Contego_Weighing_Module_RGB_b5c2423baa.jpg'),
(50, 'Compression Load Cell PR 6202', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-04', '<p>Proven rocker-pin principle. Easy corner adjustment by matched load cell output. </br>\nFull stainless steel construction. Wide temperature range. Resistant against vibrations</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/0/8/csm_PIC_Compression_load_cell_RGB_fcf6fe6b29.jpg'),
(51, 'Compression Load Cell Inteco', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-05', '<p>The versatile, innovative weighing solution for silo and vessel weighing. Further development of the PR 6201 load cell</br>\nNEW: Output signal of 2 mV/V. NEW: additional load levels 60 t and 75 t. NEW: Accuracy class (C6) from 3 t. NEW: even higher corrosion resistance </p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/d/csm_Load_Cell_Inteco_Minebea_Intec_90b3ff4f05.jpg'),
(52, 'Pendeo® Process', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-05', '<p>Capacities from 2t up to 50t. Easy to install. Tried-and-tested pendulum support principle.</br>\nHousing made from stainless steel. High overload capacity. Not sensitive to vibrations</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/0/5/csm_gw0017d1-WH_00a2467dc8.jpg'),
(53, 'Pendeo® Truck', 'IND-04', 'MINEBEA INTEC', 'MNB-01', 'MNB-L-05', '<p>Ideally suited to use in weighbridges. Standardized, maintenance-free, extremely compact design. Special strain-gauge</br>\ntechnology for significantly improved lightning protection. High overload range (up to 150 %). Suitable for use in ATEX zone 2/22 </p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/c/e/csm_gw0021d1-WH_a7452b69fd.jpg'),
(54, 'WPG 33 L (Silent)', 'GRG-01', 'BANZAI', 'BNZ-01', '', '<p>Mechanical Governor. Closed Water-cooled. Air Filter, Muffler. Oil Drain Valve</p>', 'http://winiharto.com/assets/products/banzai/WPG33L.png'),
(55, 'WG-500CDP', 'GRG-02', 'BANZAI', 'BNZ-02', '', '<p>Permissable Axle Weight: 10,000 kg. Main Body Shape: Unified Frame. </br>\nMain Body Dimension (W x L x H): 2,920 x 570 x 130 mm. Detector: Potensio Meter</p>\n ', 'http://winiharto.com/assets/products/banzai/WG-500CDP.png'),
(56, 'SL-1EB-20P', 'GRG-03', 'BANZAI', 'BNZ-03', '', '<p>Max Capacity: 20 Tons. Max Overload: 150%. Accuracy: 1/200. Test Plate Size: 2700 x 600 (mm)</br>\nOperating Voltage: 220/240V, Single Phase, 50 Hz</p> ', 'http://winiharto.com/assets/products/banzai/SL-1EB-20P.png'),
(57, 'PK 75250 A', 'GRG-04', 'BANZAI', 'BNZ-04', '', '<p>Power: 7.5 HP / 5.5 kW. Speed: 890 RPM. Air Capacity: 1118 litre/minute</br>\nWorking Pressure: 8Kg/Cm2. Max Pressure: 10Kg/Cm2</p>', 'http://winiharto.com/assets/products/banzai/PK-75250-A.png'),
(58, 'HT-317', 'GRG-05', 'BANZAI', 'BNZ-05', '', '<p>Measurement Method: Manual. Measurement Distance: 1 m. Light-Receiving Section Dimension: 460W x 404D x 490H mm.</br>\nLuminous Intensity Indication Range: High Beam Intensity 0 to 120,000 cd. Weight: Approx. 60kg </p>', 'http://winiharto.com/assets/products/banzai/HT-317.png'),
(59, 'MEXA-584LP', 'GRG-06', 'BANZAI', 'BNZ-06', '', '<p>Application: Exhaust Gasses from Gasoline Vehicle (two-wheel or four wheel), LPG Vehicle (four-wheel vehicle)</br>\nPrinciple: CO, HC, CO2, : Non-Dispersive Infrared (NDIR). Air-to-Fuel Ratio (AFR), Excess Air Ratio (Lambda)</br>\nCarbon Balance Method or Brettshneider Method (with O2 Measurement). Monitor Display: LCD. Power Supply: 100V to 240V AC </br>\n50 to 60 Hz, 1ph. Weight: Approx. 4kg (WIthout Optional Unit)</p>', 'http://winiharto.com/assets/products/banzai/MEXA-584LP.png'),
(60, 'AM 900K', 'GRG-07', 'BANZAI', 'BNZ-07', '', '<p>Capacity of Plates: 20.000 Kg. Plate Dimension: 1,000 x 850. Standart Accesories: Halogen Lamp</br>\nMax Axle Pressure: Dynamic Load 13 Ton. Static Load 20 tons. Mains Voltage: 3 x 400 V Standart 50Hz</p>', 'http://winiharto.com/assets/products/banzai/AM900K.png'),
(61, 'NL - 27M', 'GRG-08', 'BANZAI', 'BNZ-08', '', '<p>Measuring Range: 30 - 130 dB. Electric Source: Dry Cell SUM- 3 x 2. DImension (L x W x H): 23.5 x 63 x 120 mm </p>\n ', 'http://winiharto.com/assets/products/banzai/NL-27M.png'),
(62, 'DSM - 240', 'GRG-09', 'BANZAI', 'BNZ-09', '', '<p>Applicable: Diesel Smoke Machine of All Diesel Powered Vehicle and Machinery. Measuring Method: Light Reflection Method</br>\nDisplay: LED Indication 0 - 100.0%. Measuring Accuracy: ±3% of the Full Scale. Absorption Time: 1.4 ± 0.2 sec. Absorption Capacity: 330 ± 15cc </p>', 'http://winiharto.com/assets/products/banzai/DSM-240.png'),
(63, 'PJA-1000A', 'GRG-09', 'BANZAI', 'BNZ-09', '', '<p>Capacity: 10.000Kg. Lift Stroke: 450 mm. Saddle min. Height: 60 mm. Saddle max. Height: 510 mm </br>\nSaddle left/right Traveling: 375 mm. Overall Height: 1.005 mm </p>', 'http://winiharto.com/assets/products/banzai/PJA-1000A.png'),
(64, 'Weight Indicator X3', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-01', '<p>High-precision weight indicator offering a resolution of up to 120,000 increments. Convenient and efficient scale calibration in one minute without weights</br>\nLarge, clearly readable display of weight values, even in direct light. Remote configuration and service functionality through integrated website</br>\nEasyFill® function for one-component dosing of liquids, powders and granules with </br> configurable target, tolerance and overshoot values </p>\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/3/b/csm_PIC_Process_Indicator_X3_RGB_leftview_ac8160d5a6.jpg'),
(65, 'Transmitter PR 5230', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-01', '<p>High precision, reliable and fast processing of weight values. Convenient and efficient calibration of the scale in under one minute</br>\nGlobal remote servicing with the Remote Service functionality. Integrated display for status monitoring. Dosing function EasyFill® reduces programming time</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/5/csm_PIC_Ethernet_Transmitter_PR5230_RGB_a1461eeaff.jpg'),
(66, 'Weight Transmitter PR 5220', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-01', '<p>High-precision weight transmitter offering a resolution of up to 120,000 increments Convenient and efficient scale calibration in one minute without weights</br>\nRemote configuration and service functionality through integrated website. EasyFill® function for one-component dosing of liquids, powders and granules </br>\nwith configurable target, tolerance and overshoot value. Multiple data interfaces allow easy integration into process control </br>\nsystems and direct connection of a remote display. Slim design for space-saving installation on DIN top hat rails</p>\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/2/6/csm_PIC_Ethernet_Transmitter_PR5220_RGB_leftview_c1b8bc3267.jpg'),
(67, 'Compact Fieldbus Transmitter PR 5211', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-01', '<p>PR 5211/10 with a high-performance 16 bit analogue output. PR 5211/00 providing both. PR 5211/11 with high-speed 12 Mbit Profibus-DP interface</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/9/csm_Minebea_Intec_Weight_transmitter-PR_5211_3319dcfc4c.jpg'),
(68, 'Weight Controller Maxxis 5', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-02', '<p>Connection of up to four scales. 5.7" large colour display with multilingual interface and integrated help function for intuitive operation</br>\nMultiple interface possibilities: Ethernet TCP/IP, Modbus TCP, </br>Profibus DP, DeviceNet, Profinet, Ethernet/IP and USB. Equipped with an internal</br>\nweb server, the Maxxis 5 can be configured and controlled via any standard web browser. Automatic backup function saving data to SD cards for full transparency and traceability</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/9/csm_Maxxis5_weighing_controller_web_40ca3ea6d9.jpg'),
(69, 'PR5500/xx Weight Controller Maxxis 4', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-02', '<p>Connection of one analogue or one digital scale or Pendeo® digital load cell system. 4.3" large colour display with multilingual interface</br>\nand integrated help function for intuitive operation. Multiple interface possibilities: Ethernet TCP/IP, Modbus TCP, Profibus </br>\nDP, DeviceNet, Profinet, Ethernet/IP and USB. Equipped with an internal web server, the Maxxis 4 can be configured and controlled via any standard web browser</br>\nAutomatic backup function saving data to SD cards for full transparency and traceability</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/d/d/csm_PIC__Maxxis4_RGB_leftview_23292a1708.jpg'),
(70, 'Weight Indicator Combics', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-03', '<p>Easy-to-use application software programmes for a variety of uses, such as counting checking and pre-packaging checking</br>\nare pre-installed as a standard feature. Optimal connectivity and integration into existing systems, for example via </br> \nRS 232,RS 485/422, analogue 4-20 mA, digital inputs/outputs, Profibus DP, Ethernet TCP/IP</p>\n\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/8/f/csm_Combics3_ba41c1e8b2.jpg'),
(71, 'Weight Indicators Midrics®', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-03', '<p>Display: backlit, 14-segment, 20 mm LCD for weight readouts. Integrated A/D-converter for connecting analog platforms</br>\nMaterial: AISI 304 stainless steel. Optional RS-232, RS-485, RS-422, 4-20mA, Digital I/O</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/8/4/csm_Midrics-Indicator-Minebea-Intec-white_grey_3014c61666.jpg'),
(75, 'Vistus Freefall', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-01', '<p>Minimum installation height for easy integration into any application. Cost effective control of up to four search coils via one terminal</br>\nTrue In-Process Validation.  This functionality guarantees correct performance testing</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/4/csm_Minebea_Intec_Vistus_Freefall_Metal_Detection_System_c883d7b1bb.jpg'),
(73, 'Weight Indicator X3', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-04', '<p>High-precision weight indicator offering a resolution of up to 120,000 increments. Convenient and efficient scale calibration in one minute without weights</br>\nLarge, clearly readable display of weight values, even in direct light. Remote configuration and service functionality through integrated website</br>\nEasyFill® function for one-component dosing of liquids, powders and granules with </br> configurable target, tolerance and overshoot values </p>\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/3/b/csm_PIC_Process_Indicator_X3_RGB_leftview_ac8160d5a6.jpg'),
(74, 'Weight Controller Maxxis 5', '', 'MINEBEA INTEC', 'MNB-02', 'MNB-W-04', '<p>Connection of up to four scales. 5.7" large colour display with multilingual interface and integrated help function for intuitive operation</br>\nMultiple interface possibilities: Ethernet TCP/IP, Modbus TCP, Profibus DP, DeviceNet, Profinet, Ethernet/IP and USB. </br>\nEquipped with an internal web server, the Maxxis 5 can be configured brand controlled via any standard web browser. </br>\nAutomatic backup function saving data to SD cards for full transparency and traceability</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/9/csm_Maxxis5_weighing_controller_web_40ca3ea6d9.jpg'),
(76, 'Secus®', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-01', '<p>Robust design combined with optimum detection sensitivity. Extremely easy operation resulting in optimum user acceptance. </br>\nAvailable as standard with aperture dimensions of up to 2200 x 1200 mm. Protection class IP55, IP66 optional</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/d/6/csm_Secus_428x272_blank_07cff93340.png'),
(77, 'Metal Detector Vistus', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-01', '<p>Sturdy and torsion free construction made of 1.4301/AISI304 stainless steel. High quality drives: maintenance free three-phase motor with </br>\nworm gear or three phase drum motor. Maximum detection performance through optimum vibration control and metal free zone</br>\nAvailable standard coil sizes: 75 x 30 mm up to 275 x 60 mm. Standard IP65 protection class, IP69K optionally available for enabling high pressure water cleaning</br>\nExtremely compact: control unit fully integrated in detection coil</p>\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/d/a/csm_PIC_Metal_Detector_Vistus_RGB_94a6ac9b5d.jpg'),
(78, 'Dyxim-FB', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-02', '<p>For inspecting large packages such as sacks and boxes up to a size of 700 mm x 360 mm containing dry or liquid food products</br>\nWhile identifying product contamination, the Dyxim-FB series can simultaneously perform in-line quality checks, including measuring mass, counting components </br>\nand identifying missing or damaged products</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/c/4/csm_PIC_Dyxim_FB_RGB_rightview_e7abd979d4.jpg'),
(79, 'Dymond', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-02', '<p>Hygienic design, following EHEDG principles featuring sloped surfaces and curved edges allowing easy inspection and cleaning</br>\nresulting in considerable time and cost savings. A wide range of standard possibilities for ensuring product integrity and quality including checking completeness</br>\ndetermining product mass and determining compartment mass. Covering belt widths from 200 mm up to 800 mm. 15" color touchscreen display</br>\nCombining high detection sensitivity with low power consumption</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/4/c/csm_PIC_Dymond_120_RGB_rightview_1ea89cef1d.jpg'),
(80, 'Dylight', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-02', '<p>Extremely compact design. Plug and Play: All functions in one unit. Takes up only one metre of space in your production line</br>\nComplete with separator and run-off container. Maximum product safety thanks to the highest degree of detection sensitivity</br>\nIntuitive, time-saving operation. Easy installation and integration into networks</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/e/6/csm_PIC_Dylight_RGB_leftview_84a9ad01f4.jpg'),
(81, 'Dyxim S', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-03', '<p>Outstanding detection performance while ensuring maximum line speeds. Powerful interfaces, including USB and Ethernet, allow an easy integration into data networks</br>\nIntegrated network compatibility, allowing remote access by technicians for quick error diagnosis and support. Intuitive operator control through an icon based user interface.</br>Products can easily be set up or adjusted by line operators without requiring special training or previous X-ray knowledge and without the involvement of an engineer</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/e/c/csm_bm0056d2-WH_d8703ee271.jpg'),
(82, 'Dyxim D', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-03', '<p>Outstanding detection performance while ensuring maximum line speeds. Powerful interfaces, including USB and Ethernet, allow an easy integration into data networks</br>\nIntegrated network compatibility, allowing remote access by technicians for quick error diagnosis and support. Intuitive operator control through an icon based user interface.</br>Products can easily be set up or adjusted by line operators without requiring special training or previous X-ray knowledge and without the involvement of an engineer</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/3/1/csm_PIC_Dyxim_D_RGB_rightview_26ac9da772.jpg'),
(83, 'Dymond S', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-03', '<p>Outstanding detection performance while ensuring maximum line speeds. Powerful interfaces, including USB and Ethernet, allow an easy integration into data networks</br>\nIntegrated network compatibility, allowing remote access by technicians for quick error diagnosis and support. Intuitive operator control through an icon based user interface.</br>Products can easily be set up or adjusted by line operators without requiring special training or previous X-ray knowledge and without the involvement of an engineer</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/a/e/csm_PIC_Dymond_S_RGB_34534164b9.jpg'),
(84, 'Dymond Bulk', NULL, 'MINEBEA INTEC', 'MNB-03', 'MNB-F-04', '<p>Maximum detection sensitivity for product and machine safety. Intuitive operation. High-performance interfaces for straightforward integration into networks</br>\nWorldwide service, including remote support</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/e/4/csm_dymond_bulk_3f3ac61699.jpg'),
(85, 'Flexus® Combi', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-01', '<p>Hygienic design for easy cleaning and the highest level of quality in your production operations. Safety and reliability thanks to EMFC load cell technology</br>\nEasy to combine with metal detection technology Vistus®. The ideal solution every time for your application configure Flexus® Combi</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/b/6/csm_PIC_Flexus_Combi_f9f79e86b3.png'),
(86, 'Cosynus', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-01', '<p>Weighing systems: 1.0 kg, 2.0 kg, 5.0 kg or 7.0 kg. Display scale divisions 0.1 g to 1g. 3 display and control units: 6.4" TFT, 10.4" TFT or 15" TFT with touch screen</br>\nMax. throughput 200pcs/min. Aperture width of the coils for metal detection: 225, 275 or 375 mm. Aperture height of the coil for metal detection: working height 110 max.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/8/csm_PIC_SYNUS_RGB_leftview_179068ea50.jpg'),
(87, 'EWK WS 30/60 kg', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-02', '<p>Weighing systems from 700 g to 60 kg. Standard deviation from 0.01 g and up. Max. throughput 600 items/min. Verifiable as legal for trade</br>\n2 display and control units: 10.4" TFT or 15" TFT with touch screen. Special versions and software available. Can be optionally combined with a metal detector<br>\nUSB Print option: Standard USB memory stick and standard web browsers for flexible data transfer without a network</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/3/csm_Checkweigher_EWK_30_60kg_for-web_44d850da56.jpg'),
(88, 'Checkweigher WM', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-02', '<p>Maximum weighing capacity: 120 kg. Very robust and durable construction. Wide variety of interface possibilities. Optionally available as a stainless steel version</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/1/1/csm_PIC_Checkweigher_WM_RGB_d86671b988.jpg'),
(89, 'Flexus® Highspeed', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-03', '<p>Hygienic design for easy cleaning and the highest level of quality in your production operations. Safety and reliability thanks to EMFC load cell technology</br>\nFor process speeds of up to 2.6 m/s. The ideal solution every time for your application configure Flexus®</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/9/d/csm_PIC_Flexus_RGB_leftview_49e9924502.jpg'),
(90, 'Flexus®', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-03', '<p>Hygienic design for easy cleaning and the highest level of quality in your production operations. Safety and reliability thanks to EMFC load cell technology</br>\nFor process speeds of up to 2.6 m/s. The ideal solution every time for your application configure Flexus®</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/9/d/csm_PIC_Flexus_RGB_leftview_49e9924502.jpg'),
(91, 'Checkweigher EWK CD VV', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-03', '<p>EMFC high-resolution weigh cell technology offering a high throughput combined with maximum accuracy. Optional Weight & Measures appproval</br>\nMaximum throughput of 600 pcs. per minute. Weighing capacity: up to 20 kg. Optionally available as all-stainless-steel version. Possibility for integrating</br>\na Vistus metal detector, even after initial installation. Weight: approx. 320 kg (depending on configuration)</p>\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/1/1/csm_EWK_3010_CD_VV_2c7188c8f7.jpg'),
(92, 'Checkweigher Synus', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-03', '<p>EMFC high-resolution weighcell technology offering a high throughput combined with maximum accuracy. Maximum throughput of 250 pcs. per minute</br>\nOptimized standard configurations for versatile applications. Possibility for integrating a Vistus® metal detector, even after initial installation</br>\nAdjustable conveyor height, allowing you to adapt the checkweigher to changing situations. Weight: approx. 250 kg (depending on configuration)</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/a/3/csm_PIC_Checkweigher_SYNUS_RGB_a69d4a003d.jpg'),
(93, 'Econus', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-03', '<p>Maximum throughput of 120 pcs. perminute. Integrated learn function allowing an easy and fast product change by line </br>\noperators without the involvement of an engineer. IP54 protection class, IP65 available as an option. Weight: approx. 120 kg (depending on configuration)</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/c/f/csm_PIC_Econus_RGB_970a85a7e3.jpg'),
(94, 'OEM Weighing Kit', NULL, 'MINEBEA INTEC', 'MNB-04', 'MNB-C-04', '<p>Easy integration into your own checkweigher solutions, systems and machines. Excellent price-performance ratio</br>\nPrecise measurement results and high process speed</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/e/csm_OEM_weighing_kit_Minebea_Intec_566ab62ef0.jpg'),
(95, 'Miras® Platform Scale', 'IND-01', 'MINEBEA INTEC', 'MNB-05', 'MNB-B-01', '<p>Easy-to-use indicator. Painted frame structure with stainless steel load plate d. Load ranges of between 6 kg and 300 kg</br>\nReadability from 0.5 g to 20 g. Three platforms sizes. Resolution up to 15,000 d</p>\n', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/b/csm_PIC_Miras_Platform_Scale_RGB_b5e89cfb53.jpg'),
(97, 'Industrial Scales Signum®', 'IND-01', 'MINEBEA INTEC', 'MNB-05', 'MNB-B-01', '<p>Three easy-to-use indicators with varying usage levels. IP43 or IP65 protection classes. Load ranges of between 0.6 kg and 65 kg</br>\nReadability from 0.001 g to 10 g. Platforms in various designs and sizes. Verification mode and explosion-proof solutions. A wide range of interfaces</br>\nAn extensive range of accessories, options and add-ons</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/1/csm_PIC_Industrial_Scales_Signum_RGB_f1cf93e697.jpg'),
(98, 'Industrial Scales Midrics®', 'IND-01', 'MINEBEA INTEC', 'MNB-05', 'MNB-B-01', '<p>Two easy-to-use indicators. IP65 or IP67/IP68 protection classes. A variety of finishes. Load ranges of between 3 kg and 3 t</br>\nReadability from 0.2 g to 200 g. Platforms in various designs and sizes. Verification mode. A range of resolutions from 3,000 d to 15,000 d</br>\nA wide range of interfaces. An extensive range of accessories, options and add-ons</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/b/a/csm_PIC_Industrial_Scales_Midrics_RGB_rightview_dd70b02157.jpg'),
(99, 'Industrial Scales Combics', 'IND-01', 'MINEBEA INTEC', 'MNB-05', 'MNB-B-01', '<p>Three easy-to-use indicators for various requirements. A variety of finishes, e.g. stainless steel. Load ranges of between 3 kg and 3 t</br>\nReadability from 0.05 g to 200 g. Platforms in various designs and sizes. A range of resolutions from 3,000 d to 340,000 d</br>\nVerification mode and explosion-proof solutions. An extensive range of accessories, options and add-ons</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/4/csm_PIC_Industrial-Scales-Combics_RGB_1d44686c93.jpg'),
(100, 'WK weighing module', 'IND-01', 'MINEBEA INTEC', 'MNB-05', 'MNB-B-01', '<p>Weighing module with feed belts for static weighing and controlling. for a maximum product weight of 7 kg. up to 30 products/minute</br>\nBelt size 300 × 250 mm. Determination of weight values and output (RS-232), sorting, 25 product memories, relay outputs. options: units-counter; serial-error detection</br>', 'http://assets.minebea-intec.com/fileadmin/_processed_/1/c/csm_WK_97652846e5.jpg'),
(101, 'Weighing platforms Combics', 'IND-01', 'MINEBEA INTEC', 'MNB-05', 'MNB-B-02', '<p>10 weighing capacities ranging from 3 kg to 3 t. 13 platform sizes. The base frame is made of AISI 304 or AISI 316 Ti stainless steel, electropolished</br>\nLoad plate alternately available in a choice of AISI 304 stainless steel with a tread plate patterned finish. IP67 protection rating</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/c/d/csm_wi0391d1-WH_c2d9bd661c.jpg'),
(102, 'Weighing Platforms Midrics®', 'IND-01', 'MINEBEA INTEC', 'MNB-05', 'MNB-B-02', '<p>Painted versions have an IP65 protection rating and are therefore suited for industrial use. Stainless steel versions have IP67|IP68 protection</br>\nratings and are therefore suited for industrial use in wet environments (stainless steel 1.4301/AISI 304). 10 weighing capacities ranging from 3 kg to 3 t</br>\n4 x adjustable feet, level indicator on LCE and NCE. 13 platform sizes</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/6/csm_wi0649d1-WH_51f67bb6a3.jpg'),
(103, 'Floor Scales IF', 'IND-01', 'MINEBEA INTEC', 'MNB-05', 'MNB-B-02', '<p>Custom specifications available on request. A variety of finishes, e.g. stainless steel. Verification mode and explosion-proof solutions</br>\nIP65, IP68 or IP69 protection classes. Resolution up to 30,000 d and up to 2 x 3,000 e in situations where verification is required. </br>\nLoad ranges of between 150 kg and 3,000 kg. Platforms in various designs and sizes</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/4/7/csm_PIC_IF_Platform_Scale_RGB_leftview_200a4392e7.jpg'),
(104, 'Pallet Scales IU', 'IND-01', 'MINEBEA INTEC', 'MNB-05', 'MNB-B-03', '<p>A variety of finishes, e.g. stainless steel. Explosion-proof solutions. IP65 or IP68 protection classes. Resolution from 15,000 d to 30,000 d, 1 x 3,000 e and 2 x 3,000 e. Load ranges of between 300 kg and 3,000 kg. Sheet inserts and additional stands available on request. Custom specifications available on request</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/2/e/csm_wi0063d1-WH_01ebb849ef.jpg'),
(105, 'Compact Compression Load Cell PR 6212', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Compact design ensuring a low system height. Maximum corrosion resistance. High-temperature version available for up to 180C. Load cell capacity range from 500 kg to 10 t.\nCorresponding mounting kit: PR 6012. Accuracy class: 0.04 %</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/3/csm_PR_6212_load_cell_Minebea_Intec_764f9141af.jpg'),
(106, 'Compact Compression Load Cell PR 6211', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Compact design ensuring a low system height. Load cell capacity range from 30 kg to 300 kg. Accuracy class: 0.05 %. Extreme wide temperature range. Corresponding mounting kits</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/9/d/csm_wi0776d1-WH_e153efcdde.jpg'),
(122, 'Pallet Scales IU', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-02', '<p>A variety of finishes, e.g. stainless steel. Explosion-proof solutions. IP65 or IP68 protection classes. Resolution from 15,000 d to 30,000 d, 1 x 3,000 e and 2 x 3,000 e. Load ranges of between 300 kg and 3,000 kg. Sheet inserts and additional stands available on request. Custom specifications available on request</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/2/e/csm_wi0063d1-WH_01ebb849ef.jpg'),
(107, 'Compression Load Cell PR 6202', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Proven rocker-pin principle. Easy corner adjustment by matched load cell output. Full stainless steel construction. Wide temperature range. High overload capacity. Resistant against vibrations. Hermetically sealed, IP68 (depth of 1.5 m for 10,000 hrs.), IP69K. W&M approval (acc. OIML R 60)</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/0/8/csm_PIC_Compression_load_cell_RGB_fcf6fe6b29.jpg'),
(108, 'Compression S-Type Load Cell PR 6241', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Ultra-high precision load cell for batching applications. Load cell capacity range from 100 kg to 5 t. Accuracy class: 0.04 % - 0.008 %. Corresponding mounting kits</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/4/csm_wi0774d1-WH_b45149e9b6.jpg'),
(109, 'PanCake Level Sensor PR 6251', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Ultra-flat load cell for low precision tank weighing as alternative to level sensors. Load cell capacity range from 500 kg to 16 t. Corresponding mounting kit: PR 6051. Accuracy class: L (0.5 %)</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/7/csm_gw0074d1-WH_ffeafb3b8e.jpg'),
(110, 'Tension Load Cell S-Type PR 6246', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Ultra-high precision load cell for batching applications. Load cell capacity range from 100 kg to 3 t. Corresponding mounting kit: PR 6046. Accuracy class: 0.04 % - 0.008 %</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/4/csm_wi0774d1-WH_b45149e9b6.jpg'),
(111, 'Bending Beam Weigh Cell MP 77', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Stainless steel bending beam. Load cell capacity range from 10 kg to 500 kg. Accuracy class: 0.02 %. Corresponding mounting kit: MP 97</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/3/d/csm_gw0078d1-WH_e68afaa32e.jpg'),
(121, 'Floor Scales IF', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-02', '<p>Custom specifications available on request. A variety of finishes, e.g. stainless steel. Verification mode and explosion-proof solutions. IP65, IP68 or IP69 protection classes. Resolution up to 30,000 d and up to 2 x 3,000 e in situations where verification is required. Load ranges of between 150 kg and 3,000 kg. Platforms in various designs and sizes</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/4/7/csm_PIC_IF_Platform_Scale_RGB_leftview_200a4392e7.jpg'),
(112, 'Shear Beam Load Cell MP 58, 58 T', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>For economic vessel weighing solutions</p>\n<p>Load cell capacity range from 91 kg to 2.268 t</p>\n<p>Accuracy class: 0.02 %</p>\n<p>Corresponding mounting kits</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/1/1/csm_gw0081d1-WH_0c34ed50ac.jpg'),
(113, 'Bending Beam Load Cell MP79 / MP79T', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>For economic vessel weighing solutions. Hermetically welded IP68/IP69. Load cell capacity range from 227 kg to 5.099 t. Corresponding mounting kits. Accuracy class: 0.02 %</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/d/3/csm_gw0082d1-WH_1210387482.jpg'),
(114, 'Truck Scale Load Cell PR 6221', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Easy installation and commissioning. High overload capacity. Precise measurement results from 12.5 t to 75 t. Patented measuring element geometry. Maximum IP protection (IP68 and IP69) Also available as an Ex version. Excellent surge protection (lightning protection class III). Hermetically sealed casing</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/b/csm_gw0054d1-WH_48a41e2a3e.jpg'),
(115, 'MP 72', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Aluminium alloy construction. Compatible with other sources. Platform size up to 600 mm x 600 mm. Approved according to OIML R60</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/6/csm_wi0778d1-WH_dc74561ba6.jpg'),
(120, 'Industrial Scales Combics', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-02', '<p>Three easy-to-use indicators for various requirements. A variety of finishes, e.g. stainless steel. Load ranges of between 3 kg and 3 t. Readability from 0.05 g to 200 g. Platforms in various designs and sizes. A range of resolutions from 3,000 d to 340,000 d. Verification mode and explosion-proof solutions. An extensive range of accessories, options and add-ons</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/4/csm_PIC_Industrial-Scales-Combics_RGB_1d44686c93.jpg'),
(116, 'Platform Load Cell MP 55', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Full stainless steel construction. Hermetically welded seal (IP68, IP69K). Platform size up to 600 mm x 600 mm. Approved to OIML R60. Ex-Version available (MP55/...E) High Input Impedance. Integrated Mounting spacer</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/9/2/csm_gw0084d1-WH_6f32e47989.jpg');
INSERT INTO `p_new_products` (`PROD_ID`, `NAME`, `PRODUCT_ID`, `BRAND_CATEGORY`, `BRAND_ID`, `BRAND_SUBCATEGORY`, `SUMMARY`, `IMAGES`) VALUES
(117, 'Precision Compression Load Cell PR 6201', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-01', '<p>Proven rocker pin principle for best compensation of expansion and shear forces. Load cell capacity range from 500 kg to 520 t. Corresponding mounting kits (certified according to EN 1090). Accuracy class: 0.25 % - 0.008 %</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/b/2/csm_gw0036d1-WH_01_40e9f99a7d.jpg'),
(119, 'Industrial Scales Signum®', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-02', '<p>Three easy-to-use indicators with varying usage levels. IP43 or IP65 protection classes. Load ranges of between 0.6 kg and 65 kg. Readability from 0.001 g to 10 g. Platforms in various designs and sizes. Verification mode and explosion-proof solutions. A wide range of interfaces. An extensive range of accessories, options and add-ons</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/1/csm_PIC_Industrial_Scales_Signum_RGB_f1cf93e697.jpg'),
(123, 'Weight Controller Maxxis 5', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-03', '<p>Connection of up to four scales. 5.7" large colour display with multilingual interface and integrated help function for intuitive operation. Multiple interface possibilities: Ethernet TCP/IP, Modbus TCP, Profibus DP, DeviceNet, Profinet, Ethernet/IP and USB. Equipped with an internal web server, the Maxxis 5 can be configured and controlled via any standard web browser. Automatic backup function saving data to SD cards for full transparency and traceability</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/9/csm_Maxxis5_weighing_controller_web_40ca3ea6d9.jpg'),
(124, 'Combics CAIXS2-Ex', 'IND-05', 'MINEBEA INTEC', 'MNB-06', 'MNB-H-03', '<p>For use in explosive areas (certificates: IECEx | ATEX Zone 1 | 2 | 21 | 22 and FM Class I, II, III Div. 1). LCD display, 20mm, 14 segments, 7 digit weight value with status information, back lit. Scale connection for analogue Ex platforms, as e. g. Combics Ex, IU EX, IF EX or Ex load cells. Optional also digital IS Scales (xBPI). Housing in stainless steel, IP69K. Internal alibi memory. Serial interface RS232 | 485 | 422. Div. power supplies available, also battery pack. Fieldbus Profibus DP and 4 ... 20 mA interface</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/a/9/csm_Combics2_Ex_web_ee8cf42390.jpg'),
(125, 'StatisticalProcessControl@Enterprise', NULL, 'MINEBEA INTEC', 'MNB-07', 'MNB-P-01', '<p>Efficient networking of a diverse range of devices and systems from Minebea Intec and other vendors. Fast process control due to powerful monitoring program. Simple data backup will return a lower risk of data loss. Easily generate production or calibration statistics</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/1/a/csm_Software-Minebea-Intec-SPC_at_Enterprise_f708fabbc6.jpg'),
(127, 'Winscale', NULL, 'MINEBEA INTEC', 'MNB-07', 'MNB-P-03', '<p>Easy to connect over RS-232 to a standard PC Graphic and spreadsheet evaluations of weight values (in Excel). Also possible for user-oriented display and processing on a PC or server Connect a network of up to 31 workstations over RS-485 and xBPi to a PC Connection to process logic controller through DDE System</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/5/e/csm_wz0054d2_c5fd53dbc0.jpg'),
(126, 'ProRecipe XT', NULL, 'MINEBEA INTEC', 'MNB-07', 'MNB-P-02', '<p>Intuitive monitoring and management of recipe processes. Flexible integration into production systems. Guaranteed traceable product quality. Meets the validation requirements of the pharma industry</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/9/d/csm_ProRecipeXT_web_e51828e8c8.jpg'),
(128, 'OPC Server', NULL, 'MINEBEA INTEC', 'MNB-07', 'MNB-P-03', '<p>OPC driver for all Minebea Intec laboratory balances and industrial scales that support the xBPI set of commands. Easy use in nearly all of today?s commonly used application development packages. OPC (OLE for Process Control) is the standard laboratory and process equipment interface. Connection through RS-232/RS-485 P2P or tunneled via Ethernet to a standard PC. Suitable for running Windows 2000/XP®. Is supplied with sample applications for simple conformance testing </br>prior to use in your own application</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/2/d/csm_csm_OPC-Configuration_3391c31cb0_4b28dba5ff.jpg'),
(129, 'WH7628A Cattle Scales', ' ', 'GCC', 'GCC-01', '', '<p>Special fences and gates. Chequered plate cover to protect animal from slip during weighing. Load cell: 4 alloy steel load cell is equipped. Indicator with special hold function, to lock the weight when the animal is in motion. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7628A.png'),
(130, 'WH7628B Pet Scales', ' ', 'GCC', 'GCC-01', '', '<p>Portable for multitude of weighing : dogs, nursery pigs, alpacas, sheep, etc. Frame material: Mild steel. Cover material: stainless steel. Load cell: 4 aluminum single point load cells. Indicator with special hold function, to lock the weight when the pet is in motion. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7628B.png'),
(131, 'WH7655 Crane Scales', ' ', 'GCC', 'GCC-04', '', '<p>Plastic enclosure. Alloy steel shackle. Mini Portable Design</p>', 'http://winiharto.com/assets/products/gcc/WH7655.png'),
(132, 'WH7660 Axle Scales', ' ', 'GCC', 'GCC-02', '', '<p>Aluminum alloy stable hand box in luxury outlook. High-definition LCD backlit dot matrix display. With High speed Micro-Dot-Matrix Printer. Standby working 50 hours battery with auto switch off function. The function to discriminate overload automatically. It could store the inspection records for over than 1400. It can connecet with 1/2/3/4 pads. Axle mode and percentage mode. Joint-axis compensation, speed compensation function in dynamic mode for option</p>', 'http://winiharto.com/assets/products/gcc/WH7660.png'),
(133, 'WH7610 Stamping Bench Scales', ' ', 'GCC', 'GCC-03', '', '<p>Aluminum or Stainless steel single point load cell. Frame: Stainless steel or Mild steel. Cover: Stainless steel. Rectangular pole or 38mm diameter round pole. Indicator function: total, tare, zero, hold, etc. Resolution: n=3000 Option: n=6000,10000,15000</p>', 'http://winiharto.com/assets/products/gcc/WH7610.png'),
(134, 'WH7610W Washdown Bench Scales (IP67)', ' ', 'GCC', 'GCC-03', '', '<p>Stainless steel IP 68 load cell. Stainless steel IP67 indicator. Stainless steel frame and cover. Wide rectangular stainless steel Pole with 5th leveling legs. Indicator function: total ,tare, zero, hold, print, etc. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7610W.png'),
(135, 'WH7611 Heavy Duty Bench Scales', ' ', 'GCC', 'GCC-03', '', '<p>Aluminum or Stainless steel single point load cell. Frame: Stainless steel or Mild steel. Cover: Stainless steel. Rectangular pole or 38mm diameter round pole. Indicator function: total, tare, zero, hold, etc. Resolution: n=3000 Option: n=6000,10000,15000</p>', 'http://winiharto.com/assets/products/gcc/WH7611.png'),
(136, 'WH7611J Bench Scales', ' ', 'GCC', 'GCC-03', '', '<p>Aluminum single point load cell. WH7516 Plastic housing indicator. Stainless steel cover with Mild steel frame. Rectangular or 38mm diameter round pole. Indicator function: total, tare, zero, hold, etc. Resolution: n=3000 Option: n=6000,10000,15000</p>', 'http://winiharto.com/assets/products/gcc/WH7611J.png'),
(137, 'WH7613 Shipping Scale', ' ', 'GCC', 'GCC-04', '', '<p>Class: III. Display: 20mm LCD with backlight. Work temp: -10 C ~+40 C. Power: AC 110~220V 50~60Hz. Or AA LR6 battery 3pcs. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7613.png'),
(138, 'WH7650 Heavy Duty Crane Scale', ' ', 'GCC', 'GCC-04', '', '<p>Die-casting aluminum enclosure, sand-blasting and powered coated. Anti-corrosion sealing design, moisture proof. Alloy steel shackle to protect from overload. High capacity rechargeable battery. Water-proof keypads. Infrared remote control. Capacity: 1000/2000/3000/5000/10000kg</p>', 'http://winiharto.com/assets/products/gcc/WH7650.png'),
(139, 'WH7651 Crane Scale ', ' ', 'GCC', 'GCC-04', '', '<p>Die-casting aluminum enclosure, sand-blasting and powered coated. Anti-corrosion sealing design, moisture proof. Alloy steel shackle to protect from overload. High capacity rechargeable battery. Water-proof keypads. Infrared remote control. Capacity: 100/200/300/500/1000/2000kg</p>', 'http://winiharto.com/assets/products/gcc/WH7651.png'),
(140, 'WH7652 Mini Crane Scale ', ' ', 'GCC', 'GCC-04', '', '<p>Die-casting aluminum enclosure, sand-blasting and powered coated anti-corrosion. Stainless steel shackle. Mini Portable Design. </p>\n', 'http://winiharto.com/assets/products/gcc/WH7652.png'),
(141, 'WH7620 Floor Scale', ' ', 'GCC', 'GCC-05', '', '<p>Rugged NTEP approved industrial construction for heavy duty weighing. Safety chequered plate to protect from slipping on the scales. Powder coated finish. 4 load cells are installed and calibrated before shipment. Adjustable swivel leveling legs. Overload protection. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7620.png'),
(142, 'WH7621 Floor Scale', ' ', 'GCC', 'GCC-05', '', '<p>Floor scales: with bottom frame based on WH7620, which is for underground. Installation and more stable for strong impact. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7621.png'),
(143, 'WH7621 With Frame Floor Scales', ' ', 'GCC', 'GCC-05', '', '<p>Floor scales: with bottom frame based on WH7620, which is for underground. Installation and more stable for strong impact. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7621.png'),
(144, 'WH7622A Low Profile Floor Scales', ' ', 'GCC', 'GCC-05', '', '<p>Low profile 35~45mm height. Integral side and end guards protect the load cells from accidental side-impact damage. Ramps are available for lifting the load onto and off scales easily. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7622A.png'),
(145, 'WH7622B Portable Scales', ' ', 'GCC', 'GCC-05', '', '<p>Chequered plate cover to protect animal from slip during weighing. Integral side and end guards protect the load cells from accidental side-impact damage. Integral ramps. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7622B.png'),
(146, 'WH7622M Portable Scales (Run-A-Weigh Scales)', ' ', 'GCC', 'GCC-05', '', '<p>Integral side and end guards protect the load cells from accidental side-impact damage. Built-in wheels equipped with handles easily for moving. Integral ramps. Indicator with special hold function, to lock the weight when the animal is in motion. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7622M.png'),
(147, 'WH7624 U Beam Floor Scales Capacity A B', ' ', 'GCC', 'GCC-06', '', '<p>85mm low profile height, convenient for weighing goods on pallet. Material: Mild steel or stainless steel. Handle for lifting easily. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7624.png'),
(148, 'WH7630 Weighing Beam Scales', ' ', 'GCC', 'GCC-06', '', '<p>85mm low profile height, convenient for weighing goods on pallet. Material: Mild steel or stainless steel. Wheels is equipped for moving easily. Handles for lifting easily. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7630.png'),
(149, 'WH7625A Pallet Truck Scales', ' ', 'GCC', 'GCC-07', '', '<p>With Oil pressure-actuated lifting device. Wheels: Nylon or Polyurethane or steel. 4 Load cells are installed and calibrated before shipment. Indicator function: total, gross, net ,tare, zero, hold , etc. Saves Time And Space. For Checking Incoming Goods, Determining Shipping Weights, Avoding Overloads. Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7625A.png'),
(150, 'WH7625B Pallet Truck Scales', ' ', 'GCC', 'GCC-07', '', '<p>Automatic swith-off after setting time of non-use. Low battery indicator in display. Raise Efficiency And Simplifies Logistic. Saves Time And Space. For Checking Incoming Goods, Determining Shipping Weights, Avoding Overloads. Low Power Consumption; Resolution: n=3000</p>', 'http://winiharto.com/assets/products/gcc/WH7625B.png'),
(151, 'Weight Bridge', ' ', 'GCC', 'GCC-08', '', '<p>Distinct U-type beam or H Beam steel bridge construction. Modularized, standardized, muitiple. The height of platform is: 6m~24m. The width of platform is: 3m 3.2m 3.4m.Weighing capacity: 30t 50t 60t 80t 100t 120t 150t 200t. Chequered plate steel or Flat plate steel top. No need turn around the scales upside and down. OEM or Customs design is acceptable.</p>', 'https://www.sartorius.com/shop/_ui/responsive/theme-sartorius/images/missing_product_EN_300x300.jpg'),
(152, 'WH7510 High Precision Weighing Indicator', ' ', 'GCC', 'GCC-09', '', '<p>NTEP & OIML Approval. Stainless steel or mild steel Enclosure. 6 digits 0.8" LED or LCD display with backlight. Key (OIML): ON/OFF Hold Total Count Gross Tare Zero Print. Key (NTEP): ON/OFF Total Count Kg/lb Gross Tare Zero Print. Drives up to four 350? load cells. Automatic Power off. Low-battery remind. Display up to 30,000d. RS232 port</p>', 'http://winiharto.com/assets/products/gcc/WH7510.png'),
(153, 'WH7512 Weighing Indicator', ' ', 'GCC', 'GCC-09', '', '<p>6 digits 0.8" LED or LCD display with backlight. Stainless steel or mild steel Enclosure. Key: On/off Total Tare Zero Set. Drives up to four 350? load cells. Automatic Power off.Low-battery remind</p>', 'http://winiharto.com/assets/products/gcc/WH7512.png'),
(154, 'WH7515 Weighing Indicator', ' ', 'GCC', 'GCC-09', '', '<p>6 digits 20mm LED/LCD display with backlight. S.S Enclosure. Key: On/off Hold Zero Unit. Drives up to four 350? load cells. Automatic Power off. Low-battery remind</p>', 'http://winiharto.com/assets/products/gcc/WH7515.png'),
(155, 'WH7516 Plastic Housing Weighing Indicator', ' ', 'GCC', 'GCC-09', '', '<p>6 digits 0.8" LED/LCD display with backlight. ABS Enclosure, equipped with desktop bracket. Key: Total Hold Tare Zero Set Or Total Unit Tare Zero Set. Drives up to four 350? load cells. Automatic Power off. Low-battery remind</p>', 'http://winiharto.com/assets/products/gcc/WH7516.png'),
(156, 'WH7519A Wireless Weighing System', ' ', 'GCC', 'GCC-09', '', '<p>Unit: mm. Power: Built-in 4.8v 2000mA Ni-mh battery. Wireless communication: Frequency 2.4G Hz. Distance: 50meter. Drive: 350? load cell X4pcs</p>', 'http://winiharto.com/assets/products/gcc/WH7519A.png'),
(157, 'WH7519B Wireless Weighing System', ' ', 'GCC', 'GCC-09', '', '<p>Unit: mm. Simulation voltage: 5VDC ( power by indicator). Wireless communication: Frequency 2.4G Hz. Distance: 50meter</p>', 'http://winiharto.com/assets/products/gcc/WH7519B.png'),
(158, 'WH7552 Big Display Weighing Indicator', ' ', 'GCC', 'GCC-09', '', '<p>6 digits 50mm Word Height LCD display with backlight. ABS Enclosure, equipped with desktop bracket. Key: On/off Total Hold Tare Zero Set. Drives up to four 350? load cells. Automatic Power off. Low-battery remind</p>', 'http://winiharto.com/assets/products/gcc/WH7552.png'),
(159, 'Forceps With Carbon Tips, Size Extra Large', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW38</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW36.jpeg'),
(160, 'Glass Shade With Support', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW03</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW06.jpeg'),
(161, 'Forceps with Silicone Covered Tips 160mm', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW32</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW33.jpeg'),
(162, 'Plastic Screw Box for 2 kg Weights', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW2000GL</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW20GL.jpeg'),
(163, 'Brush, Size Extra-Large 250 mm', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW14</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW13.jpeg'),
(164, 'Brush, Size Small 100 mm', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW11</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW13.jpeg'),
(165, '2 Gloves, leather', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW22</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW22.jpeg'),
(166, 'Forceps with Carbon Tips, Size Medium, 1', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW36</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW36.jpeg'),
(167, 'Inset 500 g for Weight Fork Fo(u)rk', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW72</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW73.jpeg'),
(168, 'Forceps with Carbon Tips, Size Small, 105', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW35</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW36.jpeg'),
(169, 'Plastic Screw Box for 500 g Weights', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW500GL</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW20GL.jpeg'),
(170, 'Weight Handle for 10 kg', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW51</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW52.jpeg'),
(171, 'Weight Handle for 50 kg', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW53</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW52.jpeg'),
(172, 'Weight Handle for 1000g', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW42</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW52.jpeg'),
(173, 'Weight Fork Fo(u)rk 1 kg and 5 kg', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-01', '<p>Order Number: YAW71</br>To prevent any damage to the surface of weights, Sartorius offers you a wide range of accessories for the proper handling, storage and cleaning of weights.</p>', 'http://winiharto.com/assets/products/sartorius/YAW41.jpeg'),
(174, 'Calibration Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-02', '<p>Order Number: YCW4128-00</br>Cylindrical Weights from 1g to 10 kg, material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case</p>', 'http://winiharto.com/assets/products/sartorius/YCW3528.jpeg'),
(175, 'Calibration Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-02', '<p>Order Number: YCW3238-00</br>Cylindrical Weights from 1g to 10 kg, material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case</p>', 'http://winiharto.com/assets/products/sartorius/YCW3528.jpeg'),
(176, 'Calibration Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-02', '<p>Order Number: YCW5248-00</br>Cylindrical Weights from 1g to 10 kg, material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case</p>', 'http://winiharto.com/assets/products/sartorius/YCW3528.jpeg'),
(177, 'Calibration Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-02', '<p>Order Number: YCW7138-00</br>Cylindrical Weights from 1g to 10 kg, material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case</p>\n\n', 'http://winiharto.com/assets/products/sartorius/YCW3528.jpeg'),
(178, 'Calibration Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-02', '<p>Order Number: YCW5148-00</br>Cylindrical Weights from 1g to 10 kg, material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case</p>', 'http://winiharto.com/assets/products/sartorius/YCW3528.jpeg'),
(179, 'Calibration Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-02', '<p>Order Number: YCW5128-00</br>Cylindrical Weights from 1g to 10 kg, material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case</p>', 'http://winiharto.com/assets/products/sartorius/YCW3528.jpeg'),
(180, 'Calibration Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-02', '<p>Order Number: YCW6248-00</br>Cylindrical Weights from 1g to 10 kg, material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case</p>', 'http://winiharto.com/assets/products/sartorius/YCW3528.jpeg'),
(181, 'Calibration Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-02', '<p>Order Number: YCW3538-00</br>Cylindrical Weights from 1g to 10 kg, material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case</p>', 'http://winiharto.com/assets/products/sartorius/YCW3528.jpeg'),
(182, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW721-02</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(183, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW711-02</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(184, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW312-00</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(185, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW622-00</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(186, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW411-02</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(187, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW451-02</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(188, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW453-00</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(189, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW353-00</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(190, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW522-AC-02</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(191, 'Knob Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-03', '<p>Order Number: YCW552-02</br>InDIVidual E1 weights from 1g to 50 kg. Material: special steel, highly polished, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, up to 20 g in plastic case, from 50 g in wooden case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW521.jpeg'),
(192, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-04', '<p>Order Number: YCW053-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(193, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-04', '<p>Order Number: YCW153-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(194, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-04', '<p>Order Number: YCW253-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(195, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-04', '<p>Order Number: YCW013-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(196, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-04', '<p>Order Number: YCW123-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(197, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-04', '<p>Order Number: YCW223-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(198, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-04', '<p>Order Number: YCW213-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(199, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-04', '<p>Order Number: YCW023-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(200, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-04', '<p>Order Number: YCW113-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(201, 'Weight Set', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-05', '<p>Order Number: YCS31-654-00</br>F2 weight sets from 1mg - 10kg. Up to 500mg as leaf weights, material: aluminium, density 2.7g/cm3; leaf weights 1- 5, nickel silver, density 8.7g/cm3; leaf weights 10-500mg, special steel, non-magnetizable, density 8.0g/cm3, highly corrosion-resistant, knob weights highly polished, in wooden case</p>', 'http://winiharto.com/assets/products/sartorius/YCS011.jpeg'),
(202, 'Weight Set', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-05', '<p>Order Number: YCS31-611-02</br>F2 weight sets from 1mg - 10kg. Up to 500mg as leaf weights, material: aluminium, density 2.7g/cm3; leaf weights 1- 5, nickel silver, density 8.7g/cm3; leaf weights 10-500mg, special steel, non-magnetizable, density 8.0g/cm3, highly corrosion-resistant, knob weights highly polished, in wooden case</p>', 'http://winiharto.com/assets/products/sartorius/YCS011.jpeg'),
(203, 'Weight Set', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-05', '<p>Order Number: YCS011-651-02</br>F2 weight sets from 1mg - 10kg. Up to 500mg as leaf weights, material: aluminium, density 2.7g/cm3; leaf weights 1- 5, nickel silver, density 8.7g/cm3; leaf weights 10-500mg, special steel, non-magnetizable, density 8.0g/cm3, highly corrosion-resistant, knob weights highly polished, in wooden case</p>', 'http://winiharto.com/assets/products/sartorius/YCS011.jpeg'),
(204, 'Weight Set', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-05', '<p>Order Number: YCS01-523-00</br>F2 weight sets from 1mg - 10kg. Up to 500mg as leaf weights, material: aluminium, density 2.7g/cm3; leaf weights 1- 5, nickel silver, density 8.7g/cm3; leaf weights 10-500mg, special steel, non-magnetizable, density 8.0g/cm3, highly corrosion-resistant, knob weights highly polished, in wooden case</p>', 'http://winiharto.com/assets/products/sartorius/YCS011.jpeg'),
(205, 'Weight Set', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-05', '<p>Order Number: YCS011-512-00</br>F2 weight sets from 1mg - 10kg. Up to 500mg as leaf weights, material: aluminium, density 2.7g/cm3; leaf weights 1- 5, nickel silver, density 8.7g/cm3; leaf weights 10-500mg, special steel, non-magnetizable, density 8.0g/cm3, highly corrosion-resistant, knob weights highly polished, in wooden case</p>', 'http://winiharto.com/assets/products/sartorius/YCS011.jpeg'),
(206, 'Weight Set', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-05', '<p>Order Number: YCS011-521-02</br>F2 weight sets from 1mg - 10kg. Up to 500mg as leaf weights, material: aluminium, density 2.7g/cm3; leaf weights 1- 5, nickel silver, density 8.7g/cm3; leaf weights 10-500mg, special steel, non-magnetizable, density 8.0g/cm3, highly corrosion-resistant, knob weights highly polished, in wooden case</p>', 'http://winiharto.com/assets/products/sartorius/YCS011.jpeg'),
(207, 'Weight Set', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-05', '<p>Order Number: YCS01-613-00</br>F2 weight sets from 1mg - 10kg. Up to 500mg as leaf weights, material: aluminium, density 2.7g/cm3; leaf weights 1- 5, nickel silver, density 8.7g/cm3; leaf weights 10-500mg, special steel, non-magnetizable, density 8.0g/cm3, highly corrosion-resistant, knob weights highly polished, in wooden case</p>', 'http://winiharto.com/assets/products/sartorius/YCS011.jpeg'),
(208, 'Weight Set', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-05', '<p>Order Number: YCS01-513-00</br>F2 weight sets from 1mg - 10kg. Up to 500mg as leaf weights, material: aluminium, density 2.7g/cm3; leaf weights 1- 5, nickel silver, density 8.7g/cm3; leaf weights 10-500mg, special steel, non-magnetizable, density 8.0g/cm3, highly corrosion-resistant, knob weights highly polished, in wooden case</p>', 'http://winiharto.com/assets/products/sartorius/YCS011.jpeg'),
(209, 'Weight Set', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-05', '<p>Order Number: YCS31-614-00</br>F2 weight sets from 1mg - 10kg. Up to 500mg as leaf weights, material: aluminium, density 2.7g/cm3; leaf weights 1- 5, nickel silver, density 8.7g/cm3; leaf weights 10-500mg, special steel, non-magnetizable, density 8.0g/cm3, highly corrosion-resistant, knob weights highly polished, in wooden case</p>', 'http://winiharto.com/assets/products/sartorius/YCS011.jpeg'),
(210, 'Wire Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-06', '<p>Order Number: YCW0121-00</br>InDIVidual E1 class weights from 1mg to 500 mg. Material: special steel, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW0511.jpeg'),
(211, 'Wire Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-06', '<p>Order Number: YCW0221-00</br>InDIVidual E1 class weights from 1mg to 500 mg. Material: special steel, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW0511.jpeg'),
(212, 'Wire Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-06', '<p>Order Number: YCW1211-02</br>InDIVidual E1 class weights from 1mg to 500 mg. Material: special steel, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW0511.jpeg'),
(213, 'Wire Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-06', '<p>Order Number: YCW2211-02</br>InDIVidual E1 class weights from 1mg to 500 mg. Material: special steel, non-magnetizable, density 8.0 g/cm3, highly corrosion-resistant, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW0511.jpeg'),
(214, 'Leaf Weight', 'BAL-06', 'SARTORIUS', 'SRS-06', 'SRS-W-06', '<p>Order Number: YCW053-00</br>InDIVidual F1 weights from 1mg to 500 mg. Material: aluminum, density 2.7 g/cm3; leaf weights 1- 5 mg, nickel silver, density 8.7 g/cm3; leaf weights 10 - 500 mg, in plastic case.</p>', 'http://winiharto.com/assets/products/sartorius/YCW113.jpeg'),
(215, 'Automatic Mass Comparator with Load Alternator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-02', '<p>Order Number: CCE20000S-L</br>For automatic mass determination from 10 to 20 kg</p>', 'http://winiharto.com/assets/products/sartorius/CCE20000S.jpeg'),
(216, 'Automatic Mass Comparator with Load Alternator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-02', '<p>Order Number: CCE10000U-L</br>For automatic mass determination from 10 to 20 kg</p>', 'http://winiharto.com/assets/products/sartorius/CCE10000U.jpeg'),
(217, 'Automatic Mass Comparator with Load Alternator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-02', '<p>Order Number: CCE10000S-L</br>For automatic mass determination from 10 to 20 kg</p>', 'http://winiharto.com/assets/products/sartorius/CCE10000S-10.jpeg'),
(218, 'Automatic Mass Comparator with Load Alternator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-02', '<p>Order Number: CCE50001S-L</br>For automatic mass determination up to 50 kg</p>', 'http://winiharto.com/assets/products/sartorius/CCE50001S.jpeg'),
(219, 'Automatic Mass Comparator with Load Alternator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-02', '<p>Order Number: CCE1000S-L</br>For automatic mass determination up to 1 kg</p>', 'http://winiharto.com/assets/products/sartorius/CCE1000S.jpeg'),
(220, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM40K3</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(221, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM60K3</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(222, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM60K2</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(223, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM1004</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(224, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM6.7</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(225, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM106</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(226, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM1005</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(227, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM605</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(228, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM66</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(229, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM36</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(230, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM10K3</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(231, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM2004</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(232, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM5003</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(233, 'Cubis® Manual Mass Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-03', '<p>Order Number: MCM5004</br>Manual Cubis® MCM mass comparators combine metrological expertise and integrated OIML R 111-1 workflows. A choice of 14 models is available with maximum capacities of 6 g to 64 kg and readabilities of 0.1 mg to 10 mg. Models with a draft shield are supplied standard with a built-in climate module equipped with sensors for temperature, humidity and air pressure (external climate module for models without a draft shield). All results are displayed with their measurement uncertainties.</p>', 'http://winiharto.com/assets/products/sartorius/MCM5004.jpeg'),
(234, 'Robot System', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-04', '<p>Order Number: CCR1000. Sartorius robot system for fully automatic determination of differences in mass and for calibration of mass standards and weights.</p>', 'http://winiharto.com/assets/products/sartorius/CCR10.jpeg'),
(235, 'Robot System', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-04', '<p>Order Number: CCR10-1000. Sartorius robot system for fully automatic determination of differences in mass and for calibration of mass standards and weights.</p>', 'http://winiharto.com/assets/products/sartorius/CCR10.jpeg'),
(236, 'Robot System', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-04', '<p>Order Number: CCR10</br>Sartorius robot system for fully automatic determination of differences in mass and for calibration of mass standards and weights.</p>', 'http://winiharto.com/assets/products/sartorius/CCR10.jpeg'),
(237, 'ScalesNet-M Basic Module', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-05', '<p>Order Number: YSN03C</p>', 'http://winiharto.com/assets/products/sartorius/YSN03C.jpeg'),
(238, 'SartoCollect Software', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-05', '<p>Order Number: YSC02</br>The standard data communications software for Sartorius instruments (balances/scales, moisture analyzer and pH-meter). System requirements: MS Windows 2000 | Windows XP Professional, Vista Ultimate, Windows 7 Ultimate. Connecting cable must be ordered separately.</p>', 'https://www.sartorius.com/shop/_ui/responsive/theme-sartorius/images/missing_product_EN_300x300.jpg'),
(239, 'Susceptometer', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-06', '<p>Order Number: YSZ01C</p>', 'http://winiharto.com/assets/products/sartorius/YSZ02C.jpeg'),
(240, 'Susceptometer', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-06', '<p>Order Number: YSZ02C</p>', 'http://winiharto.com/assets/products/sartorius/YSZ02C.jpeg'),
(241, 'Volume Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-07', '<p>Order Number: VL1005</p>', 'http://winiharto.com/assets/products/sartorius/VL1005.jpeg'),
(242, 'Volume Comparator', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-07', '<p>Order Number: VD1005</p>', 'http://winiharto.com/assets/products/sartorius/VL1005.jpeg'),
(243, 'Pycnometer', 'BAL-01', 'SARTORIUS', 'SRS-01', 'SRS-M-07', '<p>Order Number: YP50K</p>', 'http://winiharto.com/assets/products/sartorius/YP50K.jpeg'),
(244, 'Cubis® Ultramicro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSE2.7S-0CE-DM</br>MSE - Pure and Simple Weighing</br>Large, high-contrast liquid-crystal display. Easy-to-understand menu guidance with short text prompts. Clearly structured keys for precise activation of functions. Designed mainly for weighing with maximum accuracy and without complex workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(245, 'Cubis® Ultramicro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSU2.7S-000-DF</br>MSU - Classic and Universal</br>High-resolution, generously sized, monochrome graphic display. Keys that feature positive click action and precise activation of functions. Classic key-operated control combined with the widest range of performance features</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(246, 'Cubis® Ultramicro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSU2.7S-0CE-DM</br>MSU - Classic and Universal</br>High-resolution, generously sized, monochrome graphic display. Keys that feature positive click action and precise activation of functions. Classic key-operated control combined with the widest range of performance features</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg');
INSERT INTO `p_new_products` (`PROD_ID`, `NAME`, `PRODUCT_ID`, `BRAND_CATEGORY`, `BRAND_ID`, `BRAND_SUBCATEGORY`, `SUMMARY`, `IMAGES`) VALUES
(247, 'Cubis® Micro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSU6.6S-0TR-DM</br>MSU - Classic and Universal</br>High-resolution, generously sized, monochrome graphic display. Keys that feature positive click action and precise activation of functions. Classic key-operated control combined with the widest range of performance features</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(248, 'Cubis® Micro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSA6.6S-000-DF</br>MSA - The Non Plus Ultra</br>Top-of-the-line technology and information design. Touch screen featuring high-resolution color TFT for high-contrast display of text and graphics. Outstanding operating convenience and display quality, especially for complex applications. Q-Apps that can be customized to your individual workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(249, 'Cubis® Micro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSU6.6S-0CE-DF</br>MSU - Classic and Universal</br>High-resolution, generously sized, monochrome graphic display. Keys that feature positive click action and precise activation of functions. Classic key-operated control combined with the widest range of performance features</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(271, 'Cubis® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-03', '<p>Order Number: MSA5202S-100-DA</br>MSA - The Non Plus Ultra</br>Top-of-the-line technology and information design. Touch screen featuring high-resolution color TFT for high-contrast display of text and graphics. Outstanding operating convenience and display quality, especially for complex applications. Q-Apps that can be customized to your individual workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSA27S.jpeg'),
(251, 'Secura® Micro Balance 21 g x 0.002 mg', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: SECURA26-1CCH</p>\n<p>Reduce Your risk with integrated and intelligent protection systems\nSecura® gives you the security and peace of mind of knowing that you have done everything right. </br>\nBesides providing highly accurate weighing results and operating convenience, Secura® also features built-in </br>\nprotection systems for complete reliability and regulatory compliance ? the safe and secure way.</p>', 'http://winiharto.com/assets/products/sartorius/1OBR.jpeg'),
(252, 'Secura® Micro Balance 21 g x 0.002 mg', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: SECURA26-1SJP</p>\n<p>Reduce Your risk with integrated and intelligent protection systems\nSecura® gives you the security and peace of mind of knowing that you have done everything right. </br>\nBesides providing highly accurate weighing results and operating convenience, Secura® also features built-in </br>\nprotection systems for complete reliability and regulatory compliance ? the safe and secure way.</p>', 'http://winiharto.com/assets/products/sartorius/1OBR.jpeg'),
(253, 'Secura® Micro Balance 21 g x 0.002 mg', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: SECURA26-1SAR</p>\n<p>Reduce Your risk with integrated and intelligent protection systems\nSecura® gives you the security and peace of mind of knowing that you have done everything right. </br>\nBesides providing highly accurate weighing results and operating convenience, Secura® also features built-in </br>\nprotection systems for complete reliability and regulatory compliance ? the safe and secure way.</p>', 'http://winiharto.com/assets/products/sartorius/1OBR.jpeg'),
(254, 'Secura® Micro Balance 21 g x 0.002 mg', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: SECURA26-1CEU</p>\n<p>Reduce Your risk with integrated and intelligent protection systems\nSecura® gives you the security and peace of mind of knowing that you have done everything right. </br>\nBesides providing highly accurate weighing results and operating convenience, Secura® also features built-in </br>\nprotection systems for complete reliability and regulatory compliance ? the safe and secure way.</p>', 'http://winiharto.com/assets/products/sartorius/1OBR.jpeg'),
(255, 'Cubis® Ultramicro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSA2.7S-000-DF</br>MSA - The Non Plus Ultra</br>Top-of-the-line technology and information design. Touch screen featuring high-resolution color TFT for high-contrast display of text and graphics. Outstanding operating convenience and display quality, especially for complex applications. Q-Apps that can be customized to your individual workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(256, 'Cubis® Micro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSE3.6P-0CE-DM</br>MSE - Pure and Simple Weighing</br>Large, high-contrast liquid-crystal display. Easy-to-understand menu guidance with short text prompts. Clearly structured keys for precise activation of functions. Designed mainly for weighing with maximum accuracy and without complex workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(257, 'Cubis® Micro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSU623S-1CE-DI</br>MSU - Classic and Universal</br>High-resolution, generously sized, monochrome graphic display. Keys that feature positive click action and precise activation of functions. Classic key-operated control combined with the widest range of performance features</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(258, 'Cubis® Micro Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-01', '<p>Order Number: MSA2.7S-000-DF</br>MSA - The Non Plus Ultra</br>Top-of-the-line technology and information design. Touch screen featuring high-resolution color TFT for high-contrast display of text and graphics. Outstanding operating convenience and display quality, especially for complex applications. Q-Apps that can be customized to your individual workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(259, 'Quintix® Analytical Balance 60 g x 0.01 mg', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: QUINTIX65-1SKR</br>Make your routine lab work easy with our revolutionary user interface. The Sartorius Quintix® sets new benchmarks in every aspect for standard lab balances. A number of features make your workflow much more efficient, such as fully automatic internal adjustment, direct data transfer, ergonomic style and, above all, the entirely new touchscreen user interface with built-in application programs.</p>', 'http://winiharto.com/assets/products/sartorius/QUINTIX125D.jpeg'),
(260, 'Quintix® Analytical Balance 60 | 120 g x 0.01 | 0.', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: QUINTIX125D-1OIN</br>Make your routine lab work easy with our revolutionary user interface. The Sartorius Quintix® sets new benchmarks in every aspect for standard lab balances. A number of features make your workflow much more efficient, such as fully automatic internal adjustment, direct data transfer, ergonomic style and, above all, the entirely new touchscreen user interface with built-in application programs.</p>', 'http://winiharto.com/assets/products/sartorius/QUINTIX125D.jpeg'),
(261, 'Quintix® Analytical Balance 60 | 120 g x 0.01 | 0.', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: QUINTIX125D-1S</br>Make your routine lab work easy with our revolutionary user interface. The Sartorius Quintix® sets new benchmarks in every aspect for standard lab balances. A number of features make your workflow much more efficient, such as fully automatic internal adjustment, direct data transfer, ergonomic style and, above all, the entirely new touchscreen user interface with built-in application programs.</p>', 'http://winiharto.com/assets/products/sartorius/QUINTIX125D.jpeg'),
(262, 'Quintix® Analytical Balance 120 g x 0.1 mg', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: QUINTIX124-1SJP</br>Make your routine lab work easy with our revolutionary user interface. The Sartorius Quintix® sets new benchmarks in every aspect for standard lab balances. A number of features make your workflow much more efficient, such as fully automatic internal adjustment, direct data transfer, ergonomic style and, above all, the entirely new touchscreen user interface with built-in application programs.</p>', 'http://winiharto.com/assets/products/sartorius/QUINTIX125D.jpeg'),
(263, 'Quintix® Analytical Balance 220 g x 0.1 mg', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: QUINTIX224-1ORU</br>Make your routine lab work easy with our revolutionary user interface. The Sartorius Quintix® sets new benchmarks in every aspect for standard lab balances. A number of features make your workflow much more efficient, such as fully automatic internal adjustment, direct data transfer, ergonomic style and, above all, the entirely new touchscreen user interface with built-in application programs.</p>', 'http://winiharto.com/assets/products/sartorius/QUINTIX125D.jpeg'),
(264, 'Entris® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: ENTRIS153-1S</br>Entris® - Just Weighing</br>Get the reliability and quality of a Sartorius balance, but only pay for the features you really need. The new Entris® has been specially designed to deliver effective and reliable weighing results in your daily work. The easy and clearly structured user interface, the logical key assignment and excellent readability are ideal features for error-free operation.</p>', 'http://winiharto.com/assets/products/sartorius/ENTRIS623I.jpeg'),
(265, 'Entris® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: ENTRIS2201I-1S</br>Entris® - Just Weighing</br>Get the reliability and quality of a Sartorius balance, but only pay for the features you really need. The new Entris® has been specially designed to deliver effective and reliable weighing results in your daily work. The easy and clearly structured user interface, the logical key assignment and excellent readability are ideal features for error-free operation.</p>', 'http://winiharto.com/assets/products/sartorius/ENTRIS623I.jpeg'),
(266, 'Entris® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: ENTRIS6202I-1S</p>\n<p>Entris® - Just Weighing</br>\nGet the reliability and quality of a Sartorius balance, but only pay for the features you really need.</br>\nThe new Entris® has been specially designed to deliver effective and reliable weighing results in your daily work. </br>\nThe easy and clearly structured user interface, the logical key assignment and excellent readability are ideal features for error-free operation.</p>', 'http://winiharto.com/assets/products/sartorius/ENTRIS623I.jpeg'),
(267, 'Entris® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: ENTRIS4202I-1S</br>Entris® - Just Weighing</br>Get the reliability and quality of a Sartorius balance, but only pay for the features you really need. The new Entris® has been specially designed to deliver effective and reliable weighing results in your daily work. The easy and clearly structured user interface, the logical key assignment and excellent readability are ideal features for error-free operation.</p>', 'http://winiharto.com/assets/products/sartorius/ENTRIS623I.jpeg'),
(268, 'Entris® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-02', '<p>Order Number: ENTRIS64I-1S</br>Entris® - Just Weighing</br>Get the reliability and quality of a Sartorius balance, but only pay for the features you really need. The new Entris® has been specially designed to deliver effective and reliable weighing results in your daily work. The easy and clearly structured user interface, the logical key assignment and excellent readability are ideal features for error-free operation.</p>', 'http://winiharto.com/assets/products/sartorius/ENTRIS623I.jpeg'),
(269, 'Cubis® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-03', '<p>Order Number: MSA5202S-0CE-DR</br>\nMSA - the Non Plus Ultra </br>Top-of-the-line technology and information design. Touch screen featuring high-resolution color TFT for high-contrast display of text and graphics. Outstanding operating convenience and display quality, especially for complex applications. Q-Apps that can be customized to your individual workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSA42.jpeg'),
(270, 'Cubis® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-03', '<p>Order Number: MSE5203S-100-DU</p>\n</br>MSE - Pure and Simple Weighing</br>Large, high-contrast liquid-crystal display. Easy-to-understand menu guidance with short text prompts. Clearly structured keys for precise activation of functions. Designed mainly for weighing with maximum accuracy and without complex workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(272, 'Cubis® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-03', '<p>Order Number: MSA623S-000-DU</br>\nMSA - the Non Plus Ultra </br>Top-of-the-line technology and information design. Touch screen featuring high-resolution color TFT for high-contrast display of text and graphics. Outstanding operating convenience and display quality, especially for complex applications. Q-Apps that can be customized to your individual workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSA42.jpeg'),
(275, 'Cubis® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-03', '<p>Order Number: MSA623P-1CE-DE</br>\nMSA - the Non Plus Ultra </br>Top-of-the-line technology and information design. Touch screen featuring high-resolution color TFT for high-contrast display of text and graphics. Outstanding operating convenience and display quality, especially for complex applications. Q-Apps that can be customized to your individual workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSA42.jpeg'),
(277, 'Cubis® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-03', '<p>Order Number: MSE623S-1CE-DI</br>MSE - Pure and Simple Weighing</br>Large, high-contrast liquid-crystal display. Easy-to-understand menu guidance with short text prompts. Clearly structured keys for precise activation of functions. Designed mainly for weighing with maximum accuracy and without complex workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSE27S.jpeg'),
(278, 'Cubis® Precision Balance', 'BAL-02', 'SARTORIUS', 'SRS-02', 'SRS-L-03', '<p>Order Number: MSA623P-1CE-DU</br>\nMSA - the Non Plus Ultra </br>Top-of-the-line technology and information design. Touch screen featuring high-resolution color TFT for high-contrast display of text and graphics. Outstanding operating convenience and display quality, especially for complex applications. Q-Apps that can be customized to your individual workflows</p>', 'http://winiharto.com/assets/products/sartorius/MSA42.jpeg'),
(279, 'Moisture Analyser', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-01', '<p>Order Number: LMA200PM-000EU</br> With microwave drying, the LMA200 moisture meter produces results up to 300 x faster than a drying oven for samples with high moisture content. The built-in analytical balance ensures high precision in moisture analysis</p>', 'http://winiharto.com/assets/products/sartorius/LMA200PM.jpeg'),
(280, 'LMA200PM Moisture Analyzer', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-01', '<p>Order Number:  LMA200PM-000US</br> With microwave drying, the LMA200 moisture meter produces results up to 300 x faster than a drying oven for samples with high moisture content. The built-in analytical balance ensures high precision in moisture analysis</p>', 'http://winiharto.com/assets/products/sartorius/LMA200PM.jpeg'),
(281, 'Infrared Moisture Analyser', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-02', '<p>Order Number: MA100Q-000230V1. The MA100 infrared moisture analyzer combines the highest possible accuracy of an analytical balance and practical application software all in one unit. Thanks to its extensive functions and flexibility, this analyzer optimally adapts to individual needs in daily routine analysis in research and development as well as quality control.</p>', 'http://winiharto.com/assets/products/sartorius/MA100H.jpeg'),
(282, 'MA37 Infrared Moisture Analyzer', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-02', '<p>Order Number: MA37-1. MA37 is a next-generation moisture analyzer that continues the success story of the MA35.  The MA37 delivers fast, accurate results and is easy to operate. Moreover, this compact device features a BetterClean design for effortless cleaning. The status light makes it easy to track the current progress of a measurement. Therefore, the MA37 is ideal for users who require a fast, 100% reliable moisture analyzer that is easy to operate.</p>', 'http://winiharto.com/assets/products/sartorius/MA37.jpeg'),
(283, 'Infrared Moisture Analyser', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-02', '<p>Order Number: MA100Q-000115V1. The MA100 infrared moisture analyzer combines the highest possible accuracy of an analytical balance and practical application software all in one unit. Thanks to its extensive functions and flexibility, this analyzer optimally adapts to individual needs in daily routine analysis in research and development as well as quality control.</p>', 'http://winiharto.com/assets/products/sartorius/MA100H.jpeg'),
(285, 'Infrared Moisture Analyser', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-02', '<p>Order Number: MA100C-000230V1. The MA100 infrared moisture analyzer combines the highest possible accuracy of an analytical balance and practical application software all in one unit. Thanks to its extensive functions and flexibility, this analyzer optimally adapts to individual needs in daily routine analysis in research and development as well as quality control.</p>', 'http://winiharto.com/assets/products/sartorius/MA100H.jpeg'),
(286, 'Infrared Moisture Analyser', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-02', '<p>Order Number: MA100H-000115V1. The MA100 infrared moisture analyzer combines the highest possible accuracy of an analytical balance and practical application software all in one unit. Thanks to its extensive functions and flexibility, this analyzer optimally adapts to individual needs in daily routine analysis in research and development as well as quality control.</p>', 'http://winiharto.com/assets/products/sartorius/MA100H.jpeg'),
(287, 'MA160 Infrared Moisture Analyzer', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-02', '<p>Order Number: MA100C-000115V1. The MA160 offers high flexibility, making it ideal for use in the widest range of sectors, such as laboratories, incoming goods and production departments. Its integrated Methods Development Assistant function will enable you to develop new methods that you can save in the memory for easy management of your methods library. The intuitive user interface reliably guides you step by step by text prompts through the measuring cycle of your method. The MA160 is perfect for those of you users who need an especially flexible and reliable moisture analyzer. </p>\n\n', 'http://winiharto.com/assets/products/sartorius/MA160.jpeg'),
(288, 'Infrared Moisture Analyser', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-03', '<p>Order Number:  LMA100-SET-P. Mark 3 is a flexible moisture analyzer system for labs and production facilities. Its optional modular add-ons provide the best solution for every measuring task. Its high-resolution weighing system also makes the Mark 3 HP suitable for precisely analyzing the moisture and water content of very dry samples. This feature makes it a genuine alternative to Karl-Fisher titration. </p>\n\n', 'http://winiharto.com/assets/products/sartorius/MA100H.jpeg'),
(289, 'Mark3 HP Moisture Analyzer', 'BAL-03', 'SARTORIUS', 'SRS-03', 'SRS-A-02', '<p>Order Number: MA100C-000115V1</br>\nThe MA160 offers high flexibility, making it ideal for use in the widest range of sectors, such as laboratories, incoming goods and production departments. Its integrated Methods Development Assistant function will enable you to develop new methods that you can save in the memory for easy management of your methods library. The intuitive user interface reliably guides you step by step by text prompts through the measuring cycle of your method. The MA160 is perfect for those of you users who need an especially flexible and reliable moisture analyzer. </p>\n', 'http://winiharto.com/assets/products/sartorius/MA100H.jpeg'),
(290, 'PMA.Evolution', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-01', '<p>Increase your paint-mixing efficiency while reducing your total cost of ownership with this precise, reliable and fast scale.</p>', 'http://winiharto.com/assets/products/sartorius/PMA-Evolution.jpg'),
(291, 'PMA.Vision', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-01', '<p>Prepare for the future in paint mixing and control your mixing processes efficiently and effectively right on the PMA.</p>', 'http://winiharto.com/assets/products/sartorius/PMA-Vision.jpg'),
(292, 'PMA.HD', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-01', '<p>Enhance the quality of your recipes and mix-jobs for high-quality and economical paint mixing with the PMA.HD.</p>', 'http://winiharto.com/assets/products/sartorius/PMA-HD.jpg'),
(293, 'PMA.Power', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-01', '<p>If you do not want to make any compromises when mixing large amounts of paint.</p>', 'http://winiharto.com/assets/products/sartorius/PMA-POWER.jpeg'),
(294, 'Terminals for Paint Mixing - TopMix2.Touch', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-02', '<p>Maximum quality for the highest demands. When it comes to safety, user-friendly design and quality in equipping your paint-mixing room, do not make any compromises.</p>', 'http://winiharto.com/assets/products/sartorius/TopMix2.jpeg'),
(295, 'USB cable, length 5 m (16.4 ft.)	', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCC01-0040M5</p>', 'http://winiharto.com/assets/products/sartorius/YCC01-0040M5.jpeg'),
(296, 'Link cable to Ex Link Converter, length 10 m', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCC01-0052M10</p>', 'http://winiharto.com/assets/products/sartorius/YCC01-0052M10.jpeg'),
(297, 'Link cable to Ex Link Converter, length 20 m', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCC01-0052M20</p>', 'http://winiharto.com/assets/products/sartorius/YCC01-0052M20.jpeg'),
(298, 'Link cable to Ex Link Converter, length 30 m', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCC01-0052M30</p>', 'http://winiharto.com/assets/products/sartorius/YCC01-0052M30.jpeg'),
(299, 'Grounding cable, 2 m (6.5 ft.)', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCC01-X046M2</p>', 'http://winiharto.com/assets/products/sartorius/YCC01-X046M2.jpeg'),
(300, 'External calibration weight 1 kg (class F2)	', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCW614-AC-00</p>', 'http://winiharto.com/assets/products/sartorius/YCW614-AC-00.jpeg'),
(301, 'External calibration weight 2 kg (class F2)	', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCW624-AC-00</p>', 'http://winiharto.com/assets/products/sartorius/YCW614-AC-00.jpeg'),
(302, 'External calibration weight 5 kg (class F2)	', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCW654-AC-00</p>', 'http://winiharto.com/assets/products/sartorius/YCW614-AC-00.jpeg'),
(303, 'In-use cover for display (set of 10)', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YDC03PMA10</p>', 'http://winiharto.com/assets/products/sartorius/YDC03PMA10.jpeg'),
(304, 'In-use cover for column (set of 10)', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YDC03PMA-CO10</p>', 'http://winiharto.com/assets/products/sartorius/YDC03PMA-CO10.jpeg'),
(305, 'In-use cover for weighing pan (set of 10)', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YDC03PMA-WP10</p>', 'http://winiharto.com/assets/products/sartorius/YDC03PMA-WP10.jpeg'),
(306, 'USB cable, length 3 m', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCC01-0052M10</p>', 'http://winiharto.com/assets/products/sartorius/YCC01-0040M3.jpeg'),
(307, 'Ethernet Patchdable Cat5e RJ45 (5m | 16.4 ft.)', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCC01-0044M5</p>', 'http://winiharto.com/assets/products/sartorius/YCC01-0044M5.jpeg'),
(308, 'Ex-link converter for PMA.Vision Ex zone 1', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCO16-Z</p>', 'https://www.sartorius.com/shop/_ui/responsive/theme-sartorius/images/missing_product_EN_300x300.jpg'),
(309, 'Ex-link converter for PMA.Vision Ex zone 2', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCO17-Z</p>', 'https://www.sartorius.com/shop/_ui/responsive/theme-sartorius/images/missing_product_EN_300x300.jpg'),
(310, 'Explosion-Protected Power Supply, 110V', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: 609308-61</p>', 'http://winiharto.com/assets/products/sartorius/609308.jpeg'),
(311, 'RS232 Data Communications Cable To PMA7501', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCC01-0047M2</p>', 'http://winiharto.com/assets/products/sartorius/YCC01-0047M2.jpeg'),
(312, 'USB/RS232-Converter To PMA7501', NULL, 'SARTORIUS', 'SRS-05', 'SRS-P-03', '<p>Order Number: YCO12</p>', 'http://winiharto.com/assets/products/sartorius/YCO12.jpeg'),
(326, 'Compression Load Cell Inteco', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>The versatile, innovative weighing solution for silo and vessel weighing. Further development of the PR 6201 load cell</br>\nNEW: Output signal of 2 mV/V. NEW: additional load levels 60 t and 75 t. NEW: Accuracy class (C6) from 3 t. NEW: even higher corrosion resistance </p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/d/csm_Load_Cell_Inteco_Minebea_Intec_90b3ff4f05.jpg'),
(327, 'PR 6143, PR 6145 Compact Mounting Kits for PR 6201 load cells', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>The EN 1090 certified Minebea Intec PR 6143 / 6145 is the ideal mounting kit for the PR 6201 load cell family from 500kg up to 50t. Due to its compact and robust construction, the MiniFLEXLOCK finds wide application in hoppers, silos, tanks and cranes in many branches of industry. The PR 6143 / 6145 offers the complete solution for problem-free, secure and accurate installation of a load cell.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/3/6/csm_PIC_Mounting_kits_PR6143_RGB_0cdedb7830.jpg'),
(313, 'FT-111 Weighing Indicator', NULL, 'FLINTEC', 'FTC-02', '', '<p>OIML certified to 10,000d. Connect up to 8 load cells 350 ? or 25 load cells 1 100 ?</br>\n4-wire or 6-wire connections. 5 steps programmable adaptive filter. Standard Interface RS232C, RS485, USB. Calibration with eCal or test weights. Power supply 100?240 V AC or 12?28 V DC</p>', 'https://www.flintec.com/wp-content/uploads/2017/09/FT-111_klein-411x316.jpg'),
(314, 'FT-111D Digital Weighing Indicator', NULL, 'FLINTEC', 'FTC-02', '', '<p>OIML certified to 10,000d. Connect up to 16 digital load cells RC3D. Automatic scale corner adjustment</br>\n5 steps programmable adaptive filter. Standard Interface RS232C, RS485, USB. Calibration with eCal or test weights. Power supply 100...240 V AC</p>', 'https://www.flintec.com/wp-content/uploads/FT-111D_2-474x290.jpg'),
(318, 'FT-10 Flow Weight Indicator', NULL, 'FLINTEC', 'FTC-02', '', '<p>OIML certified to 10,000d. High resolution to 100,000 counts. 1600 measurements/sec</br>\nSerial interface RS232C. Available as panel mount with plastic front panel. Also available with stainless steel front panel in an aluminium housing</br>\nFull range of communication protocol versions available. Very compact dimensions</br>', 'https://www.flintec.com/wp-content/uploads/FT-112D_2-474x290.jpg'),
(315, 'FT-11 Weight Indicator', NULL, 'FLINTEC', 'FTC-02', '', '<p>OIML certified to 10,000d. Single or dual range weighing. High resolution to 60,000 counts Serial interface RS232C.</br>\nIntegrated power supply. Available as panel mount. Aluminium desk top and stainless steel forms. connection for up to 18 load cells</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ft-11-weight-indicator-474x316.jpg'),
(317, 'FT-10 Weight Indicator', NULL, 'FLINTEC', 'FTC-02', '', '<p>EU Type approved for 10 000 intervals. Internal resolution16 000 000 counts, display up to 999 000 counts</br>\nApproved sensitivity 0.4 ?V/e. Conversation rate 1600/s. Serial Interface RS232C, RS485. 4-wire or 6-wire technology</br>\n4x isolated digital inputs (24 V) and 5x. isolated digital outputs. 10 step adjustable digital adaptive Filter. Calibration with eCal or test weights</br>\nDisplay kg or lb. Functions: Flow rate control, accumulation control, By-pass function, control of emptying pipe</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ft-10-weight-indicator-474x311.jpg'),
(319, 'FT-10 Fill Weighing Controller', NULL, 'FLINTEC', 'FTC-02', '', '<p>Stainless steel and aluminium housing. OIML certified to 10,000d. display resolution of 999,000 counts</br>\npre-configured recipes for filling, dispensing and packaging. electronic calibration without the use of weights</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ft-10-fill-controller-316x316.jpg'),
(320, 'FT-11D Digital Weight Indicator', NULL, 'FLINTEC', 'FTC-02', '', '<p>Aluminium or stainless steel housing. Certified to OIML 10,000d. Serial interface RS232C. Integrated power supply</br>\nAutomatic scale corner adjustment. For connection for up to 16 load cells</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ft-11d-digital-weight-indicator-474x316.jpg'),
(321, 'FT-12 Weight Indicator', NULL, 'FLINTEC', 'FTC-02', '', '<p>OIML certified to 10,000d. Single or dual range weighing. High resolution to 60,000 counts. </br>\nSerial interface RS232C. Integrated power supply. Available as panel mount, aluminium desk top and stainless steel forms</br>\nConnection for up to 18 load cells. Programs for weighing, filling, check weighing and dynamic weighing</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ft-12-weight-indicator-474x316.jpg'),
(322, 'FT-13 Weight Controller', NULL, 'FLINTEC', 'FTC-02', '', '<p>Stainless steel and panel mount housing options. OIML certified to 10,000d. Display resolution of 60,000 counts</br>\nPre-configured recipes for filling and dispensing. RS232C serial interface. 4 digital inputs and 8 digital outputs. Integrated power supply</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ft-13-weighing-controller-474x316.jpg'),
(323, 'FT-15/-15D Weight Indicator', NULL, 'FLINTEC', 'FTC-02', '', '<p>OIML certified to 10,000d. Single and dual range weighing. High resolution to 60,000 counts</br>\nAlibi memory. Serial interface RS232C. Integrated power supply</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ft-1515d-weight-indicator-474x214.jpg'),
(324, 'FRD Remote Displays', NULL, 'FLINTEC', 'FTC-02', '', '<p>6 digit displays. Wall mounted enclosures. Steel or aluminium housings. </br>\n55mm, 57mm and 100mm display height versions available. Serial interface ? RS232/RS485</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/frd-remote-displays-413x316.jpg'),
(325, 'FT-30M On-Board Weighing Indicator', NULL, 'FLINTEC', 'FTC-02', '', '<p>Two overload alarm set-points. On-screen customer identity cation. Record collected or delivered loads</br>\nPrint bin weights with time & date. Retro fits existing installations. CE marked. Type approved to UNECE regulation 10.05 by VCA</br>\nSix languages. Kg or Lbs. Anti-tamper passcode protection. On-screen troubleshoot diagnostics</p>', 'https://www.flintec.com/wp-content/uploads/2016/09/ft-30m-weight-indicator-447x316.jpg'),
(328, 'PR 6001 Mounting kits for load cell PR 6201', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>The PR 6001 mounting kit family is optimised for the PR 6201 load cell family to guarantee best weighing performance</br>\nLoad cell capacity range from 500 kg to 300 t, Statement of compliance with GL specifications (Germanischer Lloyd), Certification according to EN 1090</br>\nIntegrated load cell dummy, jack-up function, lift-off protection and constrainer (optional), Slotted holes ensure simple positioning of the mounting kit</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/c/csm_PIC_Mounting_kits_PR6001-10_1_RGB_33842eff23.jpg'),
(329, 'Compact Compression Load Cell PR 6212', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>The load cell PR 6212 is a state-of-the-art product. This corrosion resistant load cell has a compact design and also features high heat resistance. Its long product lifetime minimises downtime and ensures safer and more reliable processes in the chemical and steel industry.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/3/csm_PR_6212_load_cell_Minebea_Intec_764f9141af.jpg'),
(330, 'Bending Beam Load Cell PR 6207', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>The PR 6207 Bending Beam Weigh Cell is made from stainless steel and is available in a load range from 10 kg to 200 kg.\nThis weigh cell is specially designed for use in simple hopper weighing applications and is suitable for integration into hybrid scales and dosing systems.\nProtection class: IP67</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/3/d/csm_gw0078d1-WH_e68afaa32e.jpg'),
(331, 'Tension Load Cell MP 76', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>Highly durable tension load cell of 60 kg to 5 t. specifically designed for hopper weighing and simple dosing solutions.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/7/a/csm_Tension_load_cell_MP_76_809b9cd35f.jpg'),
(332, 'Bending Beam Weigh Cell MP 77', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>The MP 77 Bending Beam Weigh Cell is made from stainless steel and is available in a load range from 10 kg to 500 kg.\nThis weigh cell is specially designed for use in weighing platforms and simple hopper weighing applications.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/3/d/csm_gw0078d1-WH_e68afaa32e.jpg'),
(333, 'Shear Beam Load Cell MP 58, 58 T', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>Cast stainless steel load cell for use in platform scales and for basic weighing of small to medium-sized containers. The load cell is available in threaded and T-end versions. IP67 protected.Available for use in EX-zones 1, 20, 21.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/1/1/csm_gw0081d1-WH_0c34ed50ac.jpg'),
(334, 'Bending Beam Load Cell MP79 / MP79T', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>The MP 79/79T Bending Beam Weigh Cell is made from stainless steel and is available in a load range from 227 kg to 5099 kg.\nThis weigh cell is specially designed for use in weighing platforms and simple hopper weighing applications.\nProtection class IP68, IP69K</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/d/3/csm_gw0082d1-WH_1210387482.jpg'),
(335, 'Precision Compression Load Cell PR 6201', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>Compression load cell from 500 kg to 520 t. They provide absolute precision for container cars and dosing systems. Made of stainless steel, they are highly resistant and also insensitive to vibrations.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/b/2/csm_gw0036d1-WH_01_40e9f99a7d.jpg'),
(336, 'Compression Load Cell PR 6202', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>The PR 6202 is the world''s first load cell designed strictly in accordance with the hygienic design principles developed by the European Hygienic Engineering Design Group (EHEDG).</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/0/8/csm_PIC_Compression_load_cell_RGB_52718b6ebb.jpg'),
(337, 'Compact Compression Load Cell PR 6211', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>Compression load cells from 30 kg to 10 t. Specially designed for tank and hopper weighing as well as basic dosing systems. For use in EX zones 1, 2, 20, 21, 22 and FM DIV 1.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/9/d/csm_wi0776d1-WH_e153efcdde.jpg'),
(338, 'Compression S-Type Load Cell PR 6241', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>Compression load cells from 100 kg to 5 t. Specially designed for tank and hopper weighing as well as basic dosing systems. For use in EX zones 1, 2, 20, 21, 22 and FM DIV 1.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/4/csm_wi0774d1-WH_b45149e9b6.jpg'),
(339, 'Tension Load Cell S-Type PR 6246', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>Tension load cell from 100 kg to 3 t. Specially designed for tank and hopper weighing, hybrid scales and high-precision dosing systems. For use in EX zones 1, 2, 20, 21, 22 and FM DIV 1.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/f/4/csm_wi0774d1-WH_b45149e9b6.jpg'),
(340, 'PanCake Level Sensor PR 6251', 'IND-02', 'MINEBEA INTEC', 'MNB-08', '', '<p>The PR 6251 fill-level sensor is specially designed for basic weighing of silos and horizontal tanks. It meets all requirements for years of trouble-free operation without adjustment. For use in EX zones 1, 2, 20, 21, 22 and DIV 1.</p>', 'http://assets.minebea-intec.com/fileadmin/_processed_/6/7/csm_gw0074d1-WH_ffeafb3b8e.jpg'),
(349, '1-6P Uncooled Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Small centrifuge for sedimentation in an angle rotor</p>', 'http://winiharto.com/assets/products/sartorius/CCF_1-6P_Main_Image.jpg'),
(351, '12-6E Uncooled Centrifugre', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Bench top centrifuge, uncooled, up to 3,900 rpm, max 4 x 100 ml</p>', 'http://winiharto.com/assets/products/sartorius/CCF_2-6E_Main_Image.jpg'),
(341, 'Professional pH Meter PP-15 (pH meter/ mV meter)', 'CAT002', 'SARTORIUS', NULL, NULL, '<p><strong>Measuring Range</strong></p>\r\n<p>Voltage: -1800&nbsp; &hellip; +1800 mV. pH: -2 &hellip; + 2. Temperature : -5 &hellip; + 105 Celcius</p>\r\n<p><strong>Readability</strong></p>\r\n<p>Voltage: 0.1|1 adjustable. pH: 0.1|0.01|0.001 adjustable. Temperature :&nbsp; 0.1 K</p>\r\n<p><strong>Accuracy</strong></p>\r\n<p>Voltage: <span style="text-decoration: underline;">+</span> 0.1 mV<span style="text-decoration: underline;">. </span>pH: <span style="text-decoration: underline;">+</span> 0.002. Temperature : <span style="text-decoration: underline;">+</span> 0.2 K</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Automatic buffer recognition. Automatic temperature compensation. Calibration reminder. Automatic electrode function check.. Bidirectional RS232 Interface</p>', 'http://winiharto.com/assets/products/sartorius/PH_PP-15_Main_Image.jpg'),
(342, 'Docu pH+ Meter', 'CAT002', 'SARTORIUS', NULL, NULL, '<p><strong>Measuring Range:</strong></p>\r\n<p>Voltage: -2000&nbsp; &hellip; +2000 mV. pH: -2 &hellip; + 20. Temperature : -5 &hellip; + 105 Celcius</p>\r\n<p><strong>Readability:</strong></p>\r\n<p>Voltage: 0.1|1 adjustable. pH: 0.1|0.01|0.001 adjustable. Temperature :&nbsp; 0.1 K</p>\r\n<p><strong>Accuracy:</strong></p>\r\n<p>Voltage: <span style="text-decoration: underline;">+</span> 0.2 mV<span style="text-decoration: underline;">. </span>pH: <span style="text-decoration: underline;">+</span> 0.005. Temperature : <span style="text-decoration: underline;">+</span> 0.2 K</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Automatic buffer recognition. Automatic temperature compensation. Calibration reminder Optional DocuClip&reg;. Memory for measurement data. Sample ID. Calibration Reminder. RS-232C Interface</p>', 'http://winiharto.com/assets/products/sartorius/PM_DocuPH_Main_Image.jpg'),
(343, 'Docu PH Meter', 'CAT002', 'SARTORIUS', NULL, NULL, '<p><strong>Measuring Range</strong></p>\r\n<p>Voltage: -2000&nbsp; &hellip; +2000 mV. pH: -2 &hellip; + 20. Temperature : -5 &hellip; + 105 Celcius</p>\r\n<p><strong> Readability</strong></p>\r\n<p>Voltage: 0.1|1 adjustable. pH: 0.1|0.01|0.001 adjustable. Temperature :&nbsp; 0.1 K</p>\r\n<p><strong> Accuracy</strong></p>\r\n<p>Voltage: <span style="text-decoration: underline;">+</span> 0.2 mV<span style="text-decoration: underline;">. </span>pH: <span style="text-decoration: underline;">+</span> 0.005. Temperature : <span style="text-decoration: underline;">+</span> 0.2 K</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Automatic buffer recognition. Automatic temperature compensation. Calibration reminder Optional DocuClip&reg;. Memory for measurement data. Optional DocuClip&reg;.</p>', 'http://winiharto.com/assets/products/sartorius/PM_DocuPH_Main_Image.jpg'),
(344, 'Portable pH-Meter PT-15 (pH-Meter / mV-Meter)', 'CAT002', 'SARTORIUS', NULL, NULL, '<p><strong>Measuring Range</strong></p>\r\n<p>Voltage: -1999&nbsp; &hellip; +1999 mV. pH: -2.00 &hellip; + 16.00. Temperature : -10.00 &hellip; + 120.00 Celcius (automatic) and -5.00 to 90.00 (manual)</p>\r\n<p><strong>Readability</strong></p>\r\n<p>Voltage: 1 mV. pH: 0.01. Temperature :&nbsp; 0.1 Celcius</p>\r\n<p><strong>Accuracy</strong></p>\r\n<p>Voltage: <span style="text-decoration: underline;">+</span> 0.1 %. pH: <span style="text-decoration: underline;">+</span> 0.1%. Temperature : <span style="text-decoration: underline;">+</span> 0.5 Celcius</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Automatic buffer recognition. Automatic temperature compensation. Simultaneous display of pH and temperature readings. IP65 Waterproof rate</p>', 'http://winiharto.com/assets/products/sartorius/PM_PT-15_Main_Image.jpg'),
(345, 'Portable pH-Meter PT-10 (pH-Meter / mV-Meter)', 'CAT002', 'SARTORIUS', NULL, NULL, '<p><strong>Measuring Range</strong></p>\r\n<p>Voltage: -1800&nbsp; &hellip; +1800 mV. pH: -2 &hellip; + 14. Temperature : -5 &hellip; + 105</p>\r\n<p><strong>Readability</strong></p>\r\n<p>Voltage: 1 mV. pH: 0.01. Temperature :&nbsp; 0.1 Celcius<strong>&nbsp;</strong></p>\r\n<p><strong>Accuracy</strong></p>\r\n<p>Voltage: <span style="text-decoration: underline;">+</span> 0.2 mV. pH: <span style="text-decoration: underline;">+</span> 0.005 . Temperature : <span style="text-decoration: underline;">+</span> 0.3 K</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Automatic buffer recognition. Automatic temperature compensation. Simultaneous display of pH and temperature readings. IP65 Waterproof rated.</p>', 'http://winiharto.com/assets/products/sartorius/PM_PT-10_Main_Image.jpg'),
(346, 'pH-Meter Electrodes', 'CAT002', 'SARTORIUS', NULL, NULL, '<p>pH-electrodes for pH-measurement systems. Choose between long lasting  fluid electrolytes with sophisticated measuring performance and  easy-to-operate gel electrodes. Intelligent electrodes save the  calibration data and thus assure full GLP compliance. pH-electrodes with  integrated temperature sensor are available.</p>', 'http://winiharto.com/assets/products/sartorius/PHE_Sartorius_pH_Electrode_Main_Image.jpg'),
(347, 'Sartorius pH/Conductivity Meter Accessories', 'CAT002', 'SARTORIUS', NULL, NULL, '<p>pH-measurement accessories include probe arm assemblies for  pH-electrodes, GLP-compliant printers, printer ribbon cassettes and  printer paper. The pH-measurement accessories ease the handling with  pH-electrodes and improve the data documentation.</p>', 'http://winiharto.com/assets/products/sartorius/PHA_SArtorius_pH-Meter_Accessories.jpg'),
(348, 'pH-Papers | Reagent Paper ', 'CAT002', 'SARTORIUS', NULL, NULL, '<p>pH-papers | reagent papers for accurate determination of the pH in water  samples and for measuring the pH of a sample during analysis, as well  as the determination of  the presence of a certain substance in a  sample. The pH-papers | reagent are available in rolls or strips and  allow for easy and fast pH determination with an accuracy sufficient for  nearly all routine pH-tests.</p>', 'http://winiharto.com/assets/products/sartorius/PHA_Reagent_Paper_Main_Image.jpg'),
(350, '2-6 Uncooled Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Bench top centrifuge, uncooled, up to 4,000 rpm, max 4 x 100 ml, stainless steel bowl,</p>', 'http://winiharto.com/assets/products/sartorius/CCF_2-6_Main_Image.jpg'),
(352, 'CENTRISART A-14', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>High speed benchtop centrifuge CENTRISART&reg; A -14 is ideally suited for sedimentation in 0.2 ml to 2.2 ml micro tubes.</p>', 'http://winiharto.com/assets/products/sartorius/MCF_Centrisart_A14_Main_Image.jpg'),
(353, '1-15P Spincontrol Easy ', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>&nbsp; Microcentrifuge, uncooled, up to 14,000 rpm, max. 24 x 2.2 ml</p>', 'http://winiharto.com/assets/products/sartorius/MCF_1-15P_Main_Image.jpg'),
(354, '1-15PK Spincontrol Universal', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Microcentrifuge, refrigerated, up to 14,000 rpm, max. 30 x 2.2 ml</p>', 'http://winiharto.com/assets/products/sartorius/MCF_1-15PK_Main_Image.jpg'),
(355, '1-14 Uncooled Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Microcentrifuge, uncooled, up to 14,800 rpm, max. 24 x 2.2 ml</p>', 'http://winiharto.com/assets/products/sartorius/MCF_1-14_Main_Image.jpg'),
(356, '2-16 Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Benchtop centrifuge; Maximum speed: 15,000 or 15,300 rpm (model dependent). Maximum 4 x 100 ml.</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Sipncontrol Comfort or Spincontrol Universal (Model dependent). Uncooled or refrigerated or refrigerated with integrated heating model available.</p>', 'http://winiharto.com/assets/products/sartorius/UCF_2-16_Main_Image.jpg'),
(357, '3-16 Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Benchtop centrifuge; Maximum speed: 14,500 rpm or 15,300 rpm (model dependent). Maximum capacity: 4x250ml.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Spincontrol Universal. Uncooled or refrigerated version available.</p>', 'http://winiharto.com/assets/products/sartorius/UCF_3-16_Main_Image.jpg'),
(358, '3-18 Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Benchtop centrifuge. Maximum speed: 16,000 or 18,000 rpm (model dependent). Maximum Capacity: 4 x 250ml</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Spincontrol Comfort. Uncooled, refrigerated or refrigerated with integrated heating model available</p>', 'http://winiharto.com/assets/products/sartorius/UCF_3-18_Main_Image.jpg'),
(359, '3-30 Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Benchtop Centrifuge. Maximum Speed: 30,000 rpm. Maximum capacity: 6x 85ml</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Refrigerated. Spincontrol Comfort or Spincontrol Professional (model dependent).</p>', 'http://winiharto.com/assets/products/sartorius/UCF_3-30_Main_Image.jpg'),
(360, '4-16 Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Benchtop centrifuge. Maximum speed: 13,500 or 15,000 (model dependent). Maximum capacity: 4x 500ml</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Somfe Features</strong></p>\r\n<p>Spincontrol comfrot or Spincontrol Professional (model dependent). Uncooled or refrigerated model available.</p>', 'http://winiharto.com/assets/products/sartorius/UCF_4-16_Main_Image.jpg'),
(361, '6-16 Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Benchtop centrifuge. Maximum speed: 13,500 or 15,000 rpm (model dependent). Maximum Capacity: 4 x 750ml</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Spincontrol Comfort. Uncooled, refrigerated or refrigerated with integrated heating model available</p>', 'http://winiharto.com/assets/products/sartorius/LCF_6-16_Main_Image.jpg'),
(362, '8K Centrifuge', 'CAT004', 'SARTORIUS', NULL, NULL, '<p>Floorstanding centrifuge. Maximum Speed: 10,500 rpm, Maximum Capacity: 12 x 1,000 ml.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Refrigerated. Spincontrol Professional&nbsp;</p>', 'http://winiharto.com/assets/products/sartorius/LCF_8K_Main_image.jpg'),
(363, 'CERTOMAT BS-1', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Large incubation shaker, programmable speed (40 to 400 rpm) and temperature plus illumination, with optional integrated cooling, stackable up to three units without speed reduction, suitable for bacteria, yeast, insect and plant cell cultures.</p>', 'http://winiharto.com/assets/products/sartorius/IIS_Certomat_BS1_Main_Image.jpg'),
(364, 'CERTOMAT BS-T', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Large incubation shaker, programmable speed (40 to 400 rpm) and temperature with optional illumination, optional integrated cooling, floor-standing, suitable for bacteria, yeast, insect and plant cell cultures</p>', 'http://winiharto.com/assets/products/sartorius/IIS_Certomat_BST_Main_Image.jpg'),
(365, 'CERTOMAT IS', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Small incubation shaker, programmable speed (40 t0 400rpm) and temperature, with optional integrated cooling, suitable for bacteria, yeast and insect cell cultures.</p>', 'http://winiharto.com/assets/products/sartorius/IIS_Certomat_IS_Main_Image.jpg'),
(366, 'CERTOMAT T Plus', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Large incubation shaker, programmable speed (40 to 400rpm) and temperature via touch screen, with optional integrated cooling, stackable up to three units without speed reduction, suitable for bacteria, yeast and plant cell cultures.</p>', 'http://winiharto.com/assets/products/sartorius/IIS_Certomat_TPlus_Main_Image.jpg'),
(367, 'CERTOMAT CT Plus', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Large incubation shaker optimized for mammalian cell cultures with precise control of CO2 and humidity, programmable for time, speed and temperature via touch screen, advanced data management and stackable.</p>', 'http://winiharto.com/assets/products/sartorius/IIS_Certomat_CTPlus_Main_Image.jpg');
INSERT INTO `p_new_products` (`PROD_ID`, `NAME`, `PRODUCT_ID`, `BRAND_CATEGORY`, `BRAND_ID`, `BRAND_SUBCATEGORY`, `SUMMARY`, `IMAGES`) VALUES
(368, 'CERTOMAT MOII', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Small benchtop shaker for agitation or mixing of samples. Emulsions or dispersions can be agitated. In combination with a temperature-controlled environment, such as hotrooms, incubation hoods or incubators even cultures of microorganisms or mammalian cells can be maintained.</p>', 'http://winiharto.com/assets/products/sartorius/SST_Certomat_MOII_Main_Image.jpg'),
(369, 'CERTOMAT S-II', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Benchtop shaker CERTOMAT&reg; S II is univeral shaker with powerful drive and digital control of speed and time. Amplitude 25 or 50 mm.</p>', 'http://winiharto.com/assets/products/sartorius/SST_Certomat_SII_Main_Image.jpg'),
(370, 'CERTOMAT RM', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>CERTOMAT&reg; RM High-performance benchtop shaker equipped with all CERTOMART &reg; S-II</p>\r\n<p>But with&nbsp; additional feature of variable mass compensation.</p>', 'http://winiharto.com/assets/products/sartorius/SST_Certomat_RM_Main_Image.jpg'),
(371, 'CERTOMAT R', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Universal shaker with magnetic drive for silent run</p>', 'http://winiharto.com/assets/products/sartorius/SST_Certomat_R_Main_Image.jpg'),
(372, 'CERTOMAT U', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Universal shaker with magnetic drive with all CERTOMART &reg; R features with additional ability of changing shaking direction from orbital to longitudinal shaking.</p>', 'http://winiharto.com/assets/products/sartorius/SST_Certomat_U_Main_Image.jpg'),
(373, 'CERTOMAT CS 18', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Chamber volume of 170 L.</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Stainless steel surfaces doted with copper and integrated UV lamp reduce risk of contamination. IR sensor with auto-calibration for stable CO2 concentration and fast recovery after door opening.</p>', 'http://winiharto.com/assets/products/sartorius/COI_Certomat_CS18_Main_Image.jpg'),
(374, 'CERTOMAT CS 20', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Chamber volume of 210 L.</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Stainless steel surfaces doted with copper and integrated UV lamp reduce risk of contamination. IR sensor with auto-calibration for stable CO2 concentration and fast recovery after door opening.</p>', 'http://winiharto.com/assets/products/sartorius/COI_Certomat_CS20_Main_Image.jpg'),
(375, 'CERTOMAT H', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Max. tray size 420 x 420 mm</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Memory system with automatic restart after power failure. Can be used with many different bench top shakers. Ready for connection to an external cooler. Temperature range: 8&deg; above ambient up to +60&deg;C.</p>', 'http://winiharto.com/assets/products/sartorius/IIH_Certomat_H_Main_Image.jpg'),
(376, 'CERTOMAT HK', 'CAT005', 'SARTORIUS', NULL, NULL, '<p>Max. tray size 420 x 420 mm</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Heated incubation chamber with an integrated heat exchanger with connectors for an external cooling system. Can be used with many different bench top shakers. Provides a temperature-controlled environment up to +60 &deg;C incubation temperature</p>', 'http://winiharto.com/assets/products/sartorius/IIH_Certomat_HK_Main_Image.jpg'),
(377, 'Mikro Dismembrator U and S', 'CAT006', 'SARTORIUS', NULL, NULL, '<p>These ball mills most efficiently homogenise solid or frozen samples. Solid samples such as bone or deep-frozen tissue, e.g. from biopsies, are disintegrated to fine powder rapidly. Skin, hair, feathers, cartilage or other tough samples can all be disrupted.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Ball mill for solid or frozen samples. Highest efficiency by top speed. Electronic control of speed and time</p>', 'http://winiharto.com/assets/products/sartorius/MDM_MikroDismembrator_UandS_Main_Image.jpg'),
(378, 'Accessories for Mikro Dismembrator', 'CAT006', 'SARTORIUS', NULL, NULL, '<p>Accessories for the Mikro-Dismembrators comprise shaking flasks made of stainless steel or PTFE, adaptors for small disposable vessels and microplates, grinding balls of various materials and size, and a range of glass beads.</p>', 'http://winiharto.com/assets/products/sartorius/MDM_Accessoris_Mikro_Main_Image.jpg'),
(379, 'Potter S Homogenizer', 'CAT006', 'SARTORIUS', NULL, NULL, '<p>Potter S Homogenizers</p>\r\n<p>The Potter S disrupts soft tissues, e. g. muscle, spleen, liver, lung, or tissue culture cells. Soft organs or tissues from plants are also homogenised. The Potter S even allows to isolate nuclei from cells..</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Disrupts cells and tissues by shearing. Gentle action. Various cylinders and pestles are available to suit different needs</p>', 'http://winiharto.com/assets/products/sartorius/PHM_Potter_Homogenizer_Main_Image.jpg'),
(380, 'Accessories for Potter S Homogenizer', 'CAT006', 'SARTORIUS', NULL, NULL, '<p>Accessories for the Potter S homogenizer comprise homogenisation vessels with ground-in glass plungers as well as graduated homogenisation cylinders and corresponding PTFE plungers. Sizes between 2 ml and 60 ml are available.</p>', 'http://winiharto.com/assets/products/sartorius/PHM_Potter_Homogenizer_Main_Image.jpg'),
(381, 'Labsonic M', 'CAT006', 'SARTORIUS', NULL, NULL, '<p>Ultrasonic homogenisers are used to generate emulsions or dispersions. In addition, microorganisms or cells from tissue culture can be disrupted for isolation of DNA, RNA or proteins. Ultrasound can also break DNA into smaller randomised pieces.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>universal ultrasonic homogenizer. Selectable amplitude and active cycle. Self-optimization of energy output .Samples can be treated in batches or in continuous flow.</p>', 'http://winiharto.com/assets/products/sartorius/UHM_Labsonic_M_Main_Image.jpg'),
(382, 'Labsonic P', 'CAT006', 'SARTORIUS', NULL, NULL, '<p>Ultrasonic homogenisers are used to generate emulsions or dispersions. In addition, microorganisms or cells from tissue culture can be disrupted for isolation of DNA, RNA or proteins. Ultrasound can also break DNA into smaller randomised pieces.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Sonication of larger samples. Selectable amplitude and active cycle. Self-optimization of energy output. Samples can be treated in batches or in continuous flow.</p>', 'http://winiharto.com/assets/products/sartorius/UHM_Labsonic_P_Main_Image.jpg'),
(383, 'Acccessories for LABSONIC Homogenizers', 'CAT006', 'SARTORIUS', NULL, NULL, '<p>Depending on the application, various microtips or probes are combined with the LABSONIC M or P, respectively. Sound dampening chambers protect the user from audible sound generated during sonication</p>', 'http://winiharto.com/assets/products/sartorius/UHM_Labsonic_Accessories_Main_Image.jpg'),
(384, 'Hand Homogenizer', 'CAT006', 'SARTORIUS', NULL, NULL, '<p>Hand homogenisers are used to disrupt tissues or cells of different origin, such as tisssue culture cells, biopsies from spleen, liver, lung or muscle. Even plant tissues can be treated. They may also be used for resuspension of cell aggregates or sediments.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Dounce type glass homogenizers. Rapid sample preparation. Tightly fitting or loosely fitting pestles&nbsp; available depending on your needs.</p>', 'http://winiharto.com/assets/products/sartorius/HHM_Hand_Homogenizer_Main_Image.jpg'),
(385, 'Viva Spec', 'CAT007', 'SARTORIUS', NULL, NULL, '<p>UV-VIS spectrophotometer family is designed for fast and hassle-free measurements. The user-friendly software leads you through the programming steps. Measurements are done in a few seconds and documented according to your needs.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Some Features</strong></p>\r\n<p>Single beam spectrophotometer. Measurement of single and multiple wavelengths. Concentration calculation. Scan within two user defined wavelengths (from 200 nm to 900 nm) with automatic peak detection. Generation of calibration curves. Kinetic measurements</p>', 'http://winiharto.com/assets/products/sartorius/SPM_Viva_Spec_Main_Image.jpg'),
(386, 'Lab Water System Accessories', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Lab water system accessories. Dispense guns, additional tanks, water  guards, conductivity meters or printers - Sartorius offers a broad range  of accessories to enhance your daily work with the arium<sup>&reg; </sup>lab water system.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Lab Water Purification Acessories_Main_Image.jpg'),
(387, 'Lab Water System Consumables', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Consumables for lab water systems. From softener cartridges over  sanitisation kits, ion exchange resins and RO-membranes to upgrade kits  you find everything necessary for your daily work with arium<sup>&reg;</sup> lab water systems.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Lab_Water_System_Consumables_Main_Image.jpg'),
(388, 'Lab Water Pre-Treatment', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Lab water pre-treatment systems for the production of highly deionised and softened water, free of magnesium and calcium. arium<sup>&reg;</sup> 615DI cartridges contain highly effective ion exchange resins to remove  cations and anions from the water by exchanging H+ and OH&ndash;. arium<sup>&reg;</sup> 615S water softening systems are compact and mounted on four rollers.  The lab water pre-treatment systems can be readiliy regenerated with  sodium chlorine brine.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Lab_Water_Pre-treatment_Main_Image.jpg'),
(389, 'Type I Ultra Pure Water Systems ', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>arium<sup>&reg;</sup> pro Type I ultra pure water systems for the production  of reagent-grade water needed for critical applications as well as  routine analyses. Typical applications are the production of ultrapure  water for cell culture or chromatographic applications. The type I ultra  pure water systems are available in four different versions and can be  ordered as wall-mounted unit, bench-top system or built-in system. arium<sup>&reg;</sup> pro features a convincing innovative design, quality and ease of use.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Pure_1_Main_Image.jpg'),
(390, 'Type II Pure Water System', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Type II pure water systems for the production of ASTM type II water for  general laboratory applications. With the combination of reverse  osmosis, softening and electronic | chemical desalting the arium<sup>&reg;</sup> EDI 61215 type II pure water system guarantees constant water quality.  The device is available with different volumes and as benchtop or  built-in system.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Pure_2_Main_Image.jpg'),
(391, 'Type III Pure Water System', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Type III pure water systems for the production of  RO-Water for general  laboratory applications and for applications requiring large volumes of  RO water on demand. The efficient RO-membranes reduce water wastage and  provide excellent product water quality. The compact arium<sup>&reg;</sup> RO 61316 type III pure water system is the ideal choice for daily laboratory applications, the arium<sup>&reg;</sup>613L reverse osmosis (RO) system is suited for applications with a high water consumption.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Pure_3_Main_Image.jpg'),
(392, 'Lab Water System Accessories', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Lab water system accessories. Dispense guns, additional tanks, water  guards, conductivity meters or printers - Sartorius offers a broad range  of accessories to enhance your daily work with the arium<sup>&reg; </sup>lab water system.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Lab Water Purification Acessories_Main_Image.jpg'),
(393, 'Lab Water System Consumables', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Consumables for lab water systems. From softener cartridges over  sanitisation kits, ion exchange resins and RO-membranes to upgrade kits  you find everything necessary for your daily work with arium<sup>&reg;</sup> lab water systems.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Lab_Water_System_Consumables_Main_Image.jpg'),
(394, 'Lab Water Pre-Treatment', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Lab water pre-treatment systems for the production of highly deionised and softened water, free of magnesium and calcium. arium<sup>&reg;</sup> 615DI cartridges contain highly effective ion exchange resins to remove  cations and anions from the water by exchanging H+ and OH&ndash;. arium<sup>&reg;</sup> 615S water softening systems are compact and mounted on four rollers.  The lab water pre-treatment systems can be readiliy regenerated with  sodium chlorine brine.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Lab_Water_Pre-treatment_Main_Image.jpg'),
(395, 'Type I Ultra Pure Water Systems ', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>arium<sup>&reg;</sup> pro Type I ultra pure water systems for the production  of reagent-grade water needed for critical applications as well as  routine analyses. Typical applications are the production of ultrapure  water for cell culture or chromatographic applications. The type I ultra  pure water systems are available in four different versions and can be  ordered as wall-mounted unit, bench-top system or built-in system. arium<sup>&reg;</sup> pro features a convincing innovative design, quality and ease of use.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Pure_1_Main_Image.jpg'),
(396, 'Type II Pure Water System', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Type II pure water systems for the production of ASTM type II water for  general laboratory applications. With the combination of reverse  osmosis, softening and electronic | chemical desalting the arium<sup>&reg;</sup> EDI 61215 type II pure water system guarantees constant water quality.  The device is available with different volumes and as benchtop or  built-in system.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Pure_2_Main_Image.jpg'),
(397, 'Type III Pure Water System', 'CAT011', 'SARTORIUS', NULL, NULL, '<p>Type III pure water systems for the production of  RO-Water for general  laboratory applications and for applications requiring large volumes of  RO water on demand. The efficient RO-membranes reduce water wastage and  provide excellent product water quality. The compact arium<sup>&reg;</sup> RO 61316 type III pure water system is the ideal choice for daily laboratory applications, the arium<sup>&reg;</sup>613L reverse osmosis (RO) system is suited for applications with a high water consumption.</p>', 'http://winiharto.com/assets/products/sartorius/LWP_Pure_3_Main_Image.jpg'),
(398, 'CW-Series Laboratory Bath Circulators', 'CAT019', 'MEDLINE', NULL, NULL, '<p><strong>Heating Bath Circulators </strong><span style="text-decoration: underline;"><br /> </span>External and internal circulating with powerful pumping capacity.<br /> CW-G series is designed for controlling temperature in external instruments, or for immersion purposes. Pump has five adjustable pressure stages.</p>\r\n<p><strong>Refrigerated &amp; Heating Bath Circulators </strong><span style="text-decoration: underline;"><br /> </span>Rapid heating and cooling throughout the entire temperature range!<br /> RW-G series has powerful circulation pump for external and internal circulating. The temperatures can be down to maximum -35&#8451; that maintain and control accurate low temperatures for use with Refractometers and Viscometers.</p>', 'http://winiharto.com/assets/products/medline/LWE_Bath_Circulators_Main_Image.jpg'),
(399, 'BW-Series Heating baths', 'CAT019', 'MEDLINE', NULL, NULL, '<p><strong>Heating Baths (Economy) </strong><span style="text-decoration: underline;"><br /> </span>Economical water bath series with complete temperature maintenance! <br /> Especially BW-B/ H series has a patented agitating system that makes better temperature stability.</p>\r\n<p><strong>Heating Baths </strong><span style="text-decoration: underline;"><br /> </span>Excellent temperature performance heating water baths for general-purpose use.<br /> BW-G series features Microprocessor PID controls to guarantee exceptional temperature Variation and exclusive timer, programming function for critical research, quality control and regulatory testing!</p>', 'http://winiharto.com/assets/products/medline/LWE_Heating_bath_Main_Image.jpg'),
(400, 'BS-Series Shaking and Heating Baths', 'CAT019', 'MEDLINE', NULL, NULL, '<p>Reciprocal shaking heating baths.</p>\r\n<p><br /> BS series features a more accurate rapid shaking thanks to the noiseless and anti-vibration Brushless DC motor. The constant temperature performance keeps samples incubated, ideal for DNA, tissue, or cell culture applications.</p>', 'http://winiharto.com/assets/products/medline/LWE_Medline_SHaking_bath_Main_Image.jpg'),
(401, 'Medline Waterbath Accessories', 'CAT019', 'MEDLINE', NULL, NULL, '<div>Accessories and additional options available Medline&nbsp; series of baths &amp; circulators required to tailor the specification to your exacting needs, dependant upon application.These include&nbsp;a choice of covers (PP Gable / SS Flat /&nbsp;SS Open-ring), test tube racks, spring wire racks, shelf adjusters&nbsp; and additional suction pumps.</div>', 'http://winiharto.com/assets/products/medline/LWA_Medline_waterbath_Accessories_Main_Image.jpg'),
(402, 'Abbe Refractometer', 'CAT010', 'MEDLINE', NULL, NULL, '<p>Convex or prism or Quartz (digital) refracctometer</p>', 'http://winiharto.com/assets/products/medline/RFE_Medline_Abbe_Refractometer_Main_Image.jpg'),
(403, 'DIGIT Series Hand-held Refractometer', 'CAT010', 'MEDLINE', NULL, NULL, '<p>Multiple types hand-held of refractometer which can be used for a specific given application.</p>', 'http://winiharto.com/assets/products/medline/RFE_DIGIT_Handheld_Refractometer_Main_Image.jpg'),
(404, ' Apollo Educational Teaching Microscopes ', 'CAT013', 'MEDLINE', NULL, NULL, '<p>Monocular Teaching microscope with achromatic objectives. Available microscope type equipped with additional teaching ports.</p>', 'http://winiharto.com/assets/products/medline/CMS_Apollo_Main_Image.jpg'),
(405, 'Focus II Monocular Teaching Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>Monocular microscope supplied with a 10x18 mm eyepiece, a pre-centred focusable Abbe NA1.25 condenser and achromatic objectives - 4x, 10x, and 40x. The optical head is inclined at 45&deg; and turns through 360&deg; while the mechanical stage allows for full X-Y movement of the slide during use. Multiple illumination element type available.</p>', 'http://winiharto.com/assets/products/medline/CMS_Focus_2_Main_Image.jpg'),
(406, 'Colt Compound and Teaching Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>The Colt series of microscopes from Ceti&nbsp;is an excellent choice for introducing students into the world of biological microscopy. Available in a choice of Monocular, Binocular or Trincoular configerations with additional options for Phase contrast, Polaristaion and Darkfield observation techniques.</p>', 'http://winiharto.com/assets/products/medline/CMS_Focus_2_Main_Image.jpg'),
(407, 'Akropol Microscopes for Polarization', 'CAT013', 'MEDLINE', NULL, NULL, '<p>The Akropol from CETi is an effective introductory model for educational applications whereby samples need to be viewed through polarised light.</p>', 'http://winiharto.com/assets/products/medline/CTM_Akropol_Main_Image.jpg'),
(408, 'Max-II Compound and Teaching Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>The Max Bino II provides a cost effective model ideal for under and post graduate teaching laboratories. It is also ideally suited&nbsp; as a routine bench top microscope for general purpose slide examinations where prolonged usage is not the norm. The unit has been designed to the latest demanding specifications to provide an ergonomic unit for daily usage. The unit is compact enough to allow for storage and handling between different locations within a teaching environment.</p>', 'http://winiharto.com/assets/products/medline/CTM_MaxII_Main_Image.jpg'),
(409, ' Magnum Compound Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>The Magnum series is based on a robust T shaped base design to ensure maximum stability with modern ergonomic features to allow for prolonged routine vieiwing on a a daily basis.<br /> The series offers great flexibility in the types of illumination sources available, including&nbsp;Brightfield, Darkfield, Polarisation, Phase contrast and Flouresence.<br /> All varaiants are available with a trinocular port to allow for athe attachment of a digital camera sysyem for recording and analysing&nbsp;the image under examination.</p>', 'http://winiharto.com/assets/products/medline/CTM_Magnum_Main_Image.jpg'),
(410, 'Triton Scientific Research Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>The Triton II series is the pinnacle of the CETI range in compound microscopy, being ideal for clinical applications using a variety of lighting options. The unit comes as standard with a trinocular port to allow for the addition of a camera system for imaging purposes. The ergonomic head option is available to allow for ease of use by multiple viewers. There is the option to add teaching heads for simultaneous shared viewing by multiple observers.<br /> A set of filters are included so that if necessary these can be used to heighten contrast and correct colours to guarantee crystal clear definition of ridges, cell walls, pits and particles.<br /> The Triton II has four objectives, attached to a revolving and reversed sextuple nosepiece with click-stop. The powerful transmitted illumination (50W or 100W) and its unique condenser ensure optical brightness and clarity.</p>\r\n<p><a href="http://www.medlinescientific.com/en/CETI-Microscopes/Clinical/Inverted/Inverso-Series/View-all-products.html"></a></p>', 'http://winiharto.com/assets/products/medline/IRM_Triton_Main_Image.jpg'),
(411, 'Inverso Biological Research Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>An inverted microscope for both routine and research level work, the unit is complete with a Trinocular head and a beam splitting prism for optimizing the halogen illumination. The long working distance planachromatic objectives and selection of eyepieces give a magnification range from 40x to 800x.<br /> The stage features a removable microplate holder with XY movement and the swing out condenser allows tissue culture flasks up to 70mm thick to be viewed with ease.</p>', 'http://winiharto.com/assets/products/medline/IRM_Inverso_Main_Image.jpg'),
(412, 'TC100 Inverso Biological Research Microscopes ', 'CAT013', 'MEDLINE', NULL, NULL, '<p>An inverted microscope for both routine and research level work, the unit is complete with a Trinocular head and a beam splitting prism for optimizing the halogen illumination. The long working distance planachromatic objectives and selection of eyepieces give a magnification range from 40x to 800x.<br /> The stage features a removable microplate holder with XY movement and the swing out condenser allows tissue culture flasks up to 70mm thick to be viewed with ease.</p>\r\n<p>The Inverso TC100 series is tailor-made for the working laboratory a high level of build quality ensures it will withstand the rigours of constant daily use..</p>', 'http://winiharto.com/assets/products/medline/IRM_TC100_Main_Image.jpg'),
(413, 'Ferox Inverted Materials Microscopes ', 'CAT013', 'MEDLINE', NULL, NULL, '<p>An inverted, trinocular (reflected light) microscope for geological and engineering uses. The quadruple nosepiece accepts the 4 reflected light objectives and the open stage imposes no height limitations on the subject material. The rear facing external lamp housing protects both subject and user from adverse heating effects.</p>', 'http://winiharto.com/assets/products/medline/IRM_Ferox_Main_Image.jpg'),
(414, 'Reflex Trinocular Industrial Type Microscopes ', 'CAT013', 'MEDLINE', NULL, NULL, '<p>A top viewing version of the Ferox microscope, designed for thin opaque subjects or test samples. Trinocular, with a vertical photo port and beam splitting prism, it too benefits from an external lamp housing. The flat mechanical stage allows for observation of prepared subject matters with magnifications up to 1600x with optional eyepieces and objectives.</p>', 'http://winiharto.com/assets/products/medline/IRM_Reflex_Main_Image.jpg'),
(415, 'Magtex Reflected and Transmitter Light Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>Trinocular microscopes witht transmitted and reflected illumination. Ideal for biological and materials usage for both translucent and opaque samples.</p>', 'http://winiharto.com/assets/products/medline/RTM_Magtex_Main_Image.jpg'),
(416, 'Ster Fixed Magnification Stereo Microscopes ', 'CAT013', 'MEDLINE', NULL, NULL, '<p>The Ster series&nbsp;of stereo microscopes are&nbsp;designed for educational use.&nbsp;They are&nbsp;particularly well suited to viewing specimens at low magnifications (fixed) with the use of halogen illumination.</p>', 'http://winiharto.com/assets/products/medline/SSM_Ster_Main_Image.jpg'),
(417, 'Twin-7 Stereoscopic Zoom Microscopes ', 'CAT013', 'MEDLINE', NULL, NULL, '<p>The&nbsp;Twin series&nbsp;of stereoscopic microscopes are&nbsp;designed for educational and professional&nbsp;use.&nbsp;They are&nbsp;particularly well suited to viewing specimens at low magnifications (with variable magnification) with the use of halogen illumination.</p>', 'http://winiharto.com/assets/products/medline/SSM_Twin7_Main_Image.jpg'),
(418, 'Star Fixed Magnification Stero Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>The Star is a stereo microscope designed for educational and professional use. It is particularly well suited to viewing specimens at low magnifications and introduces the use of LED lighting into the stereo range of microscopes.</p>', 'http://winiharto.com/assets/products/medline/SSM_Star_Main_Image.jpg'),
(419, 'Steddy Stereoscopic Microscopes ', 'CAT013', 'MEDLINE', NULL, NULL, '<p>The Steddy II is a stereoscopic zoom microscope with dual LED illumination and&nbsp;a single, sturdy focussing column unit. The diamond shaped base allows the hands to be rested on the base of the unit&nbsp;thus providing hand support for delicate operations or manipulation of the sample during examination.</p>', 'http://winiharto.com/assets/products/medline/SSM_Steddy_Main_Image.jpg'),
(420, 'Varizoom Sterescopic Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>Supplied in binocular configuration with the option for the addition of a beam splitter arm to allow for attachment of a digital or video camera. The choice of zoom ratios ensures that the correct model can be selected for the required application supplied with&nbsp; 10x / 22mm super-field eyepieces as standard, both with dioptric compensation. Additional eyepieces and corrective planachromatic lenses allow for a total magnification range of&nbsp;4x&nbsp;up to&nbsp;320x (model dependant). The variable incident and transmitted LED light sources&nbsp;ensures that there is&nbsp;no heating of the sample when viewing live samples. The microscope comes complete with a frosted glass stage to allow use of both LED light sources.</p>', 'http://winiharto.com/assets/products/medline/SSM_Varizoom_Main_Image.jpg'),
(421, 'Light Sources for Sterescopic Microscopes', 'CAT013', 'MEDLINE', NULL, NULL, '<p>For photomicrography&nbsp;applications Ceti&nbsp;recommends the use of an external light source. Either a cold light source or an LED ring illuminator provides high intensity illumination for use with stereo microscopes, ideal for capturing excellent shots without heating the sample.</p>\r\n<p><a href="http://www.bestfakerolex.co.uk/category/best-fake-rolex-air-king-watches/">Best Fake Rolex Air King Watches</a></p>\r\n<p>&nbsp;</p>\r\n<p><a href="http://www.dearwatches.co.uk/category/replica-audemars-piguet-watches/">replica Audemars Piguet watches</a></p>', 'http://winiharto.com/assets/products/medline/ACS_LightSOurce_Main_Image.jpg'),
(422, 'mLINE Mechanical Pipettes', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>mLINE<span style="font-weight: bold;"> </span>is  Sartorius''s most advanced mechanical pipette. It offers a unique  combination of novel and patented features for effortless accuracy and  precision. It is light weight, comfortable to use and<span style="font-weight: bold;"> </span>is<span style="font-weight: bold;"> frequently recommended by Health &amp; Safety Officers</span>. <br /><br />The  mLINE pipettes cover the full volume range of 0.1 &micro;l to 10 ml. These  fully autoclavable pipettes are available as single and multichannel  models.</p>', 'http://winiharto.com/assets/products/sartorius/MPT_mLINE_Mechanical_Pipette_Main_image.jpg'),
(423, 'Proline Plus Mechanical Pipette', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>The Proline Plus pipette family offers a wide variety of both fixed and  variable volume models as well as unique combination of novel and  patented features. High quality and light pipetting forces provide  pleasant pipetting experience. The Proline Plus with robust design is  suitable for variable every day laboratory applications. <br /><br />The Proline Plus pipettors cover the full range of 0.1&micro;l to 10ml.</p>', 'http://winiharto.com/assets/products/sartorius/MPT_Proline_Plus_Mechanical_Pipette_Main_Image.jpg'),
(424, 'Proline Mechanical Pipette', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>The original Sartrorius mechanical pipette from the Biohit <em>family</em> is designed for many different  types of routine laboratory work. Working with Proline, you will get  many years of reliable service. <br /><br />The Proline pipettes cover the  volume range 0.1 &micro;l to 5 ml with 8 different adjustable single-channel  and 8 adjustable multichannel models. Proline is also available in fixed  volume single-channel models.</p>', 'http://winiharto.com/assets/products/sartorius/MPT_Proline_Mechanical_Pipette_Main_Image.jpg'),
(425, 'mLINE Starter Kit', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>Sartorius mLINE Starter Kit of the Biohit <em>family&nbsp;</em>offers an opportunity to test and get started  with mLINE pipettes. You can choose between two Starter Kits with three  single-channel mLINE pipettes.</p>', 'http://winiharto.com/assets/products/sartorius/MPT_mLINE_Starter_Kit_Main_Image.jpg'),
(426, 'mLINE PCR Starter Kit', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>mLINE PCR Starter Kit offers an easy start in PCR application. The fully autoclavable mLINE pipettes and sterile Sartorius SafetySpace<span style="font-weight: bold;">&trade;</span> Filter Tips guarantee contamination free pipetting. The kits also incluce a cooling rack for microtubes, a cryo pen and other accessories.</p>', 'http://winiharto.com/assets/products/sartorius/MPT_mLINE_PCR_Starter_Kit_Main_Image.jpg'),
(427, 'Proline Plus Starter Kit', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>Sartorius Proline&reg; Plus Starter Kit from the Biohit <em>family</em> offers an opportunity to test and get started with Proline Plus pipettes. You can choose between four Starter Kits with two or three single-channel Proline Plus pipettes.</p>', 'http://winiharto.com/assets/products/sartorius/MPT_Proline_Plus_Starter_Kit_Main_Image.jpg'),
(428, 'Picus Electronic Pipette', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>Meet Picus &ndash; the Red Dot awarded electronic pipette that eases your work  load, protects you from injuries by ensuring optimal working posture  and allows accurate and precise pipetting results!<br /> <br /> Known as forerunner in liquid handling products with a long history in  developing ergonomic, high quality pipettes, Sartorius has now set a  completely new standard for electronic pipettes. A dedicated team of  R&amp;D and ergonomics professionals, together with laboratory  personnel, has developed a new technology with your needs and well being  in mind. The result is the most ergonomic and sophisticated pipette in  the market for laboratory professionals who demand the highest quality,  safety and reliability in their work.</p>', 'http://winiharto.com/assets/products/sartorius/EPT_Picus_Main_Image.jpg'),
(429, 'eLINE Electronic Pipettes', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>The electronic Sartorius eLINE pipette from the Biohit <em>family&nbsp;</em>is the market leader in performance  and ergonomics. This award winning (Pro Finnish Design 2001) pipette  takes the effort out of pipetting and significantly reduces the risk of  Repetitive Strain Injury (RSI).<br /> <br /> The comprehensive range of pipetting programs in eLINE reduces the need  for several work stages and enables you to dispense liquids twice as  fast compared to a mechanical pipette. The unique DC-motor concept with  build-in error control improves pipetting precision and allows more  reliable results.<br /> <br /> eLINE is available in single-channel models covering the volume range  of 0.1 to 5000 &mu;l and multichannel models from 0.2 to 1200 &mu;l.</p>', 'http://winiharto.com/assets/products/sartorius/EPT_eLINE_Electronic_Pipette_Main_Image.jpg'),
(430, 'eLINE PCR Starter Kit', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>The unique eLINE PCR Starter Kit speeds up the work and prevents pipetting errors in small volumes. The eLINE Lite Dispenser together with the Sterile Sartorius Dispenser Tips is accurate and fast tool in dispensing PCR Master Mix to 96 well plates</p>\r\n<ul>\r\n</ul>\r\n<p>eLINE PCR Starter Kit offers:</p>\r\n<ul>\r\n<li>Pipettes for all standard pipetting volumes in PCR</li>\r\n<li>Contamination free and safe PCR processes</li>\r\n<li>Accurate and precise results</li>\r\n<li>Twice faster MasterMix dispensing by using eLINE Lite Dispenser compared to manual pipetting</li>\r\n<li>User-independent result </li>\r\n</ul>', 'http://winiharto.com/assets/products/sartorius/EPT_eLINE_Starter_Kit_Main_Image.jpg'),
(431, 'Optifit Pipette Tips', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>In liquid handling, the pipette and the tip always form a system.  Perfect tip fitting and sealing to the pipette secures the best possible  accuracy and precision. Thus Biohit''s precision-made Optifit Pipette  Tips, filtered and non-filtered, are made to provide excellent  reproducibility and accuracy. They fit perfectly with Biohit pipettes  and are suitable for use with most other pipette brands.</p>', 'http://winiharto.com/assets/products/sartorius/PPT_Optifit_Pipette_Tip_Main_Image.jpg'),
(432, 'SafetySpace Filter Top', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>Sartorius Biohit&rsquo;s SafetySpace Filter Tips are made of virgin polypropylene and  they feature filter (PE) barriers to prevent aerosol and liquid  contamination. This helps protect against the risk of  cross-contamination and reduces maintenance requirements of the  pipette.&nbsp; <br /><br />The filter tips are well suited for molecular biology, microbiology, cell culture ad radioactive work. <br /><br />SafetySpace  Filter Tips have more space between the sample and the filter than  conventional filter tips. With SafetySpace Filter Tips you do not need  to worry about the sample touching the filter whatever pipetting  technique or type of liquid you&rsquo;re using.</p>', 'http://winiharto.com/assets/products/sartorius/PPT_Safety_Space_Main_Image.jpg'),
(433, 'Filter Tip, Regular', 'CAT014', 'SARTORIUS', NULL, NULL, '<p>Filter tips with regular air gap are made of polypropylene. Filter tips are tray-packed, electron beam pre-sterilized and certified as RNase, DNase and endotoxin free.</p>', 'http://winiharto.com/assets/products/sartorius/PPT_Filter_Tip_Regular_Main_Image.jpg'),
(434, 'Digital CCD', 'CAT015', 'MEDLINE', NULL, NULL, '<p>The reproduction of finest color nuances and the visualization of smallest details due to high resolution offer the suitability of the ProgRes&reg; microscope cameras for high-demanding analysis and reliable documentation. High image refresh rates deliver fast live-images. This simplifies working processes and allows comfortable work-flow.</p>\r\n<p>The proven Microscanning-Technology offers image captures in highest resolution and in breath-taking image quality. The optionally cooled ProgRes&reg; Research cameras in color and monochrome have been optimized for tasks in scientific areas and meet the high requirements, especially in low-light applications.</p>', 'http://winiharto.com/assets/products/medline/CAM_Digital_CCD_Main_Image.jpg'),
(435, 'Digital CMOS', 'CAT015', 'MEDLINE', NULL, NULL, '<p>Digital CMOS cameras are designed to be a cost-effective, versatile solution for clinical, life science, materials science and educational professionals. The cameras are available from 1.3 to 9 megapixel resolutions all of which come with integrated image capture and analysis software.<br /> The Si-3000 camera is a dedicated live feed imaging system with a high speed 3 megapixel 10 bit &frac12; sensor which outputs 12 frames per second @ 2048x1536 pixels or 27f.p.s @ 1280x1024 pixels which is typically 3 times faster than a CCD camera making it easier and faster to scan images in greater detail.</p>', 'http://winiharto.com/assets/products/medline/CAM_Digital_CMOS_Main_Image.jpg'),
(436, 'Digital SLR', 'CAT015', 'MEDLINE', NULL, NULL, '<p>Dedicated microscope digital cameras typically cost more for less resolution, but they have the advantage of being directly controlled by a computer.&nbsp; They typically provide a better preview image, often with focusing aids, and the ability to acquire the image directly into various imaging software though a TWAIN or plug-in interface.</p>\r\n<p><br /> They are also recommended for their versatility, being useable both on and off of the microscope, and for the ease with which they can be moved from one microscope to another.&nbsp;</p>', 'http://winiharto.com/assets/products/medline/CAM_digital_SLR_Main_Image.jpg'),
(437, 'Eyepiece Camera', 'CAT015', 'MEDLINE', NULL, NULL, '<p>Digital Eyepiece cameras from Ceti for use with conventional microscopes. These cameras simply slot into the ocular (eyepiece) of a conventional microscope.</p>\r\n<p>Available in two different sizes, the 23mm ocular size is designed to fit all 23mm ocular microscopes; all PEL''s current microscopes are this size. Secondly we have a 23/30mm model which fits both 23 and 30mm ocular sizes, these are the 2 most common sizes of oculars so will fit the majority of microscopes, but please check your microscope before purchasing, you can do this by removing the eyepiece and measuring the internal diameter (ideally with some vernier calipers).Both models have a USB output and a resolution of 1280x1024 pixels (1.3 megapixels).</p>\r\n<p><br /> The supplied capture software for Windows (or Macs OS 10.4 and above) enables the user to capture still images, real-time video and time-lapsed video streams quickly and easily.</p>', 'http://winiharto.com/assets/products/medline/CAM_Eyepiece_camera_Main_Image.jpg'),
(438, 'i-Solution Image Analysis Software', 'CAT015', 'MEDLINE', NULL, NULL, '<p>The i-Solution family of software from Medline helps you to keep pace  with today&rsquo;s rapidly changing digital technology. This exceptional  software technology and leading image analysis tool will streamline  image capture, measurement and enhancement, whilst improving the  accuracy of your results.</p>\r\n<p><br />All versions combine revolutionary  measurement and analysis technology with an exceptional, user-friendly  interface. Become an expert in image analysis and optimize your work  environment with this imaging software suite! This software is  designed to receive images directly from various hardware sources.  Keeping in tune with today&rsquo;s rapidly changing digital camera technology,  you can directly control digital cameras. IMT software also supports  TWAIN and WDM Drivers, along with a wide variety of frame grabbers and  i-LINK from Sony. The Time Lapse Capture tool offers accurate time  interval analysis for video production for both analog and digital  cameras. Movie recordings can be saved in AVI, MPG, MPEG, and MOV file  formats.</p>', 'http://winiharto.com/assets/products/medline/IAS_i-Solution_Main_Image.jpg'),
(439, 'OF-Series Forced Convection Laboratory Oven', 'CAT018', 'MEDLINE', NULL, NULL, '<p><strong>Forced Convection Ovens (Economic)</strong> <br />Full feature performance for general purpose lab ovens.<br />OF-E series feature a fast drying with vertical air-flow.</p>\r\n<p><strong>Forced Convection Ovens <span style="text-decoration: underline;"><br /></span></strong>Intensive drying performance with a powerful air-flow.<br />OF-G  series, quiet and with a strong air-flow for a high air exchange rate  and short rise time that guarantees intensive drying performance,  especially for material with high moisture content.</p>', 'http://winiharto.com/assets/products/medline/LOE_Medline_Force_Convection_Main_Image.jpg'),
(440, 'ON-Series Laboratory Ovens', 'CAT018', 'MEDLINE', NULL, NULL, '<p><strong>Natural Convection Ovens (Economic) </strong><span style="text-decoration: underline;"><br /> </span>Full features performance for general purpose lab ovens.<br /> ON-E series is a economical warm storage up to 220&#8451;</p>\r\n<p><strong>Natural Convection Ovens </strong><span style="text-decoration: underline;"><br /> </span>Ideal for high temperature storage with user-friendly design<br /> ON-G series is used for all sterilization and drying tasks that do not require high drying rates or special time requirements, ideal for drying applications requiring a gentle airflow.</p>', 'http://winiharto.com/assets/products/medline/NLO_Medline_Natural_convection_Oven_Main_image.jpg'),
(441, 'OV-Series Vacuum Laboratory Oven', 'CAT018', 'MEDLINE', NULL, NULL, '<p>Optimal vacuum oven with a wide temperature range for various test applications.</p>\r\n<p>OV series ovens are ideal for separating solvents from solutions without using high temperature drying and for drying solvents with high boiling points in a vacuum ovens reduces the boiling point of the solvent to make drying easy.</p>', 'http://winiharto.com/assets/products/medline/VLO_Medline_Vacuum_Oven_Main_Image.jpg'),
(442, 'Medline Vacuum Laboratory Oven Accessories', 'CAT018', 'MEDLINE', NULL, NULL, '<p>Accessories for Medline Vacuum Laboratory Oven</p>', 'http://winiharto.com/assets/products/medline/VLO_Accessories_Medline_vacumm_Main_Image.jpg'),
(443, 'Natural Convection Oven', 'CAT018', 'DETS', NULL, NULL, '<p><span>Microprocess PID control / Auto-tuning/ Calibration</span><br /><span>Corrosion-resistant incoloy sheath heater and STS #304 interior</span></p>\r\n<p><span>&nbsp;</span><br /><span><a href="https://www.reviewrolex.com/replica-cartier-hypnose-watches/">Replica Cartier Hypnose Watches</a></span></p>\r\n<p><span>Gravity-flow convection with vertical airflow for uniform sample heating</span><br /><span>Fully Insulated dual-wall door</span><br /><span>Two circular adjustable vent Holes to control air vapor circulation</span></p>\r\n<p>&nbsp;</p>\r\n<p><span><a href="http://www.Swiss-Replica-Watches.eu/category/laurent-ferrier-replica-watches/">Laurent Ferrier replica watches</a></span></p>', 'http://winiharto.com/assets/products/dets/pro01_img08.jpg'),
(444, 'Digital POLARIS', 'CAT020', 'MEDLINE', NULL, NULL, '<p>The all-new digital Polaris polarimeter, equipped with a selft test for rotating the angle and sugar degree as one complete operation time; all results are clearly displayed on the unique LCD display.</p>', 'http://winiharto.com/assets/products/medline/PLE_Medline_Polarimeter_Main_Equipment.jpg'),
(445, 'POLARIS Polarimeter', 'CAT020', 'MEDLINE', NULL, NULL, '<p>Rotating polarimeter 360&deg; with 180&deg; left and 180&deg; right rotation with double vernier scale and monochromatic light source</p>', 'http://winiharto.com/assets/products/medline/PLE_Medline_Polaris_Polarimeter_Main_Image.jpg'),
(446, 'Becelec II', 'CAT023', 'MEDLINE', NULL, NULL, '<p>The Becelec electric burner offers a unique replacement option to conventional gas bunsen burners. The high power heater combined with a reflective internal stainless steel bowl produces a concentrated stream of heat comparable with that of existing gas powered bunsen burners. A wire safety guard is included and optional &lsquo;flame gel&rsquo; and stainless steel plate allow for a safely controlled flame when required (not included).</p>\r\n<p><a href="http://www.watchesonsales.org.uk/category/replica-rolex-submariner/">Replica Rolex Submariner</a></p>\r\n<p>&nbsp;</p>\r\n<p><a href="http://www.replicafinewatches.co.uk/fake-omega-watches-uk">Fake Omega Watches UK</a></p>', 'http://winiharto.com/assets/products/medline/BTE_Becelec_Main_Image.jpg'),
(447, 'Round Desicccators', 'CAT023', 'MEDLINE', NULL, NULL, '<p>Durable Vacuum Desiccators (Transparent models)</p>\r\n<ul>\r\n<li> Offer reliable vacuum condition: Desiccators holds -0.1 Mpa for 72 hours.</li>\r\n<li> Fitted with an airtight silicon gasket to maintain a tight vacuum seal without the use of any grease.</li>\r\n</ul>', 'http://winiharto.com/assets/products/medline/BTE_Round_Dessiccators_Main_Image.jpg'),
(448, 'Cubic Dessicators', 'CAT023', 'MEDLINE', NULL, NULL, '<p>Four multi-shelved stackable cubic desiccators which are made from highly transparent, non-corrosive and shatter-proof Polycarbonate. The internal volumes range from 11 up to 45 litres with between 2 and 6 shelves, (model dependent) and this significantly enhances the storage capacity of the desiccators.</p>\r\n<p>Each unit is available in smoked acrylic to block UV light which facilitates the safe storage of light sensitive products without the risk of discolouration</p>', 'http://winiharto.com/assets/products/medline/BTE_Cubic_Dessicators_Main_Image.jpg'),
(449, 'Electric Aspirators', 'CAT023', 'MEDLINE', NULL, NULL, '<p>The VE-11 aspirator creates a vacuum using an aspirator pump that is dependent on the vapor pressure of water, a function of temperature. Ideal for rotary vacuum evaporators, decompressing distillatories, vacuum dryers, and vacuum filtering units.</p>', 'http://winiharto.com/assets/products/medline/BTE_Electric_Aspirators_Main_Image.jpg'),
(450, 'Extraction Mantles', 'CAT023', 'MEDLINE', NULL, NULL, '<p>The EAM series of&nbsp;Multiposition (Extraction) Mantles are designed to heat between 3 and 6 round bottom flasks (from 50ml to 1000ml)&nbsp;simultaneously. They are often used for extraction, but may be used wherever heating of multiple flasks is required. Independant temperature control ensures&nbsp;optimal performance and safety.&nbsp;</p>', 'http://winiharto.com/assets/products/medline/BTE_Extraction_Mantle_Main_Image.jpg'),
(451, 'Flask Support', 'CAT023', 'MEDLINE', NULL, NULL, '<p>A&nbsp;concave recessed, secure, and safe multi-volume flask holder (100ml to 2000ml) ensures the safety for a variety of different flask shapes.</p>\r\n<ul>\r\n<li> Convenient grip for easy carrying.</li>\r\n<li>Recognisable name tag for classification.</li>\r\n<li> Multi-purpose holder is also&nbsp;able to hold ice.</li>\r\n</ul>', 'http://winiharto.com/assets/products/medline/BTE_Flask_Support_Main_Image.jpg'),
(452, 'Heating Mantles', 'CAT023', 'MEDLINE', NULL, NULL, '<p>Flexible heating element ensures minimum risk of flask breakage.</p>\r\n<p>These controlled and grounded electromantles feature a built-in power regulator and safety earth (ground) screen. <br /> The replaceable coiled heating element is suspended within a thermal insulating cartridge to provide maximum heat transfer and support. Glass fibre insulation coupled with excellent ventilation helps to keep the outer aluminium casing cool. Built-in power controller has dial markings from 1 to 10 for excellent repeatability.</p>\r\n<p>Medline E-Series Mantles feature indicator lights: a green coloured "power-on" light (and switch) with an amber coloured "heater-on" light. The stainless steel grounding screen provides added protection against shock in the event of spillage or flask breakage. Available sizes are from 50ml up to 20,000ml and the digital mantles (DM-Series) include additional PID temperature controller and probe.&nbsp;</p>', 'http://winiharto.com/assets/products/medline/BTE_Heating_Mantles_Main_Image.jpg'),
(453, 'Bacti Burner', 'CAT023', 'MEDLINE', NULL, NULL, '<p>The Medline Bacti-Burner is designed for &ldquo;on the bench&rdquo; sterilization of research microbiology tools. It has an asbestos-free core element that uses infrared heating to produce 815&deg;C (1500&deg;F). It completely sterilizes microorganisms within 5-7 seconds and provides instant sterilization of platinum inoculating loops, needles, glass tube/pipette mouths and various metal &amp; borosilicate glass instruments, commonly used in microbiology research</p>\r\n<p>The ceramic heating element is safely enclosed in a perforated stainless steel guard chamber, protecting users from accidental contact with the extreme temperatures of the core area. It is extremely compact, convenient and can be used in anaerobic and aerobic chambers.</p>', 'http://winiharto.com/assets/products/medline/BTE_Bacti_Burner_Main_Image.jpg');
INSERT INTO `p_new_products` (`PROD_ID`, `NAME`, `PRODUCT_ID`, `BRAND_CATEGORY`, `BRAND_ID`, `BRAND_SUBCATEGORY`, `SUMMARY`, `IMAGES`) VALUES
(454, 'Recirculating Coolers', 'CAT023', 'MEDLINE', NULL, NULL, '<div><strong>Recirculating</strong><strong> Coolers (Basic Type) </strong><span style="text-decoration: underline;"><br /> </span>Providing a constant temperature control and high cooling efficiency.<br /> \r\n<ul>\r\n<li> Operating cost can be reduced by using the recirculator for cooling water.</li>\r\n<li> It is eco-friendly and reduces energy consumption.</li>\r\n</ul>\r\n</div>\r\n<div><strong>Low Temp. Recirculating</strong><strong> Coolers (General Type) </strong><span style="text-decoration: underline;"><br /> </span>Powerful recirculating coolers, the HL series provide a wide range of cooling capacities with temperature reliability.<br /> \r\n<ul>\r\n<li>&nbsp; Innovative control system, with a dynamic pumping capacity, and ideal for external temperature applications.</li>\r\n<li>&nbsp; Broad range of models to choose from based on working temperature range.</li>\r\n</ul>\r\n</div>\r\n<div><strong>Low Temp. Recirculating</strong><strong> Coolers (Intelligent Type) </strong><span style="text-decoration: underline;"><br /> </span>Adjustable, precise PID temperature controller beneficial for various cooling tasks, for use in the science, research, and industrial laboratories.<br /> Innovative and exclusive controller can be adjusted the cooling capacity from 1% to 100%</div>', 'http://winiharto.com/assets/products/medline/BTE_Recirculating_Coolers_Main_Image.jpg'),
(455, 'Thermocyclers', 'CAT023', 'MEDLINE', NULL, NULL, '<p>A high performance range of thermocyclers with PCR technology designed for the 21st century. The combination of high specification engineering and superior system control enables powerful, fast ramping, stable temperature control with a high level of system reliability. The ''touch sensitive&rsquo; key control with LCD digital display and the universal blocks for 0.2 ml and 0.5 ml tubes result in unique ease of use. Various interchangeable blocks are available for all Medline thermocyclers.</p>\r\n<p><a href="http://www.watchesonly2015.co.uk/rolex-replica-air-king/">Rolex Replica Air King</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><a href="http://www.omegareplicasale.co.uk/fake-omega-watches/">fake Omega watches</a></p>', 'http://winiharto.com/assets/products/medline/BTE_Thermocyclers_Main_Image.jpg'),
(456, 'Ultrasonic Cleaners', 'CAT023', 'MEDLINE', NULL, NULL, '<p>Industrial B.L.T type ultrasonic transducer generates high-frequency sound waves that provides maximum cleaning power. UC / US-P types have an increased frequency range to improve cleaning ability.</p>\r\n<p>Ideal for cleaning laboratory, medical instruments / industrial microbiological goods / glassware and jewels.</p>', 'http://winiharto.com/assets/products/medline/BTE_Ultrasonic_Cleaners_Main_Image.jpg'),
(457, 'Vortex Mixers', 'CAT023', 'MEDLINE', NULL, NULL, '<ul>\r\n<li>Vortex shakers with compact design </li>\r\n<li>Touch or continuous operation </li>\r\n<li>Wide speed ranges 0 - 3,000rpm (Model dependant)</li>\r\n<li>Multiple applications with additional accessories for holding microtubes, test tubes and microplates </li>\r\n<li>Robust case with specially designed silicone feet to absorb vibration at high speeds </li>\r\n<li>Heavy base with ultra high vibration damping </li>\r\n<li>High sensitive touch switch mode used to reduce wrist stress.</li>\r\n<li>Strong BLDC motor offers accurate control of speed with silent operation.</li>\r\n<li>Low center of gravity design with a heavy base, minimizes vibration and sliding movements caused by high rpm speeds.</li>\r\n</ul>', 'http://winiharto.com/assets/products/medline/BTE_Vortex_Mixers_Main_Image.jpg'),
(458, 'Water Stills', 'CAT023', 'MEDLINE', NULL, NULL, '<p>Automatic water distillers (glass or stainless steel) that supply an output of high purity water&nbsp; (conductivity: 2 &mu;S &bull; cm-1 a 20&ordm;C) free of metallic ions and pyrogen. The water quality is considered ASTM III/IV (laboratory grade).<br /> In order to always obtain the maximum degree of water purity, we recommend to periodically control the quality of the water supplied to the still and to maintain the inner part of the still in good cleaning conditions.</p>\r\n<p>Supplied assembled.</p>', 'http://winiharto.com/assets/products/medline/BTE_Water_Stills_Main_image.jpg'),
(459, 'Testing Incube', 'INC123', NULL, NULL, NULL, NULL, NULL),
(460, 'Testing Incube', 'INC123', NULL, NULL, NULL, NULL, NULL),
(461, 'Testing Incube', 'INC123', 'Testing Incube', NULL, NULL, NULL, NULL),
(462, 'AQUA', 'AQUA-48', '', 'asd', 'Incube', NULL, NULL),
(463, 'Testing Incube', 'INC123', '', 'BNZ-03', 'MNB-F-01', NULL, NULL),
(464, 'Testing Incube', 'INC123', 'CHINA', 'GCC-02', 'MNB-F-01', NULL, NULL),
(467, 'asd', 'sss123', 'SARTORIUS', 'BNZ-02', 'MNB-L-05', 'testing', './upload/image/LOGO_LCR.jpg'),
(466, 'Testing Incubej gjgjgjg', 'INC123', 'CHINA', 'GCC-03', 'MNB-F-03', 'asdlllllll', './upload/image/IMAGE_bDMVv654.png'),
(468, 'incube4', 'INCUBE', 'PT', 'GCC-02', 'MNB-L-05', 'ini testing doang', './upload/image/IMAGE_lpsq5PxY.jpg'),
(469, 'info', 'informasi', 'SARTORIUS', 'BNZ-10', 'FTC-S-06', 'informasi sekilas', './upload/image/IMAGE_hpbHT3Y3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `p_subcategory`
--

CREATE TABLE IF NOT EXISTS `p_subcategory` (
  `ID` varchar(30) NOT NULL DEFAULT '',
  `CATEGORY_NAME` varchar(150) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(250) NOT NULL DEFAULT '',
  `ORDER_NO` varchar(10) DEFAULT NULL,
  `CATEGORY_ID` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_subcategory`
--

INSERT INTO `p_subcategory` (`ID`, `CATEGORY_NAME`, `DESCRIPTION`, `ORDER_NO`, `CATEGORY_ID`) VALUES
('BAL001', 'Ultra-Micro/Micro/Semi-Micro Balances', 'LAB', 'BA1', 'CAT001'),
('BAL002', 'Analytical Balances', 'LAB', 'BA2', 'CAT001'),
('BAL003', 'Precision Balances', 'LAB', 'BA3', 'CAT001'),
('MOA001', 'Infra-Red Moisture Analyzers', 'LAB', 'MA1', 'CAT003'),
('SHI001', 'Incubators and Incubation Shakers', 'LAB', 'SI1', 'CAT005'),
('SHI002', 'CO2 Incubators', 'LAB', 'SI2', 'CAT005'),
('SHI003', 'Incubation Hoods', 'LAB', 'SI3', 'CAT005'),
('HOM001', 'Micro ? Dismembrators', 'LAB', 'HM1', 'CAT006'),
('HOM002', 'Potter S Homogenizers', 'LAB', 'HM2', 'CAT006'),
('HOM003', 'Ultrasonic Homogenizers', 'LAB', 'HM3', 'CAT006'),
('HOM004', 'Hand Homogenizers', 'LAB', 'HM4', 'CAT006'),
('CTF001', 'Clinical Centrifuges', 'LAB', 'CF1', 'CAT004'),
('CTF002', 'Micro Centrifuges', 'LAB', 'CF2', 'CAT004'),
('CTF004', 'Large Volume Centrifuges', 'LAB', 'CF4', 'CAT004'),
('CTF003', 'Universal Centrifuges', 'LAB', 'CF3', 'CAT004'),
('SPM001', 'Spectrophotometers', 'LAB', 'SM1', 'CAT007'),
('BFS001', 'Industrial Complete Scales', 'IND', 'BS1', 'CAT-IND-001'),
('BFS002', 'Weighing Platforms', 'IND', 'PLS01', 'CAT-IND-004'),
('BFS003', 'Terminals/Indicators', 'IND', 'PLS02', 'CAT-IND-004'),
('TSW001', 'System Controllers', 'IND', 'TW1', 'CAT-IND-002'),
('TSW002', 'Process Transmitter', 'IND', 'TW2', 'CAT-IND-002'),
('TSW003', 'Process Indicators', 'IND', 'TW3', 'CAT-IND-002'),
('TSW004', 'Load Cells', 'IND', 'TW4', 'CAT-IND-002'),
('BFS004', 'Platform Load Cells', 'IND', 'BS4', 'CAT-IND-004'),
('PHM001', 'pH-Meters/ mV-Meters/Conductivity Meter', 'LAB', 'PM1', 'CAT002'),
('PHM002', 'Ion-Meters/pH-Meters/mV-Meters', 'LAB', 'PM2', 'CAT002'),
('PHM006', 'Meter Accessories', 'LAB', 'PM6', 'CAT002'),
('MOA002', 'Microwave Moisture Analyzer', '', 'MA2', 'CAT003'),
('PHM005', 'pH Electrodes/Conductivity Sensors', 'LAB', 'PM3', 'CAT002'),
('TSC001', 'Load Cells ', 'IND', 'TS1', 'CAT-IND-003'),
('CMS001', 'Compound and Teaching Microscope', 'LAB', 'CM01', 'CAT013'),
('TCS003', 'Weighing Platform', 'IND', 'TS3', 'CAT-IND-003'),
('CMS002', 'Industrial and Research Microscope', 'LAB', 'CMS02', 'CAT013'),
('CMS003', 'Reflected and Transmitter Light Microscopes', 'LAB', 'CMS03', 'CAT013'),
('CMS004', 'Stereo and Stereoscopic Microscopes', 'LAB', 'CMS04', 'CAT013'),
('CMS005', 'Accessories', 'LAB', 'CMS05', 'CAT013'),
('BTE001', 'Bench Top Laboratory Equipments', 'LAB', 'BE01', 'CAT023'),
('CAS001', 'Cameras', 'LAB', 'CAS01', 'CAT015'),
('CAS002', 'Analysis Software', 'LAB', 'CAS02', 'CAT015'),
('LWB001', 'Laboratory Waterbath ', 'LAB', 'LWB01', 'CAT019'),
('LAO002', 'Forced Convection Laboratory Oven', 'LAB', 'LAO02', 'CAT018'),
('LAO003', 'Natural Convection Laboratory Oven', 'LAB', 'LAO03', 'CAT018'),
('LAO004', 'Vacuum Laboratory Oven', 'LAB', 'LAO04', 'CAT018'),
('LWB002', 'Laboratory Waterbath Accessories', 'LAB', 'LWB02', 'CAT019'),
('PLM001', 'Polarimeters', 'LAB', 'PLM01', 'CAT020'),
('RFM001', 'Refractometers', 'LAB', 'RFM01', 'CAT010'),
('SHI004', 'Shakers and Stirrers', 'LAB', 'SI4', 'CAT005'),
('PLS003', 'Ex Weighing Platform', 'IND', 'EW3', 'CAT-IND-005'),
('PLS004', 'Ex Weighing Indicator', 'IND', 'EW2', 'CAT-IND-005'),
('BFS005', 'Ex Complete Scale', 'IND', 'EW1', 'CAT-IND-005'),
('CMP001', 'Mass Comparator', 'LAB', 'CMP001', 'CAT008'),
('WGT001', 'Weight', 'LAB', 'WGT001', 'CAT009'),
('SFW001', 'Process Control Software', 'OTH', 'SFW001', 'CAT-OTH-002'),
('LWS001', 'Lab Water Purification', '', 'LWS001', 'CAT011'),
('TSC03', 'Truck Scale Indicator', '', 'TSC03', 'CAT-IND-003'),
('LHS001', 'Mechanical Pipettes', 'LAB', 'LHS001', 'CAT014'),
('LHS002', 'Electronic Pipettes', 'LAB', 'LHS002', 'CAT014'),
('LHS003', 'Pipette Tips', 'LAB', 'LHS003', 'CAT014'),
('LHS004', 'Dispensers and Bottle-top Dispensers', 'LAB', 'LHS004', 'CAT014'),
('LHS005', 'Pipette Accessories ', 'LAB', 'LHS005', 'CAT014'),
('LHS006', 'Pipetting Aids', 'LAB', 'LHS006', 'CAT014'),
('LHS007', 'Pipetting Academy', 'LAB', 'LHS007', 'CAT014');

-- --------------------------------------------------------

--
-- Table structure for table `s_appl`
--

CREATE TABLE IF NOT EXISTS `s_appl` (
  `ID` varchar(15) NOT NULL DEFAULT '',
  `APPL_GROUP_ID` varchar(15) NOT NULL DEFAULT '',
  `NAME` varchar(50) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(150) DEFAULT NULL,
  `ORDER_NO` tinyint(4) NOT NULL DEFAULT '0',
  `LINK` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_appl`
--

INSERT INTO `s_appl` (`ID`, `APPL_GROUP_ID`, `NAME`, `DESCRIPTION`, `IMAGE`, `ORDER_NO`, `LINK`) VALUES
('COMPANY', 'ABOUT', 'About Company', 'fas fa-building', '', 1, 'about'),
('VISION', 'ABOUT', 'Vision & Mission', 'fas fa-crosshairs', '', 2, 'vision'),
('CUSTOMER', 'ABOUT', 'Our Customers', 'fas fa-users', '', 3, 'customer'),
('PRODUCT', 'MAIN', 'Our Products', 'fas fa-balance-scale', NULL, 1, 'our_products'),
('WORKSHOP', 'MAIN', 'Workshop', 'fas fa-briefcase', NULL, 2, 'workshop'),
('NEWS', 'MAIN', 'Latest News', 'fas fa-newspaper', NULL, 3, 'news'),
('SUB-CATEGORY', 'PARAMETERS', 'Sub-Category', 'fas fa-newspaper', NULL, 3, 'subcategory'),
('CATEGORY', 'PARAMETERS', 'Category', 'fas fa-newspaper', NULL, 2, 'category'),
('BRANDS', 'PARAMETERS', 'Our Brands', 'fas fa-newspaper', NULL, 1, 'brand'),
('HISTORY', 'HISTORY', 'Distribution History', 'fas fa-history', NULL, 1, 'history');

-- --------------------------------------------------------

--
-- Table structure for table `s_appl_detail`
--

CREATE TABLE IF NOT EXISTS `s_appl_detail` (
  `APPL_ID` varchar(15) NOT NULL DEFAULT '',
  `ID` varchar(15) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `ORDER_NO` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`APPL_ID`,`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_appl_detail`
--

INSERT INTO `s_appl_detail` (`APPL_ID`, `ID`, `DESCRIPTION`, `ORDER_NO`) VALUES
('CATEGORY', 'DELETE', 'DELETE', 4),
('CATEGORY', 'EDIT', 'EDIT', 3),
('CATEGORY', 'ADD', 'ADD', 2),
('CATEGORY', 'VIEW', 'VIEW', 1),
('MEMBER', 'DELETE', 'DELETE', 3),
('MEMBER', 'EDIT', 'EDIT', 2),
('MEMBER', 'VIEW', 'VIEW', 1),
('GROUP', 'DELETE', 'DELETE', 4),
('GROUP', 'EDIT', 'EDIT', 3),
('GROUP', 'ADD', 'ADD', 2),
('GROUP', 'VIEW', 'VIEW', 1),
('USER', 'DELETE', 'DELETE', 4),
('USER', 'EDIT', 'EDIT', 3),
('USER', 'ADD', 'ADD', 2),
('USER', 'VIEW', 'VIEW', 1),
('BANNER', 'UPLOAD', 'UPLOAD', 5),
('BANNER', 'DELETE', 'DELETE', 4),
('BANNER', 'EDIT', 'EDIT', 3),
('BANNER', 'ADD', 'ADD', 2),
('BANNER', 'VIEW', 'VIEW', 1),
('PRODUCT', 'UPLOAD', 'UPLOAD', 5),
('PRODUCT', 'DELETE', 'DELETE', 4),
('PRODUCT', 'EDIT', 'EDIT', 3),
('PRODUCT', 'ADD', 'ADD', 2),
('PRODUCT', 'VIEW', 'VIEW', 1),
('COMPANY', 'VIEW', 'VIEW', 1),
('COMPANY', 'ADD', 'ADD', 2),
('COMPANY', 'EDIT', 'EDIT', 3),
('COMPANY', 'DELETE', 'DELETE', 4),
('COMPANY', 'UPLOAD', 'UPLOAD', 5),
('VISION', 'VIEW', 'VIEW', 1),
('VISION', 'ADD', 'ADD', 2),
('VISION', 'EDIT', 'EDIT', 3),
('VISION', 'DELETE', 'DELETE', 4),
('VISION', 'UPLOAD', 'UPLOAD', 5),
('CUSTOMER', 'VIEW', 'VIEW', 1),
('CUSTOMER', 'ADD', 'ADD', 2),
('CUSTOMER', 'EDIT', 'EDIT', 3),
('CUSTOMER', 'DELETE', 'DELETE', 4),
('CUSTOMER', 'UPLOAD', 'UPLOAD', 5),
('WORKSHOP', 'VIEW', 'VIEW', 1),
('WORKSHOP', 'ADD', 'ADD', 2),
('WORKSHOP ', 'EDIT', 'EDIT', 3),
('WORKSHOP', 'DELETE', 'DELETE', 4),
('WORKSHOP', 'UPLOAD', 'UPLOAD', 5),
('NEWS', 'VIEW', 'VIEW', 1),
('NEWS', 'ADD', 'ADD', 2),
('NEWS', 'EDIT', 'EDIT', 3),
('NEWS', 'DELETE', 'DELETE', 4),
('NEWS', 'UPLOAD', 'UPLOAD', 5),
('HISTORY', 'UPLOAD', 'UPLOAD', 5),
('HISTORY', 'DELETE', 'DELETE', 4),
('HISTORY', 'EDIT', 'EDIT', 3),
('HISTORY', 'ADD', 'ADD', 2),
('HISTORY', 'VIEW', 'VIEW', 1),
('SUB-CATEGORY', 'UPLOAD', 'UPLOAD', 5),
('SUB-CATEGORY', 'DELETE', 'DELETE', 4),
('SUB-CATEGORY', 'EDIT', 'EDIT', 3),
('SUB-CATEGORY', 'ADD', 'ADD', 2),
('SUB-CATEGORY', 'VIEW', 'VIEW', 1),
('BRANDS', 'UPLOAD', 'UPLOAD', 5),
('BRANDS', 'DELETE', 'DELETE', 4),
('BRANDS', 'EDIT', 'EDIT', 3),
('BRANDS', 'ADD', 'ADD', 2),
('BRANDS', 'VIEW', 'VIEW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `s_appl_group`
--

CREATE TABLE IF NOT EXISTS `s_appl_group` (
  `ID` varchar(15) NOT NULL DEFAULT '',
  `NAME` varchar(100) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ORDER_NO` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_appl_group`
--

INSERT INTO `s_appl_group` (`ID`, `NAME`, `DESCRIPTION`, `ORDER_NO`) VALUES
('MAIN', 'Main Module', 'fas fa-home', 1),
('SYSTEM', 'System', 'fas fa-users-cog', 4),
('GENERAL', 'General Settings', 'fas fa-cogs', 2),
('ABOUT', 'About Us', 'fas fa-id-card', 3),
('PARAMETERS', 'Parameters', 'fas fa-table', 5),
('HISTORY', 'History', 'fas fa-history', 6);

-- --------------------------------------------------------

--
-- Table structure for table `s_group`
--

CREATE TABLE IF NOT EXISTS `s_group` (
  `ID` varchar(15) NOT NULL DEFAULT '',
  `NAME` varchar(100) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_group`
--

INSERT INTO `s_group` (`ID`, `NAME`, `DESCRIPTION`) VALUES
('ADMIN', 'Administrator', 'Administrator'),
('Member Admin', 'Member Admin', 'Member Admin'),
('SUPPLIER', 'Supplier Management', 'Supplier');

-- --------------------------------------------------------

--
-- Table structure for table `s_group_appl`
--

CREATE TABLE IF NOT EXISTS `s_group_appl` (
  `GROUP_ID` varchar(15) NOT NULL DEFAULT '',
  `APPL_ID` varchar(15) NOT NULL DEFAULT '',
  `ROLE` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`GROUP_ID`,`APPL_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_group_appl`
--

INSERT INTO `s_group_appl` (`GROUP_ID`, `APPL_ID`, `ROLE`) VALUES
('ADMIN', 'GROUP', 'VIEW; ADD; EDIT; DELETE; '),
('ADMIN', 'USER', 'VIEW; ADD; EDIT; DELETE; '),
('ADMIN', 'PRODUCT', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'PRIVACY', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'CONTACT', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'FAQ', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'TERMS', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'BANNER', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'ABOUT', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'MEMBER', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'ORDER', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'MARGIN', 'VIEW;ADD;EDIT;DELETE;UPLOAD'),
('ADMIN', 'HOWTO', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'COMPANY', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'VISION', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'CUSTOMER', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'WORKSHOP', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'NEWS', 'VIEW; ADD; EDIT; DELETE; UPLOAD; '),
('ADMIN', 'BRANDS', 'VIEW; ADD; EDIT; DELETE; UPLOAD;'),
('ADMIN', 'CATEGORY', 'VIEW; ADD; EDIT; DELETE; UPLOAD;'),
('ADMIN', 'SUB-CATEGORY', 'VIEW; ADD; EDIT; DELETE; UPLOAD;'),
('ADMIN', 'HISTORY', 'VIEW; ADD; EDIT; DELETE; UPLOAD;');

-- --------------------------------------------------------

--
-- Table structure for table `s_user`
--

CREATE TABLE IF NOT EXISTS `s_user` (
  `ID` varchar(15) NOT NULL DEFAULT '',
  `NAME` varchar(15) NOT NULL DEFAULT '',
  `PASS` varchar(50) DEFAULT NULL,
  `GROUP_ID` varchar(15) NOT NULL DEFAULT '',
  `STATUS` varchar(15) NOT NULL DEFAULT '',
  `ATTEMPTED_LOGIN` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_user`
--

INSERT INTO `s_user` (`ID`, `NAME`, `PASS`, `GROUP_ID`, `STATUS`, `ATTEMPTED_LOGIN`) VALUES
('admin', 'Administrator', 'e99a18c428cb38d5f260853678922e03', 'ADMIN', 'ACTIVE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `w_blog`
--

CREATE TABLE IF NOT EXISTS `w_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_date` date DEFAULT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `blog_content` text,
  `blog_summary` text,
  `blog_tags` varchar(255) DEFAULT NULL,
  `blog_thumbnails` varchar(50) DEFAULT NULL,
  `blog_user_id` varchar(15) DEFAULT NULL,
  `blog_updated` datetime DEFAULT NULL,
  `blog_created` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `w_images`
--

CREATE TABLE IF NOT EXISTS `w_images` (
  `images_id` int(11) NOT NULL AUTO_INCREMENT,
  `images_path` varchar(255) NOT NULL,
  PRIMARY KEY (`images_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `w_type`
--

CREATE TABLE IF NOT EXISTS `w_type` (
  `ID` varchar(15) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `ORDER_NO` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `w_type`
--

INSERT INTO `w_type` (`ID`, `NAME`, `DESCRIPTION`, `ORDER_NO`) VALUES
('BAL', 'Laboratory Weighing', '', '2'),
('IND', 'Industrial Weighing', '', '1'),
('LAB', 'Laboratory Equipment', '', '3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
