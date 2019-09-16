-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 12, 2018 at 05:25 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cashierdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `ID` int(11) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Total Cost` double NOT NULL,
  `finished` varchar(5) NOT NULL,
  `Cashier ID` int(11) NOT NULL,
  `client ID` int(11) DEFAULT NULL,
  `Table Number` int(11) DEFAULT NULL,
  `itemsCost` double NOT NULL,
  `delivery` double NOT NULL,
  `service` double NOT NULL,
  `discount` double NOT NULL,
  `sales tax` double NOT NULL,
  `Shift Id` int(11) NOT NULL,
  `Date Time` datetime NOT NULL,
  `delivery worker id` int(11) DEFAULT NULL,
  `Date Time to finish` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `billclient`
--

CREATE TABLE `billclient` (
  `BillId` int(11) NOT NULL,
  `ClientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `billitems`
--

CREATE TABLE `billitems` (
  `BillID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Amount` float NOT NULL,
  `itemPrice` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `catID` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `name`, `catID`, `main`, `deleted`) VALUES
(39, 'الوجبات', -1, 0, 0),
(40, 'السندوتشات', -1, 0, 0),
(41, 'المقبلات', -1, 0, 0),
(42, 'السلطات', -1, 0, 0),
(43, 'الحلو', -1, 0, 0),
(44, 'المأكولات البحرية', -1, 0, 0),
(45, 'فواكه البحر', -1, 0, 0),
(46, 'الطواجن', -1, 0, 0),
(47, 'الشوربة', -1, 0, 0),
(48, 'المعجنات', -1, 0, 0),
(49, 'المكرونات', -1, 0, 0),
(50, 'وقار بلدي', 44, 0, 0),
(51, 'دنيس', 44, 0, 0),
(52, 'قاروص', 44, 0, 0),
(53, 'لوت بلدي', 44, 0, 0),
(54, 'قشر بياض بلدي', 44, 0, 0),
(55, 'بوري', 44, 0, 0),
(56, 'بلطي', 44, 0, 0),
(57, 'ماكريل', 44, 0, 0),
(58, 'فيليه قشر بلدي', 44, 0, 0),
(59, 'سبيط بلدي', 44, 0, 0),
(60, 'كاليماري بلدي', 44, 0, 0),
(61, 'فيليه', 44, 0, 0),
(62, 'موسى', 44, 0, 0),
(63, 'ثعابين', 44, 0, 0),
(64, 'جمبري جامبو', 45, 0, 0),
(65, 'جمبري وسط', 45, 0, 0),
(66, 'استاكوزا', 45, 0, 0),
(67, 'كابوريا', 45, 0, 0),
(68, 'جندوفلي', 45, 0, 0),
(69, 'بلح البحر', 45, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `name` varchar(44) DEFAULT '',
  `phone` varchar(44) NOT NULL,
  `address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `constants`
--

CREATE TABLE `constants` (
  `Name` varchar(25) NOT NULL,
  `Value` double NOT NULL,
  `ratio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `constants`
--

INSERT INTO `constants` (`Name`, `Value`, `ratio`) VALUES
('delivery charge', 0, 0),
('discount', 0, 0),
('Print Pages Number', 1, 0),
('sales tax', 0, 0),
('table tax', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivery crew`
--

CREATE TABLE `delivery crew` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `Address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user Id` int(11) NOT NULL,
  `event` text NOT NULL,
  `date time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ID` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `price` double NOT NULL,
  `catID` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ID`, `name`, `price`, `catID`, `main`, `deleted`) VALUES
(110, 'وجبة سي فود', 40, 39, 0, 0),
(111, 'وجبة جمبري', 35, 39, 0, 0),
(112, 'وجبة فيليه', 30, 39, 0, 0),
(113, 'وجبة بلطي', 35, 39, 0, 0),
(114, 'وجبة بوري', 45, 39, 0, 0),
(115, 'سندوتش جمبري ك', 20, 40, 0, 0),
(116, 'سندوتش جمبري وسط', 6, 40, 0, 0),
(117, 'سندوتش سبيط كبير', 20, 40, 0, 0),
(118, 'سندويتش سبيط وسط', 15, 40, 0, 0),
(119, 'سندويتش فيليه كبير', 20, 40, 0, 0),
(120, 'سندويتش فيليه وسط', 15, 40, 0, 0),
(121, 'طلب سمبوسة', 50, 41, 0, 0),
(122, 'طلب سبرينج رول', 50, 41, 0, 0),
(123, 'طلب ملوخية بالجمبري', 30, 41, 0, 0),
(124, 'طلب فيليه مشوي محشي', 50, 41, 0, 0),
(125, 'طلب كبيبة مشوي', 50, 41, 0, 0),
(126, 'طلب كبيبة مقلية', 50, 41, 0, 0),
(127, 'سلطة خضراء', 5, 42, 0, 0),
(128, 'سلطة طحينة', 5, 42, 0, 0),
(129, 'سلطة بابا غنوج', 5, 42, 0, 0),
(130, 'سلطة طماطم متبلة', 5, 42, 0, 0),
(131, 'سلطة رنجة', 25, 42, 0, 0),
(132, 'سلطة تونة', 25, 42, 0, 0),
(133, 'سلطة زبادي', 10, 42, 0, 0),
(134, 'سلطة سي فود', 40, 42, 0, 0),
(135, 'سلطة تومية', 10, 42, 0, 0),
(136, 'سلطةحمص', 10, 42, 0, 0),
(137, 'سلطة تبولة', 10, 42, 0, 0),
(138, 'سلطة كافيار', 40, 42, 0, 0),
(139, 'ارز باللبن', 10, 43, 0, 0),
(140, 'مهلبية', 10, 43, 0, 0),
(141, 'كريم كارميل', 10, 43, 0, 0),
(142, 'جيلي', 10, 43, 0, 0),
(143, 'شوربة سي فود', 40, 47, 0, 0),
(144, 'شوربة مخلية', 40, 47, 0, 0),
(145, 'شوربة جمبري حمراء', 45, 47, 0, 0),
(146, 'شوربة لسان عصفور', 25, 47, 0, 0),
(147, 'شوربة فياجرا', 60, 47, 0, 0),
(148, 'ارز صيادية', 8, 48, 0, 0),
(149, 'ارز ابيض', 6, 48, 0, 0),
(150, 'ارز احمر بالخلطة', 10, 48, 0, 0),
(151, 'ارز بالصوص الكاري', 25, 48, 0, 0),
(152, 'ارز سي فود بالموزاريلا', 30, 48, 0, 0),
(153, 'ارز جمبري', 20, 48, 0, 0),
(154, 'مكرونة سي فود ابيض بالموزاريلا', 35, 49, 0, 0),
(155, 'مكرونة سي فود احمر', 35, 49, 0, 0),
(156, 'مكرونة بالجمبري', 25, 49, 0, 0),
(157, 'طاجن ميكس', 0, 46, 0, 0),
(158, 'طاجن سبيط', 0, 46, 0, 0),
(159, 'طاجن فيليه', 0, 46, 0, 0),
(160, 'طاجن جمبري', 0, 46, 0, 0),
(161, 'وقار مشوي زيت و ليمون', 0, 50, 0, 0),
(162, 'وقار سنجاري', 0, 50, 0, 0),
(163, 'وقار مقلي', 0, 50, 0, 0),
(164, 'وقار طاجن', 0, 50, 0, 0),
(165, 'وقار صينية حمراء', 0, 50, 0, 0),
(166, 'وقار صينية بيضاء', 0, 50, 0, 0),
(167, 'دنيس مشوي زيت و ليمون عالفحم', 0, 51, 0, 0),
(168, 'دنيس مشوي ردة', 0, 51, 0, 0),
(169, 'دنيس طاجن', 0, 51, 0, 0),
(170, 'دنيس صينية حمراء', 0, 51, 0, 0),
(171, 'دنيس صينية بيضاء', 0, 51, 0, 0),
(172, 'دنيس مقلي', 0, 51, 0, 0),
(173, 'قاروص اسكندراني', 0, 52, 0, 0),
(174, 'قاروص مقلي', 0, 52, 0, 0),
(175, 'قاروص صواني بالمكرونة', 0, 52, 0, 0),
(176, 'قاروص مشوي بالردة', 0, 52, 0, 0),
(177, 'لوت سنجاري', 0, 53, 0, 0),
(178, 'لوت مقلي', 0, 53, 0, 0),
(179, 'لوت طاجن', 0, 53, 0, 0),
(180, 'لوت صواني بيضاء', 0, 53, 0, 0),
(181, 'لوت صواني حمراء', 0, 53, 0, 0),
(182, 'قشر مشوي زيت و ليمون', 0, 54, 0, 0),
(183, 'قشر سنجاري', 0, 54, 0, 0),
(184, 'قشر مشوي عالفحم', 0, 54, 0, 0),
(185, 'قشر صواني بطاطس', 0, 54, 0, 0),
(186, 'بوري مشوي زيت و ليمون', 0, 55, 0, 0),
(187, 'بوري سنجاري', 0, 55, 0, 0),
(188, 'بوري مشوي عالفحم', 0, 55, 0, 0),
(189, 'بوري صواني بطاطس', 0, 55, 0, 0),
(190, 'بلطي مشوي', 0, 56, 0, 0),
(191, 'بلطي مقلي', 0, 56, 0, 0),
(192, 'بلطي زيت و ليمون', 0, 56, 0, 0),
(193, 'بلطي سنجاري عالفحم', 0, 56, 0, 0),
(194, 'ماكريل مشوي زيت و ليمون', 0, 57, 0, 0),
(195, 'ماكريل سنجاري', 0, 57, 0, 0),
(196, 'ماكريل مشوي ردة', 0, 57, 0, 0),
(197, 'فيليه قشر مشوي محشي', 0, 58, 0, 0),
(198, 'فيليه قشر مشوي جريل', 0, 58, 0, 0),
(199, 'فيليه قشر مقلي', 0, 58, 0, 0),
(200, 'فيليه قشر صواني بطاطس', 0, 58, 0, 0),
(201, 'سبيط مشوي', 0, 59, 0, 0),
(202, 'سبيط فاهيتا', 0, 59, 0, 0),
(203, 'سبيط مقلي', 0, 59, 0, 0),
(204, 'سبيط صنية بيضاء بطاطس', 0, 59, 0, 0),
(205, 'سبيط صنية حمرا', 0, 59, 0, 0),
(206, 'كاليماري محشي', 0, 60, 0, 0),
(207, 'كاليماري مشوي زيت و ليمون', 0, 60, 0, 0),
(208, 'كاليماري مقلي', 0, 60, 0, 0),
(209, 'فيليه مقلي', 0, 61, 0, 0),
(210, 'فيليه مشوي', 0, 61, 0, 0),
(211, 'فيليه بالصلصلة', 0, 61, 0, 0),
(212, 'موسى مشوية بالذبدة', 0, 62, 0, 0),
(213, 'موسى مقلية بالسمسم و حبة البركة', 0, 62, 0, 0),
(214, 'ثعابين مدفونة بالرز', 0, 63, 0, 0),
(215, 'ثعابين مشوية زيت و ليمون', 0, 63, 0, 0),
(216, 'ثعابين مقلية', 0, 63, 0, 0),
(217, 'ثعابين طاجن بطاطس', 0, 63, 0, 0),
(218, 'جمبري جامبو مشوي', 0, 64, 0, 0),
(219, 'جمبري جامبو مقلي', 0, 64, 0, 0),
(220, 'جمبري جامبو طاجن', 0, 64, 0, 0),
(221, 'جمبري جامبو صنية', 0, 64, 0, 0),
(222, 'جمبري جامبو بترفلاي', 0, 64, 0, 0),
(223, 'جمبري وسط مشوي', 0, 65, 0, 0),
(224, 'جمبري وسط مقلي', 0, 65, 0, 0),
(225, 'جمبري وسط مسلوق', 0, 65, 0, 0),
(226, 'جمبري وسط صنية', 0, 65, 0, 0),
(227, 'استاكوزا مشوي بالزبدة', 0, 66, 0, 0),
(228, 'استاكوزا مسلوقة', 0, 66, 0, 0),
(229, 'استاكوزا مخلية بالبشاميل و الجبنة الموزاريلا', 0, 66, 0, 0),
(230, 'كابوريا مشوية', 0, 67, 0, 0),
(231, 'كابوريا مسلوقة', 0, 67, 0, 0),
(232, 'كابوريا صنية', 0, 67, 0, 0),
(233, 'كابوريا مخلية بالموتزاريلا', 0, 67, 0, 0),
(234, 'جندوفلي إسكندراني', 0, 68, 0, 0),
(235, 'جندوفلي مسلوق بالشوربة', 0, 68, 0, 0),
(236, 'بلح البحر مشوي بزيت و ليمون', 0, 69, 0, 0),
(237, 'بلح البحر مشوي اسكندراني', 0, 69, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `itemsstore`
--

CREATE TABLE `itemsstore` (
  `ShiftID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `Amount` double NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `ID` int(11) NOT NULL,
  `Content` text NOT NULL,
  `message to` int(11) NOT NULL,
  `message from` int(11) NOT NULL,
  `sean` varchar(10) NOT NULL,
  `Date Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paidmoney`
--

CREATE TABLE `paidmoney` (
  `amount` float NOT NULL,
  `description` text NOT NULL,
  `cashierId` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `income` varchar(6) NOT NULL,
  `id` int(11) NOT NULL,
  `clientId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `cashierId` int(11) NOT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `shiftId` int(11) NOT NULL,
  `cashierId` int(11) NOT NULL,
  `paidSales` float DEFAULT '0',
  `unPaidSales` float DEFAULT '0',
  `treasuryContent` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statisticspaidmoney`
--

CREATE TABLE `statisticspaidmoney` (
  `shiftId` int(11) NOT NULL,
  `paidMoneyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `User Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Privilege` varchar(30) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `User Name`, `Password`, `Privilege`, `deleted`) VALUES
(8, 'sa2a', '123', 'مدير وكاشير', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `billclient`
--
ALTER TABLE `billclient`
  ADD PRIMARY KEY (`BillId`,`ClientId`);

--
-- Indexes for table `billitems`
--
ALTER TABLE `billitems`
  ADD PRIMARY KEY (`BillID`,`ItemID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `constants`
--
ALTER TABLE `constants`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `delivery crew`
--
ALTER TABLE `delivery crew`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `itemsstore`
--
ALTER TABLE `itemsstore`
  ADD PRIMARY KEY (`ShiftID`,`itemID`),
  ADD UNIQUE KEY `ShiftID` (`ShiftID`,`itemID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `paidmoney`
--
ALTER TABLE `paidmoney`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`shiftId`);

--
-- Indexes for table `statisticspaidmoney`
--
ALTER TABLE `statisticspaidmoney`
  ADD PRIMARY KEY (`shiftId`,`paidMoneyId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `delivery crew`
--
ALTER TABLE `delivery crew`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `paidmoney`
--
ALTER TABLE `paidmoney`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `shiftId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
