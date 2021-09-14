-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 03:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight_reservation`
--
CREATE DATABASE IF NOT EXISTS `flight_reservation` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `flight_reservation`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(100) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
('c10e75c3-f26b-4ef1-8a15-be831d07457d', 'adeeba', 'adeeba@root.localhost', 'admin'),
('cd88f6be-8d3f-4bed-af97-5ae18cbd54ee', 'cyrus', 'cyrus@root.localhost', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` varchar(100) NOT NULL,
  `flight_no` varchar(60) NOT NULL,
  `flight_type` varchar(60) NOT NULL,
  `airlines` varchar(60) NOT NULL,
  `source` varchar(60) NOT NULL,
  `destination` varchar(60) NOT NULL,
  `arrival_time` varchar(6) NOT NULL,
  `departure_time` varchar(6) NOT NULL,
  `route` varchar(60) NOT NULL,
  `days_of_operation` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `flight_no`, `flight_type`, `airlines`, `source`, `destination`, `arrival_time`, `departure_time`, `route`, `days_of_operation`) VALUES
('026a69ce-0736-4944-a5ad-c0622270bae2', 'VQ989', 'Domestic', 'Novoair', 'Dhaka', 'Rajshahi', '09:45', '09:00', 'DAC-RJH', 'Daily'),
('04aae7a6-2ed3-4821-a424-f90a8f29debb', 'RX792', 'International', 'Regent', 'Kolkata', 'Dhaka', '17:00', '15:30', 'CCU-DAC', 'Daily'),
('0edab033-6ced-4d40-af56-a4fd75c11269', 'VQ903', 'Domestic', 'Novoair', 'Dhaka', 'Chittagong', '10:25', '09:30', 'DAC-CGP', 'Daily'),
('10184c30-e181-40d7-a303-90adb0b5e4ee', 'RX789', 'International', 'Regent', 'Singapore', 'Dhaka', '06:30', '04:15', 'SIN-DAC', 'TUE, THU, SUN'),
('16ca8b11-6009-4102-b87a-3fe7d0aa7575', 'VQ990', 'Domestic', 'Novoair', 'Rajshahi', 'Dhaka', '11:00', '10:15', 'RJH-DAC', 'Daily'),
('1d3b7531-6c29-4b2c-86c4-56d3627ee593', 'VQ941', 'Domestic', 'Novoair', 'Dhaka', 'Jashore', '07:50', '07:10', 'DAC-JSR', 'Daily'),
('28a8a91a-a7e5-428f-9bed-880cb351f25b', 'RX755', 'International', 'Regent', 'Doha', 'Dhaka', '08:45', '23:00', 'DOH-DAC', 'Daily Expect Mon'),
('2b369079-1432-4351-8c2c-e56a6bbfa5e7', 'RX742', 'Domestic', 'Regent', 'Cox\'s Bazar', 'Dhaka', '12:45', '11:45', 'CXB-DAC', 'Daily'),
('3144533e-41e4-4ef7-a796-c2acb30f8832', 'VQ996', 'Domestic', 'Novoair', 'Barishal', 'Dhaka', '10:20', '09:40', 'BZL-DAC', 'Daily'),
('33ac1de9-745f-4a55-b099-572ad3185cd0', 'RX754', 'International', 'Regent', 'Chittagong', 'Doha', '22:00', '19:15', 'CGP-DOH', 'Daily Expect Mon'),
('39c987fa-654d-4058-86d0-e037b9c70090', 'VQ984', 'Domestic', 'Novoair', 'Sylhet', 'Dhaka', '14:10', '13:20', 'ZYL-DAC', 'Daily'),
('3e1ee641-8659-4fbd-8351-e52f823cd593', 'RX782', 'International', 'Regent', 'Dhaka', 'Kuala Lumpur', '05:20', '23:20', 'DAC-KUL', 'Daily'),
('4537bd1c-312a-46f9-89d1-8e6b33fb8f98', 'RX753', 'International', 'Regent', 'Dhaka', 'Doha', '22:00', '18:00', 'DAC-DOH', 'Daily Expect Mon'),
('4a506821-2663-4fb0-88bd-cb70ea94a563', 'RX791', 'International', 'Regent', 'Dhaka', 'Kolkata', '11:00', '10:30', 'DAC-CCU', 'Daily'),
('59ae691a-57a7-4011-9bcb-fd1c11d56338', 'RX741', 'Domestic', 'Regent', 'Dhaka', 'Cox\'s Bazar', '11:15', '10:15', 'DAC-CXB', 'Daily'),
('6040a84b-efd1-46af-8a5c-fb595f5ff576', 'RX783', 'International', 'Regent', 'Kuala Lumpur', 'Dhaka', '08:20', '06:20', 'KUL-DAC', 'Daily'),
('6b6ef847-bf11-48b9-bdea-621bb0d8b69e', 'VQ942', 'Domestic', 'Novoair', 'Jashore', 'Dhaka', '09:00', '08:20', 'JSR-DAC', 'Daily'),
('6d423f5d-55a5-4218-9b26-44563b98e298', 'RX711', 'Domestic', 'Regent', 'Dhaka', 'Chittagong', '08:15', '07:30', 'DAC-CGP', 'Daily'),
('9732c8e8-a564-4c0b-8624-15aae912ddb6', 'VQ983', 'Domestic', 'Novoair', 'Dhaka', 'Sylhet', '12:50', '12:00', 'DAC-ZYL', 'Daily'),
('9acff3cc-868f-4ab7-ae9a-ad5cbb828f32', 'RX756', 'International', 'Regent', 'Doha', 'Chittagong', '07:30', '23:00', 'DOH-CGP', 'Daily Except Mon'),
('9ae141e4-3053-4e7b-b997-02b94d049d42', 'RX724', 'International', 'Regent', 'Muscat', 'Dhaka', '10:30', '02:45', 'MCT-DAC', 'Daily'),
('9c3244a9-bfa7-4605-8b2f-047aebd67bfe', 'VQ924', 'Domestic', 'Novoair', 'Cox\'s Bazar', 'Dhaka', '11:10', '10:05', 'CXB-DAC', 'Daily'),
('b1f513f8-e3c6-4a76-b1a5-6be94b4e417d', 'VQ962', 'Domestic', 'Novoair', 'Saidpur', 'Dhaka', '09:40', '08:40', 'SPD-DAC', 'Daily'),
('b97a177f-6dd3-4ddf-8315-fd5f4f6dccab', 'RX712', 'Domestic', 'Regent', 'Chittagong', 'Dhaka', '09:30', '08:45', 'CGP-DAC', 'Daily'),
('c839b902-9a8c-42a0-9477-c7bdad42e22a', 'VQ904', 'Domestic', 'Novoair', 'Chittagong', 'Dhaka', '11:50', '10:55', 'CGP-DAC', 'Daily'),
('ce3f89c6-7166-43a7-a8bb-291b4bbc36b4', 'VQ961', 'Domestic', 'Novoair', 'Dhaka', 'Saidpur', '08:10', '07:10', 'DAC-SPD', 'Daily'),
('d68b9dcb-bb1d-4990-a5c5-f3cffb48926d', 'RX723		', 'International', 'Regent', 'Dhaka', 'Muscat', '01:45', '21:30', 'DAC-MCT', 'Daily'),
('e08a52cc-0c18-46d0-9667-cec40bafd8b7', 'RX784		', 'International', 'Regent', 'Dhaka', 'Singapore', '17:15', '11:30', 'DAC-SIN', 'MON, WED, FRI, SAT'),
('e3962ea2-261b-4f2e-b362-790a3d39d323', 'VQ995', 'Domestic', 'Novoair', 'Dhaka', 'Barishal', '09:10', '08:30', 'DAC-BZL', 'Daily'),
('f17dcba6-c9e2-47da-a889-13eedfe1a85d', 'VQ923', 'Domestic', 'Novoair', 'Dhaka', 'Cox\'s Bazar', '09:35', '08:30', 'DAC-CXB', 'Daily');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` varchar(100) NOT NULL,
  `flight_id` varchar(60) NOT NULL,
  `flight_no` varchar(60) NOT NULL,
  `airlines` varchar(60) NOT NULL,
  `passport_number` varchar(60) NOT NULL,
  `source` varchar(60) NOT NULL,
  `destination` varchar(60) NOT NULL,
  `departure_time` varchar(60) NOT NULL,
  `arrival_time` varchar(60) NOT NULL,
  `booking_date` varchar(60) NOT NULL,
  `seat_number` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `passport_number` varchar(100) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `passport_number`, `phone_number`, `email`, `password`) VALUES
('6a144772-a7a3-403e-a996-6b5d71bcdb72', 'Ahnaf Kabir', 'ABC012345678', '+8801911939704', 'ahnaf.kabir@gmail.com', 'lol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD UNIQUE KEY `flight_no` (`flight_no`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD UNIQUE KEY `flight_no` (`flight_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`passport_number`),
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
