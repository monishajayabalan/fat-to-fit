-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2022 at 10:38 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

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
(5, 'tom', '2021-04-22', 'absent', 14),
(6, 'saru', '2022-12-20', 'absent', 0),
(7, 'moni', '2022-03-16', 'present', 0),
(8, 'sharu', '2000-03-23', 'present', 0),
(9, 'mmm', '2022-04-19', 'present', 0),
(10, 'niro', '2022-04-22', 'present', 0),
(11, 'janu', '2022-04-23', 'present', 0);

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
-- Table structure for table `couple_fees`
--

CREATE TABLE `couple_fees` (
  `c_id` int(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `months` int(100) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `couple_fees`
--

INSERT INTO `couple_fees` (`c_id`, `month`, `months`, `year`) VALUES
(1, '1620', 4250, '12600'),
(2, '2000', 3900, '8500');

-- --------------------------------------------------------

--
-- Table structure for table `fam_fees`
--

CREATE TABLE `fam_fees` (
  `f_id` int(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `months` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fam_fees`
--

INSERT INTO `fam_fees` (`f_id`, `month`, `months`, `year`) VALUES
(1, '2500', '6550', '25000'),
(2, '3000', '8000', '35000');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `username`, `feedback`) VALUES
(7, 'moni', 'azsdfghjkl;'),
(8, 'sharu', 'good'),
(9, 'moni', 'feedback1'),
(10, 'sharu', 'feedback5');

-- --------------------------------------------------------

--
-- Table structure for table `fees_tb`
--

CREATE TABLE `fees_tb` (
  `fees_id` int(100) NOT NULL,
  `month` varchar(100) NOT NULL,
  `months` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees_tb`
--

INSERT INTO `fees_tb` (`fees_id`, `month`, `months`, `year`) VALUES
(1, '1000', '5500', '15000'),
(2, '2000', '15000', '33000');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `food` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `food`) VALUES
(1, 'user1', 'gainer'),
(11, 'tom', 'chicken'),
(12, 'saru', 'fruits'),
(13, 'nnn', 'orange'),
(14, 'nnn', 'orange'),
(15, 'qqq', 'gvbhgvhg,hbjcsnb,jfhuejdf'),
(16, 'janu', 'apple'),
(17, 'janu', 'applssss'),
(18, 'janu', 'aaaaaaaaaaaaaaaaaaaa'),
(19, 'niro', 'biriyani'),
(20, 'niro', 'roti'),
(21, 'niro', 'badam');

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
(8, 'moni', 'asdfghyujkl', 23),
(9, 'sharu', 'well good', 24),
(10, 'janu', 'health details of me', 35);

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
(1, 11, 'eggs'),
(2, 12, 'meat'),
(3, 12, 'oats'),
(4, 20, 'vegetables'),
(5, 25, 'fruits'),
(6, 21, 'soya chunks'),
(7, 21, 'spinach'),
(8, 19, 'spinach');

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
(21, 'das', 'das', 'instructer'),
(22, 'ramu', 'ramu', 'physician'),
(35, 'janu', 'janu', 'user'),
(36, 'niro', 'niro', 'user'),
(37, 'sachin', 'sachin', 'user');

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
(20, 'janu', 'reply 1for you', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medical_doubts`
--

CREATE TABLE `medical_doubts` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `medical_doubts` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_doubts`
--

INSERT INTO `medical_doubts` (`id`, `username`, `medical_doubts`) VALUES
(9, 'moni', 'rest is must'),
(10, 'moni', ''),
(11, 'moni', 'ertyuioghjkl;'),
(12, 'sharu', 'doubt5'),
(13, 'janu', 'medical doubt1');

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
(1, 'paracetamole', '6', '10'),
(2, 'dolo10', '100', '12'),
(3, 'medicine1', '50', '5000'),
(4, 'medicine1', '50', '500'),
(5, 'dolo', '25', '50');

-- --------------------------------------------------------

--
-- Table structure for table `newbatch`
--

CREATE TABLE `newbatch` (
  `id` int(20) NOT NULL,
  `login_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `instructor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newbatch`
--

INSERT INTO `newbatch` (`id`, `login_id`, `name`, `batch`, `date`, `time`, `instructor`) VALUES
(25, 1, 'niro', 'A', '2022-04-23', '05:00', 'das'),
(26, 1, 'niro', 'B', '2022-04-24', '14:00', 'das'),
(27, 1, 'janu', 'A', '2022-04-25', '05:00', 'das');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(20) NOT NULL,
  `username` varchar(100) NOT NULL,
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

INSERT INTO `payment` (`id`, `username`, `name`, `number`, `date`, `cvv`, `amount`, `login_id`) VALUES
(16, 'niro', 'nirosha', '8974563210233', '2022-04-24', '222', '10000', 0),
(17, 'niro', 'Nirosha', '1112223336665', '2022-04-25', '222', '15000', 0),
(18, 'janu', 'Janaki', '4441112225556', '2022-04-30', '233', '15000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_tb`
--

CREATE TABLE `product_tb` (
  `id` int(11) NOT NULL,
  `product` varchar(200) NOT NULL,
  `details` varchar(40) NOT NULL,
  `price` varchar(200) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_tb`
--

INSERT INTO `product_tb` (`id`, `product`, `details`, `price`, `image_path`, `status`) VALUES
(11, 'dumbel', 'ten kg', '123', 'profile/4.PNG', '1'),
(12, 'asdfg', 'ASDFGH', '524', 'profile/g6.jpg', '1'),
(13, 'weightcube', '5kg', '800', 'profile/images.jpg', '1');

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
(13, 21, 'das', 'das@gmail.com', '7777777777', 'male', '1669778104.jpg'),
(14, 22, 'ramu', 'ramu@gmail.com', '8888888888', 'male', '1085716523.jpg'),
(15, 25, 'eldho', 'eldho@gmail.com', '9898998789', 'male', '1623835244.jpg'),
(16, 26, 'jayan', 'jayan@gmail.com', '7878787878', 'male', '2023538373.jpg');

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
  `age` varchar(110) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `image_path` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register1`
--

INSERT INTO `register1` (`reg_id`, `login_id`, `name`, `email`, `mobile`, `gender`, `age`, `weight`, `address`, `image_path`) VALUES
(14, 33, 'midhun c b', 'midhun141214@gmail.com', '8129003665', 'male', '40', '50', 'pkd', 'profile/Koala.jpg'),
(15, 34, 'abhinav s', 'abhi123@gmail.com', '9846588296', 'male', '30', '55', 'pkd', 'profile/images.jpg'),
(16, 35, 'jasnu', 'janu@gmail.com', '3685201520', 'male', '25', '65', 'pkd', 'profile/download (1).jpg'),
(17, 36, 'niro', 'niro@gmail.com', '9996663330', 'female', '25', '48', 'pkd', 'profile/51.PNG'),
(18, 37, 'sachin', 'sachin@gmail.com', '8889996664', 'male', '26', '50', 'palakkad', 'profile/52.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `trainer_name` varchar(40) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `work_time` varchar(40) NOT NULL,
  `work_day` varchar(40) NOT NULL,
  `login_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `trainer_name`, `user_name`, `work_time`, `work_day`, `login_id`) VALUES
(9, 'das', 'nnn', '23', '23', 0),
(10, 'das', 'nnn', '12', '12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transform`
--

CREATE TABLE `transform` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `wheight` varchar(40) NOT NULL,
  `bmii_index` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transform`
--

INSERT INTO `transform` (`id`, `username`, `wheight`, `bmii_index`) VALUES
(16, 'sharu', '65', '2 gm/kg'),
(17, 'shara', '50', '1.5 gm/kg'),
(18, 'janu', '60', '23.10');

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
-- Indexes for table `couple_fees`
--
ALTER TABLE `couple_fees`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `fam_fees`
--
ALTER TABLE `fam_fees`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_tb`
--
ALTER TABLE `fees_tb`
  ADD PRIMARY KEY (`fees_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chatbox`
--
ALTER TABLE `chatbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `couple_fees`
--
ALTER TABLE `couple_fees`
  MODIFY `c_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fam_fees`
--
ALTER TABLE `fam_fees`
  MODIFY `f_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fees_tb`
--
ALTER TABLE `fees_tb`
  MODIFY `fees_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `health`
--
ALTER TABLE `health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `healthfood`
--
ALTER TABLE `healthfood`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `medical`
--
ALTER TABLE `medical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `medical_doubts`
--
ALTER TABLE `medical_doubts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newbatch`
--
ALTER TABLE `newbatch`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_tb`
--
ALTER TABLE `product_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `reg_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `register1`
--
ALTER TABLE `register1`
  MODIFY `reg_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transform`
--
ALTER TABLE `transform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
