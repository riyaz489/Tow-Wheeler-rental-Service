-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2018 at 02:26 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `uid` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `frm` varchar(25) NOT NULL,
  `t` varchar(25) NOT NULL,
  `id` text,
  `dl` text,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`uid`, `name`, `email`, `phone`, `frm`, `t`, `id`, `dl`, `comment`) VALUES
(1, 'RIYAZUDDIN KHAN', 'riyaz489.rk@gmail.com', '08126608369', '2018-04-18', '2018-04-18', 'customer/i1.jpg', 'customer/i3.jpg', 'hkgjykgh'),
(2, 'hemant', 'hpandey@gmail.com', '0812660898', '2018-04-18', '2018-04-18', 'customer/i4.jpg', 'customer/i5.jpg', 'helmet'),
(3, 'deepak pathak', 'deepakpathak996@gmail.com', '8765436789', '2018-04-18', '2018-04-18', 'customer/photoshop.jpg', 'customer/photoshop.jpg', 'helllo'),
(4, 'riyyu', 'hvbnv', '768768', '2018-04-18', '2018-04-18', 'customer/i3.png', 'customer/i4.png', 'hjhjghj'),
(5, 'rwefsdf', 'riyaz489.rk@gmail.com', 'dsfdsfsdfsd', '2018-04-19', '2018-04-19', 'customer/photoshop.jpg', 'customer/photoshop.jpg', 'bjbjk'),
(6, 'wer', 'riyaz489.rk@gmail.com', '345345345453', '2018-04-19', '2018-04-19', 'customer/photoshop.jpg', 'customer/photoshop.jpg', 'vfvdfsdsdsdgsd'),
(7, 'werw', 'riaz489.rk@gmail.com', 'safsf', '2018-04-19', '2018-04-19', 'customer/photoshop.jpg', 'customer/photoshop.jpg', 'xddfsdfds'),
(8, 'rjkhkjh', 'riyaz489.rk@gmail.com', 'rgrtre', '2018-04-19', '2018-04-19', 'customer/photoshop.jpg', 'customer/photoshop.jpg', 'jkhjkhkh'),
(9, 'riyaz', 'riyaz489.rk@gmail.com', '8126608369', '2018-04-19', '2018-04-19', 'customer/photoshop.jpg', 'customer/photoshop.jpg', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `stars` int(5) NOT NULL,
  `street` varchar(70) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `coutry` varchar(20) NOT NULL,
  `open_time` varchar(20) NOT NULL,
  `open_day` varchar(30) NOT NULL,
  `image` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `stars`, `street`, `city`, `state`, `coutry`, `open_time`, `open_day`, `image`, `email`) VALUES
('s001', 'The Bike Zone ', 35, 'Opposite Pestleweed College, Mussoorie Diversion Road', ' Dehradun', 'Uttarakhand', 'india', '10:00-21:00', 'mon-fri', 's1.png', 'riyaz489.rk@gmail.com'),
('s002', 'Dehradun Bike Rental ', 45, ' Bigrin Cafe, Char Khamba Chowk, Near Graphic Era University Hill Host', ' Dehradun', 'Uttarakhand', 'india', '09:00-21:00', 'mon-sat', 's2.png', 'dehradunbikerental@gmail.com'),
('s003', 'Gimmebyk', 45, 'SNAP Towers , Lalpul, Adjacent Hotel Doon, Saharanpur Rd, Chamanpuri, ', 'dehradun', 'uttarakhand', 'india', '10:00-21:00', 'mon-thurs', 's3.png', 'gimmebyk@gmail.com'),
('s004', 'The Bikes Club', 40, 'near ims college , malsi ,mussorie road', 'dehradun', 'uttarakhand', 'india', '10:00-22:00', 'mon-fri', 's4.jpg', 'ag444982@gmail.com'),
('s005', 'DehraRodies', 50, 'C5, Turner Road, Clement Town', 'dehradun', 'uttarakhand', 'india', '10:00-20:00', 'mon-sat', 's5.jpg', 'dehraroadies@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`, `admin`) VALUES
(1, 'Admin', 'admin123', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 1),
(2, 'riyaz', 'riyaz', 'riyaz489.rk@gmail.com', '8ac6201e360fe2250ecef7331a450905', 0),
(3, 'deepak', 'deepak667', 'deepak@gmail.com', '25f9e794323b453885f5181f1b624d0b', 0),
(4, 'riyaz', 'deepak', 'riyaz489.rk@gmail.com', '25d55ad283aa400af464c76d713c07ad', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) NOT NULL,
  `store` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `vname` varchar(20) NOT NULL,
  `engine` varchar(10) NOT NULL,
  `colour` varchar(10) NOT NULL,
  `imagep` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `Sid` varchar(20) NOT NULL,
  `special` int(2) NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `store`, `address`, `type`, `vname`, `engine`, `colour`, `imagep`, `price`, `Sid`, `special`, `email`) VALUES
(0, 'Gimmebyk', 'SNAP Towers , Lalpul, Adjacent Hotel Doon, Saharan', 'Bike', 'Pulsar', '180CC', 'blue', 'i1.png', 450, 's003', 0, 'gimmebyk@gmail.com'),
(1, 'The Bike Zone', ' Opposite Pestleweed College, Mussoorie Diversion ', 'Bike', 'Avenger', '220CC', 'black', 'i4.png', 650, 's001', 0, 'riyaz489.rk@gmail.com'),
(2, 'The Bike Zone', ' Opposite Pestleweed College, Mussoorie Diversion ', 'Bike', 'Royal Enfeild Classi', '350CC', 'green', 'i5.png', 700, 's001', 1, 'riyaz489.rk@gmail.com'),
(3, 'The Bike Zone', ' Opposite Pestleweed College, Mussoorie Diversion ', 'Bike', 'Harley Davidson Spor', '350CC', 'red', 'i9.png', 750, 's001', 1, 'riyaz489.rk@gmail.com'),
(4, 'The Bike Zone', ' Opposite Pestleweed College, Mussoorie Diversion ', 'Bike', 'R15', '150CC', 'black', 'i6.png', 550, 's001', 0, 'riyaz489.rk@gmail.com'),
(5, 'Dehradun Bike Rental', 'Bigrin Cafe, Char Khamba Chowk, Near Graphic Era U', 'scooty', 'Activa', '110CC', 'black', 'j1.png', 350, 's002', 0, 'dehradunbikerental@gmail.'),
(6, 'Dehradun Bike Rental', 'Bigrin Cafe, Char Khamba Chowk, Near Graphic Era U', 'scooty', 'vespa', '110CC', 'red', 'j2.png', 350, 's002', 0, 'dehradunbikerental@gmail.'),
(7, 'Dehradun Bike Rental', 'Bigrin Cafe, Char Khamba Chowk, Near Graphic Era U', 'Bike', 'Duke', '200CC', 'orange', 'i3.png', 450, 's002', 0, 'dehradunbikerental@gmail.'),
(8, 'Dehradun Bike Rental', 'Bigrin Cafe, Char Khamba Chowk, Near Graphic Era U', 'Bike', 'RE Himalyan', '410CC', 'black', 'i7.png', 850, 's002', 1, 'dehradunbikerental@gmail.'),
(9, 'Gimmebyk', ' SNAP Towers , Lalpul, Adjacent Hotel Doon, Sahara', 'Bike', 'pulsar', '180CC', 'black', 'i2.png', 550, 's003', 0, 'gimmebyk@gmail.com '),
(10, 'Gimmebyk', ' SNAP Towers , Lalpul, Adjacent Hotel Doon, Sahara', 'Bike', 'pulsar', '180CC', 'blue', 'i1.png', 550, 's003', 0, 'gimmebyk@gmail.com '),
(11, 'Gimmebyk', ' SNAP Towers , Lalpul, Adjacent Hotel Doon, Sahara', 'Scooty', 'Maetstro', '110CC', 'white', 'j3.png', 450, 's003', 0, 'gimmebyk@gmail.com '),
(12, 'Gimmebyk', ' SNAP Towers , Lalpul, Adjacent Hotel Doon, Sahara', 'Scooty', 'Pept', '100CC', 'pink', 'j4.png', 400, 's003', 0, 'gimmebyk@gmail.com '),
(13, 'Gimmebyk', ' SNAP Towers , Lalpul, Adjacent Hotel Doon, Sahara', 'Bike', 'splender', '100CC', 'blue', 'i8.png', 400, 's003', 0, 'gimmebyk@gmail.com '),
(14, 'The Bikes Club', ' near ims college , malsi ,mussorie road ,dehardun', 'Bike', 'Royal Enfeild classi', '350CC', 'green', 'i5.png', 600, 's004', 1, 'ag444982@gmail.com '),
(15, 'The Bikes Club', ' near ims college , malsi ,mussorie road ,dehardun', 'Bike', 'Harley Davidson 1200', '1200CC', 'orange bla', 'i10.png', 1200, 's004', 1, 'ag444982@gmail.com '),
(16, 'The Bikes Club', ' near ims college , malsi ,mussorie road ,dehardun', 'Bike', 'DUKE	', '220CC', 'black', 'i3.png', 6500, 's004', 1, 'ag444982@gmail.com '),
(17, 'The Bikes Club', ' near ims college , malsi ,mussorie road ,dehardun', 'scooty', 'Activa	', '100CC', 'red', 'j6.png', 3500, 's004', 0, 'ag444982@gmail.com '),
(18, 'DehraRoadies', 'C5, Turner Road, Clement Town, Dehradun, Uttarakha', 'Bike', 'Pulsar', '180CC', 'black', 'i4.png', 450, 's005', 0, 'dehraroadies@gmail.com'),
(19, 'DehraRoadies', 'C5, Turner Road, Clement Town, Dehradun, Uttarakha', 'Bike', 'R15', '2200CC', 'black', 'i6.png', 550, 's005', 0, 'dehraroadies@gmail.com'),
(20, 'DehraRoadies', 'C5, Turner Road, Clement Town, Dehradun, Uttarakha', 'Bike', 'Harley Davidson Spor', '750CC', 'red', 'i9.png', 950, 's005', 1, 'dehraroadies@gmail.com'),
(21, 'DehraRoadies', 'C5, Turner Road, Clement Town, Dehradun, Uttarakha', 'Bike', 'Harley Davidson 1200', '1200CC', 'orange-bla', 'i10.png', 1200, 's005', 1, 'dehraroadies@gmail.com'),
(22, 'DehraRoadies', 'C5, Turner Road, Clement Town, Dehradun, Uttarakha', 'Scooty', 'jupiter', '100CC', 'purple', 'j5.png', 450, 's005', 0, 'dehraroadies@gmail.com'),
(23, 'DehraRoadies', 'C5, Turner Road, Clement Town, Dehradun, Uttarakha', 'Scooty', 'activa', '110CC', 'red', 'j6.png', 450, 's005', 0, 'dehraroadies@gmail.com'),
(24, 'DehraRoadies', 'C5, Turner Road, Clement Town, Dehradun, Uttarakha', 'Bike', 'splender', '100CC', 'blue', 'i8.png', 450, 's005', 0, 'dehraroadies@gmail.com'),
(25, 'DehraRoadies', 'C5, Turner Road, Clement Town, Dehradun, Uttarakha', 'Bike', 'splender', '100CC', 'blue', 'i8.png', 450, 's005', 0, 'dehraroadies@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
