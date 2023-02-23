-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2023 at 08:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `winxtreme`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matrix`
--

CREATE TABLE `tbl_matrix` (
  `matrix_id` int(11) NOT NULL,
  `prediction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_matrix`
--

INSERT INTO `tbl_matrix` (`matrix_id`, `prediction_id`, `user_id`, `result`, `amount`, `status`, `log`) VALUES
(1, 1, 1, 1, '80.00', 0, '2023-02-02 19:06:44'),
(2, 1, 2, 2, '20.00', 0, '2023-02-02 19:07:24'),
(3, 1, 3, 3, '500.00', 0, '2023-02-02 19:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prediction`
--

CREATE TABLE `tbl_prediction` (
  `prediction_id` int(11) NOT NULL,
  `prediction_event_id` varchar(100) NOT NULL,
  `result` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_prediction`
--

INSERT INTO `tbl_prediction` (`prediction_id`, `prediction_event_id`, `result`, `status`, `log`) VALUES
(1, 'PETRgzGU', '2', 0, '2023-02-02 19:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction_history`
--

CREATE TABLE `tbl_transaction_history` (
  `transaction_history_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `transaction_status` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `log` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaction_history`
--

INSERT INTO `tbl_transaction_history` (`transaction_history_id`, `user_id`, `type`, `amount`, `transaction_status`, `status`, `log`) VALUES
(1, 2, 'winning', '36.40', 'success', 0, '2023-02-02 19:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `phonenumber` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `wallet` varchar(250) NOT NULL DEFAULT '0',
  `otp` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `flag` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `phonenumber`, `email`, `wallet`, `otp`, `password`, `verified`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'Ayyappan', '8610928844', 'ayyappanrj10@gmail.com', '0', 'm4hrztJFZaKE0UAW', 'Ayyappan@2707', 1, 1, '2023-02-02 18:58:09', '2023-02-02 18:58:27'),
(2, 'Mani', '9638527411', 'mani@gmail.com', '36.4', 'LwEDKVBs8XiqyYdJ', 'Mani123', 1, 1, '2023-02-02 18:58:34', '2023-02-02 19:20:12'),
(3, 'Munish', '9638527412', 'munish@gmail.com', '0', 'LwEDKVBs8XiqyYdJ', 'Muni123', 1, 1, '2023-02-02 18:58:34', '2023-02-02 19:07:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_matrix`
--
ALTER TABLE `tbl_matrix`
  ADD PRIMARY KEY (`matrix_id`);

--
-- Indexes for table `tbl_prediction`
--
ALTER TABLE `tbl_prediction`
  ADD PRIMARY KEY (`prediction_id`);

--
-- Indexes for table `tbl_transaction_history`
--
ALTER TABLE `tbl_transaction_history`
  ADD PRIMARY KEY (`transaction_history_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_matrix`
--
ALTER TABLE `tbl_matrix`
  MODIFY `matrix_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_prediction`
--
ALTER TABLE `tbl_prediction`
  MODIFY `prediction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_transaction_history`
--
ALTER TABLE `tbl_transaction_history`
  MODIFY `transaction_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
