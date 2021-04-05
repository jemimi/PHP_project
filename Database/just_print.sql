-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 05, 2021 at 05:32 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `just_print`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(20) UNSIGNED NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `text` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `time` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `text`, `time`) VALUES
(1, 6, 'Can I print your product ? ', '2021-03-28'),
(2, 1, 'Yes you can.', '2021-03-28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) UNSIGNED NOT NULL,
  `shop_id` int(20) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `url` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `shop_id`, `name`, `type`, `desc`, `url`, `price`, `image`) VALUES
(1, 1, 'Money Money Money', 'jpg', 'This is a printable jpg that can be used for teaching.', NULL, '10.22', NULL),
(2, 2, 'Principles of Success', 'png', 'This is a printable png that can be used for teaching.', NULL, '17.59', NULL),
(3, 3, 'How to be an Overnight Success', 'pdf', 'This is a printable pdf that can be used for teaching.', NULL, '16.29', NULL),
(4, 2, 'Secrets of A Millionaire', 'png', 'This is a printable png that can be used for teaching.', NULL, '14.85', NULL),
(5, 1, 'Money Buys Happiness', 'pdf', 'This is a printable pdf that can be used for teaching.', NULL, '10.19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productxuser`
--

CREATE TABLE `productxuser` (
  `id` int(20) UNSIGNED NOT NULL,
  `product_id` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productxuser`
--

INSERT INTO `productxuser` (`id`, `product_id`, `user_id`) VALUES
(1, 3, 4),
(2, 5, 7),
(3, 5, 4),
(4, 1, 6),
(5, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(20) UNSIGNED NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `bio` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `bio`, `image`) VALUES
(1, 1, 'Financial Advice', 'Motivational printing services.', NULL),
(2, 3, 'Motivational Printing', 'We organize your schedule.', NULL),
(3, 2, 'Successful Strategies', 'Helpful and motivational documents.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET keybcs2 COLLATE keybcs2_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'customer'),
(3, 'seller');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `first_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `address` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `bio` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type`, `first_name`, `last_name`, `email`, `username`, `password`, `address`, `bio`, `image`) VALUES
(1, 'admin', 'Mario', 'Roberts', 'Mario.Roberts@yahoo.ca', 'Mario71', 'EGBSLjs3', '6 Samantha St.', NULL, NULL),
(2, 'admin', 'Amanda', 'Washington', 'Amanda.Washington@aol.ca', 'Amanda54', 'EGBSLjs3', '5 Claudia St.', NULL, NULL),
(3, 'user', 'Veronica', 'Robinson', 'Veronica.Robinson@gmail.ca', 'Veronica83', 'dqC8GRg4', '5 Shane St.', NULL, NULL),
(4, 'user', 'Marie', 'Rose', 'Marie.Rose@hotmail.ca', 'Marie54', 'dqC8GRg4', '8 Kristen St.', NULL, NULL),
(5, 'user', 'Shane', 'Nunez', 'Shane.Nunez@yahoo.ca', 'Shane45', 'dqC8GRg4', '9 Elizabeth St.', NULL, NULL),
(6, 'user', 'Cassandra', 'Jones', 'Cassandra.Jones@aol.ca', 'Cassandra83', 'Ew9DGQr9', '4 Brad St.', NULL, NULL),
(7, 'user', 'Sabrina', 'Horn', 'Sabrina.Horn@yahoo.ca', 'Sabrina24', 'EGBSLjs3', '7 Marie St.', NULL, NULL),
(8, 'user', 'Katherine', 'Robertson', 'Katherine.Robertson@yahoo.ca', 'Katherine12', 'AcRsCjjL', '14 Dana St.', NULL, NULL),
(10, 'user', '', NULL, '', 'new', 'new', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userxtype`
--

CREATE TABLE `userxtype` (
  `id` int(20) UNSIGNED NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `type_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userxtype`
--

INSERT INTO `userxtype` (`id`, `user_id`, `type_id`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(5, 3, 2),
(6, 4, 2),
(7, 1, 1),
(8, 5, 2),
(9, 6, 2),
(10, 7, 2),
(11, 8, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productxuser`
--
ALTER TABLE `productxuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userxtype`
--
ALTER TABLE `userxtype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productxuser`
--
ALTER TABLE `productxuser`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userxtype`
--
ALTER TABLE `userxtype`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
