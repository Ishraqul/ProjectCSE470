-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 12:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism and travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL,
  `admin_phone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_phone`) VALUES
(1, 'Admin', 'admin@chilltours.com', 'admin123', 184756987);

-- --------------------------------------------------------

--
-- Table structure for table `airlineslist`
--

CREATE TABLE `airlineslist` (
  `airline_id` int(100) NOT NULL,
  `airline_name` varchar(500) NOT NULL,
  `airline_class` varchar(500) NOT NULL,
  `airline_type` varchar(500) NOT NULL,
  `number_of_seat` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `airlineslist`
--

INSERT INTO `airlineslist` (`airline_id`, `airline_name`, `airline_class`, `airline_type`, `number_of_seat`) VALUES
(2, 'Novo Air', 'Economy', 'Boeing 747', 124),
(3, 'Fly Emirates', 'Business / Economy', 'Airbus A380', 250),
(4, 'Fly Emirates', 'Business / Economy', 'Airbus A380', 250),
(5, 'Etihad Airways', 'Business / Economy', 'Boeing 797', 164),
(6, 'Singapore Airlines', 'Business / Economy', 'Boeing 787', 120),
(7, 'Turkish Airways', 'Business / Economy', ' Airbus A350', 220),
(8, 'Jet Airways', 'Economy', 'Boeing 747', 164),
(9, 'Biman Bangladesh', 'Business/Economy', 'Boeing 787', 184);

-- --------------------------------------------------------

--
-- Table structure for table `bookinginfo`
--

CREATE TABLE `bookinginfo` (
  `booking_id` int(100) NOT NULL,
  `booked_destination` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `booking_date` date NOT NULL,
  `booked_airline` varchar(200) NOT NULL,
  `booked_hotel` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookinginfo`
--

INSERT INTO `bookinginfo` (`booking_id`, `booked_destination`, `user_name`, `booking_date`, `booked_airline`, `booked_hotel`) VALUES
(1, 'Singapore', 'Fardin', '2021-05-16', 'Singapore Airline', 'Park Royal');

-- --------------------------------------------------------

--
-- Table structure for table `destinationlist`
--

CREATE TABLE `destinationlist` (
  `destination_id` int(100) NOT NULL,
  `country_name` varchar(500) NOT NULL,
  `city_name` varchar(500) NOT NULL,
  `zip_code` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinationlist`
--

INSERT INTO `destinationlist` (`destination_id`, `country_name`, `city_name`, `zip_code`) VALUES
(1, 'Bangladesh', 'Chittagong', 4217),
(2, 'Bangladesh', 'Sylhet', 3128),
(6, 'Canada', 'Toronto', 6969),
(7, 'USA', 'New York City', 8898),
(8, 'UK', 'London', 6666),
(9, 'India', 'Kolkata', 2031),
(10, 'USA', 'Los Angeles California', 6),
(11, 'China', 'Beijing', 9845),
(12, 'Japan', 'Tokyo', 5952),
(13, 'Indonesia', 'Bali', 98456);

-- --------------------------------------------------------

--
-- Table structure for table `hotellist`
--

CREATE TABLE `hotellist` (
  `hotel_name` varchar(500) NOT NULL,
  `hotel_location` varchar(500) NOT NULL,
  `hotel_email` varchar(100) NOT NULL,
  `hotel_phonenumber` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotellist`
--

INSERT INTO `hotellist` (`hotel_name`, `hotel_location`, `hotel_email`, `hotel_phonenumber`) VALUES
('The Peninsula', 'Chittagong', 'reservation@peninsulactg.com', 89456123),
('The Palace Luxury Resort', 'Sylhet', 'reservation@palace.com', 748652135),
('Park Royale', 'Singapore', 'reservation@parkroyal.com', 696895235),
('Hyatt Regency Creek Heights', 'Dubai', 'reservation@hyatt.com', 78946515),
('Ramada Hyde Park', 'London', 'reservation@ramadahotels.com', 89465353),
('The Central Park North', 'New York', 'reservation@cp.com', 1239645),
('Hilton Abudhabi', 'Abudhabi', 'abudhabihilton@org.com', 79856132);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `user_id` int(6) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_phone` int(20) NOT NULL,
  `user_address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_address`) VALUES
(1, 'Ishraqul Islam', 'ishraqul98@gmail.com', 'ishraq123', 1845569879, 'Indira Road'),
(2, 'Mahin Islam', 'mahin@gmail.com', '', 0, ''),
(3, 'Saif ', 'saif@gmail.com', '12345', 1711561221, 'Lalmatia'),
(4, 'Fardin', 'fardin@outlook.com', 'f', 25897416, 'Uttara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airlineslist`
--
ALTER TABLE `airlineslist`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `bookinginfo`
--
ALTER TABLE `bookinginfo`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `destinationlist`
--
ALTER TABLE `destinationlist`
  ADD PRIMARY KEY (`destination_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininfo`
--
ALTER TABLE `admininfo`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `airlineslist`
--
ALTER TABLE `airlineslist`
  MODIFY `airline_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bookinginfo`
--
ALTER TABLE `bookinginfo`
  MODIFY `booking_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `destinationlist`
--
ALTER TABLE `destinationlist`
  MODIFY `destination_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
