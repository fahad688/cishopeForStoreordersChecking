-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2017 at 06:59 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_url` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_keywords` text NOT NULL,
  `blog_description` text NOT NULL,
  `blog_content` text NOT NULL,
  `date_published` int(11) NOT NULL,
  `author` varchar(65) NOT NULL,
  `picture` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_url`, `blog_title`, `blog_keywords`, `blog_description`, `blog_content`, `date_published`, `author`, `picture`) VALUES
(2, 'First-blog', 'First blog', 'This is a first blog', 'This is first blog', 'There are lot of calling Applications like Skype, Emo and Vibber etc. A lot of work has been done on these calling applications. But we want of add a functionality of language converter. So people of different countries can easily communicate with each other. Similar kind of application used in General Assembly of United Nations, where the representator   of different countries speaks different languages but with the help of a head phones other can listen the speech in their own language .But this application is not being used publically. So we want that every person can use this application quite easily.', 1481004000, 'Saad Luck', '73qF7YuEXvLpKS6V.jpg'),
(3, 'second Blog', 'Second blog', 'This is second blog', 'This is second blog', 'The problem due to which we select this project is that although there are tons of calling Applications are available but               none of which provide a facility of language converts. So to mitigate this language barrier so that the people from different countries with different languages can communicate with each other easily . \r\n2. Describe the objective of your proposed research and list down what steps you will take to achieve those objectives.\r\n3. This project will provide a lot of academic and industrial benefits. As it removes the language barrier so people from different business communities can interact with each other .They can share their experiences with lot of ease        \r\n', 1483336800, 'Usman Luck', 'IDN8NGFrJ2olTb35.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('a285a1285f3ea74a798c5b21dd75e1ae7eee4666', '::1', 1500883625, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838333436343b69735f61646d696e7c733a313a2231223b),
('7af22d07c674b3669386d6e52beb8f87bc9d3754', '::1', 1500884076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838333737373b69735f61646d696e7c733a313a2231223b),
('34daadd049fbadbcd2d7e9f12448c554328c95ba', '::1', 1500884312, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838343038393b69735f61646d696e7c733a313a2231223b),
('773a571e85cad9f1d84c3cafc65194581f09cd02', '::1', 1500884702, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838343430353b69735f61646d696e7c733a313a2231223b),
('a36ccfe2b9a0829746f7eaecb46a781a13291700', '::1', 1500885006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838343730363b69735f61646d696e7c733a313a2231223b),
('e1fba9193ef8d63b895afad15eaa604025500408', '::1', 1500885303, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838353030383b69735f61646d696e7c733a313a2231223b),
('8cef1d47b155c2b449752d6768ba9f50e77d6cf8', '::1', 1500885608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838353330393b69735f61646d696e7c733a313a2231223b),
('a264762a4796a2ee61db087a95c3a105d6ad184b', '::1', 1500885840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838353631313b69735f61646d696e7c733a313a2231223b),
('9f406798fa7e77b78a9950f0813aa03b7942ad4b', '::1', 1500886694, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838363430313b69735f61646d696e7c733a313a2231223b),
('e370d944651dafa8cf2514b0ed0bfa615079bf0c', '::1', 1500886867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838363733393b69735f61646d696e7c733a313a2231223b),
('92843a374f957f75989cf768b6ae389df86c2ae4', '::1', 1500888150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838373936323b69735f61646d696e7c733a313a2231223b),
('a870f8117c7033ea9e88e1fe4fa5151cebc99245', '::1', 1500889612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303838393434323b69735f61646d696e7c733a313a2231223b),
('49b01cd78a80b2a6164824c33d5b8b9d6f3eacc9', '::1', 1500890020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839303031373b69735f61646d696e7c733a313a2231223b),
('86c8fd9b229d52bfd116386d755a31c9204728d1', '::1', 1500890371, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839303336393b69735f61646d696e7c733a313a2231223b),
('35c7e3d6e11a06b843b85d175aac57e91fc6d83b', '::1', 1500891140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839303834363b69735f61646d696e7c733a313a2231223b),
('b88d3e9b73a1f1d5d3e73aee61cd77f60e78d147', '::1', 1500891447, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839313139353b69735f61646d696e7c733a313a2231223b),
('d6cbc36ccb4b2f6a1bb784f3a7aadc4317298e73', '::1', 1500891704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839313637373b69735f61646d696e7c733a313a2231223b),
('e6dd2446421cdddb32530470194d658e056a3ea0', '::1', 1500892530, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839323531383b69735f61646d696e7c733a313a2231223b),
('ca0429c408ee43ea142ba700ab62259577044a81', '::1', 1500895514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839353439373b69735f61646d696e7c733a313a2231223b),
('0a291cf858247184cf3e546c579cdfd28603e731', '::1', 1500896158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839353935393b69735f61646d696e7c733a313a2231223b),
('4de4bf2cb4719c0ec5a0c425e5f0c51f5bc071e7', '::1', 1500897490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839373433393b69735f61646d696e7c733a313a2231223b),
('12dbcfd4a702931de3fd3b1b08aeccbbaf96edad', '::1', 1500898041, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839383034303b69735f61646d696e7c733a313a2231223b),
('6d94f1214ff0cbdace2bb5ad1abb9aeb08a47bfd', '::1', 1500899593, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839393330343b69735f61646d696e7c733a313a2231223b),
('c1abdf8743ae52df6783ef274bbcd8b7efc7c2bf', '::1', 1500899856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303839393636323b69735f61646d696e7c733a313a2231223b),
('5fdee40efb67c28ec8a03bf6f8017b58b3a1b0c2', '::1', 1500901587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303930313438313b69735f61646d696e7c733a313a2231223b),
('9acecb92a42402816b3b2aca5066cad40bf81a6d', '::1', 1500903542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303930333238393b69735f61646d696e7c733a313a2231223b),
('65b99327b1010aed6297782f044cb21a239f4cb0', '::1', 1500903632, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303930333539383b69735f61646d696e7c733a313a2231223b),
('932673ddb7ce1e2f49c89182b679918f3c87f5b3', '::1', 1500904189, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303930343136383b69735f61646d696e7c733a313a2231223b),
('188ad241f0c253166dac61ab0ac707142b689b20', '::1', 1500911223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303931313137393b69735f61646d696e7c733a313a2231223b),
('e4ce5b93903aee85f5b3e1e51127440a8d125dfa', '::1', 1500913076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530303931323933333b69735f61646d696e7c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment_type` varchar(1) NOT NULL,
  `update_id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_type`, `update_id`, `date_created`, `comment`) VALUES
(1, 'e', 71, 1500867087, 'This is testing comments'),
(2, 'e', 59, 1500867139, 'this is our best customer from software house MR asad ');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `sent_by` int(11) NOT NULL,
  `sent_to` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `opened` int(1) NOT NULL,
  `code` varchar(6) NOT NULL,
  `urgent` tinyint(1) NOT NULL,
  `ranking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `date_created`, `sent_by`, `sent_to`, `subject`, `message`, `opened`, `code`, `urgent`, `ranking`) VALUES
(29, 1500186396, 1, 0, 'Urgent testing ', 'hellow i am looking for urgent messages ', 1, 'QK4uZe', 0, 0),
(30, 1500186522, 0, 1, 'Urgent testing ', 'This is admin testing&nbsp;<br><br>\r\n        --------------------------------------------------------------<br><br>\r\n        The original message is shown below :<br><br>hellow i am looking for urgent messages ', 1, 'MFzOoC', 0, 0),
(31, 1500186559, 1, 0, '', 'Ok admin i checked your messages ', 1, 'eaCS5C', 0, 0),
(32, 1500186617, 0, 1, 'checked', 'ok customer i have checked your messages&nbsp;<br><br>\r\n        --------------------------------------------------------------<br><br>\r\n        The original message is shown below :<br><br>Ok admin i checked your messages ', 0, 'dgmndP', 0, 0),
(33, 1500186712, 1, 0, 'hy', 'hy2', 0, 'qFIhI9', 0, 0),
(34, 1500187571, 1, 0, 'secnd testing ', 'samw', 0, 'kk7ws9', 0, 0),
(35, 1500188745, 1, 0, 'testing query ', 'same with query ', 1, 'fD1RHV', 0, 0),
(36, 1500188778, 0, 1, 'testing query ', '<br>me also testing query<br>\r\n        --------------------------------------------------------------<br><br>\r\n        The original message is shown below :<br><br>same with query ', 1, 'aUPXh3', 0, 0),
(37, 1500188817, 1, 0, '', 'why you are testing query ', 1, '7NB7w3', 0, 0),
(38, 1500188848, 0, 1, 'answer ', '<br>because you are testing <br>\r\n        --------------------------------------------------------------<br><br>\r\n        The original message is shown below :<br><br>why you are testing query ', 1, 'QtwOeV', 0, 0),
(39, 1500353819, 0, 1, 'testing admin', '<br>Testing 1<br>\r\n        --------------------------------------------------------------<br><br>\r\n        The original message is shown below :<br><br>why you are testing query ', 1, 'glY2V1', 0, 0),
(40, 1500353992, 0, 1, 'Message from Admin', 'Hy ASad This is admin&nbsp;', 1, 'fxhWRX', 0, 0),
(41, 1500354036, 1, 0, '', 'Hy Admin This is your customer Asad ', 1, 'mZJfim', 0, 0),
(42, 1500354098, 0, 1, 'secod reply from admin', 'How are Your Asad&nbsp;<br><br>\r\n        --------------------------------------------------------------<br><br>\r\n        The original message is shown below :<br><br>Hy Admin This is your customer Asad ', 1, 'saru7T', 0, 0),
(43, 1500354159, 1, 0, '', 'Second reply from Customer asad \r\nyes i am fine what about you', 1, 'Enjbfu', 0, 0),
(44, 1500354249, 0, 1, 'Third reply from admin ', '<br>Yes i am also fine and shine <br>\r\n        --------------------------------------------------------------<br><br>\r\n        The original message is shown below :<br><br>Second reply from Customer asad \r\nyes i am fine what about you', 1, '9d5MdK', 0, 0),
(45, 1500530581, 0, 1, 'Order Status', 'OrderCQRQGPhas just been updatedThe new order status for your order isUnknown.', 0, 'Dwc1s6', 0, 0),
(46, 1500530591, 0, 1, 'Order Status', 'OrderCQRQGPhas just been updatedThe new order status for your order isUnknown.', 0, '7MbWC2', 0, 0),
(47, 1500530622, 0, 1, 'Order Status', 'Order7F2QS2has just been updatedThe new order status for your order isUnknown.', 1, '4TGoOj', 0, 0),
(48, 1500531956, 1, 0, '', 'ok thanku ', 1, 'MXC1Ri', 0, 0),
(49, 1500616704, 0, 1, 'Order Status', 'Order3ZVQ3Vhas just been updatedThe new order status for your order isUnknown.', 0, 'LzmM4b', 0, 0),
(50, 1500616712, 0, 1, 'Order Status', 'Order3ZVQ3Vhas just been updatedThe new order status for your order isUnknown.', 0, 'Xywadv', 0, 0),
(51, 1500616717, 0, 1, 'Order Status', 'Order3ZVQ3Vhas just been updatedThe new order status for your order isUnknown.', 0, 'vZfQQD', 0, 0),
(52, 1500616723, 0, 1, 'Order Status', 'Order3ZVQ3Vhas just been updatedThe new order status for your order isUnknown.', 0, 'DgTzt3', 0, 0),
(53, 1500616804, 0, 1, 'reply', 'this is a reply for u&nbsp;<br><br>\r\n        --------------------------------------------------<br>\r\n        The original message is shown below:<br><br>ok thanku ', 1, 'vJjRZB', 0, 0),
(54, 1500618600, 1, 0, '', 'ok cool', 0, 'yiQiyy', 0, 0),
(55, 1500619543, 1, 0, 'new message ', 'to the admin ', 0, 'n7tQmb', 0, 0),
(56, 1500619885, 1, 0, '', 'great', 0, 'dtF5zi', 0, 0),
(57, 1500813839, 1, 0, 'reply', 'ohhh thats great\r\n\r\n\r\n------------------------------------------\r\n\r\nthis is a reply for u \r\n\r\n\r\n\r\n\r\n        --------------------------------------------------\r\n\r\n\r\n        The original message is shown below:\r\n\r\n\r\n\r\nok thanku ', 0, '7esngu', 1, 0),
(58, 1500815450, 1, 0, 'reply', '\r\nohh thanku so much \r\n\r\n------------------------------------------\r\n\r\nthis is a reply for u \r\n\r\n\r\n\r\n\r\n        --------------------------------------------------\r\n\r\n\r\n        The original message is shown below:\r\n\r\n\r\n\r\nok thanku ', 0, 'G969Zq', 1, 0),
(59, 1500815730, 1, 0, 'helloo developer test', 'this is a testing ', 1, 'GSWzJn', 1, 1),
(60, 1500820999, 1, 0, 'reply', 'just thankfull to yourb \r\n\r\n\r\n\r\n------------------------------------------\r\n\r\nthis is a reply for u \r\n\r\n\r\n\r\n\r\n        --------------------------------------------------\r\n\r\n\r\n        The original message is shown below:\r\n\r\n\r\n\r\nok thanku ', 1, '9ZZZ6t', 0, 0),
(61, 1500822339, 1, 0, 'hello', 'this is messing testing ', 1, 'fCkkQM', 1, 2),
(62, 1500822411, 0, 1, 'hello', '<br>ok great now in admin page <br>\r\n        --------------------------------------------------<br>\r\n        The original message is shown below:<br><br>this is messing testing ', 0, 'EGprJb', 0, 0),
(63, 1500824452, 0, 1, 'this is admin who is testing ', 'ohh great i think every think is working&nbsp;', 0, 'NftRZj', 0, 0),
(64, 1500824474, 0, 1, 'hello', 'checked<br><br>\r\n        --------------------------------------------------<br>\r\n        The original message is shown below:<br><br>this is messing testing ', 0, 'YJpu5v', 0, 0),
(65, 1500824929, 0, 1, 'Order Status', 'Order7F2QS2has just been updatedThe new order status for your order isUnknown.', 0, 'nuurLv', 0, 0),
(66, 1500825281, 0, 1, 'Order Status', 'Order6YHQQ0has just been updatedThe new order status for your order isUnknown.', 0, 'ZtPYrw', 0, 0),
(67, 1500825292, 0, 1, 'Order Status', 'Order6YHQQ0has just been updatedThe new order status for your order isUnknown.', 0, 'nVjjKK', 0, 0),
(68, 1500826948, 0, 1, 'Order Status', 'Order7F2QS2has just been updatedThe new order status for your order isUnknown.', 1, 'L4Ntpt', 0, 0),
(69, 1500827020, 0, 1, 'helloo developer test', 'yourn rakinh is submitted<br><br>\r\n        --------------------------------------------------<br>\r\n        The original message is shown below:<br><br>this is a testing ', 1, 'naVRbT', 0, 0),
(70, 1500827697, 1, 0, 'thanki', 'xxxx  c ccccc', 0, 'SweLPS', 1, 0),
(71, 1500865975, 16, 0, 'hy its testing', 'this ,mesaage is from testing ', 1, 'NHT4c5', 1, 0),
(72, 1500868217, 0, 0, 'Contact Form', 'Akbar submitted the following information:<br><br>Name: Akbar<br>Email: fahadluck688@gmail.com<br>Telephone Number: 1223<br>Message: hy<br>', 1, 'N9PUgU', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_blocks`
--

CREATE TABLE `homepage_blocks` (
  `id` int(11) NOT NULL,
  `block_title` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homepage_blocks`
--

INSERT INTO `homepage_blocks` (`id`, `block_title`, `priority`) VALUES
(2, 'new winter sail offers of 2016', 2),
(3, 'Special summar sail offers!', 1),
(4, 'Half price offers', 3);

-- --------------------------------------------------------

--
-- Table structure for table `homepage_offers`
--

CREATE TABLE `homepage_offers` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homepage_offers`
--

INSERT INTO `homepage_offers` (`id`, `block_id`, `item_id`) VALUES
(6, 3, 9),
(7, 3, 22),
(8, 3, 10),
(9, 2, 13),
(10, 2, 15),
(11, 2, 17),
(15, 4, 12),
(16, 4, 11),
(18, 4, 13),
(19, 3, 3),
(20, 3, 7),
(21, 3, 10),
(22, 2, 14),
(23, 2, 15),
(24, 2, 17),
(25, 2, 11),
(28, 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `item_galleries`
--

CREATE TABLE `item_galleries` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_galleries`
--

INSERT INTO `item_galleries` (`id`, `parent_id`, `picture`) VALUES
(1, 7, 'pic1.jpg'),
(2, 7, 'pic2.jpg'),
(3, 7, 'pic3.jpg'),
(4, 7, 'pics5.jpg'),
(5, 34, 'slider1.jpg'),
(6, 34, 'slider2.jpg'),
(7, 34, 'slider3.jpg'),
(8, 34, 'slider5.jpg'),
(9, 8, 'slider6.jpg'),
(10, 5, 'slider11.jpg'),
(11, 5, 'slider21.jpg'),
(12, 5, 'slider31.jpg'),
(13, 5, 'slider4.jpg'),
(14, 6, 'slider12.jpg'),
(15, 6, 'pic21.jpg'),
(16, 6, 'pic4.jpg'),
(17, 6, 'slider61.jpg'),
(18, 11, 'pic11.jpg'),
(19, 11, 'pic22.jpg'),
(20, 11, 'pic31.jpg'),
(21, 11, 'pic41.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `paypal`
--

CREATE TABLE `paypal` (
  `id` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `posted_information` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paypal`
--

INSERT INTO `paypal` (`id`, `date_created`, `posted_information`) VALUES
(1, 1496137598, 'a:42:{s:10:\"mc_gross_1\";s:4:\"0.02\";s:14:\"num_cart_items\";s:1:\"1\";s:8:\"payer_id\";s:12:\"XFDJRTDFDHLJ\";s:20:\"address_country_code\";s:2:\"GB\";s:12:\"ipn_track_id\";s:10:\"z4hlraaxh2\";s:11:\"address_zip\";s:6:\"LW18QT\";s:7:\"charset\";s:12:\"windows-1252\";s:13:\"payment_gross\";s:0:\"\";s:14:\"address_status\";s:9:\"confirmed\";s:14:\"address_street\";s:14:\"Evergreen Road\";s:11:\"verify_sign\";s:39:\"FHEJhfdfdYRCdfsrGRHdfdkKJDFDJKLsiy5aSyk\";s:11:\"mc_shipping\";s:4:\"0.01\";s:8:\"txn_type\";s:4:\"cart\";s:11:\"receiver_id\";s:14:\"LRKJKLje68KLJF\";s:11:\"payment_fee\";s:0:\"\";s:12:\"item_number1\";s:0:\"\";s:11:\"mc_currency\";s:3:\"GBP\";s:19:\"transaction_subject\";s:0:\"\";s:6:\"custom\";s:216:\"4b310e4e5c80b33046266d78cfbe3ed1127170bb407e524f5d72a870f9ed5257fb859e80270028e9eb24ac3287c6b998e928df6cd0aa46baa6ffddbbb33b72e488yYcUnSRJfocSEYwimHZfFQBv7XgjneLfNWSWez0mSBPJ0OTvm5IwjTpPG61mnfOABFzSCdvJODxR9Zj1CsYg==\";s:22:\"protection_eligibility\";s:8:\"Eligible\";s:9:\"quantity1\";s:1:\"1\";s:15:\"address_country\";s:14:\"United Kingdom\";s:12:\"payer_status\";s:8:\"verified\";s:10:\"first_name\";s:5:\"David\";s:10:\"item_name1\";s:34:\"Fender Jimi Hendrix Strat in Black\";s:12:\"address_name\";s:8:\"Flat 436\";s:8:\"mc_gross\";s:4:\"0.02\";s:12:\"payment_date\";s:25:\"12:11:00 Sep 28, 2016 PDT\";s:14:\"payment_status\";s:9:\"Completed\";s:8:\"business\";s:13:\"david@xxx.com\";s:9:\"last_name\";s:8:\"Connelly\";s:13:\"address_state\";s:7:\"Glasgow\";s:19:\"payer_business_name\";s:17:\"Some Business Ltd\";s:6:\"txn_id\";s:14:\"98DCDD8LKJKDFD\";s:6:\"mc_fee\";s:4:\"0.02\";s:6:\"resend\";s:4:\"true\";s:12:\"payment_type\";s:7:\"instant\";s:14:\"notify_version\";s:3:\"3.8\";s:11:\"payer_email\";s:19:\"payments@yyyy.co.uk\";s:14:\"receiver_email\";s:13:\"david@xxx.com\";s:12:\"address_city\";s:7:\"Glasgow\";s:17:\"residence_country\";s:2:\"GB\";}');

-- --------------------------------------------------------

--
-- Table structure for table `site_cookies`
--

CREATE TABLE `site_cookies` (
  `id` int(11) NOT NULL,
  `cookie_code` varchar(128) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expiry_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site_cookies`
--

INSERT INTO `site_cookies` (`id`, `cookie_code`, `user_id`, `expiry_date`) VALUES
(1, 'rUWw5zBHc6imL7IRdH42yq7feq2jdhzAY4WUuoQDdlvB7wF9H2w7TrMRaRHevSYynAOGKAXW5YBdmkuN2KPz6PkSZFexGReTFuyOUaWDQXzcuubQgP0pbAKfGQDcKdnC', 88, 1491475900),
(2, 'ITxwaHC0sICB9DUMlHixED9j8Di5qq6lAeo1dMwBqhk3Mr9RpuQYS9KRiDHufF3lPsDnDJO4LIpoN6MNQ8LgtxIgOvtLrLmeryfCqytqt1RBbEMCEF4rsN4yIfBU0K3Z', 88, 1491476044),
(3, 'rweKAgvEydHGW4ajP5KvOWMIZS8WXC7COmBJ8QUK1gUE4nUSomNqxXSLEn1Phly7y4kB3iHJRcuuAx2kjwdeEQmFFKiBZXnvFFrllCRA41rctAyECx1U8Bcs40Wf3rzL', 88, 1491476050),
(4, 'a8WX0OojFHLMJvqQjsctZfq7Q7XMvN8T2tNr3TiUDgteniGUmeKTdL1E07lak14ThH2OtQAnYHyznYjRNTFcO9Z4w07rw8oMUNE3gGfJG01MLwjFBpYnNqlmqKgA674x', 88, 1491476056),
(5, 'TLDaqnhXLcQRwWGnNPDq9y3wHnMC3Y8agBZaYXG3eg3PFerWl6HmSz9ymSFvnIAG1jJ1Tpt24cDFapznhg7aZsCtnfWh4ko38UQLbJDSh0An3s4HAhVQsetgMuAV8OAj', 88, 1491476115),
(7, 'm02Bgu3gYcZ37OdqKzxmuakkpRqi8laJJQoAO4smrfc0f6XZjQAidbqm4mjbs5Bety8sIwflhbMQLh5rf015k5Th5JAX9GqCB9fc0Qpbv0JyEkALy1OMNQK4uZeBeaCS', 88, 1491476336),
(8, '5CJOG3WU5G48UftXeWZkEuYJh6f8Gxb0XXAjI8Qw3fMBx2J1hIxKS0zgq6DwvL70cbPF858ZoGRVyIlXIns3uoxGXZpNHSqTPhrUVUNl6Zj8WfmMwTLetESYQJyXgR7E', 88, 1491476342),
(10, 'yR8fwaIdiGdju6Z0bGTgZ6fxZBTOLTcyqcZJyfCOgfVM8Uf4fsrGdCQ48BidA88zFqe6YcUiBG078zS1G7mZP0OuFt3uMesriwQlL1yEjZskw7SQuDFaNg9MyecDmd9c', 88, 1491476891);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `target_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `target_url`) VALUES
(8, 'Fender Deals', 'http://localhost/cishop/');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `target_url` varchar(255) NOT NULL,
  `alt_text` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `parent_id`, `target_url`, `alt_text`, `picture`) VALUES
(3, 8, 'abc', 'xyz', 'slider12.jpg'),
(4, 8, 'http://localhost/cishop/musical/instrument/Fender-MA1-34-Size-Steel-String-Acoustic-Guitar', 'some text ', 'slider51.jpg'),
(6, 8, 'This is for testing ', 'testing ', 'slider61.jpg'),
(7, 8, 'http://localhost/cishop/musical/instrument/Fender-FSR-Stratocaster-in-Black-with-Maple-Neck', 'this is alt text', 'slider41.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store_accounts`
--

CREATE TABLE `store_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(65) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(65) NOT NULL,
  `company` varchar(150) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `town` varchar(50) NOT NULL,
  `country` varchar(40) NOT NULL,
  `postcode` varchar(15) NOT NULL,
  `telnum` varchar(30) NOT NULL,
  `email` varchar(65) NOT NULL,
  `date_made` int(11) NOT NULL,
  `pword` varchar(255) NOT NULL,
  `last_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_accounts`
--

INSERT INTO `store_accounts` (`id`, `username`, `firstname`, `lastname`, `company`, `address1`, `address2`, `town`, `country`, `postcode`, `telnum`, `email`, `date_made`, `pword`, `last_login`) VALUES
(1, 'asad ali khan', 'Asad Ali', 'Khan', 'Software house ', 'P/O lak', 'Tahseel phalia ', 'lak ', 'pakistan', '5432', '0300-76754889675', 'asad123@gmail.com', 0, '$2y$11$CeSnN/PnKFb39RjwDj/Htu11qDNMPmonc6MtGxv6Rq60eyOfTGPpq', 1500865793),
(3, '', 'usman', 'akbar', 'luck', 'phalia', 'mb din', 'sargdha', 'pakistan', '266437637', '6447876556', 'usmanakbar444@yahoo.com', 1474916564, '', 0),
(5, '', 'Nina ', 'Mina ', 'luck', 'Sargodha ', 'Mandibahuddin', 'lak', 'pakistan', '6363556', '03059614897', 'saadluck1123@yahoo.com', 1476850640, '', 0),
(6, 'Guest dne8', 'Guest', 'Account', '', '', '', '', '', '', '', '', 1498531480, '', 0),
(7, 'Guest Nkhv', 'Guest', 'Account', '', '', '', '', '', '', '', '', 1498531564, '', 0),
(8, 'mussa ali', '', '', '', '', '', '', '', '', '', 'hhhhhh@gmail.com', 0, '$2y$11$u2FGtxdaxNt9WXg9qOTBeO6aSu7QiaKeVIb.nVDGTx91j4L.tvBLW', 1500815330),
(10, 'hgsgsgs', '', '', '', '', '', '', '', '', '', 'gsgs@ss.com', 0, '$2y$11$Hqs1TqD8MuSOkgUtpHz8YukyLie.8fSZbj/nuV/RBQI3qK7zazwAy', 0),
(11, 'hamza', '', '', '', '', '', '', '', '', '', 'hamza@gmail.com', 0, '$2y$11$yAKw8hDt5p2aQBUe5NAUMusarorPbgaO1tYiB5bCaRkNsB4c.h7uu', 1500829835),
(12, 'aash', '', '', '', '', '', '', '', '', '', 'aash@gmail.com', 0, '$2y$11$jLKgyCU3XTw2DlsWGzve2OeBTqUwYXTiMLq2uZIGcoKNLuDR3Uvl.', 1500830286),
(13, 'Guest EZeV', 'Guest', 'Account', '', '', '', '', '', '', '', '', 1500831837, '', 0),
(14, 'asif', '', '', '', '', '', '', '', '', '', 'asif@gmail.com', 0, '$2y$11$PNskqEWNdqMqix1fTSYEi.tD9Taftk8K6ocRSLS2aZLFpt/J9uMz2', 1500831894),
(15, 'Guest Mm8C', 'Guest', 'Account', '', '', '', '', '', '', '', '', 1500865727, '', 0),
(16, 'testing ', '', '', '', '', '', '', '', '', '', 'testing@gmail.com', 0, '$2y$11$1nZWR1VbwysQ/Bqf/wxzoumj37VHbCiKBVRjQCW0PUxz6Y0P4HuuO', 1500865867),
(17, 'faadi', '', '', '', '', '', '', '', '', '', 'faadi@gmail.com', 0, '$2y$11$TWcQdV3mffeoK8gqs4fQLuD3iCWj/imKHX30wTNIb2U.D4Rj/GMOC', 1500885745),
(18, 'Guest Mdad', 'Guest', 'Account', '', '', '', '', '', '', '', '', 1500885709, '', 0),
(19, 'someaccount', '', '', '', '', '', '', '', '', '', 'ss@gmail.com', 0, '$2y$11$rIUS964sr/gau49YBpmhtexrjLfEfTc/D8xzQtSwv..tNwKxYkqU.', 1500885818),
(20, 'ibraheem', '', '', '', '', '', '', '', '', '', 'a@gmail.com', 0, '$2y$11$lHRFWbNEURSIss7j7grG..VFhvgyq0GdjC4vvlFn6XIRJgE/eOKGe', 1500886467);

-- --------------------------------------------------------

--
-- Table structure for table `store_basket`
--

CREATE TABLE `store_basket` (
  `id` int(11) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `tax` decimal(7,2) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_size` varchar(70) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_colour` varchar(70) NOT NULL,
  `date_added` int(11) NOT NULL,
  `shopper_id` int(11) NOT NULL,
  `ip_address` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_basket`
--

INSERT INTO `store_basket` (`id`, `session_id`, `item_title`, `price`, `tax`, `item_id`, `item_size`, `item_qty`, `item_colour`, `date_added`, `shopper_id`, `ip_address`) VALUES
(1, '358010139a980ca4c282d9c5eaad75b5782da353', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1496137598, 8, '::1'),
(2, 'c319a1631ea4e93aed6cc88cca7b687b455d9fb7', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 3, 'green', 1497887344, 0, '::1'),
(3, '99fabe845186a4409f3c758535c943c19a64b53d', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 22, 'green', 1498066851, 8, '::1'),
(4, '88e84d14de76df106655a2b818f3abe88f0d7d18', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 2, 'green', 1498106353, 8, '::1'),
(49, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(50, '754255bc2d566d09e78a44a073ead86160fb10f6', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 2, 'green', 1498529165, 0, '::1'),
(51, 'c0e6d55d642d0582eea71cc43f5417d475c3a71c', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 2, 'green', 1498531417, 7, '::1'),
(53, '733ee70e6e8e5429420ebeb72ae3413d6621f662', 'Fender MA1 3/4 Size Steel String Acoustic Guitar', '449.00', '0.00', 17, '', 11, '', 1500615813, 0, '::1'),
(60, '7ed1a38eb24fd187e056e091664d182666da0d33', 'Fender Coronado Guitar in 3 Colour Sunburst', '499.00', '0.00', 13, '', 3, '', 1500814446, 0, '::1'),
(61, '58749cd29c41ab64c02ac9d5de0d7fc5c07750c8', 'Fender Coronado Guitar in 3 Colour Sunburst', '499.00', '0.00', 13, '', 2, '', 1500815041, 0, '::1'),
(62, 'e845ea8ef1ef984247847051826855dd88ba7ae4', 'Fender Coronado Guitar in 3 Colour Sunburst', '499.00', '0.00', 13, '', 2, '', 1500815357, 8, '::1'),
(63, 'e845ea8ef1ef984247847051826855dd88ba7ae4', 'Fender FSR Stratocaster in Black with Maple Neck', '544.00', '0.00', 15, '', 3, '', 1500815383, 0, '::1'),
(66, '3204a94ed1532ff3a84e717126ecd64a978624ca', 'Fender FSR Stratocaster in Black with Maple Neck', '544.00', '0.00', 15, '', 2, '', 1500821428, 0, '::1'),
(67, '716f231d8ad7ea820f245b298b52dfdc73b2e7a1', 'Fender MA1 3/4 Size Steel String Acoustic Guitar', '449.00', '0.00', 17, '', 1, '', 1500822308, 1, '::1'),
(69, 'eb3a5c16eed003330a2cb40e2c72c842eb1156a7', 'Fender FSR USA Pro Stratocaster HSS in Black', '863.00', '0.00', 10, '', 3, '', 1500827812, 1, '::1'),
(70, 'b2444b0e0ec98a3e1a990b919be82e9020cc8446', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, '', 2, '', 1500829473, 1, '::1'),
(71, 'b2444b0e0ec98a3e1a990b919be82e9020cc8446', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, '', 3, '', 1500829525, 0, '::1'),
(72, 'b2444b0e0ec98a3e1a990b919be82e9020cc8446', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, '', 2, '', 1500829643, 1, '::1'),
(73, 'b2444b0e0ec98a3e1a990b919be82e9020cc8446', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, '', 3, '', 1500829664, 0, '::1'),
(74, 'b2444b0e0ec98a3e1a990b919be82e9020cc8446', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, '', 3, '', 1500829707, 1, '::1'),
(75, 'b2444b0e0ec98a3e1a990b919be82e9020cc8446', 'Fender Japan FSR Classic 69 Telecaster Pink Paisley', '755.00', '0.00', 9, '', 6, '', 1500829730, 0, '::1'),
(76, '3a79d05a454594ad334bcd19147aac90d5e24ed2', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, 'small', 3, 'white', 1500830090, 12, '::1'),
(77, '3a79d05a454594ad334bcd19147aac90d5e24ed2', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, 'small', 4, 'white', 1500830186, 12, '::1'),
(78, '3a79d05a454594ad334bcd19147aac90d5e24ed2', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, 'small', 3, 'white', 1500830350, 0, '::1'),
(79, '71951cff5415ae7ec239e545db733c18b50fdbf7', 'Fender FSR USA Pro Stratocaster HSS in Black', '863.00', '0.00', 10, '', 3, '', 1500831532, 1, '::1'),
(80, '71951cff5415ae7ec239e545db733c18b50fdbf7', 'Fender FSR USA Pro Stratocaster HSS in Black', '863.00', '0.00', 10, '', 3, '', 1500831796, 1, '::1'),
(81, '5d909e995de431baa8abae248b49123469cc93b7', 'Fender Japan FSR Classic 69 Telecaster Pink Paisley', '755.00', '0.00', 9, '', 2, '', 1500831832, 13, '::1'),
(82, 'ec515adc31ef3f0223c9897a89bb8bcc3023c282', 'Fender FSR Stratocaster in Black with Maple Neck', '544.00', '0.00', 15, '', 2, '', 1500865719, 16, '::1'),
(83, 'ec515adc31ef3f0223c9897a89bb8bcc3023c282', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, '', 2, '', 1500865772, 16, '::1'),
(84, 'ec515adc31ef3f0223c9897a89bb8bcc3023c282', 'Fender American Deluxe Dimension Bass V HH Black', '999.00', '0.00', 22, '', 7, '', 1500865818, 16, '::1'),
(85, '8cef1d47b155c2b449752d6768ba9f50e77d6cf8', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '', 2, '', 1500885608, 0, '::1'),
(86, 'a264762a4796a2ee61db087a95c3a105d6ad184b', 'Fender Japan FSR Classic 69 Telecaster Pink Paisley', '755.00', '0.00', 9, '', 2, '', 1500885690, 19, '::1'),
(87, 'a264762a4796a2ee61db087a95c3a105d6ad184b', 'Fender Japan FSR Classic 69 Telecaster Pink Paisley', '755.00', '0.00', 9, '', 3, '', 1500885700, 19, '::1'),
(88, 'a264762a4796a2ee61db087a95c3a105d6ad184b', 'Fender Japan FSR Classic 69 Telecaster Pink Paisley', '755.00', '0.00', 9, '', 3, '', 1500885700, 19, '::1'),
(89, 'a264762a4796a2ee61db087a95c3a105d6ad184b', 'Fender Japan FSR Classic 69 Telecaster Pink Paisley', '755.00', '0.00', 9, '', 4, '', 1500885723, 19, '::1'),
(90, 'a264762a4796a2ee61db087a95c3a105d6ad184b', 'Fender Japan FSR Classic 69 Telecaster Pink Paisley', '755.00', '0.00', 9, '', 2, '', 1500885764, 19, '::1'),
(91, '9f406798fa7e77b78a9950f0813aa03b7942ad4b', 'Fender FSR USA Pro Stratocaster HSS in Black', '863.00', '0.00', 10, '', 2, '', 1500886409, 20, '::1'),
(92, '0a291cf858247184cf3e546c579cdfd28603e731', 'Fender Coronado Guitar in 3 Colour Sunburst', '499.00', '0.00', 13, '', 2, '', 1500896005, 0, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `store_categories`
--

CREATE TABLE `store_categories` (
  `id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL,
  `cat_url` varchar(255) NOT NULL,
  `parent_cat_id` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_categories`
--

INSERT INTO `store_categories` (`id`, `cat_title`, `cat_url`, `parent_cat_id`, `priority`) VALUES
(1, 'Car', 'Car', 17, 7),
(2, 'Honda Car', '', 1, 0),
(3, 'Bike ', 'Bike', 4, 2),
(4, 'Laptop', 'Laptop', 13, 6),
(5, 'Mobiles', '', 0, 6),
(6, 'Watch', '', 0, 8),
(7, 'Honda bike ', '', 3, 4),
(8, 'Yamaha Bike', '', 3, 2),
(9, 'Pak hero Bike ', '', 3, 1),
(10, 'United Bike ', '', 3, 3),
(11, 'BIke ', 'BIke', 17, 5),
(12, 'Nina mina bike ', '', 11, 0),
(13, 'Shirt', 'Shirt', 17, 4),
(14, 'test', 'test', 13, 0),
(15, 'Test', 'Test', 17, 2),
(16, 'HP Laptop', 'HP-Laptop', 15, 0),
(17, 'Dell Laptop', 'Dell-Laptop', 0, 4),
(18, 'Dell Laptop', 'Dell-Laptop', 15, 0),
(19, 'Tusheba Laptop', 'Tusheba-Laptop', 0, 3),
(20, 'Tusheba Laptop', 'Tusheba-Laptop', 15, 0),
(21, 'Hiar Laptop', 'Hiar-Laptop', 15, 0),
(22, 'Brand New Laptop', 'Brand-New-Laptop', 15, 0),
(23, 'New Laptop', 'New-Laptop', 17, 0),
(24, 'Brand New Laptops', 'Brand-New-Laptops', 0, 1),
(25, 'Imported Laptops', 'Imported-Laptops', 0, 7),
(26, 'New Laptops', 'New-Laptops', 25, 0),
(27, 'Guitars', 'Guitars', 0, 2),
(28, 'Fender Guitars', 'Fender-Guitars', 27, 0),
(29, 'Folk Instruments', 'Folk-Instruments', 0, 5),
(30, 'String Folk Instruments ', 'String-Folk-Instruments', 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_cat_assign`
--

CREATE TABLE `store_cat_assign` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_cat_assign`
--

INSERT INTO `store_cat_assign` (`id`, `cat_id`, `item_id`) VALUES
(11, 3, 1),
(17, 22, 2),
(18, 26, 3),
(19, 26, 4),
(20, 26, 5),
(21, 28, 6),
(22, 28, 7),
(23, 28, 8),
(24, 28, 9),
(25, 28, 10),
(26, 28, 11),
(27, 28, 12),
(28, 28, 13),
(29, 28, 14),
(30, 28, 15),
(31, 28, 16),
(32, 28, 17),
(33, 28, 18),
(34, 28, 19),
(35, 28, 20),
(36, 28, 21),
(37, 28, 22),
(38, 28, 23),
(39, 28, 24),
(40, 28, 25),
(41, 28, 54),
(42, 28, 55),
(43, 28, 56),
(44, 28, 57),
(45, 28, 58),
(46, 28, 59),
(47, 28, 60),
(48, 28, 61),
(49, 28, 62),
(50, 26, 63),
(51, 28, 64),
(52, 28, 65),
(53, 28, 66),
(54, 30, 41);

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE `store_items` (
  `id` int(11) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `item_url` varchar(255) NOT NULL,
  `item_price` decimal(7,2) NOT NULL,
  `item_description` text NOT NULL,
  `big_pic` varchar(255) NOT NULL,
  `small_pic` varchar(255) NOT NULL,
  `was_price` decimal(7,2) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `item_title`, `item_url`, `item_price`, `item_description`, `big_pic`, `small_pic`, `was_price`, `status`) VALUES
(4, 'Fender American Deluxe Dimension Bass V in Root Beer', 'Fender-American-Deluxe-Dimension-Bass-V-in-Root-Beer', '1440.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender American Deluxe Dimension Bass V in Root Beer is a spectacular guitar.  This guitar features a stunning rosewood fretboard and a spectacular basswood body. The guitar has 24 frets which makes it perfect for soft rock. Invented in 1969, this flagship Fender guitar has been rocking the world since before Moses parted the red sea! The Fender American Deluxe Dimension Bass V in Root Beer made its first appearance during The Isle of Wight Festival when Steve Vai took to the stage and made the audience run for the hills with a rendition of Wake Me Up Before You Go-Go.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1004.jpg\', \'S1004.jpg\', \'0.00\', 1)</span></font>', '3.jpg', '3.jpg', '1450.00', 1),
(5, 'Fender American Deluxe Dimension Bass IV HH RW in Violin Burst', 'Fender-American-Deluxe-Dimension-Bass-IV-HH-RW-in-Violin-Burst', '1529.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender American Deluxe Dimension Bass IV HH RW in Violin Burst is a full sounding guitar.  This guitar features a stunning rosewood fretboard and a rocker\'\'s basswood body. The guitar has 24 frets which makes it perfect for soft rock. Invented in 1900, this flagship Fender guitar has been rocking the world since before New Kids On The Block changed their name to The Beatles! The Fender American Deluxe Dimension Bass IV HH RW in Violin Burst made its first appearance during Live AID when BB King took to the stage and left the audience begging for more with a rendition of Stairway to Heaven.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1005.jpg\', \'S1005.jpg\', \'0.00\', 1)</span></font>', '4.jpg', '4.jpg', '1550.00', 1),
(6, 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', 'Fender-American-Deluxe-Strat-Plus-HSS-in-Metallic-3-Tone-Sunburst', '1419.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst is a special guitar.  This guitar features a stunning maple fretboard and a full sounding high grade alder body body. The guitar has 22 frets which makes it perfect for cheesy 80s rock music. Invented in 1914, this flagship Fender guitar has been rocking the world since before The Dead Sea was just sick! The Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst made its first appearance during Live AID when Angus Young took to the stage and made the audience ecstatic with a rendition of I\'\'m a Barbie Girl In A Barbie World.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1006.jpg\', \'S1006.jpg\', \'0.00\', 1)</span></font>', '5.jpg', '5.jpg', '1433.00', 1),
(7, 'Fender Jimi Hendrix Strat in Black', 'Fender-Jimi-Hendrix-Strat-in-Black', '649.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender Jimi Hendrix Strat in Black is a shredder\'\'s guitar.  This guitar features a stunning maple fretboard and a very interesting basswood body. The guitar has 24 frets which makes it perfect for blues. Invented in 1916, this flagship Fender guitar has been rocking the world since before the amount of RAM that your computer has was measured in Roman numerals! The Fender Jimi Hendrix Strat in Black made its first appearance during Top Of The Pops when Eric Clapton took to the stage and blew the roof off with a rendition of I\'\'ll do it but only if Frank says \'\'it\'\'s okay\'\'.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1007.jpg\', \'S1007.jpg\', \'0.00\', 1)</span></font>', '6.jpg', '6.jpg', '655.00', 1),
(8, 'Fender CD-60 Acoustic Guitar Starter Pack in Natural', 'Fender-CD-60-Acoustic-Guitar-Starter-Pack-in-Natural', '139.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender CD-60 Acoustic Guitar Starter Pack in Natural is a rocker\'\'s guitar.  This guitar features a high grade rosewood fretboard and a rocker\'\'s basswood body. The guitar has 22 frets which makes it perfect for soft rock. Invented in 1902, this flagship Fender guitar has been rocking the world since before The Dead Sea was just sick! The Fender CD-60 Acoustic Guitar Starter Pack in Natural made its first appearance during Live AID when Chuck Berry took to the stage and left the audience begging for more with a rendition of I\'\'m a lumberjack and I\'\'m okay.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1008.jpg\', \'S1008.jpg\', \'0.00\', 1),</span></font>', '7.jpg', '7.jpg', '130.00', 1),
(9, 'Fender Japan FSR Classic 69 Telecaster Pink Paisley', 'Fender-Japan-FSR-Classic-69-Telecaster-Pink-Paisley', '755.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender Japan FSR Classic 69 Telecaster Pink Paisley is a full sounding guitar.  This guitar features a high grade rosewood fretboard and a very interesting high grade alder body body. The guitar has 22 frets which makes it perfect for heavy rock. Invented in 1919, this flagship Fender guitar has been rocking the world since before high button shoes were in style! The Fender Japan FSR Classic 69 Telecaster Pink Paisley made its first appearance during The Ed Sullivan Show when BB King took to the stage and shocked the audience into a state of paralysis with a rendition of I\'\'m a lumberjack and I\'\'m okay.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1009.jpg\', \'S1009.jpg\', \'0.00\', 1),</span></font>', '8.jpg', '8.jpg', '33.00', 1),
(10, 'Fender FSR USA Pro Stratocaster HSS in Black', 'Fender-FSR-USA-Pro-Stratocaster-HSS-in-Black', '863.00', '<font face=\"Arial, Verdana\"><span xss=removed>tratocaster HSS in Black is a rare guitar.  This guitar features a stunning rosewood fretboard and a high value guitar at a low end price high grade alder body body. The guitar has 24 frets which makes it perfect for cheesy 80s rock music. Invented in 1923, this flagship Fender guitar has been rocking the world since before rainbows were only available in black and white! The Fender FSR USA Pro Stratocaster HSS in Black made its first appearance during Glasonbury when Brian May took to the stage and made the audience ecstatic with a rendition of Donald Where\'\'s Yur Troosers.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus</span></font>', '9.jpg', '9.jpg', '8500.00', 1),
(11, 'Fender FSR Deluxe Telecaster in Butterscotch Blonde', 'Fender-FSR-Deluxe-Telecaster-in-Butterscotch-Blonde', '507.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender FSR Deluxe Telecaster in Butterscotch Blonde is a special guitar.  This guitar features a stunning rosewood fretboard and a rocker\'\'s basswood body. The guitar has 22 frets which makes it perfect for heavy rock. Invented in 1966, this flagship Fender guitar has been rocking the world since before a t-rex was a legitimate family pet! The Fender FSR Deluxe Telecaster in Butterscotch Blonde made its first appearance during Live AID when BB King took to the stage and bored the crowd to tears with a rendition of Wake Me Up Before You Go-Go.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1012.jpg\', \'S1012.jpg\', \'0.00\', 1),</span></font>', '11.jpg', '11.jpg', '0.00', 1),
(12, 'Fender FSR American Vintage 70s Strat in Black', 'Fender-FSR-American-Vintage-70s-Strat-in-Black', '799.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender FSR American Vintage 70s Strat in Black is a spectacular guitar.  This guitar features a high grade maple fretboard and a rocker\'\'s high grade alder body body. The guitar has 22 frets which makes it perfect for country. Invented in 1908, this flagship Fender guitar has been rocking the world since before Yoda\'\'s parents was holding interviews for the position of \'\'baby sitter\'\'! The Fender FSR American Vintage 70s Strat in Black made its first appearance during Glasonbury when Joe Satriani took to the stage and cleared the floor with a rendition of You\'\'re A Naughy One, Saucy Jack.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1013.jpg\', \'S1013.jpg\', \'0.00\', 1),</span></font>', '12.jpg', '12.jpg', '0.00', 1),
(13, 'Fender Coronado Guitar in 3 Colour Sunburst', 'Fender-Coronado-Guitar-in-3-Colour-Sunburst', '499.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender Coronado Guitar in 3 Colour Sunburst is a shredder\'\'s guitar.  This guitar features a stunning rosewood fretboard and a rocker\'\'s high grade alder body body. The guitar has 22 frets which makes it perfect for soft rock. Invented in 1975, this flagship Fender guitar has been rocking the world since before New Kids On The Block changed their name to The Beatles! The Fender Coronado Guitar in 3 Colour Sunburst made its first appearance during The Isle of Wight Festival when Angus Young took to the stage and cleared the floor with a rendition of I\'\'m a Barbie Girl In A Barbie World.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa.</span></font>', '13.jpg', '13.jpg', '510.00', 1),
(14, 'Fender FSR USA Pro Stratocaster HSS in Olympic White', 'Fender-FSR-USA-Pro-Stratocaster-HSS-in-Olympic-White', '855.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender FSR USA Pro Stratocaster HSS in Olympic White is a very interesting guitar.  This guitar features a stunning rosewood fretboard and a very interesting basswood body. The guitar has 24 frets which makes it perfect for blues. Invented in 1989, this flagship Fender guitar has been rocking the world since before the amount of RAM that your computer has was measured in Roman numerals! The Fender FSR USA Pro Stratocaster HSS in Olympic White made its first appearance during Woodstock when BB King took to the stage and left the audience begging for more with a rendition of I\'\'m a lumberjack and I\'\'m okay.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1015.jpg\', \'S1015.jpg\', \'0.00\', 1),</span></font>', '14.jpg', '14.jpg', '900.00', 1),
(15, 'Fender FSR Stratocaster in Black with Maple Neck', 'Fender-FSR-Stratocaster-in-Black-with-Maple-Neck', '544.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender FSR Stratocaster in Black with Maple Neck is a special guitar.  This guitar features a high grade maple fretboard and a rare basswood body. The guitar has 22 frets which makes it perfect for country. Invented in 1955, this flagship Fender guitar has been rocking the world since before rainbows were only available in black and white! The Fender FSR Stratocaster in Black with Maple Neck made its first appearance during The Isle of Wight Festival when Angus Young took to the stage and bored the crowd to tears with a rendition of I\'\'ll do it but only if Frank says \'\'it\'\'s okay\'\'.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa.</span></font>', '15.jpg', '15.jpg', '550.00', 1),
(16, 'Fender Steve Harris P Bass in West Ham Colours', 'Fender-Steve-Harris-P-Bass-in-West-Ham-Colours', '699.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender Steve Harris P Bass in West Ham Colours is a shredder\'\'s guitar.  This guitar features a stunning rosewood fretboard and a full sounding high grade alder body body. The guitar has 22 frets which makes it perfect for rock. Invented in 1990, this flagship Fender guitar has been rocking the world since before Yoda\'\'s parents was holding interviews for the position of \'\'baby sitter\'\'! The Fender Steve Harris P Bass in West Ham Colours made its first appearance during Live AID when BB King took to the stage and cleared the floor with a rendition of Wake Me Up Before You Go-Go.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum.</span></font>', '16.jpg', '16.jpg', '0.00', 1),
(17, 'Fender MA1 3/4 Size Steel String Acoustic Guitar', 'Fender-MA1-34-Size-Steel-String-Acoustic-Guitar', '449.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender FSR Classic Series 60s Stratocaster in Lilac is a rare guitar.  This guitar features a high grade maple fretboard and a spectacular basswood body. The guitar has 22 frets which makes it perfect for cheesy 80s rock music. Invented in 1924, this flagship Fender guitar has been rocking the world since before rainbows were only available in black and white! The Fender FSR Classic Series 60s Stratocaster in Lilac made its first appearance during Guitar Fest when Brian May took to the stage and blew the roof off with a rendition of Donald Where\'\'s Yur Troosers.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1019.jpg\', \'S1019.jpg\', \'0.00\', 1),</span></font>', '17.jpg', '17.jpg', '500.00', 1),
(18, 'Fender Deluxe Lone Star Stratocaster Guitar in Black', 'Fender-Deluxe-Lone-Star-Stratocaster-Guitar-in-Black', '800.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender Deluxe Lone Star Stratocaster Guitar in Black is a spectacular guitar.  This guitar features a stunning rosewood fretboard and a shredder\'\'s high grade alder body body. The guitar has 22 frets which makes it perfect for blues. Invented in 1954, this flagship Fender guitar has been rocking the world since before the amount of RAM that your computer has was measured in Roman numerals! The Fender Deluxe Lone Star Stratocaster Guitar in Black made its first appearance during Live AID when Brian May took to the stage and made the audience ecstatic with a rendition of I\'\'ll do it but only if Frank says \'\'it\'\'s okay\'\'.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1020.jpg\', \'S1020.jpg\', \'0.00\', 1),</span></font>', '20.jpg', '20.jpg', '815.00', 1),
(19, 'Fender Classic 70s Strat in Black', 'Fender-Classic-70s-Strat-in-Black', '900.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender Classic 70s Strat in Black is a spectacular guitar.  This guitar features a stunning maple fretboard and a rocker\'\'s high grade alder body body. The guitar has 24 frets which makes it perfect for rock. Invented in 1929, this flagship Fender guitar has been rocking the world since before the amount of RAM that your computer has was measured in Roman numerals! The Fender Classic 70s Strat in Black made its first appearance during Guitar Fest when BB King took to the stage and cleared the floor with a rendition of Donald Where\'\'s Yur Troosers.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1022.jpg\', \'S1022.jpg\', \'0.00\', 1),</span></font>', '21.jpg', '21.jpg', '920.00', 1),
(20, 'Fender FSR Classic Player 60s Strat Vegas Gold', 'Fender-FSR-Classic-Player-60s-Strat-Vegas-Gold', '599.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender FSR Classic Player 60s Strat Vegas Gold is a spectacular guitar.  This guitar features a stunning maple fretboard and a special basswood body. The guitar has 24 frets which makes it perfect for rock. Invented in 1952, this flagship Fender guitar has been rocking the world since before Yoda\'\'s parents was holding interviews for the position of \'\'baby sitter\'\'! The Fender FSR Classic Player 60s Strat Vegas Gold made its first appearance during Top Of The Pops when Nigel Tuffnel took to the stage and left the audience begging for more with a rendition of Wake Me Up Before You Go-Go.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius.</span></font>', '22.jpg', '22.jpg', '0.00', 1),
(21, 'Fender American Standard HH Telecaster in Ocean Blue Metallic', 'Fender-American-Standard-HH-Telecaster-in-Ocean-Blue-Metallic', '949.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender American Standard HH Telecaster in Ocean Blue Metallic is a rare guitar.  This guitar features a high grade maple fretboard and a high value guitar at a low end price basswood body. The guitar has 24 frets which makes it perfect for heavy rock. Invented in 1969, this flagship Fender guitar has been rocking the world since before a t-rex was a legitimate family pet! The Fender American Standard HH Telecaster in Ocean Blue Metallic made its first appearance during The Isle of Wight Festival when Jimmy Page took to the stage and left the audience begging for more with a rendition of I\'\'m a lumberjack and I\'\'m okay.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla</span></font>', '23.jpg', '23.jpg', '977.00', 1),
(22, 'Fender American Deluxe Dimension Bass V HH Black', 'Fender-American-Deluxe-Dimension-Bass-V-HH-Black', '999.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender American Deluxe Dimension Bass V HH Black is a rare guitar.  This guitar features a high grade maple fretboard and a full sounding high grade alder body body. The guitar has 22 frets which makes it perfect for heavy rock. Invented in 1994, this flagship Fender guitar has been rocking the world since before The Dead Sea was just sick! The Fender American Deluxe Dimension Bass V HH Black made its first appearance during Guitar Fest when Steve Vai took to the stage and left the audience begging for more with a rendition of You\'\'re A Naughy One, Saucy Jack.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa.</span></font>', '24.jpg', '24.jpg', '0.00', 1),
(23, 'Fender American Deluxe Strat Plus HSS in Metallic Black', 'Fender-American-Deluxe-Strat-Plus-HSS-in-Metallic-Black', '980.00', '<font face=\"Arial, Verdana\"><span xss=removed>Fender American Deluxe Strat Plus HSS in Metallic Black is a special guitar.  This guitar features a high grade rosewood fretboard and a high value guitar at a low end price basswood body. The guitar has 24 frets which makes it perfect for blues. Invented in 1913, this flagship Fender guitar has been rocking the world since before the days when Burger King was still a prince! The Fender American Deluxe Strat Plus HSS in Metallic Black made its first appearance during Blue Peter when Steve Vai took to the stage and left the audience begging for more with a rendition of The Camptown Lady.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus. Praesent viverra tellus at urna cursus, id mattis felis rutrum. Pellentesque velit magna, blandit ac maximus non, molestie sit amet metus. Vivamus justo risus, euismod in dapibus a, vehicula et purus. Pellentesque suscipit non quam nec imperdiet. Sed pellentesque nec augue a varius. Ut ullamcorper, erat ac rutrum viverra, massa dolor sollicitudin diam, a suscipit tellus odio ac purus. Aenean sit amet ornare tortor.\\n    \', \'B1026.jpg\', \'S1026.jpg\', \'0.00\', 1),</span></font>', '25.jpg', '25.jpg', '1000.00', 1),
(24, 'Fender Sonoran 3/4 Mini Acoustic Guitar with bag', 'Fender-Sonoran-34-Mini-Acoustic-Guitar-with-bag', '118.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender Sonoran 3/4 Mini Acoustic Guitar with bag is a full sounding guitar.  This guitar features a stunning maple fretboard and a rocker\'\'s high grade alder body body. The guitar has 24 frets which makes it perfect for cheesy 80s rock music. Invented in 1930, this flagship Fender guitar has been rocking the world since before Chuck Norris was a white belt! The Fender Sonoran 3/4 Mini Acoustic Guitar with bag made its first appearance during The Isle of Wight Festival when Angus Young took to the stage and cleared the floor with a rendition of Tie Me Kangeroo Down.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit</span></font>', '26.jpg', '26.jpg', '133.00', 1);
INSERT INTO `store_items` (`id`, `item_title`, `item_url`, `item_price`, `item_description`, `big_pic`, `small_pic`, `was_price`, `status`) VALUES
(25, 'Fender CD-60CE Cutaway Electro Acoustic Guitar in Black', 'Fender-CD-60CE-Cutaway-Electro-Acoustic-Guitar-in-Black', '187.00', '<font face=\"Arial, Verdana\"><span xss=removed>The Fender CD-60CE Cutaway Electro Acoustic Guitar in Black is a rocker\'\'s guitar.  This guitar features a stunning rosewood fretboard and a spectacular high grade alder body body. The guitar has 22 frets which makes it perfect for heavy rock. Invented in 1915, this flagship Fender guitar has been rocking the world since before the days when Burger King was still a prince! The Fender CD-60CE Cutaway Electro Acoustic Guitar in Black made its first appearance during The Ed Sullivan Show when Elvis Costello took to the stage and made the audience run for the hills with a rendition of Wake Me Up Before You Go-Go.\\n    \\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent id nisi rutrum, volutpat justo ut, hendrerit diam. Aenean consectetur dictum dignissim. Nullam dignissim, libero a fringilla tempor, ex nulla efficitur libero, nec blandit leo lacus sed libero. Ut volutpat tortor aliquet congue tristique. Suspendisse dictum augue quis ante vulputate pulvinar. Quisque nec mi non nisl consequat blandit vel sit amet nisi. Ut non quam faucibus, ullamcorper lacus non, pulvinar diam. Pellentesque posuere nisl ac imperdiet dignissim.\\n\\nDonec eu diam sit amet velit tempor congue eu malesuada metus. Curabitur a dui vel purus posuere aliquam sed a velit. Aliquam quis tellus eget quam semper tempus. Aliquam urna velit, mattis id ultricies id, malesuada ut neque. Donec in est tellus. In congue mi at mi ornare sollicitudin. Phasellus risus leo, imperdiet non eros ut, suscipit malesuada massa. \\n\\n\\nSed vel vestibulum mauris, sit amet vestibulum metus. Etiam sed urna ultricies, rhoncus risus vitae, mattis turpis. Cras tortor magna, commodo ac mi quis, bibendum efficitur neque. Duis eu justo ut tortor finibus mollis ut in mauris. Aliquam nisi nunc, viverra in est vitae, ornare tincidunt nulla. Morbi pharetra at purus at sollicitudin. Nunc sit amet faucibus metus.</span></font>', '27.jpg', '27.jpg', '0.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store_item_colours`
--

CREATE TABLE `store_item_colours` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `colour` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_item_colours`
--

INSERT INTO `store_item_colours` (`id`, `item_id`, `colour`) VALUES
(33, 52, 'green'),
(34, 5, 'red'),
(35, 4, 'red'),
(36, 22, 'white'),
(37, 6, 'green'),
(38, 23, 'hazzel');

-- --------------------------------------------------------

--
-- Table structure for table `store_item_sizes`
--

CREATE TABLE `store_item_sizes` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `size` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_item_sizes`
--

INSERT INTO `store_item_sizes` (`id`, `item_id`, `size`) VALUES
(17, 52, 'large'),
(18, 52, 'small'),
(19, 5, 'largre'),
(20, 4, 'large'),
(21, 22, 'small'),
(22, 6, '2.5'),
(23, 23, '44');

-- --------------------------------------------------------

--
-- Table structure for table `store_orders`
--

CREATE TABLE `store_orders` (
  `id` int(11) NOT NULL,
  `order_ref` varchar(6) NOT NULL,
  `date_created` int(11) NOT NULL,
  `paypal_id` int(11) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `order_status` int(11) NOT NULL,
  `shopper_id` int(11) NOT NULL,
  `mc_gross` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_orders`
--

INSERT INTO `store_orders` (`id`, `order_ref`, `date_created`, `paypal_id`, `session_id`, `opened`, `order_status`, `shopper_id`, `mc_gross`) VALUES
(1, 'QXSWDF', 1498117981, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(2, 'GM5SRU', 1498118148, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(3, 'VMVIAT', 1498118222, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(4, 'PF8B56', 1498118222, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(5, 'YUYKS5', 1498118223, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(6, 'UZRHJY', 1498118223, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(7, 'FD7UKC', 1498118224, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(8, 'F5GMTZ', 1498118225, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(9, 'DO8FEE', 1498118225, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(10, 'KBRNS4', 1498118225, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(11, 'UAEIBZ', 1498118226, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(12, 'E02CXQ', 1498118226, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(13, 'KSBGON', 1498118227, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(14, 'PJ4CFZ', 1498118227, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(15, 'H8LY8Z', 1498118228, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(16, 'ZFIYLT', 1498118228, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(17, 'IJWLC3', 1498118228, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(18, 'AEHA4J', 1498118229, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(19, 'T7ILRS', 1498118229, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(20, 'IKXVAD', 1498118230, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(21, 'MDE9UE', 1498118230, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(22, 'GMMVBX', 1498118231, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(23, 'JMLVCK', 1498118232, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(24, 'KELJPF', 1498118232, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(25, 'ZYLAWL', 1498118302, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(26, 'NK6WTM', 1498118302, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(27, '8HDPEC', 1498118303, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(28, 'DNIUKC', 1498118303, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(29, 'X11NSR', 1498118304, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(30, 'AROUM8', 1498118305, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(31, '6LB8VK', 1498118306, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(32, 'PMNUSM', 1498118306, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(33, '3ZVQ3V', 1498118307, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 1, 0, 1, '1.00'),
(34, 'PXYHEK', 1498118307, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(35, 'T6VAPS', 1498118308, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(36, 'KXCDXP', 1498118308, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(37, '7RJF00', 1498118309, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(38, 'U1ROAC', 1498118309, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(39, 'MERKME', 1498118309, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(40, 'E9HDOL', 1498118310, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(41, 'O8GPWY', 1498118311, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 0, 1, 1, '1.00'),
(42, '6YHQQ0', 1498118311, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 1, 0, 1, '1.00'),
(43, 'ZYT816', 1498118312, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 1, 1, 1, '1.00'),
(44, 'CQRQGP', 1498118312, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 1, 0, 1, '1.00'),
(45, '7F2QS2', 1498118313, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 1, 0, 1, '1.00'),
(46, 'UOKHPZ', 1498118313, 1, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 1, 0, 1, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `store_order_status`
--

CREATE TABLE `store_order_status` (
  `id` int(11) NOT NULL,
  `status_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_order_status`
--

INSERT INTO `store_order_status` (`id`, `status_title`) VALUES
(1, 'order recieved'),
(3, 'pending order'),
(4, 'previous order that had submitted...... ');

-- --------------------------------------------------------

--
-- Table structure for table `store_shoppertrack`
--

CREATE TABLE `store_shoppertrack` (
  `id` int(11) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `item_title` varchar(255) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `tax` decimal(7,2) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_size` varchar(70) NOT NULL,
  `item_qty` int(11) NOT NULL,
  `item_colour` varchar(70) NOT NULL,
  `date_added` int(11) NOT NULL,
  `shopper_id` int(11) NOT NULL,
  `ip_address` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_shoppertrack`
--

INSERT INTO `store_shoppertrack` (`id`, `session_id`, `item_title`, `price`, `tax`, `item_id`, `item_size`, `item_qty`, `item_colour`, `date_added`, `shopper_id`, `ip_address`) VALUES
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1'),
(0, '3b1b4b7f89684b01d3596d5798b792f00fa31cbd', 'Fender American Deluxe Strat Plus HSS in Metallic 3 Tone Sunburst', '1419.00', '0.00', 6, '2.5', 1, 'green', 1498117532, 8, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `webpages`
--

CREATE TABLE `webpages` (
  `id` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_keywords` text NOT NULL,
  `page_description` text NOT NULL,
  `page_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webpages`
--

INSERT INTO `webpages` (`id`, `page_url`, `page_title`, `page_keywords`, `page_description`, `page_content`) VALUES
(1, '', 'Home page', 's;ihdhashdlasdhlkad', 'uyygdadga', 'This is the home page content'),
(2, 'contactus', 'ContactUs', 'asiuuchsaha', 'hldkshj', 'This is contactus ocntent'),
(6, 'Some-other', 'Some other ', 'KJJCLKABChjb', 'sbsablaA', 'lbcdsbcdsbcxnczm,');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_blocks`
--
ALTER TABLE `homepage_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_offers`
--
ALTER TABLE `homepage_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_galleries`
--
ALTER TABLE `item_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal`
--
ALTER TABLE `paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_cookies`
--
ALTER TABLE `site_cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_accounts`
--
ALTER TABLE `store_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_basket`
--
ALTER TABLE `store_basket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_categories`
--
ALTER TABLE `store_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_items`
--
ALTER TABLE `store_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_colours`
--
ALTER TABLE `store_item_colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_item_sizes`
--
ALTER TABLE `store_item_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_orders`
--
ALTER TABLE `store_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_order_status`
--
ALTER TABLE `store_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webpages`
--
ALTER TABLE `webpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `homepage_blocks`
--
ALTER TABLE `homepage_blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `homepage_offers`
--
ALTER TABLE `homepage_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `item_galleries`
--
ALTER TABLE `item_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `paypal`
--
ALTER TABLE `paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `site_cookies`
--
ALTER TABLE `site_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `store_accounts`
--
ALTER TABLE `store_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `store_basket`
--
ALTER TABLE `store_basket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `store_categories`
--
ALTER TABLE `store_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `store_cat_assign`
--
ALTER TABLE `store_cat_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `store_items`
--
ALTER TABLE `store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `store_item_colours`
--
ALTER TABLE `store_item_colours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `store_item_sizes`
--
ALTER TABLE `store_item_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `store_orders`
--
ALTER TABLE `store_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `store_order_status`
--
ALTER TABLE `store_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `webpages`
--
ALTER TABLE `webpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
