-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 07:32 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountNumber` int(5) NOT NULL,
  `fName` varchar(15) NOT NULL,
  `lName` varchar(15) NOT NULL,
  `dateOfBirth` varchar(15) NOT NULL,
  `phoneNumber` int(10) NOT NULL,
  `balance` double NOT NULL DEFAULT 0,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountNumber`, `fName`, `lName`, `dateOfBirth`, `phoneNumber`, `balance`, `password`) VALUES
(53843, 'Amen', 'Gemeda', '1999-10-05', 947461205, 26611, '123'),
(63974, 'Bontu', 'Olijira', '1999-07-23', 956677889, 1572, '123'),
(70227, 'Beamlak', 'Gemeda', '2020-03-24', 911685499, 26110, '123');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loanID` int(11) NOT NULL,
  `amountBorrowed` double NOT NULL,
  `dateBorrowed` varchar(30) NOT NULL,
  `rate` double NOT NULL,
  `duration` varchar(15) NOT NULL,
  `totalAmountToBePaid` double NOT NULL,
  `monthlyPaid` double NOT NULL,
  `deadline` varchar(35) NOT NULL,
  `amountPaid` double NOT NULL DEFAULT 0,
  `accountNumber` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loanID`, `amountBorrowed`, `dateBorrowed`, `rate`, `duration`, `totalAmountToBePaid`, `monthlyPaid`, `deadline`, `amountPaid`, `accountNumber`) VALUES
(22, 10000, 'Thursday, August 13, 2020 ', 0.0875, '2 years', 10462, 435.9202461015759, 'Wednesday, August 3, 2022 ', 10461.999999999915, 53843);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transactionID` int(11) NOT NULL,
  `date` varchar(15) NOT NULL,
  `amount` double NOT NULL,
  `timeStamp` varchar(25) NOT NULL,
  `type` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `accountNumber` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactionID`, `date`, `amount`, `timeStamp`, `type`, `branch`, `accountNumber`) VALUES
(10, '2020-07-30', 1000, '2020-08-07 13:24:38.974', 'Deposit', 'Nairobi Branch', 53843),
(11, '2020-08-12', 2000, '2020-08-07 13:28:11.752', 'Deposit', 'Mombasa Branch', 53843),
(12, '2020-08-07', 1000, '2020-08-07 13:32:56.319', 'Withdraw', 'Addis Ababa Branch', 53843),
(13, '2020-08-04', 6000, '2020-08-07 13:34:01.823', 'Withdraw', 'Mombasa Branch', 53843),
(14, '2020-08-14', 1000, '2020-08-07 13:34:34.688', 'Deposit', 'Mombasa Branch', 53843),
(15, '2020-08-05', 123, '2020-08-07 13:35:01.257', 'Withdraw', 'Addis Ababa Branch', 53843),
(16, '2020-08-07', 10000, '2020-08-07 15:04:37.929', 'Deposit', 'Addis Ababa Branch', 70227),
(17, '2020-08-08', 1000, '2020-08-08 04:42:45.648', 'Withdraw', 'Addis Ababa Branch', 53843),
(18, '2020-08-10', 10000, '2020-08-10 03:25:21.65', 'Deposit', 'Addis Ababa Branch', 53843),
(19, '2020-08-10', 15000, '2020-08-10 04:05:49.579', 'Deposit', 'Addis Ababa Branch', 53843),
(20, '2020-08-10', 100000, '2020-08-10 04:06:34.155', 'Deposit', 'Addis Ababa Branch', 53843),
(21, '2020-08-10', 50000, '2020-08-10 04:20:46.547', 'Withdraw', 'Mombasa Branch', 53843),
(22, '2020-08-10', 10000, '2020-08-10 04:22:17.708', 'Withdraw', 'Addis Ababa Branch', 53843),
(23, '2020-08-10', 1000, '2020-08-10 04:32:34.016', 'Withdraw', 'Mombasa Branch', 53843),
(24, '2020-08-11', 10000, '2020-08-11 07:00:52.803', 'Deposit', 'Addis Ababa Branch', 63974),
(25, '2020-08-11', 1000, '2020-08-11 07:01:50.174', 'Withdraw', 'Mombasa Branch', 63974),
(26, '2020-08-11', 10000, '2020-08-11 07:04:14.756', 'Deposit', 'Nairobi Branch', 63974),
(27, '2020-08-13', 1000, '2020-08-13 05:58:02.319', 'Deposit', 'Nairobi Branch', 53843),
(28, '2020-08-13', 1000, '2020-08-13 05:59:56.093', 'Withdraw', 'Mombasa Branch', 53843),
(29, '2020-08-13', 100.1, '2020-08-13 06:14:54.399', 'Withdraw', 'Nairobi Branch', 53843),
(30, '2020-08-13', 1000.235, '2020-08-13 06:15:45.123', 'Withdraw', 'Addis Ababa Branch', 53843),
(31, '2020-08-13', 10000, '2020-08-13 06:59:12.643', 'Deposit', 'Addis Ababa Branch', 53843);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `transferID` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `sender` int(5) NOT NULL,
  `receiver` int(5) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'Transfer',
  `date` varchar(15) NOT NULL,
  `timeStamp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`transferID`, `amount`, `sender`, `receiver`, `type`, `date`, `timeStamp`) VALUES
(7, 190, 70227, 53843, 'Transfer', '2020-08-01', '2020-08-07 15:24:36.007'),
(8, 1000, 70227, 53843, 'Transfer', '2020-08-07', '2020-08-07 15:33:41.865'),
(9, 2000, 70227, 53843, 'Transfer', '2020-08-07', '2020-08-07 15:34:29.136'),
(10, 1000, 70227, 53843, 'Transfer', '2020-08-07', '2020-08-07 16:42:36.005'),
(11, 300, 53843, 70227, 'Transfer', '2020-08-10', '2020-08-10 03:24:45.294'),
(12, 10000, 53843, 70227, 'Transfer', '2020-08-10', '2020-08-10 05:07:39.549'),
(13, 5380, 63974, 53843, 'Transfer', '2020-08-11', '2020-08-11 07:05:46.362'),
(14, 10000, 53843, 70227, 'Transfer', '2020-08-13', '2020-08-13 06:03:59.09'),
(15, 10000, 70227, 53843, 'Transfer', '2020-08-13', '2020-08-13 06:05:32.766'),
(16, 10000, 53843, 70227, 'Transfer', '2020-08-13', '2020-08-13 07:14:58.893');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountNumber`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loanID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transactionID`),
  ADD KEY `accountNumber` (`accountNumber`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transferID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountNumber` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70228;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transactionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transferID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`accountNumber`) REFERENCES `account` (`accountNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
