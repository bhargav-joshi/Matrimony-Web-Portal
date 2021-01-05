-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 10:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `cust_id` int(5) NOT NULL,
  `email` varchar(60) NOT NULL,
  `age` varchar(10) NOT NULL,
  `height` int(10) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(10) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `profilecreatedby` varchar(20) NOT NULL,
  `education` text NOT NULL,
  `education_sub` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `body_type` text NOT NULL,
  `physical_status` text NOT NULL,
  `drink` varchar(8) NOT NULL,
  `mothertounge` text NOT NULL,
  `colour` varchar(20) NOT NULL,
  `weight` int(5) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `diet` varchar(8) NOT NULL,
  `smoke` varchar(8) NOT NULL,
  `dateofbirth` date NOT NULL,
  `occupation` text NOT NULL,
  `occupation_descr` text NOT NULL,
  `annual_income` varchar(20) NOT NULL,
  `fathers_occupation` varchar(20) NOT NULL,
  `mothers_occupation` varchar(20) NOT NULL,
  `no_bro` int(5) NOT NULL,
  `no_sis` int(5) NOT NULL,
  `aboutme` text NOT NULL,
  `profilecreationdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `cust_id`, `email`, `age`, `height`, `sex`, `religion`, `caste`, `subcaste`, `district`, `state`, `country`, `maritalstatus`, `profilecreatedby`, `education`, `education_sub`, `firstname`, `lastname`, `body_type`, `physical_status`, `drink`, `mothertounge`, `colour`, `weight`, `blood_group`, `diet`, `smoke`, `dateofbirth`, `occupation`, `occupation_descr`, `annual_income`, `fathers_occupation`, `mothers_occupation`, `no_bro`, `no_sis`, `aboutme`, `profilecreationdate`) VALUES
(116, 1, '', '', 0, 'Male', 'Not Applicable', 'Roman Cathaolic', 'Not Applicable', 'Thane', 'Maharashtra', 'India', 'Single', 'Self', 'Primary', '', '', '', 'Slim', 'No Problem', 'No', 'Marathi', 'Dark', 0, 'O +ve', 'Veg', 'No', '0000-00-00', '', '', '', '', '', 1, 1, '', '2020-09-30'),
(117, 18, 'Gaurav@gmail.com', '20', 0, 'Male', 'Hindu', 'Roman Cathaolic', 'Not Applicable', '', 'Taminadu', 'India', 'Single', 'Self', 'Degree', '', 'Gaurav', 'M', 'Slim', 'No Problem', 'No', 'Malayalam', 'Dark', 0, 'O +ve', 'Veg', 'No', '1999-03-18', '', '', '', '', '', 1, 1, 'I am Cool', '2020-09-30'),
(118, 17, 'kartik@gmail.com', '20', 0, 'Male', 'Hindu', 'Roman Cathaolic', 'Not Applicable', 'Mumbai Suburban', 'Maharashtra', 'India', 'Single', 'Self', 'Degree', 'Computer engineering', 'Kartik', 'Rane', 'Average', 'No Problem', 'Sometime', 'Marathi', 'Fair', 0, 'O +ve', 'Veg', 'No', '2000-04-14', '', '', '10505010', '', '', 1, 1, '', '2020-09-30'),
(119, 21, '', '17', 0, 'Male', 'Hindu', 'Roman Cathaolic', 'Not Applicable', '', '', 'Not Applic', 'Single', 'Self', 'Primary', '', 'Leena', '', 'Slim', 'No Problem', 'No', 'Malayalam', 'Dark', 0, 'O +ve', 'Veg', 'No', '0000-00-00', '', '', '', '', '', 1, 1, '', '2020-09-30'),
(120, 22, '', '21', 0, 'Male', 'Not Applicable', 'Roman Cathaolic', 'Not Applicable', '', '', 'Not Applic', 'Single', 'Self', 'Primary', '', 'Shanaya', '', 'Slim', 'No Problem', 'No', 'Malayalam', 'Dark', 0, 'O +ve', 'Veg', 'No', '0000-00-00', '', '', '', '', '', 1, 1, '', '2020-09-30'),
(121, 24, 'bhargavjoshi55@gmail.com', '20', 0, 'Male', 'Hindu', 'Roman Cathaolic', 'Not Applicable', '', 'Maharashtra', 'India', 'Single', 'Self', 'Degree', 'BE Computer', 'Bhargav', 'Joshi', 'Slim', 'No Problem', 'No', 'Marathi', 'Fair', 0, 'O +ve', 'Veg', 'No', '2000-07-17', '', '', '', '', '', 1, 1, '', '2020-10-15');

-- --------------------------------------------------------

--
-- Table structure for table `partnerprefs`
--

CREATE TABLE `partnerprefs` (
  `id` int(10) NOT NULL,
  `custId` int(10) NOT NULL,
  `agemin` varchar(3) NOT NULL,
  `agemax` int(3) NOT NULL,
  `maritalstatus` varchar(20) NOT NULL,
  `complexion` varchar(10) NOT NULL,
  `height` int(3) NOT NULL,
  `diet` varchar(10) NOT NULL,
  `religion` varchar(15) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `subcaste` varchar(20) NOT NULL,
  `mothertounge` varchar(20) NOT NULL,
  `education` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partnerprefs`
--

INSERT INTO `partnerprefs` (`id`, `custId`, `agemin`, `agemax`, `maritalstatus`, `complexion`, `height`, `diet`, `religion`, `caste`, `subcaste`, `mothertounge`, `education`, `occupation`, `country`, `descr`) VALUES
(1, 6, '18', 30, 'Single', '', 180, 'Veg', 'Not Applicable', 'Roman Cathaolic', '', '', 'Primary', '', 'Not Applicable', 'Beautiful , Super, just for fun'),
(2, 7, '18', 40, 'Single', '', 150, 'Veg', 'Not Applicable', 'Roman Cathaolic', '', '', 'Primary', '', 'Not Applicable', ''),
(3, 12, '18', 40, 'Single', '', 150, 'Veg', 'Hindu', 'Thiyya', '', '', 'PG', 'sadasdasd', 'Hindu', ''),
(4, 13, '18', 40, 'Single', '', 0, 'Veg', 'Hindu', 'Thiyya', '', '', 'PG', 'das', 'Hindu', ''),
(5, 14, '18', 50, 'Single', '', 0, 'Veg', 'Hindu', 'Thiyya', '', '', 'PG', 'das', 'Hindu', 'asdasdas da asfd afsdfasdf asjdf akjsdf kjafsdks d'),
(6, 1, '', 0, '', '', 0, '', '', '', '', '', '', '', '', ''),
(7, 18, '', 0, '', '', 0, '', '', '', '', '', '', '', '', ''),
(8, 17, '18', 25, 'Single', '', 0, 'Veg', 'Not Applicable', 'Roman Cathaolic', '', '', 'Primary', '', 'Not Applicable', 'Singer'),
(9, 21, '', 0, '', '', 0, '', '', '', '', '', '', '', '', ''),
(10, 22, '', 0, '', '', 0, '', '', '', '', '', '', '', '', ''),
(11, 24, '', 0, '', '', 0, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `pic1` varchar(25) NOT NULL,
  `pic2` varchar(40) NOT NULL,
  `pic3` varchar(40) NOT NULL,
  `pic4` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `cust_id`, `pic1`, `pic2`, `pic3`, `pic4`) VALUES
(32, 1, '1.jpg', '', '', ''),
(33, 17, '2.jpg', '2.jpg', '2.jpg', '2.jpg'),
(34, 18, '6.jpg', '6.jpg', '6.jpg', '6.jpg'),
(35, 21, '4.jpg', '4.jpg', '4.jpg', '6.jpg'),
(36, 22, '3.jpg', '3.jpg', '3.jpg', '3.jpg'),
(37, 24, 'IMG_0074.jpg', 'IMG_0074.jpg', 'IMG_0074.jpg', 'IMG_0074.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `profilestat` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `dateofbirth` date NOT NULL,
  `gender` varchar(5) NOT NULL,
  `userlevel` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `profilestat`, `username`, `password`, `email`, `dateofbirth`, `gender`, `userlevel`) VALUES
(1, 0, 'admin', 'admin', 'admin@nowhere.com', '2016-02-17', 'male', 1),
(6, 0, 'test', 'test', 'test@test.com', '2016-02-11', 'femal', 0),
(15, 0, 'Bhargav2', '123', 'bhargav@a.com', '2000-07-17', 'male', 0),
(16, 0, 'demo', '123', 'demo@dem.com', '2000-07-17', 'male', 0),
(17, 0, 'kartik', 'kartik', 'kartik@gmail.com', '2000-06-12', 'male', 0),
(18, 0, 'Gaurav ', 'Gaurav', 'Gaurav@gmail.com', '1999-05-17', 'male', 0),
(19, 0, '', '', '', '0000-00-00', 'male', 0),
(21, 0, 'Leena', 'leena', 'l@gmail.com', '0000-00-00', 'femal', 0),
(22, 0, 'Shanaya', 'shanaya', '', '0000-00-00', 'male', 0),
(24, 0, 'bhargav', 'bhargav', 'bhargavjoshi55@gmail.com', '2000-07-17', 'male', 0),
(25, 0, 'abhishek', 'abhishek', 'abhi@gmail.com', '1999-07-13', 'male', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `partnerprefs`
--
ALTER TABLE `partnerprefs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `custId` (`custId`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cust_id` (`cust_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `partnerprefs`
--
ALTER TABLE `partnerprefs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
