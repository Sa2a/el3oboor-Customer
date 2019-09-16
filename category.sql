
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