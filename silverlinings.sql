-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 10:16 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silverlinings`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(5) NOT NULL,
  `admin_username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `admin_username`, `password`) VALUES
(10001, 'aaanina', 'nina'),
(10002, 'zbiash', 'biash'),
(10003, 'apiyaly', 'aunshu');

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

CREATE TABLE `children` (
  `ID` int(5) NOT NULL,
  `foster_ID` int(5) NOT NULL,
  `child_age` int(2) NOT NULL,
  `child_gender` varchar(20) NOT NULL,
  `user_ID` int(5) DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'Present',
  `child_name` varchar(100) NOT NULL,
  `foster_area` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `children`
--

INSERT INTO `children` (`ID`, `foster_ID`, `child_age`, `child_gender`, `user_ID`, `status`, `child_name`, `foster_area`) VALUES
(40001, 20001, 8, 'female', 0, 'present', 'Alice', 'Dhaka'),
(40003, 20001, 4, 'male', 0, 'Present', 'Bob', 'Dhaka'),
(40004, 20001, 0, 'male', 30001, 'adopted', 'Baby', 'Dhaka'),
(40005, 20002, 5, 'female', 30006, 'adopted', 'Mina', 'Dhaka'),
(40008, 20002, 8, 'male', 0, 'Present', 'Harry', 'Dhaka'),
(40009, 20002, 13, 'male', 0, 'present', 'Michael', 'Dhaka'),
(40010, 20002, 10, 'male', 0, 'Present', 'Jim', 'Dhaka'),
(40011, 20002, 9, 'female', 0, 'Present', 'Pam', 'Dhaka'),
(40012, 20003, 5, 'male', 30006, 'adopted', 'Mike', 'Chittagong'),
(40013, 20003, 4, 'female', 0, 'Present', 'El', 'Chittagong'),
(40014, 20003, 7, 'male', 30001, 'adopted', 'Dustin', 'Chittagong'),
(40015, 20005, 2, 'male', 0, 'Present', 'Fed', 'Chittagong'),
(40017, 20005, 4, 'female', 0, 'Present', 'Kelso', 'Chittagong'),
(40018, 20004, 9, 'female', 0, 'Present', 'Donna', 'Sylhet'),
(40019, 20004, 7, 'male', 0, 'Present', 'Eric', 'Sylhet'),
(40020, 20003, 11, 'female', 30001, 'adopted', 'Bias', 'Chittagong'),
(40022, 20002, 6, 'male', 0, 'Present', 'Malfoy', 'Dhaka'),
(40023, 20005, 2, 'male', 30008, 'adopted', 'Bug', 'Chittagong');

-- --------------------------------------------------------

--
-- Table structure for table `foster`
--

CREATE TABLE `foster` (
  `ID` int(5) NOT NULL,
  `foster_name` varchar(100) NOT NULL,
  `registration_ID` varchar(20) NOT NULL,
  `phone` int(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `foster_username` varchar(20) NOT NULL,
  `password` varchar(6) NOT NULL,
  `foster_area` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foster`
--

INSERT INTO `foster` (`ID`, `foster_name`, `registration_ID`, `phone`, `email`, `foster_username`, `password`, `foster_area`) VALUES
(20001, 'Little', 'aa111', 1711111111, 'littlecare@gmail.com', 'littlekids', 'little', 'Gulshan'),
(20002, 'Star', 'aa222', 1722222220, 'starcare@gmail.com', 'star_care', 'star', 'Dhaka'),
(20003, 'Lovely Children', 'aa333', NULL, NULL, 'lovely_children', 'lovely', NULL),
(20004, 'Diamonds', 'aa444', NULL, NULL, 'diamond_care', 'diamon', NULL),
(20005, 'Rise', 'aa555', 1234567891, 'rise@gmail.com', 'shine_care', 'rise', 'Chittagong'),
(20007, 'sos', 'aa666', NULL, NULL, 'sos_care', 'sos', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(5) NOT NULL,
  `NID` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_username` varchar(20) NOT NULL,
  `password` varchar(6) NOT NULL,
  `age` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `relationship_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `NID`, `name`, `user_username`, `password`, `age`, `gender`, `occupation`, `salary`, `relationship_status`) VALUES
(30001, 'hm111', 'Ali Rahman', 'aahmad', '123456', '50', 'male', 'Businessman', '100001', 'married'),
(30002, 'hm222', 'Navin Ameen', 'navni', 'abcdef', '30', 'female', 'Doctor', '1000000', 'married'),
(30003, 'hm333', 'Liya Rahman', 'liyar', 'liya', '26', 'female', 'Pilot', '4000000', 'single'),
(30005, 'hm555', 'Chandler Bing', 'bingaling', 'chandl', '29', 'male', 'Data Analyst', '3000000', 'married'),
(30006, 'hm666', 'Phoebe', 'princess_consuela', 'pheobe', '30', 'female', 'Masseuse', '300000', 'married'),
(30007, 'hm777', 'Janice', 'ohhmaiigodd', 'janice', '33', 'female', 'Businesswoman', '200000', 'married'),
(30008, 'hm888', 'Bellatrix', 'bell', 'bella', '55', 'female', 'Witch', '10000000000', 'married');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `children`
--
ALTER TABLE `children`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `foster`
--
ALTER TABLE `foster`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `NID` (`NID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
