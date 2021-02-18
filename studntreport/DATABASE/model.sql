-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 11:25 PM
-- Server version: 10.4.8-MariaDB
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
-- Database: `model`
--

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(450) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(55) NOT NULL,
  `note` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_id` varchar(220) NOT NULL,
  `name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `report` varchar(2000) NOT NULL,
  `yoa` varchar(45) NOT NULL,
  `parent` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(7) NOT NULL,
  `file` varchar(400) NOT NULL,
  `file1` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `name`, `last_name`, `report`, `yoa`, `parent`, `dob`, `gender`, `file`, `file1`) VALUES
(1, 'MS17-e32c', 'Taola', 'Remilekun', 'She is a bad girl... run away from her!', '2012', '08138652645', '1993-05-05', 'Female', 'your_site_name_4b7720e1d717573bf412a49b43537063.png', ''),
(3, 'TD17-e4e9', 'Oluranti', 'Aluko', 'good', '2009', '9876545667890', '2021-02-04', 'Male', 'your_site_name_00a637e6760c08cce1a5ac54a6a17ef8.jpg', ''),
(4, 'TD17-018b', 'Tope', 'Aluko', 'good', '2020', '98765678902', '2021-03-12', 'Male', 'your_site_name_8446fa0b98aeeac2b4c31eacff17bcdb.jpg', ''),
(7, 'TD17-6924', 'Tope', 'Aluko', 'tope', '2009', '8765434', '2021-02-26', 'Male', 'your_site_name_5158d37306507a6cca46d888529f2e72.jpg', 'your_site_name_5cb873cfab1f53e77df04c61cf7cb2d8.jpg'),
(8, 'TD17-690b', 'tope', 'kljhgj', 'goof', '2019', '098765', '2021-03-12', 'Female', 'your_site_name_730e65e5f82b1bd035b172da9194b584.jpg', 'your_site_name_41e425292bd0ea72be396a9ffa3ae4a5.jpg'),
(9, 'TD17-c4f3', 'Tope', 'Oluranti', 'perfect', '2018', '0987654', '2021-02-24', 'Female', 'your_site_name_c5e49455e20ddb371ff4c4759abb28af.jpg', 'your_site_name_f9cf2a60b3c2997e45d8c351324ebe57.jpg'),
(10, 'TD17-1681', 'Temitope', 'Aluko', 'zaddy ', '2019', '9087655546788', '2021-02-24', 'Male', 'your_site_name_1eee27e129b7eb0ad224ff557f9b1b8b.jpg', 'your_site_name_94ce62e81f9deaf44e54ff2a081b0841.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `position` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `position`, `username`, `password`) VALUES
(1, 'Aderemi Dotun', 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
