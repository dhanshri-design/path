-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 01:33 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2019-06-30 12:11:05'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '0000-00-00 00:00:00'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '0000-00-00 00:00:00'),
(7, 'Demo test', 'abc ', 'New Delhi India', '200', 852888888, 'test@demo.com', '7f39cc57e64f8f3fd463a9834805ad02', '2017-01-07 08:08:58', '0000-00-00 00:00:00'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2019-06-23 18:06:06'),
(9, 'Dermatologist', 'Anuj kumar', 'New Delhi India 110001', '500', 1234567890, 'anujk@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:37:47', '2019-11-10 18:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-16 11:19:41', '16-08-2020 04:50:34 PM', 1),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-16 11:20:46', '16-08-2020 04:53:20 PM', 1),
(22, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-16 11:24:02', NULL, 1),
(23, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-16 11:24:12', NULL, 1),
(24, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-16 11:24:13', NULL, 1),
(25, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-16 11:41:28', NULL, 1),
(26, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-16 11:42:02', '16-08-2020 05:21:26 PM', 1),
(27, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-16 15:13:40', NULL, 1),
(28, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-16 15:13:41', NULL, 1),
(29, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 06:15:43', NULL, 1),
(30, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 07:29:13', NULL, 1),
(31, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 07:29:41', NULL, 1),
(32, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 08:17:24', NULL, 1),
(33, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 08:17:35', NULL, 1),
(34, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 10:45:23', NULL, 0),
(35, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 10:45:30', NULL, 1),
(36, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 10:52:30', NULL, 1),
(37, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 10:52:37', NULL, 1),
(38, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 10:53:30', NULL, 1),
(39, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-24 10:53:38', '24-08-2020 04:23:52 PM', 1),
(40, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-31 12:54:47', NULL, 1),
(41, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-31 13:17:43', '31-08-2020 06:55:41 PM', 1),
(42, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-08-31 15:18:36', NULL, 1),
(43, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-01 06:27:33', NULL, 1),
(44, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-01 14:34:15', NULL, 1),
(45, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-01 14:34:17', NULL, 1),
(46, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-03 16:35:40', '03-09-2020 10:14:26 PM', 1),
(47, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-03 17:06:39', NULL, 0),
(48, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-03 17:06:49', '03-09-2020 11:49:45 PM', 1),
(49, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-05 15:17:00', '05-09-2020 08:48:25 PM', 1),
(50, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-06 07:49:15', NULL, 1),
(51, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-06 07:49:20', NULL, 1),
(52, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-07 14:36:29', NULL, 1),
(53, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-07 14:36:31', '07-09-2020 09:09:16 PM', 1),
(54, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-07 15:40:02', '07-09-2020 09:25:15 PM', 1),
(55, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 07:57:00', '08-09-2020 01:29:02 PM', 1),
(56, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 07:59:15', '08-09-2020 01:29:39 PM', 1),
(57, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 08:02:44', '08-09-2020 01:38:01 PM', 1),
(58, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 08:08:21', '08-09-2020 01:40:07 PM', 1),
(59, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 09:39:20', '08-09-2020 03:24:06 PM', 1),
(60, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 09:59:43', '08-09-2020 03:36:31 PM', 1),
(61, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 10:17:15', '08-09-2020 03:53:11 PM', 1),
(62, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 10:31:13', '08-09-2020 04:18:46 PM', 1),
(63, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 11:41:55', '08-09-2020 05:54:20 PM', 1),
(64, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 12:42:42', NULL, 1),
(65, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 17:25:14', NULL, 0),
(66, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-08 17:25:29', NULL, 1),
(67, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:37:40', NULL, 1),
(68, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2020-09-09 04:37:50', NULL, 0),
(69, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:38:31', NULL, 1),
(70, NULL, 'Admin', 0x3a3a3100000000000000000000000000, '2020-09-09 04:38:47', NULL, 0),
(71, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:39:21', NULL, 0),
(72, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2020-09-09 04:40:47', NULL, 0),
(73, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2020-09-09 04:40:57', NULL, 0),
(74, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:43:47', NULL, 1),
(75, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:44:06', NULL, 1),
(76, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:47:29', NULL, 1),
(77, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:48:29', NULL, 0),
(78, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:50:37', NULL, 1),
(79, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:50:57', NULL, 1),
(80, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:52:20', NULL, 1),
(81, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 04:52:57', '09-09-2020 10:32:31 AM', 1),
(82, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 05:02:43', '09-09-2020 10:35:45 AM', 1),
(83, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 05:06:02', '09-09-2020 10:46:18 AM', 1),
(84, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 05:27:54', NULL, 0),
(85, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 05:28:02', NULL, 1),
(86, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 06:17:58', NULL, 0),
(87, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 06:18:12', NULL, 1),
(88, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 06:21:51', '09-09-2020 11:53:53 AM', 1),
(89, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 06:24:03', '09-09-2020 11:56:27 AM', 1),
(90, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 06:29:35', '09-09-2020 12:02:40 PM', 1),
(91, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 06:33:43', NULL, 1),
(92, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 12:11:56', NULL, 1),
(93, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 16:06:27', '09-09-2020 09:45:20 PM', 1),
(94, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-09 16:15:32', '09-09-2020 09:49:03 PM', 1),
(95, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-10 05:03:27', NULL, 1),
(96, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-10 05:06:00', NULL, 1),
(97, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-10 05:07:36', '10-09-2020 10:41:25 AM', 1),
(98, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-10 05:11:37', NULL, 1),
(99, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-10 07:48:27', NULL, 1),
(100, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-10 08:22:20', NULL, 1),
(101, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-10 12:55:50', NULL, 1),
(102, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-11 09:51:15', NULL, 1),
(103, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-11 09:54:17', '11-09-2020 03:29:18 PM', 1),
(104, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-11 09:59:31', NULL, 1),
(105, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-11 10:03:30', NULL, 0),
(106, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-11 10:03:37', NULL, 1),
(107, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-11 10:08:44', NULL, 1),
(108, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-11 10:09:59', NULL, 1),
(109, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-11 10:31:13', NULL, 1),
(110, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2020-09-11 10:39:43', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(11, 'Test', '2019-06-23 17:51:06', '2019-06-23 17:55:06'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'C', '2017-06-06 11:22:33', '2017-06-07 00:23:47'),
(2, 'Second', 2, 'A', '2017-06-06 11:51:20', '2017-06-06 11:51:38'),
(4, 'Fourth', 4, 'C', '2017-06-07 03:50:23', '0000-00-00 00:00:00'),
(5, 'Sixth', 6, 'A', '2017-06-07 04:05:08', '0000-00-00 00:00:00'),
(6, 'Sixth', 6, 'B', '2017-08-28 13:12:41', '2017-08-28 13:13:02'),
(7, 'Seventh', 7, 'B', '2017-08-28 13:22:00', '2017-08-28 13:22:15'),
(8, 'Eight', 8, 'A', '2017-08-28 13:51:05', '2017-08-28 13:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', 'done with it..\r\n', '2020-08-24 11:57:42', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblexpense`
--

CREATE TABLE `tblexpense` (
  `ID` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `ExpenseDate` date DEFAULT NULL,
  `ExpenseItem` varchar(200) DEFAULT NULL,
  `ExpenseCost` varchar(200) DEFAULT NULL,
  `quantity` int(200) NOT NULL,
  `NoteDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexpense`
--

INSERT INTO `tblexpense` (`ID`, `UserId`, `ExpenseDate`, `ExpenseItem`, `ExpenseCost`, `quantity`, `NoteDate`) VALUES
(1, 2, '2019-05-15', 'Milk', '63', 0, NULL),
(2, 2, '2019-05-15', 'Vegitables', '520', 0, '2019-05-15 04:36:19'),
(3, 2, '2019-05-15', 'Household Items', '5200', 0, '2019-05-15 04:37:08'),
(4, 2, '2019-05-14', 'Milk', '83', 0, '2019-05-15 04:37:27'),
(5, 2, '2019-05-14', 'Bed Sheets', '1120', 0, '2019-05-15 04:37:49'),
(6, 2, '2019-05-12', 'Fruits', '890', 0, '2019-05-15 04:38:09'),
(7, 2, '2019-05-10', 'Household Items', '5600', 0, '2019-05-15 04:38:26'),
(8, 2, '2019-04-24', 'Milk', '102', 0, '2019-05-15 04:38:44'),
(9, 2, '2019-05-08', 'Bed Sheets', '890', 0, '2019-05-15 04:38:57'),
(10, 2, '2018-12-19', 'Household Items', '1120', 0, '2019-05-15 04:39:34'),
(11, 2, '2018-12-19', 'Fruits', '560', 0, '2019-05-15 04:39:52'),
(13, 2, '2018-12-20', 'Tour of Manali', '30000', 0, '2019-05-15 04:45:47'),
(14, 2, '2019-05-14', 'Milk', '360', 0, '2019-05-15 04:51:31'),
(15, 3, '2019-05-15', 'Milk', '123', 0, '2019-05-15 04:59:56'),
(16, 3, '2019-05-15', 'Household Items', '360', 0, '2019-05-15 05:00:06'),
(17, 3, '2019-05-15', 'Bed Sheets', '3000', 0, '2019-05-15 05:00:18'),
(18, 3, '2019-05-07', 'Milk', '123', 0, '2019-05-15 05:00:28'),
(19, 3, '2019-05-14', 'Household Items', '3600', 0, '2019-05-15 05:00:38'),
(20, 2, '2019-05-14', 'Electric Board Extension', '300', 0, '2019-05-15 09:41:33'),
(21, 2, '2019-04-11', 'Milk', '123', 0, '2019-05-15 12:20:24'),
(22, 2, '2019-04-10', 'Household Items', '520', 0, '2019-05-15 12:20:37'),
(23, 2, '2019-05-16', 'Household Items', '360', 0, '2019-05-16 01:59:54'),
(25, 8, '2019-05-17', 'Milk', '3600', 0, '2019-05-17 00:05:13'),
(26, 8, '2019-05-16', 'Bed Sheets', '1025', 0, '2019-05-17 00:05:42'),
(27, 1, '2019-05-17', 'Computer Mouse', '500', 0, '2019-05-17 23:49:05'),
(30, 1, '2019-05-18', 'Milk + Bread', '80', 0, '2019-05-17 23:52:01'),
(31, 10, '2019-05-16', 'Computer Mouse', '500', 0, '2019-05-18 00:05:45'),
(32, 10, '2019-05-17', 'Milk+Bread', '80', 0, '2019-05-18 00:06:06'),
(33, 10, '2019-05-18', 'Room Rent', '10000', 0, '2019-05-18 00:06:26'),
(0, 10, '2020-09-10', 'i am', '100', 1000, '2020-09-11 11:29:07'),
(0, 10, '2020-09-10', 'i am', '100', 1000, '2020-09-11 11:31:43'),
(0, 10, '2020-09-10', 'meee', '1', 1, '2020-09-11 11:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23'),
(8, 3, '120/170', '80gram', '74', 'dfff', 'asdasgerfgersd', '2020-08-16 16:31:27'),
(9, 6, '120/170', '80gram', '74', 'dfff', 'hii\r\n', '2020-09-09 09:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2019-11-05 11:53:45'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '\"fdghyj', 46, 'No', '2019-11-05 10:49:41', '2019-11-05 11:58:59'),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2019-11-06 14:34:31'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL),
(6, 7, 'Dhanshri', 9765101545, 'Dhanshrirajput617@gmail.com', 'female', 'Sajjn Housing Society, Chalisgaon', 21, 'xyz', '2020-08-16 11:42:56', NULL),
(7, 7, 'Dhanshri', 0, '', '', '', 21, 'xcgf', '2020-08-16 15:47:21', NULL),
(8, 7, 'Prasad', 9876543210, '', 'male', 'Sajjn Housing Society, Chalisgaon', 21, 'sdrgt', '2020-08-16 15:54:00', NULL),
(9, 7, 'Dhanshri', 9123456788, '', 'female', 'Sajjn Housing Society, Chalisgaon', 21, '', '2020-08-16 16:07:39', NULL),
(10, 7, 'Dhanshri', 0, '', '', '', 0, 'dfvln', '2020-08-24 10:46:07', NULL),
(11, 7, 'Hrtc Kit', 0, '', '', '', 1000, 'rfvgrjk', '2020-09-01 14:38:39', NULL),
(12, 7, 'xyz', 9876543210, 'xyz@gmail.com', 'female', 'Sajjn Housing Society, Chalisgaon', 20, '', '2020-09-03 17:09:07', NULL),
(13, 7, 'Dhanshri', 1234567, 'eriggig@gmail.com', 'female', 'Sajjn Housing Society, Chalisgaon', 20, '', '2020-09-05 15:18:06', NULL),
(14, 7, 'ruchika', 1234, 'ruchika@gmail.com', '', 'pune', 16, '', '2020-09-09 06:42:09', NULL),
(15, 7, 'Prasad', 0, '', '', '', 1000, '', '2020-09-11 10:54:05', NULL),
(16, 7, 'Prasad', 0, '', '', '', 20, '', '2020-09-11 11:05:54', NULL),
(17, 7, 'Prasad', 0, '', '', '', 20, '', '2020-09-11 11:07:11', NULL),
(18, 7, 'xyz', 0, '', '', '', 1000, '', '2020-09-11 11:07:25', NULL),
(19, 7, 'Dhanshri', 0, '', '', '', 1000, '', '2020-09-11 11:08:18', NULL),
(20, 7, 'Dhanshri', 0, '', '', '', 1000, '', '2020-09-11 11:08:46', NULL),
(21, 7, 'mobile', 0, '', '', '', 19, '', '2020-09-11 11:09:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(100) NOT NULL,
  `test_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `test_name`) VALUES
(1, 'Absolute Eosinophilic Count'),
(2, 'ANC Profile'),
(3, 'Aso Titre'),
(4, 'Bile Salt-Bile Pigment'),
(5, 'Blood Group'),
(6, 'B.T-C.T'),
(7, 'B.S.L.F'),
(8, 'B.S.L.R\r\n'),
(9, 'B.S.L.PP'),
(10, 'BSL and USL');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '0000-00-00 00:00:00'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '0000-00-00 00:00:00'),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '0000-00-00 00:00:00'),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '0000-00-00 00:00:00'),
(6, 'Test user', 'New Delhi', 'Delhi', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-06-23 18:24:53', '2019-06-23 18:36:09'),
(7, 'John', 'USA', 'Newyork', 'male', 'john@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:40:21', '2019-11-10 18:40:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
