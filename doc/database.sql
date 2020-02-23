-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2020 at 10:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `blogi2`
--
CREATE DATABASE IF NOT EXISTS `blogi2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blogi2`;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(5, 'Alice in Wonderland, part dos', '\'You ought to be ashamed of yourself for asking such a simple question,\' added the Gryphon; and then they both sat silent and looked at poor Alice, who felt ready to sink into the earth. At last the Gryphon said to the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' and he went on in these words:\r\n    \'Yes, we went to school in the sea, though you mayn\'t believe it—\'\r\n    \'I never said I didn\'t!\' interrupted Alice.\r\n    \'You did,\' said the Mock Turtle.', '2020-02-23 14:05:10', 1),
(6, 'Revolution has begun!', '\'I am bound to Tahiti for more men.\'\r\n        \'Very good. Let me board you a moment—I come in peace.\' With that he leaped from the canoe, swam to the boat; and climbing the gunwale, stood face to face with the captain.\r\n        \'Cross your arms, sir; throw back your head.', '2020-02-23 14:05:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `is_admin`, `password`, `email`, `deleted`, `name`) VALUES
(1, 1, '$2y$10$vTje.ndUFKHyuotY99iYkO.2aHJUgOsy2x0RMXP1UmrTe6CQsKbtm', 'demo@example.com', 0, 'Demo User');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
