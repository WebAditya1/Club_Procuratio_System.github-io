-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2021 at 05:06 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `cultural_society`
--

DROP TABLE IF EXISTS `cultural_society`;
CREATE TABLE IF NOT EXISTS `cultural_society` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` int(11) DEFAULT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `CULTURAL_COMMITTEE` char(1) DEFAULT 'N',
  `ART_CLUB` char(1) DEFAULT 'N',
  `DRAMA_CLUB` char(1) DEFAULT 'N',
  `DANCE_CLUB` char(1) DEFAULT 'N',
  `MUSIC_CLUB` char(1) DEFAULT 'N',
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `STUDENT_ID` (`STUDENT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cultural_society`
--

INSERT INTO `cultural_society` (`Sno`, `STUDENT_ID`, `First_Name`, `Last_Name`, `CULTURAL_COMMITTEE`, `ART_CLUB`, `DRAMA_CLUB`, `DANCE_CLUB`, `MUSIC_CLUB`) VALUES
(1, 201851144, 'Vikash', 'Chaudhary', 'P', 'N', 'N', 'N', 'N'),
(2, 201952216, 'Himanshu', 'Sanecha', 'V', 'N', 'M', 'N', 'N'),
(3, 201951005, 'Abhinav', 'Prakash', 'M', 'N', 'M', 'N', 'N'),
(4, 201951161, 'Tarun', 'Thakur', 'M', 'N', 'J', 'N', 'N'),
(5, 201951012, 'Aditya', 'Budhia', 'M', 'N', 'M', 'N', 'N'),
(6, 201852007, 'Eshaan', 'Khurana', 'N', 'N', 'M', 'N', 'S'),
(7, 201951091, 'Mansi', 'Tundele', 'M', 'N', 'M', 'M', 'N'),
(8, 201851108, 'Samarth', 'Anand', 'M', 'N', 'M', 'N', 'N'),
(9, 201851013, 'Akshat', 'Shrivastava', 'N', 'N', 'N', 'M', 'J'),
(10, 201951069, 'Harsh', 'Soni', 'N', 'J', 'N', 'N', 'N'),
(11, 201851099, 'Yassh', 'Ramchandani', 'N', 'N', 'S', 'M', 'N'),
(12, 201851120, 'Shilp', 'Khatri', 'N', 'S', 'N', 'N', 'N'),
(13, 201851020, 'Anagha', 'Mittal', 'N', 'N', 'M', 'S', 'N'),
(14, 201952229, 'Samarth', 'Singh', 'N', 'N', 'M', 'J', 'N'),
(15, 201951026, 'Anshuman', 'Singh', 'N', 'N', 'N', 'N', 'M'),
(16, 201951081, 'Vatsal', 'Khatri', 'M', 'M', 'N', 'N', 'M'),
(17, 201951037, 'Ayush', 'Chandil', 'M', 'N', 'M', 'N', 'N'),
(18, 201951122, 'Rahul', 'Dhakar', 'M', 'N', 'M', 'N', 'N'),
(19, 201852030, 'Swasti', 'Khurana', 'N', 'N', 'M', 'M', 'N'),
(20, 201951164, 'Urmila', 'Rathore', 'M', 'M', 'N', 'N', 'N'),
(21, 201851030, 'Ayush', 'Tamta', 'N', 'N', 'M', 'M', 'N'),
(22, 201851122, 'Shivam', 'Balwani', 'M', 'N', 'N', 'N', 'N'),
(23, 201951040, 'Bharti', 'Meena', 'M', 'N', 'M', 'N', 'N'),
(24, 201851043, 'Ekansh', 'Verma', 'M', 'M', 'M', 'N', 'N'),
(25, 201951181, 'Yogi', 'Valecha', 'N', 'M', 'M', 'N', 'N'),
(26, 201951033, 'Ashish', 'Kumar', 'N', 'M', 'N', 'N', 'N'),
(27, 201952207, 'Ayush', 'Singh', 'N', 'N', 'M', 'N', 'M'),
(28, 201951089, 'Prateek', 'Chouhan', 'N', 'M', 'N', 'N', 'N'),
(29, 202051121, 'Mohammad', 'Rizvi', 'M', 'M', 'M', 'M', 'M'),
(30, 202052314, 'Dinesh', 'Kumar', 'M', 'N', 'M', 'N', 'N'),
(31, 202051141, 'Smruti', 'Pohekar', 'M', 'N', 'M', 'N', 'N'),
(32, 201852014, 'Khushi', 'Naik', 'N', 'M', 'N', 'N', 'N'),
(33, 201851023, 'Ankur', 'Chanderia', 'N', 'M', 'M', 'N', 'M'),
(34, 201752043, 'Vishal', 'Gaur', 'N', 'N', 'N', 'N', 'M'),
(35, 201951150, 'Shwetank', 'Singh', 'N', 'M', 'N', 'N', 'M'),
(36, 201851107, 'Saloni', 'Lakhotia', 'M', 'M', 'N', 'N', 'N'),
(37, 202051019, 'Aman', 'Anand', 'M', 'N', 'M', 'N', 'N'),
(38, 201951018, 'Tanmay', 'Ambadkar', 'N', 'N', 'N', 'N', 'M'),
(39, 202052349, 'Vranda', 'Mahajan', 'N', 'M', 'M', 'N', 'N'),
(40, 202051184, 'Subodh', 'Singh', 'N', 'M', 'N', 'M', 'N'),
(41, 873565, 'Gautam', 'Singh', 'N', 'N', 'M', 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `cult_bud`
--

DROP TABLE IF EXISTS `cult_bud`;
CREATE TABLE IF NOT EXISTS `cult_bud` (
  `CULT_SOCIETY` int(11) DEFAULT NULL,
  `ART_CLUB` int(11) DEFAULT NULL,
  `DRAMA_CLUB` int(11) DEFAULT NULL,
  `DANCE_CLUB` int(11) DEFAULT NULL,
  `MUSIC_CLUB` int(11) DEFAULT NULL,
  `CULTURAL_COMMITTEE` int(11) GENERATED ALWAYS AS ((`CULT_SOCIETY` - (((`ART_CLUB` + `DRAMA_CLUB`) + `DANCE_CLUB`) + `MUSIC_CLUB`))) VIRTUAL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cult_bud`
--

INSERT INTO `cult_bud` (`CULT_SOCIETY`, `ART_CLUB`, `DRAMA_CLUB`, `DANCE_CLUB`, `MUSIC_CLUB`) VALUES
(250000, 20000, 25000, 20000, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `events_list`
--

DROP TABLE IF EXISTS `events_list`;
CREATE TABLE IF NOT EXISTS `events_list` (
  `Sno` int(11) NOT NULL,
  `SOCIETY` varchar(100) DEFAULT NULL,
  `TYPE` char(100) NOT NULL,
  `EVENT_NAME` char(100) DEFAULT NULL,
  `TENTATIVE_DATE` date NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_list`
--

INSERT INTO `events_list` (`Sno`, `SOCIETY`, `TYPE`, `EVENT_NAME`, `TENTATIVE_DATE`) VALUES
(1, 'CULTURAL', 'COMMITTEE', 'KREIVA', '2020-01-20'),
(2, 'TECHNICAL', 'COMMITTEE', 'CEREBRO', '2021-03-15'),
(3, 'CULTURAL', 'CLUB', 'CHATKARA', '2020-01-23'),
(4, 'SPORTS', 'CLUB', 'CRICKETLEAGUE', '2021-04-02'),
(5, 'LITERATURE', 'COMMITTEE', 'ALFAAZ', '2021-05-10'),
(6, 'TECHNICAL', 'CLUB', 'HACKATHON', '2020-12-01'),
(7, 'SPORTS', 'COMMITTEE', 'VENTURA', '2020-10-25'),
(8, 'TECHNICAL', 'CLUB', 'COOKACODE', '2019-08-23'),
(9, 'CULTURAL', 'CLUB', 'RANGMANCH', '2021-05-30'),
(10, 'SPORTS', 'CLUB', 'CHESSBATTLE', '2022-04-04'),
(11, 'LITERATURE', 'CLUB', 'FADEIN', '2021-07-15'),
(12, 'LITERATURE', 'COMMITTEE', 'HIRED', '2020-11-01'),
(13, 'SPORTS', 'COMMITTEE', 'INQUIZITIVE', '2021-02-02'),
(14, 'CULTURAL', 'COMMITTEE', 'NABHYAN', '2020-01-13'),
(15, 'TECHNICAL', 'COMMITTEE', 'CAPTURE THE FLAG', '2021-08-29'),
(16, 'CULTURAL', 'CLUB', 'ZESTUP', '2021-03-12'),
(17, 'SPORTS', 'CLUB', 'THREECHECKARENA', '2020-04-13'),
(18, 'LITERATURE', 'CLUB', 'BOOKWORKSHOP', '2020-09-19'),
(19, 'SPORTS', 'COMMITTEE', 'FINESSMANICS', '2021-11-26'),
(20, 'TECHNICAL', 'CLUB', 'CSGO', '2022-05-05'),
(21, 'SPORTS', 'COMMITTEE', 'YOGA', '2022-06-05'),
(22, 'CULTURAL', 'CLUB', 'KAHANI', '2020-10-04'),
(23, 'TECHNICAL', 'COMMITTEE', 'TECHHUNT', '2021-05-05'),
(24, 'LITERATURE', 'COMMITTEE', 'IDEATHON', '2022-04-05'),
(25, 'LITERATURE', 'CLUB', 'SPILL THY WORDS', '2022-01-05');

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

DROP TABLE IF EXISTS `institute`;
CREATE TABLE IF NOT EXISTS `institute` (
  `Sno` int(11) NOT NULL,
  `Name` char(100) NOT NULL,
  `STUDENTID` char(20) DEFAULT NULL,
  `PASSWORD` char(20) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`Sno`, `Name`, `STUDENTID`, `PASSWORD`) VALUES
(1, 'Aashwin Raj', '201951001', '1001'),
(2, 'Abhay Dwivedi', '201951002', '1002'),
(3, 'Abhijeet Tamrakar', '201951003', '1003'),
(4, 'Abhinav Prakash', '201951005', '1005'),
(5, 'Abhishek', '201951006', '1006'),
(6, 'Abhishek kumar Meena', '201951007', '1007'),
(7, 'Abhishek Prajapati', '201951008', '1008'),
(8, 'Abhishek Saini', '201951009', '1009'),
(9, 'Abhishek Tiwari', '201951010', '1010'),
(10, 'Abhiyank Tiwari', '201951011', '1011'),
(11, 'Aditya Budhia', '201951012', '1012'),
(12, 'Aditya Dubey', '201951013', '1013'),
(13, 'Aakash Kumar', '201951014', '1014'),
(14, 'Aakash Verma', '201951015', '1015'),
(15, 'Akshat Dobriyal', '201951016', '1016'),
(16, 'Akshat Shrivastav', '201951017', '1017'),
(17, 'Aman Kothari', '201951018', '1018'),
(18, 'Aman Raj', '201951019', '1019'),
(19, 'Amit Dhakite', '201951020', '1020'),
(20, 'Amit Shukla', '201951021', '1021'),
(21, 'Amitvikram Dwivedi', '201951022', '1022'),
(23, 'Anirudh Mitra', '201951024', '1024'),
(24, 'Ankur Tambe', '201951025', '1025'),
(25, 'Anshuman Singh', '201951026', '1026'),
(26, 'Anurag Ojha', '201951027', '1027'),
(27, 'Anurodh Singh', '201951028', '1028'),
(28, 'Apoorv Chaudhary', '201951029', '1029'),
(29, 'Arnav Sharma', '201951030', '1030'),
(30, 'Arunoday Kumar', '201951031', '1031'),
(31, 'Aruvishal Patel', '201951032', '1032'),
(32, 'Ashish Kumar', '201951033', '1033'),
(33, 'Ashish Singh', '201951034', '1034'),
(34, 'Atishay Jain', '201951035', '1035'),
(35, 'Aviral Tandon', '201951036', '1036'),
(36, 'Ayush Chandil', '201951037', '1037'),
(37, 'Ayush Patel', '201951038', '1038'),
(38, 'Balram Choudhary', '201951039', '1039'),
(39, 'Bharti Meena', '2019510040', '1040'),
(40, 'Bhatt Manishhai', '201951041', '1041'),
(41, 'Bhimani Chamanbhai', '201951042', '1042'),
(42, 'Bhukya Govind', '201951043', '1043'),
(43, 'Bontha Joseph', '201951044', '1044'),
(44, 'Breeje Modi', '201951045', '1045'),
(45, 'Chaitanya Soni', '201951046', '1046'),
(46, 'Chilewery Kumar', '201951047', '1047'),
(47, 'Chinigepalli Srinivas', '201951048', '1048'),
(48, 'Chirag Jain', '201951049', '1049'),
(49, 'Chirag Mathur', '201951050', '1050'),
(50, 'Chittibommala Rohith', '201951051', '1051'),
(51, 'Tarun Thakur', '201951161', '1161'),
(52, 'Yassh Ramchandani', '201851099', '1099'),
(53, 'Akshay Soni', '201852001', '2001'),
(54, 'Himanshu Sanecha', '201952216', '2216'),
(55, 'Vikash Choudhary', '201851144', '1144'),
(56, 'Anavya Upadhyay', '201951023', '1023'),
(57, 'Samarth Anand', '201851108', '1108'),
(58, 'Tanmay Ambadkar', '201851018', '1018'),
(59, 'Sumit K. Mishra', '201851133', '1133'),
(60, 'Janki Kotadiya', '202051104', '1104'),
(61, 'Aradhya Mishra', '202051034', '1034'),
(62, 'Jukta Barua', '202051092', '1092'),
(63, 'Aman Anand', '202051019', '1019'),
(64, 'Dinesh Kumar', '202052314', '2314'),
(65, 'Vikram Kumar', '202052316', '2316'),
(66, 'Anisha Katiyar', '202051027', '1027'),
(67, 'Swasti Khurana', '201852030', '2030'),
(68, 'Pravesh Kumar', '201851091', '1091'),
(69, 'Pavan Kumar', '201851011', '1011'),
(70, 'Tirth Joshi', '202051193', '1193'),
(71, 'Ritik Rawat', '201851102', '1102'),
(72, 'Vranda Mahajan', '202052349', '2349'),
(73, 'M.A. Rizvi', '202051121', '1121'),
(74, 'Garima Mangal', '202051069', '1069'),
(75, 'Smruti Pohekar', '202051141', '1141'),
(76, 'Jinel Patel', '201951075', '1075'),
(77, 'Monikinderjit Singh', '201951094', '1094'),
(78, 'Urmila Rathore', '201951164', '1164'),
(79, 'Vraj Dalal', '202051203', '1203'),
(80, 'Rahul Bansal', '201951121', '1121'),
(81, 'Rahul Dhakar', '201951122', '1122'),
(82, 'Ekansh Verma', '201851043', '1043'),
(83, 'Anagha Mittal', '201851020', '1020'),
(84, 'Raj', '201951123', '1123'),
(85, 'Harsh Kakani', '201852011', '2011'),
(86, 'Gaurav Raj', '201951064', '1064'),
(87, 'Harsh Soni', '201951069', '1069'),
(88, 'Kantilal Bunkar', '201951077', '1077'),
(89, 'Kshitij Bharadwaj', '201951084', '1084'),
(90, 'Ahmad Jilani', '201851010', '1010'),
(91, 'Akshat Shrivastava', '201851013', '1013'),
(92, 'Aman Raj', '201851015', '1015'),
(93, 'Saksham Jain', '201851106', '1106'),
(94, 'Swapnil Rathod', '202061010', '6010'),
(95, 'Santosh Kumar', '202071002', '1002'),
(96, 'Ankur Singh', '202061001', '1001'),
(97, 'Shubham Kumar', '202061009', '1009'),
(98, 'Aditya Saxena', '202051011', '1011'),
(99, 'Vivek Goyal', '201951172', '1172'),
(100, 'Vivek Kumar', '201852031', '2031'),
(101, 'Urmila Rathore', '201951164', '1164'),
(102, 'Vidit Shukla', '201951167', '1167'),
(103, 'Shubham Bharatbhai', '201951173', '1173'),
(104, 'Prathmesh Khandelwal', '201952225', '2225'),
(105, 'Shobhit', '201952232', '2232'),
(106, 'Yatharth Solanki', '201952241', '2241'),
(107, 'Akshita Agarwalla', '201752007', '2007'),
(108, 'Ananya Tiwari', '201752009', '2009'),
(109, 'Ashutosh Kushwaha', '201651009', '1009'),
(110, 'Chirag Vankar', '201651013', '1013'),
(111, 'Dakshkumar Gondaliya', '201651014', '1014'),
(112, 'Eshaan Khurana', '201852007', '2007'),
(113, 'Mayur Gupta', '201852020', '2020'),
(114, 'Kumar Ojas', '201852016', '2016'),
(115, 'Khushi Naik', '201852014', '2014'),
(116, 'Jatin Saini', '202052318', '2318'),
(117, 'Krishna Kumar', '202061004', '1004'),
(118, 'Nikhil Vairagar', '201852222', '2222'),
(119, 'Chirag Khatik', '201952209', '2209'),
(120, 'Manichandra Naik', '201952226', '2226'),
(121, 'Akansha Tyagi', '201761001', '1001'),
(122, 'Hemant Agarwal', '201761002', '1002'),
(123, 'Vijay Deshpande', '201761003', '1003'),
(124, 'Madhuri Mahawar', '201761005', '1005'),
(125, 'Rashmi Maheshwari', '201761006', '1006'),
(126, 'Sumit Lal', '201861012', '1012'),
(127, 'Arpan Dam', '201861002', '1002'),
(128, 'Ambhesh Kumar', '201851019', '1019'),
(129, 'Mayank Bazari', '201851065', '1065'),
(130, 'Bethamalla Deepak', '201851033', '1033'),
(131, 'Sachin', '201851104', '1104'),
(132, 'Prakhar Bakshi', '201851087', '1087'),
(133, 'Neel Patel', '201851083', '1083'),
(134, 'Ram Praneeth', '201852005', '2005'),
(135, 'Prakash Sahani', '201852006', '2006'),
(136, 'Gagan Chaudhary', '201952226', '2226'),
(137, 'Ankur Chanderia', '201851023', '1023'),
(138, 'Jatin Chauhan', '201851054', '1054'),
(139, 'Kishan Dhakan', '201851059', '1059'),
(140, 'Shashank Dey', '201851118', '1118'),
(141, 'Prachi Desai', '201852024', '2024'),
(142, 'Riya Dave', '201852026', '2026'),
(143, 'Dhruv Gandhi', '201851041', '1041'),
(144, 'Divyanshu Nagar', '201851042', '1042'),
(145, 'Shivansi Dave', '201851036', '1036'),
(146, 'Aniket Dixit', '201851021', '1021'),
(147, 'Amarlapudi Kumar', '201851017', '1017'),
(148, 'Harish Kumar', '201851046', '1046'),
(149, 'Kamlesh kumar', '201851055', '1055'),
(150, 'Saurabh Kumar', '201851113', '1113'),
(151, 'Abhshek Yadav', '202052301', '2301'),
(152, 'Aditya Kakad', '202052302', '2302'),
(153, 'Krishna Kumar', '202061004', '1004'),
(154, 'Ankur Singh', '202061001', '1001'),
(155, 'Abhilash Kuntala', '201651002', '1002'),
(156, 'Abhyudai Bisht', '201651004', '1004'),
(157, 'Aayush Dheemar', '201751001', '1001'),
(158, 'Anshul Mishra', '201961001', '1001'),
(159, 'Bhavikkumar Tandel', '201961002', '1002'),
(160, 'Gaurav Sharma', '201961004', '1004'),
(161, 'Divyansh Patel', '201951060', '1060'),
(162, 'Avtans Kumar', '201652005', '2005'),
(163, 'Ashutosh Kumar', '201652004', '2004'),
(164, 'Anand Kumar', '201952204', '2204'),
(165, 'Harshal Kotadiya', '201961005', '1005'),
(166, 'Aashish Yadavally', '201451011', '1001'),
(167, 'Ajitkumar Jain', '201452064', '2064'),
(168, 'Aniket Raj', '201452027', '2027'),
(169, 'Savani NileshBhai', '201952231', '2231'),
(170, 'Subhanjali Sharma', '201952236', '2236'),
(171, 'Vinay Wankhede', '201951168', '1168'),
(172, 'Sanjeev Mishra', '201951135', '1135'),
(173, 'Shashank Jaiswal', '201851140', '1140'),
(174, 'Shivansh Kumar', '201951144', '1144'),
(175, 'Subhash Chandra', '201951153', '1153'),
(176, 'Penubala Deeraj', '201951113', '1113'),
(177, 'Nitin Kumar', '201951108', '1108'),
(178, 'Keshav Agarwal', '201951080', '1080'),
(179, 'Malansani Reddy', '201951088', '1088'),
(180, 'Sagar Bairwa', '201951131', '1131'),
(181, 'Delvadiya AshvinBhai', '201951055', '1055'),
(182, 'Dharavath Teja', '201951058', '1058'),
(183, 'Chilewery Kumar', '201951048', '1048'),
(184, 'Bontha Joseph', '201951044', '1044'),
(185, 'Hari Om', '201951068', '1068'),
(186, 'Hemant Udeniya', '201951070', '1070'),
(187, 'Shubham Pandey', '201952233', '2233'),
(188, 'Sidharth Saini', '201952234', '2234'),
(189, 'Arjun Pandey', '201952207', '2207'),
(190, 'Yash Sakle', '201951177', '1177'),
(191, 'Zala Ghanshyamsinh', '201951182', '1182'),
(192, 'Joel Kurien', '201951183', '1183'),
(193, 'Jammula Kumar', '201951189', '1189'),
(194, 'Tushar', '201951163', '1163'),
(195, 'Vishal Daragade', '201951169', '1169'),
(196, 'Panchasara kumar', '201952224', '2224'),
(197, 'Yogi Valecha', '201951181', '1181'),
(198, 'Sunil Bhenspaliya', '201951157', '1157'),
(199, 'Sudhansh kumar', '201951154', '1154'),
(200, 'Syed Nazeer', '201951159', '1159');

-- --------------------------------------------------------

--
-- Table structure for table `lit_bud`
--

DROP TABLE IF EXISTS `lit_bud`;
CREATE TABLE IF NOT EXISTS `lit_bud` (
  `LIT_SOCIETY` int(11) DEFAULT NULL,
  `BOOK_CLUB` int(11) DEFAULT NULL,
  `POETRY_CLUB` int(11) DEFAULT NULL,
  `LITERATURE_COMMITTEE` int(11) GENERATED ALWAYS AS ((`LIT_SOCIETY` - (`BOOK_CLUB` + `POETRY_CLUB`))) VIRTUAL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lit_bud`
--

INSERT INTO `lit_bud` (`LIT_SOCIETY`, `BOOK_CLUB`, `POETRY_CLUB`) VALUES
(250000, 40000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `lit_society`
--

DROP TABLE IF EXISTS `lit_society`;
CREATE TABLE IF NOT EXISTS `lit_society` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` int(11) DEFAULT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `LITERATURE_COMMITTEE` char(1) NOT NULL DEFAULT 'N',
  `BOOK_CLUB` char(1) DEFAULT 'N',
  `POETRY_CLUB` char(1) DEFAULT 'N',
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `STUDENT_ID` (`STUDENT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lit_society`
--

INSERT INTO `lit_society` (`Sno`, `STUDENT_ID`, `First_Name`, `Last_Name`, `LITERATURE_COMMITTEE`, `BOOK_CLUB`, `POETRY_CLUB`) VALUES
(1, 201851108, 'Samarth', 'Anand', 'P', 'N', 'M'),
(2, 201951023, 'Anavya', 'Upadhyay', 'V', 'M', 'N'),
(3, 201951119, 'Raghvi', 'Saxena', 'M', 'J', 'M'),
(4, 201851008, 'Aditya', 'Prakash', 'M', 'S', 'N'),
(5, 201951005, 'Abhinav', 'Prakash', 'M', 'N', 'J'),
(6, 201851080, 'Parmanand', 'Patidar', 'M', 'M', 'S'),
(7, 201851012, 'Aditya', 'Budhia', 'N', 'M', 'M'),
(8, 201851099, 'Yassh', 'Ramchandani', 'M', 'M', 'N'),
(9, 201851027, 'Anurag', 'Ojha', 'M', 'N', 'M'),
(10, 201951140, 'Shashank', 'Jaiswal', 'M', 'M', 'M'),
(11, 201951122, 'Rahul', 'Dhakar', 'N', 'M', 'N'),
(12, 201851004, 'Abhishek', 'Mittal', 'N', 'N', 'M'),
(13, 201952216, 'Himanshu', 'Sanecha', 'M', 'M', 'M'),
(14, 201951134, 'Sameer', 'Anand', 'M', 'N', 'M'),
(15, 201951091, 'Mansi', 'Tundele', 'N', 'M', 'N'),
(16, 201852019, 'Mansi', 'Gupta', 'N', 'M', 'N'),
(17, 201951121, 'Rahul', 'Bansal', 'N', 'N', 'M'),
(18, 201951037, 'Ayush', 'Chandil', 'N', 'M', 'M'),
(19, 201851048, 'Himanshu', 'Bhadu', 'N', 'M', 'N'),
(20, 201951003, 'Abhijeet', 'Tamrakar', 'N', 'M', 'M'),
(21, 201851030, 'Ayush', 'Tamta', 'N', 'N', 'M'),
(22, 201852016, 'Kumar', 'Ojas', 'M', 'N', 'M'),
(23, 201851007, 'Adit', 'Jain', 'N', 'N', 'M'),
(24, 201652017, 'Pratiti', 'Jain', 'M', 'M', 'N'),
(25, 201651030, 'Mohak', 'Khare', 'M', 'M', 'M'),
(26, 201851144, 'Vikas', 'Chaudhary', 'M', 'M', 'N'),
(27, 201851059, 'Kishan', 'Dhakan', 'N', 'M', 'N'),
(28, 201851018, 'Tanmay', 'Ambadkar', 'N', 'N', 'M'),
(29, 201951001, 'Aashwin', 'Raj', 'M', 'M', 'M'),
(30, 201952227, 'Rut', 'Shah', 'M', 'M', 'N'),
(31, 202051161, 'Riya', 'Parikh', 'M', 'N', 'N'),
(32, 202052325, 'Mughda', 'Sharma', 'N', 'M', 'M'),
(33, 202052344, 'Vansh', 'Tandon', 'M', 'N', 'N'),
(34, 201951015, 'Akash', 'Verma', 'N', 'M', 'N'),
(35, 201851001, 'Abhijeet', 'Prakash', 'N', 'N', 'M'),
(36, 201951060, 'Divyansh', 'Patel', 'N', 'M', 'N'),
(37, 201951016, 'Akshat', 'Dobriyal', 'M', 'N', 'M'),
(38, 201851006, 'Adit', 'Alware', 'M', 'M', 'M'),
(39, 201951196, 'Dhruv', 'Singla', 'M', 'N', 'N'),
(40, 201951197, 'Jinal', 'Patel', 'N', 'M', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_details`
--

DROP TABLE IF EXISTS `meeting_details`;
CREATE TABLE IF NOT EXISTS `meeting_details` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `TEAM` varchar(100) DEFAULT NULL,
  `PLATFORM` char(100) NOT NULL,
  `MEET_TIME` char(255) DEFAULT NULL,
  `MEET_DATE` char(255) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting_details`
--

INSERT INTO `meeting_details` (`Sno`, `TEAM`, `PLATFORM`, `MEET_TIME`, `MEET_DATE`) VALUES
(1, 'DESIGN-CLUB', 'GOOGLE-MEET', '12:00:13', '2020-12-19'),
(2, 'CULTURAL-COMMITTEE', 'ZOOM-MEET', '11:30:00', '2021-11-09'),
(3, 'GAMING-CLUB', 'PHYSICAL-MEET', '01:00:00', '2020-02-08'),
(4, 'TECHNICAL-COMMITTEE', 'GOOGLE-MEET', '12:00:00', '2021-12-30'),
(5, 'BOOK-CLUB', 'PHYSICAL-MEET', '04:30:00', '2020-01-03'),
(6, 'SPORTS-COMMITTEE', 'ZOOM-MEET', '11:00:00', '2020-01-01'),
(7, 'CHESS-CLUB', 'GOOGLE-MEET', '13:30:00', '2021-12-19'),
(8, 'LITERATURE-COMMITTEE', 'GOOGLE-MEET', '12:00:13', '2020-12-19'),
(9, 'CODING-CLUB', 'ZOOM-MEET', '01:00:00', '2021-10-19'),
(10, 'DRAMA-CLUB', 'GOOGLE-MEET', '07:00:00', '2020-09-14'),
(11, 'DANCE-CLUB', 'GOOGLE-MEET', '12:00:00', '2021-02-01'),
(12, 'POETRY-CLUB', 'PHYSICAL-MEET', '11:30:00', '2019-04-28'),
(13, 'CRICKET-CLUB', 'GOOGLE-MEET', '02:30:00', '2020-03-19'),
(14, 'MUSIC-CLUB', 'ZOOM-MEET', '13:00:01', '2021-11-19'),
(15, 'ART-CLUB', 'GOOGLE-MEET', '01:00:00', '2020-01-01'),
(16, 'ART-CLUB', 'ZOOM-MEET', '01:00:00', '2020-03-01'),
(17, 'GAMING-CLUB', 'GOOGLE-MEET', '02:00:00', '2020-10-10'),
(18, 'BOOK-CLUB', 'ZOOM-MEET', '05:00:00', '2020-01-30'),
(19, 'DRAMA-CLUB', 'PHYSICAL-MEET', '01:10:00', '2020-01-09'),
(20, 'DESIGN-CLUB', 'ZOOM-MEET', '02:00:00', '2020-08-19'),
(21, 'CODING-CLUB', 'GOOGLE-MEET', '01:00:00', '2020-01-01'),
(22, 'DANCE-CLUB', 'PHYSICAL-MEET', '04:30:00', '2020-10-01'),
(23, 'CRICKET-CLUB', 'ZOOM-MEET', '03:00:00', '2020-01-18'),
(24, 'POETRY-CLUB', 'GOOGLE-MEET', '03:00:00', '2019-01-01'),
(25, 'ART-CLUB', 'PHYSICAL-MEET', '01:30:00', '2020-09-01'),
(29, 'CULTURAL-COMMITTEE', 'GOOGLE-MEET', '10:05:22', '2021-04-23'),
(30, 'CULTURAL-COMMITTEE', 'GOOGLE-MEET', '10:05:22', '2021-04-23'),
(31, 'CULTURAL-COMMITTEE', 'GOOGLE-MEET', '10:05:22', '2021-04-23'),
(32, 'CULTURAL-COMMITTEE', 'GOOGLE-MEET', '10:05:22', '2021-04-23'),
(34, 'CRICKET-CLUB', 'Microsoft Team', '12 PM', '24th April'),
(35, 'CRICKET-CLUB', 'Microsoft Team', '12 PM', '24th April');

-- --------------------------------------------------------

--
-- Table structure for table `sports_bud`
--

DROP TABLE IF EXISTS `sports_bud`;
CREATE TABLE IF NOT EXISTS `sports_bud` (
  `SPORTS_SOCIETY` int(11) DEFAULT NULL,
  `CHESS_CLUB` int(11) DEFAULT NULL,
  `CRICKET_CLUB` int(11) DEFAULT NULL,
  `SPORTS_COMMITTEE` int(11) GENERATED ALWAYS AS ((`SPORTS_SOCIETY` - (`CHESS_CLUB` + `CRICKET_CLUB`))) VIRTUAL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_bud`
--

INSERT INTO `sports_bud` (`SPORTS_SOCIETY`, `CHESS_CLUB`, `CRICKET_CLUB`) VALUES
(250000, 20000, 55000);

-- --------------------------------------------------------

--
-- Table structure for table `sports_society`
--

DROP TABLE IF EXISTS `sports_society`;
CREATE TABLE IF NOT EXISTS `sports_society` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` int(11) DEFAULT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `SPORTS_COMMITTEE` char(1) NOT NULL DEFAULT 'N',
  `CHESS_CLUB` char(1) DEFAULT 'N',
  `CRICKET_CLUB` char(1) DEFAULT 'N',
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `STUDENT_ID` (`STUDENT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_society`
--

INSERT INTO `sports_society` (`Sno`, `STUDENT_ID`, `First_Name`, `Last_Name`, `SPORTS_COMMITTEE`, `CHESS_CLUB`, `CRICKET_CLUB`) VALUES
(1, 201851133, 'Sumit', 'Mishra', 'P', 'M', 'N'),
(2, 201951016, 'Akshat', 'Dobriyal', 'V', 'N', 'M'),
(3, 201951012, 'Aditya', 'Budhia', 'M', 'N', 'J'),
(4, 201851152, 'Yogeshwar', 'Agarwal', 'N', 'S', 'N'),
(5, 201951037, 'Ayush', 'Chandil', 'M', 'J', 'M'),
(6, 201851091, 'Pravesh', 'Kumar', 'M', 'N', 'S'),
(7, 201852030, 'Swasti', 'Khurana', 'M', 'N', 'N'),
(8, 201951028, 'Anurodh', 'Singh', 'M', 'N', 'M'),
(9, 201851004, 'Abhishek', 'Mittal', 'N', 'M', 'N'),
(10, 201852020, 'Mayur', 'Gupta', 'M', 'M', 'M'),
(11, 201951105, 'Nishant', 'Andoriya', 'M', 'M', 'N'),
(12, 201951079, 'Kapil', 'Kumar', 'M', 'M', 'N'),
(13, 201852001, 'Akshay', 'Soni', 'N', 'N', 'M'),
(14, 201952214, 'Abhimanue', 'Donne', 'M', 'N', 'M'),
(15, 201951139, 'Shikhar', 'Shah', 'N', 'N', 'M'),
(16, 201851155, 'Keshar', 'Wakharkar', 'N', 'M', 'N'),
(17, 201951003, 'Abhijeet', 'Tamrakar', 'M', 'N', 'M'),
(18, 201951034, 'Ashish', 'Singh', 'M', 'M', 'N'),
(19, 201852008, 'Faizan', 'Ahmed', 'N', 'M', 'N'),
(20, 201851051, 'Ishank', 'Soni', 'N', 'M', 'N'),
(21, 201951118, 'Raghu', 'Sodani', 'N', 'N', 'M'),
(22, 201851043, 'Ekansh', 'Verma', 'N', 'M', 'M'),
(23, 201851087, 'Prakhar', 'Bakshi', 'N', 'N', 'M'),
(24, 201951076, 'Jyoti', 'Suthar', 'M', 'N', 'N'),
(25, 201951040, 'Bharti', 'Meena', 'M', 'N', 'N'),
(26, 201951026, 'Anshuman', 'Singh', 'N', 'N', 'M'),
(27, 201951029, 'Apoorv', 'Chaudhary', 'N', 'N', 'M'),
(28, 201852003, 'Amit', 'Kumawat', 'M', 'M', 'M'),
(29, 201851011, 'Pavan', 'Kumar', 'M', 'N', 'M'),
(30, 201952238, 'Utkarsh', 'Bharadwaj', 'N', 'N', 'M'),
(31, 201951060, 'Divyansh', 'Patel', 'M', 'M', 'N'),
(32, 201951122, 'Rahul', 'Dhakar', 'N', 'N', 'M'),
(33, 201852011, 'Harsh', 'Kakani', 'M', 'N', 'M'),
(34, 201851080, 'Parmanand', 'Patidar', 'N', 'M', 'N'),
(35, 201851148, 'Vraj', 'Mistry', 'N', 'M', 'N'),
(36, 201851039, 'Devansh', 'Khandelwal', 'N', 'N', 'M'),
(37, 201951151, 'Siddhant', 'Singh', 'N', 'N', 'M'),
(38, 201951083, 'Neel', 'Patel', 'N', 'M', 'M'),
(39, 201951071, 'Hritik', 'Mahajan', 'M', 'M', 'N'),
(40, 201851049, 'Hrishav', 'Sahu', 'N', 'N', 'M'),
(41, 873565, 'Hello', 'You', 'N', 'N', 'M'),
(42, 201951005, 'Abhinav ', 'Prakash', 'N', 'N', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `technical_bud`
--

DROP TABLE IF EXISTS `technical_bud`;
CREATE TABLE IF NOT EXISTS `technical_bud` (
  `TECH_SOCIETY` int(11) DEFAULT NULL,
  `DESIGN_CLUB` int(11) DEFAULT NULL,
  `GAMING_CLUB` int(11) DEFAULT NULL,
  `CODING_CLUB` int(11) DEFAULT NULL,
  `TECHNICAL_COMMITTEE` int(11) GENERATED ALWAYS AS ((`TECH_SOCIETY` - ((`DESIGN_CLUB` + `GAMING_CLUB`) + `CODING_CLUB`))) VIRTUAL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_bud`
--

INSERT INTO `technical_bud` (`TECH_SOCIETY`, `DESIGN_CLUB`, `GAMING_CLUB`, `CODING_CLUB`) VALUES
(250000, 35000, 40000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `tech_society`
--

DROP TABLE IF EXISTS `tech_society`;
CREATE TABLE IF NOT EXISTS `tech_society` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_ID` int(11) DEFAULT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `TECHNICAL_COMMITTEE` char(1) NOT NULL DEFAULT 'N',
  `DESIGN_CLUB` char(1) DEFAULT 'N',
  `GAMING_CLUB` char(1) DEFAULT 'N',
  `CODING_CLUB` char(1) DEFAULT 'N',
  PRIMARY KEY (`Sno`),
  UNIQUE KEY `STUDENT_ID` (`STUDENT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tech_society`
--

INSERT INTO `tech_society` (`Sno`, `STUDENT_ID`, `First_Name`, `Last_Name`, `TECHNICAL_COMMITTEE`, `DESIGN_CLUB`, `GAMING_CLUB`, `CODING_CLUB`) VALUES
(1, 201851018, 'Tanmay', 'Ambadkar', 'P', 'N', 'N', 'M'),
(2, 201951050, 'Chirag', 'Mathur', 'V', 'M', 'N', 'M'),
(3, 201851043, 'Ekansh', 'Verma', 'N', 'N', 'S', 'N'),
(4, 201951012, 'Aditya', 'Budhia', 'M', 'N', 'M', 'N'),
(5, 201951034, 'Ashish', 'Singh', 'M', 'N', 'J', 'N'),
(6, 201851105, 'Sahil', 'Kundal', 'M', 'S', 'N', 'N'),
(7, 201951035, 'Atishay', 'Jain', 'M', 'N', 'N', 'J'),
(8, 201851084, 'Pushkar', 'Patel', 'M', 'N', 'N', 'S'),
(9, 201952239, 'Vikrant', 'Kumar', 'M', 'J', 'N', 'M'),
(10, 201851150, 'Yash', 'Shah', 'M', 'N', 'N', 'M'),
(11, 201951083, 'Krishna', 'Gaur', 'M', 'N', 'M', 'M'),
(12, 201951196, 'Dhruv', 'Singla', 'N', 'M', 'N', 'N'),
(13, 201852011, 'Harsh', 'Kakani', 'M', 'N', 'M', 'N'),
(14, 201951054, 'Deepanshu', 'Singh', 'N', 'M', 'M', 'N'),
(15, 201851059, 'Kishan', 'Dhakan', 'M', 'N', 'N', 'M'),
(16, 201951022, 'AmitVikram', 'Dwivedi', 'N', 'N', 'M', 'N'),
(17, 201951016, 'Akshat', 'Dobriyal', 'N', 'M', 'N', 'N'),
(18, 201851148, 'Vraj', 'Mistry', 'M', 'N', 'M', 'M'),
(19, 201951119, 'Raghvi', 'Saxena', 'M', 'N', 'N', 'M'),
(20, 201952241, 'Yatharth', 'Solanki', 'N', 'M', 'M', 'N'),
(21, 201851024, 'Anubhav', 'Madhav', 'M', 'N', 'N', 'N'),
(22, 2019522236, 'Shubhanjali', 'Sharma', 'M', 'M', 'N', 'N'),
(23, 201952238, 'Utkarsh', 'Bharadwaj', 'N', 'N', 'M', 'N'),
(24, 201851013, 'Akshat', 'Shrivastava', 'N', 'N', 'M', 'N'),
(25, 201851004, 'Abhishek', 'Mittal', 'M', 'N', 'M', 'M'),
(26, 202051081, 'Harsh', 'Dawda', 'M', 'N', 'M', 'N'),
(27, 201951027, 'Anurag', 'Ojha', 'M', 'M', 'N', 'N'),
(28, 202051056, 'Rama', 'Chetan', 'N', 'N', 'M', 'M'),
(29, 202051161, 'Riya', 'Parikh', 'M', 'N', 'N', 'M'),
(30, 202052307, 'Archit', 'Agarwal', 'M', 'M', 'M', 'M'),
(31, 201951167, 'Vidit', 'Shukla', 'N', 'N', 'N', 'M'),
(32, 201952240, 'Vimal', 'Divas', 'N', 'N', 'M', 'N'),
(33, 201951094, 'Monikinderjit', 'Singh', 'M', 'N', 'N', 'N'),
(34, 201951036, 'Aviral', 'Tandon', 'M', 'M', 'N', 'N'),
(35, 201851058, 'Kavya', 'Tripathi', 'N', 'M', 'N', 'N'),
(36, 201851026, 'Anvay', 'Mishra', 'M', 'N', 'N', 'N'),
(37, 201951105, 'Nishant', 'Andoriya', 'N', 'N', 'M', 'N'),
(38, 201951146, 'Shreyansh', 'Mishra', 'N', 'N', 'M', 'M'),
(39, 202051016, 'Akshat', 'Khandelwal', 'M', 'N', 'N', 'M'),
(40, 201951026, 'Anshuman', 'Singh', 'M', 'M', 'M', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE IF NOT EXISTS `visitors` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `Name` char(100) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `QUERY` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`Sno`, `Name`, `EMAIL`, `QUERY`) VALUES
(1, 'Akash Gupta', 'akashgupta@gmail.com', 'When is the Event Blitz Chess?'),
(2, 'Naman Ojha', 'naman@gmail.com', 'How to register for CEREBRO?'),
(3, 'Rahul Dhakar', 'dhakarvilla@gmail.com', 'What prerequisites are require for any technical event?'),
(4, 'Abhinav Prakash', '201951005@iiitvadodara.ac.in', 'What is the prize money for dubsmash event?'),
(5, 'Aditya Budhia', '201951005@iiitvadodara.ac.in', 'how many days long fest is schduled?'),
(6, 'Anshul Sharma', 'anshul@gmail.com', 'How to make a team for event?'),
(7, 'Shreya Kukreja', 'shreya@gmail.com', 'Other institutes members can participate?'),
(8, 'kartikey gupta', 'guptakartikeygmail.com', 'how to find a teammate?'),
(9, 'Tanmay Singh', 'tanmay@gmail.com', 'When fixtures will be released?'),
(10, 'Rohit Pal', 'rohitpal99@gmail.com', 'How to check I register for team?'),
(11, 'Aditya Budhia', 'adityabudhia786@gmail.com', 'Test'),
(12, 'ayush chandil', '20195111@gmail.com', 'Hello'),
(13, 'Aditya Budhia', 'adityabudhia786@gmail.com', 'This is the final test\r\n'),
(14, 'ayush chandil', '20195111@gmail.com', '5tyytftft'),
(15, 'ADI', '20195111@gmail.com', 'FINALLY'),
(16, 'Ayush', 'itsmeayush@gmail.com', 'This is the best project ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
