-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2015 at 04:11 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `employee_association`
--
CREATE DATABASE IF NOT EXISTS `employee_association` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employee_association`;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `branch_id` int(10) NOT NULL AUTO_INCREMENT,
  `branchname` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `branchname`, `description`, `status`) VALUES
(1, 'Manipal', 'Main Branch', 'Active'),
(2, 'Mangalore', 'Central Branch', 'Active'),
(3, 'Bangalore', 'Sub Branch\r\n', 'Active'),
(4, 'Puttur', 'Sub Branch', 'Active'),
(5, 'Madikeri', 'Sub Branch\r\n', 'Active'),
(6, 'Hassan', 'Sub Branch\r\n', 'Active'),
(7, 'Mysore', 'Sub Branch\r\n', 'Active'),
(8, 'Shimoga', '\r\n', 'Active'),
(9, 'Udupi', 'Sub Branch\r\n', 'Active'),
(10, 'Sullia', 'Sub Branch\r\n', 'Active'),
(11, 'Belthangady', 'Sub Branch\r\n', 'Active'),
(12, 'Mumbai', 'Sub branch', 'Active'),
(13, 'New Delhi', '', 'Active'),
(14, 'Calcutta', 'Main Branch', 'Active'),
(15, 'Malda', 'Central Bank', 'Active'),
(16, 'Bellare', 'Sub branch', 'Active'),
(17, 'Gwalior', 'Central Branch', 'Active'),
(18, 'Tekanpur', 'Sub branch', 'Active'),
(19, 'Srinagar', 'Central Branch', 'Active'),
(20, 'Suratkal', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `designation_id` int(10) NOT NULL AUTO_INCREMENT,
  `designation` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`designation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation`, `description`, `status`) VALUES
(1, 'Admin', 'Branch Admin With Full Authority', 'Active'),
(2, 'Manager', 'Manager', 'Active'),
(3, 'Officer', 'Officer', 'Active'),
(5, 'Clerk', 'Clerk', 'Active'),
(8, 'Branch Manager', 'Br mgt', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE IF NOT EXISTS `discussion` (
  `discussion_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `discussiontitle` varchar(250) NOT NULL,
  `category` varchar(25) NOT NULL,
  `discussionimage` varchar(100) NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `publishdate` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`discussion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`discussion_id`, `employee_id`, `discussiontitle`, `category`, `discussionimage`, `uploads`, `description`, `publishdate`, `status`) VALUES
(9, 0, 'sponsorship from', 'About News', '2176tooplate_wrapper.jpg', '20153admission.doc', 'Dear Sir / Madam,\r\n\r\nWe are happy to inform that we have received sponsorship from various companies. We will be giving access to 5,000 students free of charge. \r\n\r\nReply to this email and include which standard / class the student needs access for and we will get back to you as soon as possible.', '2015-02-18 01:10:36', 'Active'),
(14, 8, 'About Rupay Payment Gateway', 'About training', '10921Koala.jpg', '2257425608admission.doc', 'How can we use Rupay Payment Gateway for ecommerce transaction.', '2015-03-11 02:26:06', 'Active'),
(15, 8, 'Provide us more information about SyndBank insurance', 'About News', '', '', 'Kindly provide us more information about New insurance plan', '2015-03-11 02:43:06', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `discussion_reply`
--

CREATE TABLE IF NOT EXISTS `discussion_reply` (
  `reply_id` int(10) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(10) NOT NULL,
  `employee_id` int(10) NOT NULL,
  `description` text NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `publishdate` datetime NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `discussion_reply`
--

INSERT INTO `discussion_reply` (`reply_id`, `discussion_id`, `employee_id`, `description`, `uploads`, `publishdate`, `status`) VALUES
(1, 14, 8, 'Hello this i ste test page', '10982398_992986917386965_1928943290709173871_o.jpg', '2015-03-11 03:26:21', 'Active'),
(2, 14, 8, 'Hello this i ste test page', '10982398_992986917386965_1928943290709173871_o.jpg', '2015-03-11 03:32:11', 'Active'),
(3, 14, 8, 'Hello this i ste test page', '10982398_992986917386965_1928943290709173871_o.jpg', '2015-03-11 03:33:04', 'Active'),
(4, 14, 8, 'Hello this i ste test page', '10982398_992986917386965_1928943290709173871_o.jpg', '2015-03-11 03:37:29', 'Active'),
(5, 14, 8, 'Hello this i ste test page', '10982398_992986917386965_1928943290709173871_o.jpg', '2015-03-11 03:39:10', 'Active'),
(6, 14, 8, 'Hello this i ste test page', '10982398_992986917386965_1928943290709173871_o.jpg', '2015-03-11 03:39:32', 'Active'),
(7, 14, 8, 'Hello How are you...', '', '2015-03-11 03:45:38', 'Active'),
(8, 14, 8, 'Hello How are you...', '', '2015-03-11 03:46:09', 'Active'),
(9, 14, 8, 'Hello How are you...', '', '2015-03-11 03:48:34', 'Active'),
(10, 14, 8, 'Hello How are you...', '', '2015-03-11 03:48:46', 'Active'),
(11, 14, 8, 'Hello How are you...', '', '2015-03-11 03:48:56', 'Active'),
(12, 14, 8, 'Hello How are you...', '', '2015-03-11 03:49:18', 'Active'),
(13, 14, 8, 'Hello How are you...', '', '2015-03-11 03:49:29', 'Active'),
(14, 14, 8, 'This is new test message', 'Abstract.doc', '2015-03-11 03:50:57', 'Active'),
(15, 14, 8, 'hello howw are you', '', '2015-03-11 03:51:10', 'Active'),
(16, 14, 1, 'uPay PaySecureauthentication service is powered byNational Payments Corporation of India NPCI. All web based transactionson cards enabled for this service are guided by the ', '', '2015-03-20 02:11:50', 'Active'),
(17, 15, 1, 'Kindly refer latest news', '', '2015-03-20 02:17:35', 'Active'),
(18, 15, 1, 'dfghj', '', '2015-03-20 10:29:18', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employee_id` int(10) NOT NULL AUTO_INCREMENT,
  `branch_id` int(10) NOT NULL,
  `designation_id` int(10) NOT NULL,
  `empname` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `country` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `contactno` varchar(15) NOT NULL,
  `doj` date NOT NULL,
  `dor` date NOT NULL,
  `login_id` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `empimage` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `login_id` (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `branch_id`, `designation_id`, `empname`, `dob`, `gender`, `address`, `country`, `state`, `city`, `pincode`, `emailid`, `contactno`, `doj`, `dor`, `login_id`, `password`, `empimage`, `note`, `status`) VALUES
(1, 4, 1, 'Preethika K', '1994-10-22', 'Male', 'Puttur', 'India', 'Karnataka', 'Puttur', '574202', 'preethika1619@gmail.com', '9449236013', '2012-02-12', '0000-00-00', 'admin', 'admin', '850820150319_132825.jpg', 'New Employee Joined last Year', 'Active'),
(2, 1, 1, 'Prathik K', '1985-03-10', 'Male', 'Puttur', 'India', 'Karnataka', 'Puttur', '574202', 'prathikgowda@gmqil.com', '9632827439', '2014-12-11', '2015-01-02', '1111', '1111', '1249417f2348.jpg', 'new employee', 'Active'),
(3, 2, 3, 'raj shekar', '1992-12-31', 'Male', '3rd floor', 'India', 'Assam', 'Mangalore', '574551', 'rajshekar@gmail.com', '9874563210', '2015-12-31', '0000-00-00', 'rajshekar', '111111', '15343sbiyer.jpg', 'This is new emp record', 'Active'),
(4, 11, 3, 'kiran kumar', '1975-12-31', 'Male', '3rd floor', 'India', 'Assam', 'Mangalore', '574551', 'kiran38378@gmail.com', '8875452154', '2015-12-31', '0000-00-00', 'kiran', '123456', '1788424142_thump.gif', 'This is new emp record', 'Active'),
(5, 3, 3, 'john mark', '1993-12-31', 'Male', '3rd floor', 'India', 'Assam', 'Mangalore', '574551', 'johnmark2783@gmail.com', '7789556425', '2015-12-31', '0000-00-00', 'john', 'john', '15917images.jpg', 'This is new emp record', 'Active'),
(6, 1, 3, 'Shruthi Salyan', '1995-12-31', 'Male', '3rd floor', 'India', 'Assam', 'Mangalore', '574551', 'shruthisalyan@gmail.com', '7785545663', '2015-12-31', '0000-00-00', 'shruthi', 'shruthi', '18312Untitled-1 copy.jpg', 'This is new emp record', 'Active'),
(7, 1, 3, 'Ajith', '2015-12-31', 'Male', '3rd floor', 'India', 'Assam', 'Mangalore', '574551', '', '', '2015-12-31', '0000-00-00', 'ajith', 'ajith', '', 'This is new emp record', 'Active'),
(8, 1, 1, 'Madhukar jain', '1988-12-31', 'Male', '3 floor, hfy tower, India gate', 'India', 'Karnataka', 'Bangalore', '574203', 'madhukar@gmail.com', '7895463210', '2015-02-18', '0000-00-00', 'kirank', 'kiran', '14123Dr.T-M-A-Pai-cofounder-Syndicate-Bank.jpg', 'this is new employee', 'Active'),
(13, 3, 3, 'aravinda mv', '2002-12-31', 'Male', '3 floor, hfy tower, India gate', 'India', 'Karnataka', 'Bangalore', '527554', 'aravinda@technopulse.in', '9986058114', '2015-12-31', '0000-00-00', 'aravinda2', 'technology', '9093Chrysanthemum.jpg', 'This is test noe', 'Active'),
(14, 3, 8, 'Prathik rao', '2002-12-31', 'Male', '3 floor, hfy tower, India gate', 'India', 'Karnataka', 'Bangalore', '527554', 'aravinda1@technopulse.in', '9986058115', '2015-12-31', '0000-00-00', 'aravinda1', 'technology', '25314Syndicate Bank SMD.jpg', 'This is test noe', 'Active'),
(15, 1, 3, 'Anupa MN', '1989-03-13', 'Male', 'Behind Oasis hall, 3rd cross, Manipal', 'India', 'Karnataka', 'Manipal', '575001', 'anu89mna@gmail.com', '9880004145', '2015-03-13', '0000-00-00', 'anupamn', '1111111', '5409Image1267.jpg', '', 'Active'),
(18, 3, 8, 'Mahesh dhyan', '1987-03-18', 'Male', '3rd floor', 'India', 'Karnataka', 'Bangalore', '574521', 'mvaravinda@gmail.com', '9986058114', '2009-03-12', '0000-00-00', 'mvaravinda', '1234567890', '1548images (1).jpg', 'This is test', 'Active'),
(20, 2, 8, 'Shruti KA', '1993-03-10', 'Female', '3rd floor, RT Nagar', 'India', 'Karnataka', 'Bangalore', '620001', 'shruthi@gmail.com', '7854453201', '2001-03-24', '0000-00-00', 'shruti', '123456', '', '', 'Active'),
(24, 4, 5, 'Nayana MV', '1993-03-04', 'Male', 'Shiva kripa house, Vidya nagar, nehru nagar', 'India', 'Karnataka', 'Puttur', '575003', 'mv.naina@gmail.com', '8123109612', '2015-03-24', '0000-00-00', 'gopalraj11', '1234567890', '7009unnamed.jpg', '', 'Active'),
(25, 6, 2, 'Raj Kiran', '1985-04-10', 'Male', 'Mangalore', 'India', 'Karnataka', 'Mangalore', '575001', 'rajkiran@gmail.com', '9986058114', '2015-03-24', '0000-00-00', 'rajkiran', '123456', '18578download.jpg', 'New employee joined to hassan branch', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE IF NOT EXISTS `mail` (
  `mail_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id1` int(10) NOT NULL,
  `employee_id2` int(10) NOT NULL,
  `messagetitle` varchar(150) NOT NULL,
  `messagecontent` text NOT NULL,
  `attachments` varchar(100) NOT NULL,
  `senddate` datetime NOT NULL,
  `reply_id` int(10) NOT NULL,
  `status1` varchar(10) NOT NULL,
  `status2` varchar(10) NOT NULL,
  PRIMARY KEY (`mail_id`),
  KEY `employee_id1` (`employee_id1`),
  KEY `employee_id2` (`employee_id2`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`mail_id`, `employee_id1`, `employee_id2`, `messagetitle`, `messagecontent`, `attachments`, `senddate`, `reply_id`, `status1`, `status2`) VALUES
(1, 1, 3, 'Business Mail', 'Business Mail', '25608admission.doc', '2015-02-18 01:01:40', 0, 'Active', 'Active'),
(2, 1, 4, 'Syndicate Bank 2015-2016', 'Syndicate Bank 2015-2016', '19320images (5).jpg', '2015-02-27 01:48:10', 1, 'Deleted', 'Active'),
(3, 2, 1, 'Welcome Mail', 'Dear member,\n\nYour balance was automatically transferred to your Syndicate bank in India, x-5418 on 31-Jan-2015.\n\nYour balance is automatically withdrawn daily.\n\nYours sincerely,\nEmployee Association', '25169', '2015-02-27 01:49:42', 1, 'Active', 'Active'),
(4, 3, 3, 'This ite test meail from aravinda', 'The disabled attribute is a boolean attribute.\r\n\r\nWhen present, it specifies that the drop-down list should be disabled.\r\n\r\nA disabled drop-down list is unusable and un-clickable.\r\n\r\nThe disabled attribute can be set to keep a user from using the drop-down list until some other condition has been met like selecting a checkbox, etc. Then, a JavaScript can remove the disabled value, and make the drop-down list usable.', '15030images (4).jpg', '2015-02-27 02:40:24', 0, 'Active', 'Active'),
(5, 3, 1, 'Syndicate Bank 2015-2016', 'Syndicate Bank 2015-2016', '31136images (5).jpg', '2015-02-27 02:45:45', 0, 'Active', 'Active'),
(6, 3, 1, 'Failed payment notification', 'A transaction through Online gateway with the following details has failed. In case the customer''s card/bank account gets debited for the failed transaction, you need not worry. We will auto-refund the amount.', '14681download (1).jpg', '2015-02-27 02:46:23', 0, 'Active', 'Active'),
(7, 3, 2, 'Business details and others', 'Kindly look for all the attachment. I ma forwarding the details as requested from you.Please go through the entire attachment and revert back immediately for clarification, if any.\n\n\nThe following documents are attached.\nbusiness details\ndelivery and shipping policy.\nDisclaimer.\nPrivacy policy.\nReturn and refund policy.\nTerms of use.', '8284Study-icon.png', '2015-02-27 02:50:30', 0, 'Active', 'Active'),
(8, 3, 2, 'Agreement has been reached', 'The following agreement has been reached:\n\nAmount Requested: Rs 50000\n\nReason: Not required\n\nThe system message will be sent out to inform you of the refund details within 2-3 working days. We appreciate your patience.', '32613Study-icon.png', '2015-02-27 02:51:18', 0, 'Active', 'Active'),
(9, 3, 2, 'aaaaaaaaaa', 'ggggggggggggggggggggggggggggggggggggggggggggg', '14622Study-icon.png', '2015-02-27 02:51:39', 0, 'Active', 'Active'),
(10, 1, 3, 'Congratulations.. receipt confirmed', 'The amount of Rs. 1,470.00 for this item has been credited to your bank account. This payment will be sent to your bank account in the next remittance cycle due every Monday and Thursday. You will also be notified once your payments are sent, after the remittance cycle.', '19446download (3).jpg', '2015-02-27 02:53:08', 6, 'Active', 'Active'),
(11, 1, 3, 'Thank You', 'Hey\n\nThanks for helping us make more awesome. Thanks for joining the press conference', '26543download (3).jpg', '2015-02-27 02:58:24', 6, 'Active', 'Active'),
(12, 14, 1, 'Certificate to be Issued by the Company', 'I would like to bring to your notice that you are required to submit a Declaration from the organization where you are carrying out your project work certifying that you have taken up internship in that company. Please find the attachment for the format of the Declaration. Kindly note that the Declaration has to be issued as well as signed by your External Guide and it is to be printed, preferably on official letterhead. ', '29073', '2015-03-20 01:30:10', 1, 'Active', 'Active'),
(13, 1, 4, 'Kindly send 54th ledger', 'Kindly send as soon as possible. Thank you', '22366', '2015-03-20 02:12:43', 0, 'Active', 'Active'),
(14, 8, 3, 'Bill plan updated', 'Bill plan for your BSNL fixedline ID 08244250648 has been changed to Airtel-ARP-UL-Ultra Transonic Plus 1499 60GB (8Mbps/512Kbps) COMBO Plan with effect from 03-Mar-2015. \n\nBill plan details are listed below: \n\nHigh Speed Data Limit  FUP Limit: 60 GB. \n\nPost FUP: Data speed will be revised as per your bill plan. \n', '1781Chrysanthemum.jpg', '2015-03-23 03:01:49', 0, 'Active', 'Active'),
(15, 1, 14, 'Welcome mail', 'We have created new account. If any queries kindly reply..', '32632', '2015-03-24 10:23:55', 0, 'Active', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `newstype` varchar(25) NOT NULL,
  `newstitle` varchar(150) NOT NULL,
  `newsdate` datetime NOT NULL,
  `newsimage` varchar(100) NOT NULL,
  `newscontent` text NOT NULL,
  `newscategory` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`news_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `employee_id`, `newstype`, `newstitle`, `newsdate`, `newsimage`, `newscontent`, `newscategory`, `status`) VALUES
(3, 1, 'Events', 'test', '2015-02-17 00:00:00', '28253', 'In an educational system and occupational economy that is vastly skewed towards formal academics for gaining livelihood, it is practically the end of the road for millions of young who do not complete their education. HDFC Bank''s livelihood initiatives are aimed at training and capacity development of youth and women from economically weaker sections of society and to empower them to gain access to opportunities and growth. HDFC Bank''s livelihood support programmes are aimed at empowering competency-based, skill-oriented technical and vocational training.', 'Latest News', 'ACTIVE'),
(4, 1, 'News', 'Products & Services', '2015-02-03 00:00:00', '28253', 'Our Bank offers a number of varied products under Deposits, Advances to suit the needs of all types of customers. Details of products are available in each category under this head. We offer other services for our customers like Cash Management Services, RTGS, NEFT for electronic fund transfer and speed clearing.\r\n\r\nWe also have various delivery channels like ATM, Internet Banking, SMS Banking offering specialised products and services at our branches which have been 100% brought under Centralised Banking Solution.\r\n\r\nFor more details about product & services, kindly refer submenu under main menu "Product & Services".', 'Latest News', 'ACTIVE'),
(7, 1, 'News', 'The disabled attribute can be set to keep a user from using the drop-down list until some other condition has been met ', '2015-02-14 00:00:00', '7813', 'test test test', 'Latest News', 'ACTIVE'),
(22, 1, 'News', 'RuPay Cards enabled for e-Commerce', '2015-02-19 01:00:00', '19183tooplate_wrapper.jpg', 'RuPay Cards enabled for e-Commerce', 'Latest News', 'Active'),
(23, 1, 'News', 'Insurance Products', '2015-12-31 12:59:00', '24316tnbcps.png', '\nThis is to inform all our customers that bank has discontinued corporate agency tie-up arrangement with bajaj allianz life insurance company limited for distributing its life insurance products with effect from 1st november 2009.\n\nAs per stipulations of the insurance regulatory development authority (IRDA), M/s bajaj allianz life insurance company limited is required to service the existing policies till the end of its tenure.\n\nOur branches will facilitate the customers for remitting renewal premium relating to the policies canvassed by the bank in the earlier years.', 'Latest News', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE IF NOT EXISTS `subscription` (
  `subscription_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `subscriptioncharge` float(10,2) NOT NULL,
  `cardno` varchar(20) NOT NULL,
  `cvvno` varchar(5) NOT NULL,
  `expirydate` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`subscription_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`subscription_id`, `employee_id`, `startdate`, `enddate`, `subscriptioncharge`, `cardno`, `cvvno`, `expirydate`, `status`) VALUES
(4, 2, '2015-02-20', '2016-03-17', 100.00, '4090236789012346', '123', '04/2019', 'Active'),
(5, 3, '2015-02-20', '2016-03-24', 5000.00, '4090320054852012', '123', '02/2015', 'Active'),
(6, 4, '2015-02-20', '2016-02-20', 1100.00, '5090510514556447', '3434', '12/2018', 'Active'),
(7, 5, '2015-02-20', '2016-02-20', 2100.00, '4056325854789651', '3434', '11/2015', 'Active'),
(8, 6, '2015-03-05', '2016-03-05', 1100.00, '5885223569874568', '4334', '02/2018', 'Active'),
(9, 7, '2015-03-05', '2016-03-05', 100.00, '4090236789012346', '4334', '09/2021', 'Active'),
(10, 8, '2015-03-05', '2016-03-05', 100.00, '4090320054852012', '4334', '02/2015', 'Active'),
(11, 13, '2015-03-05', '2016-03-05', 100.00, '5090510514556447', '354', '23/2015', 'Active'),
(12, 14, '2015-03-05', '2016-03-05', 100.00, '4056325854789651', '354', '23/2015', 'Active'),
(13, 15, '2015-03-05', '2016-03-05', 100.00, '5885223569874568', '343', '03/2015', 'Active'),
(14, 18, '2015-03-05', '2016-03-05', 100.00, '7785256322510256', '343', '02/2015', 'Active'),
(15, 3, '2015-03-05', '2016-03-05', 100.00, '23232323', '343', '02/2015', 'Active'),
(16, 3, '2015-03-05', '2016-03-05', 100.00, '234234234', '54645', '02/2015', 'Active'),
(17, 3, '2015-03-05', '2016-03-05', 100.00, '234234234', '54645', '02/2015', 'Active'),
(18, 3, '2015-03-05', '2016-03-05', 100.00, '234234234', '343', '04/2015', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_tariff`
--

CREATE TABLE IF NOT EXISTS `subscription_tariff` (
  `subscription_tariff_id` int(10) NOT NULL AUTO_INCREMENT,
  `designation_id` int(10) NOT NULL,
  `subscriptioncharge` float(10,2) NOT NULL,
  PRIMARY KEY (`subscription_tariff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `subscription_tariff`
--

INSERT INTO `subscription_tariff` (`subscription_tariff_id`, `designation_id`, `subscriptioncharge`) VALUES
(18, 3, 100.00),
(28, 2, 2000.00),
(29, 5, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `training_material`
--

CREATE TABLE IF NOT EXISTS `training_material` (
  `training_material_id` int(10) NOT NULL AUTO_INCREMENT,
  `employee_id` int(10) NOT NULL,
  `title` varchar(150) NOT NULL,
  `training_category` varchar(100) NOT NULL,
  `image_link` varchar(100) NOT NULL,
  `video_link` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`training_material_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `training_material`
--

INSERT INTO `training_material` (`training_material_id`, `employee_id`, `title`, `training_category`, `image_link`, `video_link`, `content`, `status`) VALUES
(21, 0, 'Bank Teller Customer Service', 'Officer Training Programme', '17633bank teller.jpg', '46141 Bank Teller Customer Service eLearning Module.mp4', 'Bank Teller Customer Service eLearning Module. Watch this two character simulation to understand how to treat the customer with respect and offer additional options.', 'Active'),
(22, 0, 'Bank Teller Practice Scenerio', 'Sales skills training', '124873608.jpg', '5876Bank Teller Practice Scenerio.mp4', 'This video will explain Bank Teller Practice Scenerio', 'Active'),
(23, 0, 'Net Banking Fund Transfer tutorial', 'New product management training', '7635syndicate-bank-logo.png', '11536WWW.DOWNVIDS.NET-syndicate bank interbank fund transfer demo.mp4', 'This video will explain how to make net banking transaction through online.', 'Active');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `mail_ibfk_1` FOREIGN KEY (`employee_id1`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `subscription`
--
ALTER TABLE `subscription`
  ADD CONSTRAINT `subscription_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
