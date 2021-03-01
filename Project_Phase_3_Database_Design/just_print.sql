-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 01, 2021 at 11:10 PM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `just_print`
--

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `text`, `time`) VALUES
(1, 6, 'Can I print your product ? ', '2021-03-28'),
(2, 1, 'Yes you can.', '2021-03-28');

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `shop_id`, `name`, `type`, `desc`, `url`, `price`, `image`) VALUES
(1, 1, 'Money Money Money', 'jpg', 'This is a printable jpg that can be used for teaching.', NULL, '10.22', NULL),
(2, 2, 'Principles of Success', 'png', 'This is a printable png that can be used for teaching.', NULL, '17.59', NULL),
(3, 3, 'How to be an Overnight Success', 'pdf', 'This is a printable pdf that can be used for teaching.', NULL, '16.29', NULL),
(4, 2, 'Secrets of A Millionaire', 'png', 'This is a printable png that can be used for teaching.', NULL, '14.85', NULL),
(5, 1, 'Money Buys Happiness', 'pdf', 'This is a printable pdf that can be used for teaching.', NULL, '10.19', NULL);

--
-- Dumping data for table `productxuser`
--

INSERT INTO `productxuser` (`id`, `product_id`, `user_id`) VALUES
(1, 3, 4),
(2, 5, 7),
(3, 5, 4),
(4, 1, 6),
(5, 2, 5);

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `bio`, `image`) VALUES
(1, 1, 'Financial Advice', 'Motivational printing services.', NULL),
(2, 3, 'Motivational Printing', 'We organize your schedule.', NULL),
(3, 2, 'Successful Strategies', 'Helpful and motivational documents.', NULL);

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'customer'),
(3, 'seller');

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `address`, `bio`, `image`) VALUES
(1, 'Mario', 'Roberts', 'Mario.Roberts@yahoo.ca', 'Mario71', 'EGBSLjs3', '6 Samantha St.', NULL, NULL),
(2, 'Amanda', 'Washington', 'Amanda.Washington@aol.ca', 'Amanda54', 'EGBSLjs3', '5 Claudia St.', NULL, NULL),
(3, 'Veronica', 'Robinson', 'Veronica.Robinson@gmail.ca', 'Veronica83', 'dqC8GRg4', '5 Shane St.', NULL, NULL),
(4, 'Marie', 'Rose', 'Marie.Rose@hotmail.ca', 'Marie54', 'dqC8GRg4', '8 Kristen St.', NULL, NULL),
(5, 'Shane', 'Nunez', 'Shane.Nunez@yahoo.ca', 'Shane45', 'dqC8GRg4', '9 Elizabeth St.', NULL, NULL),
(6, 'Cassandra', 'Jones', 'Cassandra.Jones@aol.ca', 'Cassandra83', 'Ew9DGQr9', '4 Brad St.', NULL, NULL),
(7, 'Sabrina', 'Horn', 'Sabrina.Horn@yahoo.ca', 'Sabrina24', 'EGBSLjs3', '7 Marie St.', NULL, NULL),
(8, 'Katherine', 'Robertson', 'Katherine.Robertson@yahoo.ca', 'Katherine12', 'AcRsCjjL', '14 Dana St.', NULL, NULL);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
