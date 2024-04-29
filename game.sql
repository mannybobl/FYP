-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 12:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(255) DEFAULT NULL,
  `image` text NOT NULL,
  `heading` varchar(255) NOT NULL,
  `dcp` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `image`, `heading`, `dcp`) VALUES
(1, '27157-kaicenat.jpg', 'The Gamers LFG', '\"Hey there! I\'m CDLshaf, an avid gamer with a passion for fostering inclusive gaming communities. Whether it\'s teaming up for epic quests or just hanging out in-game, I believe in creating spaces where everyone feels welcome and valued. With a commitment to tackling cyberbullying, loneliness, and promoting gender diversity, I\'m here to connect with like-minded gamers who share the same vision. Let\'s embark on exciting adventures together and make gaming a more inclusive and enjoyable experience for all!\"');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Muhammad Moiz', 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) DEFAULT NULL,
  `image` text NOT NULL,
  `heading` varchar(255) NOT NULL,
  `dcp` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `image`, `heading`, `dcp`) VALUES
(NULL, '15378-sketch.avif', 'The Gamers LFG', '');

-- --------------------------------------------------------

--
-- Table structure for table `en_rolluser`
--

CREATE TABLE `en_rolluser` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `maicrophone` varchar(255) NOT NULL,
  `future` varchar(255) NOT NULL,
  `paltform` varchar(255) NOT NULL,
  `con_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `en_rolluser`
--

INSERT INTO `en_rolluser` (`id`, `post_id`, `name`, `maicrophone`, `future`, `paltform`, `con_message`) VALUES
(9, 19, 'hi', 'Yes', 'Now', 'Cross', ''),
(10, 19, 'qweere', 'Yes', 'Now', 'Only on my platform', '');

-- --------------------------------------------------------

--
-- Table structure for table `game_post`
--

CREATE TABLE `game_post` (
  `id` int(11) NOT NULL,
  `person_need` varchar(255) NOT NULL,
  `post_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `user_id` int(255) NOT NULL,
  `game_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_post`
--

INSERT INTO `game_post` (`id`, `person_need`, `post_name`, `date`, `time`, `user_id`, `game_id`) VALUES
(19, '1 ', 'hello', '2024-10-10', '20:00:00', 8, 4),
(20, '134 ', 'hello', '2024-04-05', '10:00:00', 9, 7),
(21, ' ', '', '0000-00-00', '00:00:00', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `game_services`
--

CREATE TABLE `game_services` (
  `id` int(255) NOT NULL,
  `image` text NOT NULL,
  `heading` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_services`
--

INSERT INTO `game_services` (`id`, `image`, `heading`) VALUES
(3, '73033-fortnite.jpg', 'Fortnite'),
(4, '37290-destiny-2.avif', 'Destiny 2'),
(5, '87148-mw3.jpg', 'Call of Duty'),
(6, '4013-valorant.jpg', 'Valorant'),
(7, '62621-apex-legends.jpg', 'Apex Legends'),
(8, '18169-csgo.png', 'CSGO'),
(9, '37400-other.webp', 'Other Games');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `dcp` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image`, `dcp`) VALUES
(NULL, '17700-games-removebg-preview.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `dcp` varchar(1000) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `dcp`, `designation`) VALUES
(2, 'jynxzi', '17031-jynxzi.jpg', 'Okay, so I gotta spill the beans about this LFG site—it\'s legit changed my gaming life. Before, I was kinda just doing my own thing, flying solo in the gaming world. But then I stumbled upon this site, and boom, suddenly I\'ve got this crew of awesome people to game with. It\'s wild how quickly we clicked, you know? Like, we\'re from all over the place, different backgrounds, but when we\'re gaming, none of that matters. We\'re just a bunch of friends having a blast together. And the best part? It\'s not just about the games. We chat about everything under the sun, from memes to life stuff. It\'s like a little online hangout spot where I can always find someone to chill with. So yeah, big shoutout to this site for bringing us all together. It\'s been a game-changer, literally!', 'R6 Content Creator'),
(3, 'Sketch', '73347-sketch.avif', 'Hey, so I gotta shout out this LFG website because it\'s basically become my go-to spot for finding awesome gaming buddies. Seriously, I\'ve met some of the coolest people ever on there! Like, it\'s not just about finding folks to play with; it\'s about making real connections. I\'ve gone from solo gaming to having this tight-knit crew that I can always count on for a good time. We\'ve shared victories, suffered defeats, and laughed our butts off through it all. It\'s like having a second family, but one that totally gets my obsession with gaming. So yeah, if you\'re looking to level up your gaming experience and maybe make some lifelong friends along the way, definitely give this site a shot!', 'Content Creator');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `confirm_password`) VALUES
(8, 'hello', 'hello@gngo.com', '123', '123'),
(9, 'hello', 'hello@bob.com', '123', '123'),
(10, 'manny', 'manny1@outlook.com', 'manny1', 'manny1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `en_rolluser`
--
ALTER TABLE `en_rolluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_post`
--
ALTER TABLE `game_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_services`
--
ALTER TABLE `game_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `en_rolluser`
--
ALTER TABLE `en_rolluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `game_post`
--
ALTER TABLE `game_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `game_services`
--
ALTER TABLE `game_services`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
