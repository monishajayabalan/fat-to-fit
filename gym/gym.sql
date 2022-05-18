-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 01:21 PM
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
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(40) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `date`, `status`, `login_id`) VALUES
(1, 'david', '2021-04-23', 'protein1', 1),
(2, 'david', '2021-04-16', 'protein2', 4),
(3, 'user3', '2021-04-24', 'protein1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `chatbox`
--

CREATE TABLE `chatbox` (
  `id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbox`
--

INSERT INTO `chatbox` (`id`, `question`, `answer`) VALUES
(1, 'hai', 'hallo'),
(2, 'fees', 'monthiley'),
(3, 'hallo', 'hai'),
(4, 'ok', 'tankyou'),
(5, 'todayabsent', 'ok'),
(6, 'abcdefghigklmnpqrstuvwxyz', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `feedback`) VALUES
(1, 'bad'),
(2, 'good'),
(3, 'bad');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `login_id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `food` varchar(40) NOT NULL,
  `eat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `login_id`, `name`, `food`, `eat`) VALUES
(1, 4, 'user1', 'gainer', 'yes'),
(2, 5, 'user2', 'muscleblaze', 'no'),
(3, 8, 'user3', 'mb', 'no'),
(5, 2, 'user1', 'mb', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `health`
--

CREATE TABLE `health` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `healthdetials` varchar(255) NOT NULL,
  `login_id` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `health`
--

INSERT INTO `health` (`id`, `username`, `healthdetials`, `login_id`) VALUES
(3, 'user1', 'good', 4),
(4, 'user2', 'bad', 5);

-- --------------------------------------------------------

--
-- Table structure for table `healthfood`
--

CREATE TABLE `healthfood` (
  `id` int(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `healthfood` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `healthfood`
--

INSERT INTO `healthfood` (`id`, `login_id`, `healthfood`) VALUES
(1, 11, 'gggg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `role`) VALUES
(1, 'admin', '12345', 'admin'),
(2, 'phy', '12345', 'physician'),
(3, 'ins', '12345', 'instructer'),
(4, 'user1', '12345', 'user'),
(5, 'user2', '12345', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `medical`
--

CREATE TABLE `medical` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `replay` varchar(255) NOT NULL,
  `login_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical`
--

INSERT INTO `medical` (`id`, `username`, `replay`, `login_id`) VALUES
(4, 'user1', 'ok user1', 4),
(5, 'user2', 'ok user2', 5);

-- --------------------------------------------------------

--
-- Table structure for table `medical_doubts`
--

CREATE TABLE `medical_doubts` (
  `id` int(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `medical_doubts` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_doubts`
--

INSERT INTO `medical_doubts` (`id`, `login_id`, `username`, `medical_doubts`) VALUES
(1, 4, 'user1', 'one doubts');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `medicine_name` varchar(40) NOT NULL,
  `stocks` varchar(30) NOT NULL,
  `price` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `medicine_name`, `stocks`, `price`) VALUES
(1, 'paracetamole', '6', '10');

-- --------------------------------------------------------

--
-- Table structure for table `newbatch`
--

CREATE TABLE `newbatch` (
  `id` int(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `instructor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newbatch`
--

INSERT INTO `newbatch` (`id`, `login_id`, `name`, `batch`, `instructor`) VALUES
(1, 4, 'user1', 'A', 'instructer1'),
(2, 5, 'user2', 'B', 'instructer2');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(30) NOT NULL,
  `date` varchar(20) NOT NULL,
  `cvv` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `number`, `date`, `cvv`, `amount`, `login_id`) VALUES
(5, 'user1', '1234567890', '12-12-2022', '678', '2500', 4),
(6, 'user2', '1231231234', '12-12-2021', '679', '3400', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_tb`
--

CREATE TABLE `product_tb` (
  `id` int(11) NOT NULL,
  `product` varchar(200) NOT NULL,
  `details` varchar(40) NOT NULL,
  `price` varchar(200) NOT NULL,
  `picture` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tb`
--

INSERT INTO `product_tb` (`id`, `product`, `details`, `price`, `picture`) VALUES
(5, 'dumbell', '1k', '200', '732530500.jpeg'),
(6, 'dumbell', '2k', '250', '1311216920.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `reg_id` int(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `upload` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`reg_id`, `login_id`, `name`, `email`, `mobile`, `gender`, `upload`) VALUES
(1, 1, 'admin', 'ffff@gmail.com', '1111111111', 'male', '934864335.jpg'),
(2, 2, 'user1', 'vrv96@gmail.com', '1111111111', 'male', '1268115631.jpg'),
(3, 3, 'phy', 'v96@gmail.com', '1111111111', 'male', '78847632.jpg'),
(4, 4, 'phy', 'evrv96@gmail.com', '1234567890', 'male', '48994606.jpg'),
(5, 5, 'inscuter', 'evrv96@gmail.com', '1111122222', 'male', '175278548.jpg'),
(6, 7, 'phy', 'v96@gmail.com', '1212121212', 'male', '1252123218.jpg'),
(7, 8, 'ins', 'vrv96@gmail.com', '1111111111', 'male', '1876284627.jpg'),
(8, 9, 'user1', 'vrv96@gmail.com', '1212121212', 'female', '275539428.png');

-- --------------------------------------------------------

--
-- Table structure for table `register1`
--

CREATE TABLE `register1` (
  `reg_id` int(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `upload` varchar(40) NOT NULL,
  `approved` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register1`
--

INSERT INTO `register1` (`reg_id`, `login_id`, `name`, `email`, `mobile`, `gender`, `upload`, `approved`) VALUES
(2, 4, 'user2', 'evrv96@gmail.com', '1212121212', 'male', '2015164727.jpg', 'no'),
(3, 5, 'user2', 'udevrv96@gmail.com', '1234567890', 'male', '1060011168.png', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `trainer_name` varchar(40) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `work_time` varchar(40) NOT NULL,
  `work_day` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `trainer_name`, `user_name`, `work_time`, `work_day`) VALUES
(1, 'david', 'unni', '10:00', '22'),
(2, 'david', 'vgtt', '4:00', '22');

-- --------------------------------------------------------

--
-- Table structure for table `transform`
--

CREATE TABLE `transform` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `wheight` varchar(40) NOT NULL,
  `bmii_index` varchar(40) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transform`
--

INSERT INTO `transform` (`id`, `username`, `wheight`, `bmii_index`, `login_id`) VALUES
(1, 'vishnus', '10k', '22', 0),
(2, 'david', '22k', '2', 0),
(3, 'david', '22k', '2', 0),
(4, 'user1', '10k', '33', 4),
(5, 'user1', '20k', '33', 5),
(6, 'unni', '10k', '33', 3),
(7, 'unni', '10k', '33', 3),
(8, 'unni', '10k', '33', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbox`
--
ALTER TABLE `chatbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health`
--
ALTER TABLE `health`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `healthfood`
--
ALTER TABLE `healthfood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `medical`
--
ALTER TABLE `medical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medical_doubts`
--
ALTER TABLE `medical_doubts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newbatch`
--
ALTER TABLE `newbatch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tb`
--
ALTER TABLE `product_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `register1`
--
ALTER TABLE `register1`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transform`
--
ALTER TABLE `transform`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chatbox`
--
ALTER TABLE `chatbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `health`
--
ALTER TABLE `health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `healthfood`
--
ALTER TABLE `healthfood`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medical_doubts`
--
ALTER TABLE `medical_doubts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newbatch`
--
ALTER TABLE `newbatch`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_tb`
--
ALTER TABLE `product_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reg_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `register1`
--
ALTER TABLE `register1`
  MODIFY `reg_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transform`
--
ALTER TABLE `transform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
