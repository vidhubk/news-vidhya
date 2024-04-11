-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2024 at 11:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `password`) VALUES
(1, 'vidhya', 'vidhya@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `des`) VALUES
(1, 'World', 'World'),
(2, 'Technology', 'Technology'),
(3, 'Culture', 'Culture'),
(4, 'Business', 'Business'),
(5, 'Politics', 'Politics');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `category` varchar(100) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `category`, `thumbnail`, `admin`) VALUES
(1, 'BJP\'s \'Kerala Story\' of Christians and a Manipur twist', 'BJP\'s \'Kerala Story\' of Christians and a Manipur twist.\r\nSome dioceses and Christian youth organisations will be screening \'The Kerala Story\' this weekend. This is being seen as a bid to push Christian voters towards the BJP in Kerala. This is a last-ditch effort to woo a community that forms 22% of the population.', '2024-03-03', 'World', 'kerala-1.jpg', 'vidhya'),
(2, 'Siri is going to get smarter, it may soon even understand how iPhone apps work', 'Apple\'s voice assistant Siri could become smarter, with the incorporation of Ferret-UI, a Multimodal Large Language Model developed by Cornell University and Apple.', '2024-04-08', 'Technology', 'siri-technology.jpg', 'vidhya'),
(3, 'Arvind Kejriwal is reading these 3 books in Tihar Jail. What is their significance?', 'Kejriwal, who has been remanded by the Rouse Avenue Court until April 15, has sought permission to have three books with him', '2024-04-08', 'Culture', 'arvind-kej.jpg', 'vidhya'),
(4, 'Brazil budget cuts could leave science labs without power and water', 'Brazil budget cuts could leave science labs without power and waterFar far away, behind the word mountains, far from the countries VokaliaFar far away, behind the word mountains, far from the countries VokaliaFar far away, behind the word mountains, far from the countries VokaliaFar far away, behind the word mountains, far from the countries Vokalia', '2024-04-08', 'Culture', 'brazil-1.jpg', 'vidhya'),
(5, 'Tesla & Reliance may join hands for EV manufacturing plant in India: Report', 'Tesla & Reliance may join hands for EV manufacturing plant in India: Report.\r\nTesla & Reliance may join hands for EV manufacturing plant in India: Report', '2024-04-09', 'Business', 'tesla.jpg', 'vidhya'),
(6, 'BJP\'s \'Kerala Story\' of Christians and a Manipur twist', 'BJP\'s \'Kerala Story\' of Christians and a Manipur twist.\r\nSome dioceses and Christian youth organisations will be screening \'The Kerala Story\' this weekend. This is being seen as a bid to push Christian voters towards the BJP in Kerala. This is a last-ditch effort to woo a community that forms 22% of the population.', '2024-04-08', 'Politics', 'kerala-1.jpg', 'vidhya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
