-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2025 at 04:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Name` varchar(50) NOT NULL,
  `Blood type` varchar(5) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact` int(10) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Name`, `Blood type`, `Address`, `Contact`, `Email`, `Role`) VALUES
('NAGASHREE K S', 'A+', 'BANGALORE RURAL', 907134274, 'nagu@gmail.com', 'donor'),
('Naveed', 'AB+', 'Nelhal', 974349511, 'nav@gmail.com', 'donor'),

-- Generating 500 insertions

-- Sample data entries
('John Doe', 'O+', 'New York', 900000001, 'johndoe1@example.com', 'donor'),
('Jane Smith', 'A-', 'Los Angeles', 900000002, 'janesmith2@example.com', 'donor'),
('Michael Brown', 'B+', 'Chicago', 900000003, 'michael3@example.com', 'donor'),
('Emily Davis', 'AB-', 'Houston', 900000004, 'emily4@example.com', 'donor'),
('Robert Wilson', 'O-', 'Phoenix', 900000005, 'robert5@example.com', 'donor'),
('Alice Johnson', 'A+', 'San Antonio', 900000006, 'alice6@example.com', 'donor'),
('David Martinez', 'B-', 'San Diego', 900000007, 'david7@example.com', 'donor'),
('Sophia Thomas', 'O+', 'Dallas', 900000008, 'sophia8@example.com', 'donor'),
('James Anderson', 'AB+', 'San Jose', 900000009, 'james9@example.com', 'donor'),
('Emma Harris', 'A-', 'Austin', 900000010, 'emma10@example.com', 'donor'),
('Daniel White', 'B+', 'Jacksonville', 900000011, 'daniel11@example.com', 'donor'),
('Olivia Clark', 'O-', 'Fort Worth', 900000012, 'olivia12@example.com', 'donor'),
('Ethan Lewis', 'A+', 'Columbus', 900000013, 'ethan13@example.com', 'donor'),
('Mia Walker', 'B-', 'Charlotte', 900000014, 'mia14@example.com', 'donor'),
('Benjamin Young', 'O+', 'Indianapolis', 900000015, 'benjamin15@example.com', 'donor'),
('Charlotte King', 'AB-', 'San Francisco', 900000016, 'charlotte16@example.com', 'donor'),
('William Scott', 'A-', 'Seattle', 900000017, 'william17@example.com', 'donor'),
('Amelia Hall', 'B+', 'Denver', 900000018, 'amelia18@example.com', 'donor'),
('Alexander Allen', 'O-', 'Washington', 900000019, 'alexander19@example.com', 'donor'),
('Harper Wright', 'A+', 'Boston', 900000020, 'harper20@example.com', 'donor'),
('Elijah Lopez', 'B-', 'El Paso', 900000021, 'elijah21@example.com', 'donor'),
('Avery Hill', 'O+', 'Nashville', 900000022, 'avery22@example.com', 'donor'),
('Lucas Green', 'AB-', 'Detroit', 900000023, 'lucas23@example.com', 'donor'),
('Madison Baker', 'A-', 'Memphis', 900000024, 'madison24@example.com', 'donor'),
('Mason Gonzalez', 'B+', 'Portland', 900000025, 'mason25@example.com', 'donor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Name`),
  ADD UNIQUE KEY `Contact` (`Contact`),
  ADD UNIQUE KEY `Email` (`Email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
