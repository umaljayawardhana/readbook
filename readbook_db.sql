-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2021 at 05:43 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `readbook_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `content_i_follow`
--

CREATE TABLE `content_i_follow` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `contentid` bigint(20) NOT NULL,
  `content_type` varchar(10) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_invites`
--

CREATE TABLE `group_invites` (
  `id` bigint(20) NOT NULL,
  `groupid` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `inviter` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `groupid` bigint(20) NOT NULL,
  `role` varchar(9) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_requests`
--

CREATE TABLE `group_requests` (
  `id` bigint(20) NOT NULL,
  `groupid` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `likes` text NOT NULL,
  `contentid` bigint(20) NOT NULL,
  `following` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `msgid` varchar(60) NOT NULL,
  `sender` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `message` text DEFAULT NULL,
  `file` varchar(500) DEFAULT NULL,
  `received` tinyint(1) NOT NULL DEFAULT 0,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_sender` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_receiver` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `tags` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `activity` varchar(10) NOT NULL,
  `contentid` bigint(20) NOT NULL,
  `content_owner` bigint(20) NOT NULL,
  `content_type` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification_seen`
--

CREATE TABLE `notification_seen` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(19) NOT NULL,
  `postid` bigint(19) NOT NULL,
  `userid` bigint(19) NOT NULL,
  `post` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `comments` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `has_image` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `postid`, `userid`, `post`, `image`, `comments`, `likes`, `date`, `has_image`) VALUES
(5, 786757908498633933, 52607500902, '  There\'s nothing more satisfying than seeing a happy and smiling child. I always help in any way I can, even if it\'s just by signing an autograph. A child\'s smile is worth more than all the money in the world.', '', 0, 0, '2021-06-20 23:25:13', 0),
(7, 46267786876000, 52607500902, '  I\'m lucky to be part of a team who help to make me look good, and they deserve as much of the credit for my success as I do for the hard work we have all put in on the training ground.', '', 0, 0, '2021-06-20 12:57:07', 0),
(8, 7417349922, 52607500902, '  check', '', 0, 0, '2021-06-20 14:22:56', 0),
(9, 685645725431545, 79410643377388319, ' check my post', '', 0, 0, '2021-06-20 14:23:33', 0),
(10, 18327970205942241, 91, '  check my commnet', '', 0, 0, '2021-06-20 14:25:03', 0),
(11, 641610882374384312, 52607500902, '  hi', '', 0, 0, '2021-06-21 02:28:35', 0),
(12, 9478268519768, 52607500902, '  bug test', '', 0, 0, '2021-06-21 14:30:36', 0),
(13, 6947512822206559, 52607500902, '  yep', '', 0, 0, '2021-06-22 02:31:19', 0),
(36, 945054873052, 52607500902, '  ', '', 0, 0, '2021-06-22 20:43:08', 0),
(38, 391314137, 52607500902, '  l', '', 0, 0, '2021-06-22 21:13:07', 0),
(39, 6309013155091540597, 52607500902, '  hello how are you', '', 0, 0, '2021-06-22 21:13:41', 0),
(40, 46668910474369, 52607500902, '  ', '', 0, 0, '2021-06-22 21:16:46', 0),
(41, 679035534, 52607500902, '  ', '', 0, 0, '2021-06-22 21:17:45', 0),
(42, 216365979184529, 52607500902, '  2021.0623 3.19am', '', 0, 0, '2021-06-22 21:49:16', 0),
(43, 3293376, 52607500902, '  ', 'uploads/52607500902/zw9MpgbK0uEAWPm.jpg', 0, 0, '2021-06-22 21:49:30', 1),
(44, 180720765538074918, 52607500902, '  this is my first image ', 'uploads/52607500902/DcEtB8RzzNlsuO1.jpg', 0, 0, '2021-06-22 21:50:17', 1),
(45, 5808299196, 52607500902, '  ', 'uploads/52607500902/lF0nPm48Az5waNo.jpg', 0, 0, '2021-06-22 22:35:33', 1),
(46, 5874085953410, 52607500902, '  ', 'uploads/52607500902/e138ILTmR1GaMIt.jpg', 0, 0, '2021-06-24 02:15:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(19) NOT NULL,
  `userid` bigint(19) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `url_address` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `profile_image` varchar(1000) NOT NULL,
  `cover_image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userid`, `first_name`, `last_name`, `gender`, `email`, `password`, `url_address`, `date`, `profile_image`, `cover_image`) VALUES
(11, 52607500902, 'Leo', 'Messi', 'Male', 'leo@gmail.com', 'leo123', 'leo.messi', '2021-06-22 20:22:20', 'uploads/52607500902/F83K8Jyah8kS04Q.jpg', 'uploads/52607500902/Jw8gK9ThYDZhZit.jpg'),
(12, 91, 'Umal', 'Jayawardhana', 'Male', 'umal@gmail.com', 'umal1234', 'umal.jayawardhana', '2021-06-20 05:16:04', '', ''),
(13, 79410643377388319, 'Sanduni', 'Hansika', 'Female', 'sanduni@gmail.com', 'sanduni123', 'sanduni.hansika', '2021-06-20 13:53:17', '', ''),
(14, 958622433918610, 'Gaya', 'Sewmini', 'Female', 'gaya@gmail.com', 'gaya123', 'gaya.sewmini', '2021-06-20 14:26:13', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content_i_follow`
--
ALTER TABLE `content_i_follow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `group_invites`
--
ALTER TABLE `group_invites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `inviter` (`inviter`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `group_requests`
--
ALTER TABLE `group_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `disabled` (`disabled`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `contentid` (`contentid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `msgid` (`msgid`),
  ADD KEY `sender` (`sender`),
  ADD KEY `receiver` (`receiver`),
  ADD KEY `received` (`received`),
  ADD KEY `seen` (`seen`),
  ADD KEY `deleted_sender` (`deleted_sender`),
  ADD KEY `date` (`date`),
  ADD KEY `deleted_receiver` (`deleted_receiver`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `contentid` (`contentid`),
  ADD KEY `content_owner` (`content_owner`),
  ADD KEY `date` (`date`);

--
-- Indexes for table `notification_seen`
--
ALTER TABLE `notification_seen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postid` (`postid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `comments` (`comments`),
  ADD KEY `likes` (`likes`),
  ADD KEY `date` (`date`),
  ADD KEY `has_image` (`has_image`);
ALTER TABLE `posts` ADD FULLTEXT KEY `post` (`post`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `gender` (`gender`),
  ADD KEY `email` (`email`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `date` (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content_i_follow`
--
ALTER TABLE `content_i_follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `group_invites`
--
ALTER TABLE `group_invites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `group_requests`
--
ALTER TABLE `group_requests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `notification_seen`
--
ALTER TABLE `notification_seen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
