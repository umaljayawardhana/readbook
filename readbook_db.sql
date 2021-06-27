-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 02:34 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

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

--
-- Dumping data for table `content_i_follow`
--

INSERT INTO `content_i_follow` (`id`, `userid`, `contentid`, `content_type`, `disabled`, `date`) VALUES
(6, 25939, 6557815044, 'post', 0, '2021-06-27 12:36:36'),
(7, 25939, 6557815044, 'post', 0, '2021-06-27 12:57:36'),
(8, 25939, 756068441541941757, 'post', 0, '2021-06-27 13:01:10'),
(9, 6834228454, 842546370, 'post', 0, '2021-06-27 13:35:18'),
(10, 514802751519051155, 6557815044, 'post', 0, '2021-06-27 13:43:36'),
(11, 6834228454, 5478544, 'post', 0, '2021-06-27 13:49:04'),
(12, 3276602400, 6557815044, 'post', 0, '2021-06-27 13:57:58'),
(13, 6834228454, 2962259815, 'post', 0, '2021-06-27 14:04:54');

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

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `type`, `likes`, `contentid`, `following`) VALUES
(12, 'post', '[{\"userid\":\"4138417691187\",\"date\":\"2021-06-27 11:25:03\"}]', 50436544316, ''),
(13, 'user', '[[[{\"userid\":\"25939\",\"date\":\"2021-06-27 12:21:51\"}],{\"userid\":\"514802751519051155\",\"date\":\"2021-06-27 13:40:36\"}],{\"userid\":\"3276602400\",\"date\":\"2021-06-27 13:55:30\"}]', 6834228454, '[{\"userid\":\"25939\",\"date\":\"2021-06-27 13:31:50\"},{\"userid\":\"514802751519051155\",\"date\":\"2021-06-27 13:50:05\"},{\"userid\":\"3276602400\",\"date\":\"2021-06-27 14:04:12\"}]'),
(14, 'user', '[[[[[null,{\"userid\":\"6834228454\",\"date\":\"2021-06-27 13:29:51\"}],{\"userid\":\"6834228454\",\"date\":\"2021-06-27 13:31:50\"}],{\"userid\":\"25939\",\"date\":\"2021-06-27 13:32:51\"}],{\"userid\":\"25939\",\"date\":\"2021-06-27 13:32:54\"}],{\"userid\":\"3276602400\",\"date\":\"2021-06-27 14:00:43\"}]', 25939, '[{\"userid\":\"6834228454\",\"date\":\"2021-06-27 12:21:51\"}]'),
(15, 'post', '[[[[[{\"userid\":\"4138417691187\",\"date\":\"2021-06-27 12:21:56\"},{\"userid\":\"56188065\",\"date\":\"2021-06-27 12:35:10\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:40:43\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:40:46\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:40:47\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:55:42\"}]', 6557815044, ''),
(16, 'post', '[[{\"userid\":\"4138417691187\",\"date\":\"2021-06-27 12:21:58\"},{\"userid\":\"56188065\",\"date\":\"2021-06-27 12:53:28\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:40:49\"}]', 756068441541941757, ''),
(17, 'post', '[[{\"userid\":\"4138417691187\",\"date\":\"2021-06-27 12:22:00\"},{\"userid\":\"56188065\",\"date\":\"2021-06-27 12:35:34\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:40:52\"}]', 61483640728370739, ''),
(18, 'post', '[[[{\"userid\":\"56188065\",\"date\":\"2021-06-27 12:35:38\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:32:14\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:40:54\"}]', 53949, ''),
(19, 'post', '[[{\"userid\":\"56188065\",\"date\":\"2021-06-27 12:28:47\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:40:56\"}]', 668751, ''),
(20, 'post', '[{\"userid\":\"6834228454\",\"date\":\"2021-06-27 13:02:08\"}]', 406885, ''),
(21, 'post', '[{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:33:26\"}]', 842546370, ''),
(22, 'post', '[{\"userid\":\"6834228454\",\"date\":\"2021-06-27 13:35:23\"}]', 167904325662732423, ''),
(23, 'post', '[{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:36:06\"}]', 7631, ''),
(24, 'post', '[{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:36:08\"}]', 1497, ''),
(25, 'post', '[{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:36:11\"}]', 65385109, ''),
(26, 'post', '[{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:36:13\"}]', 93901705467, ''),
(27, 'post', '[{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:36:16\"}]', 3020126991902156105, ''),
(28, 'post', '[{\"userid\":\"25939\",\"date\":\"2021-06-27 13:37:22\"}]', 591572902, ''),
(29, 'user', '[[null,{\"userid\":\"6834228454\",\"date\":\"2021-06-27 13:50:04\"}],{\"userid\":\"3276602400\",\"date\":\"2021-06-27 14:01:05\"}]', 514802751519051155, '[{\"userid\":\"6834228454\",\"date\":\"2021-06-27 13:40:37\"}]'),
(30, 'post', '[[{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:47:10\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:47:52\"}]', 5478544, ''),
(31, 'user', '[null,{\"userid\":\"6834228454\",\"date\":\"2021-06-27 14:04:12\"}]', 3276602400, '[{\"userid\":\"6834228454\",\"date\":\"2021-06-27 13:55:30\"},{\"userid\":\"25939\",\"date\":\"2021-06-27 14:00:43\"},{\"userid\":\"514802751519051155\",\"date\":\"2021-06-27 14:01:05\"}]'),
(32, 'post', '[[{\"userid\":\"56188065\",\"date\":\"2021-06-27 13:55:59\"}],{\"userid\":\"56188065\",\"date\":\"2021-06-27 14:08:39\"}]', 5946218647934, ''),
(33, 'post', '[{\"userid\":\"56188065\",\"date\":\"2021-06-27 14:04:15\"}]', 2962259815, ''),
(34, 'post', '[{\"userid\":\"6834228454\",\"date\":\"2021-06-27 14:04:58\"}]', 5981231575, ''),
(35, 'post', '[{\"userid\":\"56188065\",\"date\":\"2021-06-27 14:08:42\"}]', 19208601834, '');

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

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `userid`, `activity`, `contentid`, `content_owner`, `content_type`, `date`) VALUES
(29, 0, 'like', 50436544316, 8183352, 'post', '2021-06-27 11:25:03'),
(30, 25939, 'follow', 6834228454, 6834228454, 'profile', '2021-06-27 12:21:52'),
(31, 0, 'like', 6557815044, 6834228454, 'post', '2021-06-27 12:21:56'),
(32, 0, 'like', 756068441541941757, 6834228454, 'post', '2021-06-27 12:21:58'),
(33, 0, 'like', 61483640728370739, 6834228454, 'post', '2021-06-27 12:22:00'),
(34, 0, 'like', 53949, 6834228454, 'post', '2021-06-27 12:28:45'),
(35, 0, 'like', 668751, 6834228454, 'post', '2021-06-27 12:28:48'),
(36, 0, 'like', 6557815044, 6834228454, 'post', '2021-06-27 12:35:07'),
(37, 0, 'like', 6557815044, 6834228454, 'post', '2021-06-27 12:35:10'),
(38, 0, 'like', 756068441541941757, 6834228454, 'post', '2021-06-27 12:35:32'),
(39, 0, 'like', 61483640728370739, 6834228454, 'post', '2021-06-27 12:35:34'),
(40, 0, 'like', 53949, 6834228454, 'post', '2021-06-27 12:35:38'),
(41, 25939, 'comment', 6557815044, 6834228454, 'post', '2021-06-27 12:36:36'),
(42, 0, 'like', 756068441541941757, 6834228454, 'post', '2021-06-27 12:53:28'),
(43, 25939, 'comment', 6557815044, 6834228454, 'post', '2021-06-27 12:57:37'),
(44, 25939, 'comment', 756068441541941757, 6834228454, 'post', '2021-06-27 13:01:10'),
(45, 6834228454, 'like', 406885, 25939, 'comment', '2021-06-27 13:02:09'),
(46, 6834228454, 'follow', 25939, 25939, 'profile', '2021-06-27 13:31:50'),
(47, 0, 'like', 53949, 6834228454, 'post', '2021-06-27 13:32:14'),
(48, 0, 'like', 842546370, 25939, 'post', '2021-06-27 13:33:26'),
(49, 6834228454, 'comment', 842546370, 25939, 'post', '2021-06-27 13:35:18'),
(50, 6834228454, 'like', 167904325662732423, 6834228454, 'comment', '2021-06-27 13:35:23'),
(51, 0, 'like', 7631, 25939, 'post', '2021-06-27 13:36:06'),
(52, 0, 'like', 1497, 25939, 'post', '2021-06-27 13:36:09'),
(53, 0, 'like', 65385109, 25939, 'post', '2021-06-27 13:36:11'),
(54, 0, 'like', 93901705467, 25939, 'post', '2021-06-27 13:36:13'),
(55, 0, 'like', 3020126991902156105, 25939, 'post', '2021-06-27 13:36:16'),
(56, 25939, 'like', 591572902, 25939, 'comment', '2021-06-27 13:37:22'),
(57, 514802751519051155, 'follow', 6834228454, 6834228454, 'profile', '2021-06-27 13:40:37'),
(58, 0, 'like', 6557815044, 6834228454, 'post', '2021-06-27 13:40:44'),
(59, 0, 'like', 6557815044, 6834228454, 'post', '2021-06-27 13:40:46'),
(60, 0, 'like', 6557815044, 6834228454, 'post', '2021-06-27 13:40:47'),
(61, 0, 'like', 756068441541941757, 6834228454, 'post', '2021-06-27 13:40:49'),
(62, 0, 'like', 61483640728370739, 6834228454, 'post', '2021-06-27 13:40:52'),
(63, 0, 'like', 53949, 6834228454, 'post', '2021-06-27 13:40:54'),
(64, 0, 'like', 668751, 6834228454, 'post', '2021-06-27 13:40:56'),
(65, 514802751519051155, 'comment', 6557815044, 6834228454, 'post', '2021-06-27 13:43:36'),
(66, 0, 'like', 5478544, 514802751519051155, 'post', '2021-06-27 13:47:10'),
(67, 0, 'like', 5478544, 514802751519051155, 'post', '2021-06-27 13:47:52'),
(68, 6834228454, 'comment', 5478544, 514802751519051155, 'post', '2021-06-27 13:49:04'),
(69, 6834228454, 'follow', 514802751519051155, 514802751519051155, 'profile', '2021-06-27 13:50:05'),
(70, 3276602400, 'follow', 6834228454, 6834228454, 'profile', '2021-06-27 13:55:30'),
(71, 0, 'like', 6557815044, 6834228454, 'post', '2021-06-27 13:55:42'),
(72, 0, 'like', 5946218647934, 3276602400, 'post', '2021-06-27 13:55:59'),
(73, 3276602400, 'comment', 6557815044, 6834228454, 'post', '2021-06-27 13:57:58'),
(74, 3276602400, 'follow', 25939, 25939, 'profile', '2021-06-27 14:00:44'),
(75, 3276602400, 'follow', 514802751519051155, 514802751519051155, 'profile', '2021-06-27 14:01:05'),
(76, 6834228454, 'follow', 3276602400, 3276602400, 'profile', '2021-06-27 14:04:13'),
(77, 0, 'like', 2962259815, 3276602400, 'post', '2021-06-27 14:04:16'),
(78, 6834228454, 'comment', 2962259815, 3276602400, 'post', '2021-06-27 14:04:54'),
(79, 6834228454, 'like', 5981231575, 6834228454, 'comment', '2021-06-27 14:04:58'),
(80, 0, 'like', 5946218647934, 3276602400, 'post', '2021-06-27 14:08:39'),
(81, 0, 'like', 19208601834, 3276602400, 'post', '2021-06-27 14:08:42');

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
  `id` bigint(20) NOT NULL,
  `postid` bigint(20) NOT NULL,
  `post` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `has_image` tinyint(1) NOT NULL,
  `is_profile_image` tinyint(1) NOT NULL,
  `is_cover_image` tinyint(1) NOT NULL,
  `parent` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `userid` bigint(20) NOT NULL,
  `likes` int(11) NOT NULL,
  `comments` int(11) NOT NULL,
  `tags` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `postid`, `post`, `image`, `has_image`, `is_profile_image`, `is_cover_image`, `parent`, `date`, `userid`, `likes`, `comments`, `tags`) VALUES
(32, 20312352969328018, '', 'uploads/8183352/pO7HQSBujZ1h2Mw.jpg', 1, 1, 0, 0, '2021-06-27 14:49:52', 8183352, 0, 0, '[]'),
(33, 50436544316, '', 'uploads/8183352/ZwvPnUu6ZTqNbea.jpg', 1, 0, 1, 0, '2021-06-27 14:50:07', 8183352, 1, 1, '[]'),
(34, 802385941, 'good book', '', 0, 0, 0, 50436544316, '2021-06-27 14:51:48', 8183352, 0, 0, '[]'),
(35, 668751, '', 'uploads/6834228454/tCi4YNm7aqOqVtv.jpg', 1, 1, 0, 0, '2021-06-27 15:25:21', 6834228454, 2, 0, '[]'),
(36, 53949, '', 'uploads/6834228454/CbT1VS4MhIbPnHf.jpg', 1, 0, 1, 0, '2021-06-27 15:25:32', 6834228454, 3, 0, '[]'),
(39, 61483640728370739, 'The volume contains a Prologue for readers who have not read The Hobbit, and background information to set the stage for the novel. The body of the volume consists of Book I: The Ring Sets Out, and Book II: The Ring Goes South.', 'uploads/6834228454/6FsVqS6aTQ9XZ0e.jpg', 1, 0, 0, 0, '2021-06-27 15:31:44', 6834228454, 3, 0, '[]'),
(40, 756068441541941757, 'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.', 'uploads/6834228454/brzM1MauQt24ajB.jpg', 1, 0, 0, 0, '2021-06-27 15:40:27', 6834228454, 3, 2, '[]'),
(41, 6557815044, '“But Sauron was not of mortal flesh, and though he was robbed now of that shape in which had wrought so great an evil, so that he could never again appear fair to the eyes of Men, yet his spirit arose out of the deep and passed as a shadow and a black wind over the sea, and came back to Middle-earth and to Mordor that was his home. There he took up again his great Ring in Barad-dur, and dwelt there, dark and silent, until he wrought himself a new guise, an image of malice and hatred made visible; and the Eye of Sauron the Terrible few could endure.”', 'uploads/6834228454/0FZZkx0VQVGRFg0.jpg', 1, 0, 0, 0, '2021-06-27 15:46:09', 6834228454, 6, 3, '[]'),
(43, 3020126991902156105, '', 'uploads/25939/nOtUkjfFQb8dja1.jpg', 1, 1, 0, 0, '2021-06-27 16:07:15', 25939, 1, 0, '[]'),
(44, 93901705467, '', 'uploads/25939/d6a5ZXLPMbSHG0e.jpg', 1, 0, 1, 0, '2021-06-27 16:08:52', 25939, 1, 0, '[]'),
(45, 65385109, '', 'uploads/25939/3FRjgcccuOp3tbA.jpg', 1, 1, 0, 0, '2021-06-27 16:10:03', 25939, 1, 0, '[]'),
(46, 1497, 'Harry, Ron and Hermoine return to Hogwarts just as they learn about Sirius Black and his plans to kill Harry. However, when Harry runs into him, he learns that the truth is far from reality.', 'uploads/25939/QAgPzIkEtap8Kms.jpg', 1, 0, 0, 0, '2021-06-27 16:15:13', 25939, 1, 0, '[]'),
(47, 7631, 'When Harry is chosen as a fourth participant of the inter-school Triwizard Tournament, he is unwittingly pulled into a dark conspiracy that endangers his life.', 'uploads/25939/zHuZ5uX5P2ogYBc.jpg', 1, 0, 0, 0, '2021-06-27 16:19:10', 25939, 1, 0, '[]'),
(48, 842546370, 'Harry, Ron and Hermione race against time to destroy the remaining Horcruxes. Meanwhile, the students and teachers unite to defend Hogwarts against Lord Voldemort and the Death Eaters.\r\n#Harry Potter and the Deathly Hallows', 'uploads/25939/bGa97ZFd9qp5vDT.jpg', 1, 0, 0, 0, '2021-06-27 16:22:26', 25939, 1, 2, '[]'),
(49, 842222828017, 'This book, while a very long, is the perfect ending of the series. It is a satisfying ending, and I would certainly recommend it to everyone I know.', 'uploads/25939/VXYKuSnGwLG32Eu.jpg', 1, 0, 0, 6557815044, '2021-06-27 16:27:37', 25939, 0, 0, '[]'),
(50, 406885, 'What thing from the Shire do Merry and Pippin find at Isengard?', '', 0, 0, 0, 756068441541941757, '2021-06-27 16:31:10', 25939, 1, 0, '[]'),
(51, 827132087099368, 'Merry and Pippn find the Longbottom leaf in a storage building after the flooding of Isengard. They each had one barrel to themselves.', '', 0, 0, 0, 756068441541941757, '2021-06-27 16:32:01', 6834228454, 0, 0, '[]'),
(52, 167904325662732423, 'There is an especially somber and scary coloration to this installment, as Harry Potter faces a perilous grown-up world', '', 0, 0, 0, 842546370, '2021-06-27 17:05:18', 6834228454, 1, 0, '[]'),
(53, 591572902, 'Thanks sir', '', 0, 0, 0, 842546370, '2021-06-27 17:06:54', 25939, 1, 0, '[]'),
(54, 779981, '', 'uploads/514802751519051155/DcxoaFBqstg1ZMk.jpg', 1, 1, 0, 0, '2021-06-27 17:09:22', 514802751519051155, 0, 0, '[]'),
(55, 9223372036854775807, '', 'uploads/514802751519051155/8bzDNv2Vi4YyZUs.jpg', 1, 0, 1, 0, '2021-06-27 17:09:37', 514802751519051155, 0, 0, '[]'),
(56, 6377623482, 'The book was a true masterpiece. Absolutely epic conclusion! 10/10 would recommend', '', 0, 0, 0, 6557815044, '2021-06-27 17:13:36', 514802751519051155, 0, 0, '[]'),
(57, 5478544, '#The History of Soccer Tactics  \r\n highly recommended\r\n', 'uploads/514802751519051155/N8Drsa3r7MLNptX.jpg', 1, 0, 0, 0, '2021-06-27 17:16:54', 514802751519051155, 2, 1, '[]'),
(58, 38859, 'I wanna learn football ??', '', 0, 0, 0, 5478544, '2021-06-27 17:19:04', 6834228454, 0, 0, '[]'),
(59, 19208601834, '', 'uploads/3276602400/Ylj8O4eZLPO8Pem.jpg', 1, 1, 0, 0, '2021-06-27 17:23:39', 3276602400, 1, 0, '[]'),
(61, 5946218647934, '', 'uploads/3276602400/3r9PiWXOMrXW0e7.jpg', 1, 0, 1, 0, '2021-06-27 17:25:11', 3276602400, 2, 0, '[]'),
(62, 897365426904, 'I\'m trying to decode your mind set', '', 0, 0, 0, 6557815044, '2021-06-27 17:27:58', 3276602400, 0, 0, '[]'),
(63, 2962259815, '', 'uploads/3276602400/pDU9FKbLAo5lId4.jpg', 1, 0, 0, 0, '2021-06-27 17:29:52', 3276602400, 1, 1, '[]'),
(64, 5981231575, 'The mass culture of childhood right now is astonishingly technical. Little kids know their Unix path punctuation so they can get around the Web, and they know their HTML and stuff. It\'s pretty shocking to me.', '', 0, 0, 0, 2962259815, '2021-06-27 17:34:54', 6834228454, 1, 0, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `profile_image` varchar(500) NOT NULL,
  `cover_image` varchar(500) NOT NULL,
  `date` year(4) NOT NULL,
  `online` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `url_address` varchar(100) NOT NULL,
  `likes` int(11) NOT NULL,
  `about` text NOT NULL,
  `tag_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userid`, `first_name`, `last_name`, `gender`, `profile_image`, `cover_image`, `date`, `online`, `email`, `password`, `url_address`, `likes`, `about`, `tag_name`) VALUES
(7, 8183352, 'nimal', 'Jayawardhana', 'Male', 'uploads/8183352/pO7HQSBujZ1h2Mw.jpg', 'uploads/8183352/ZwvPnUu6ZTqNbea.jpg', 0000, 0, 'umal@gmail.com', '16b45cc9e51d44d9a68c22dcde6bd78e113dfd55', 'umal.jayawardhana', 0, '', 'umaljayawardhana'),
(8, 6834228454, 'J.R.R.', 'Tolkien', 'Male', 'uploads/6834228454/tCi4YNm7aqOqVtv.jpg', 'uploads/6834228454/CbT1VS4MhIbPnHf.jpg', 0000, 0, 'jrr@gmail.com', 'a0e5449896308e12346f2306ad07ac346c5fae4c', 'j.r.r..tolkien', 3, 'John Ronald Reuel Tolkien CBE FRSL was an English writer, poet, philologist, and academic, best known as the author of the high fantasy works The Hobbit and The Lord of the Rings', 'j.r.r.tolkien'),
(9, 25939, 'J.K.', 'Rowling', 'Female', 'uploads/25939/3FRjgcccuOp3tbA.jpg', 'uploads/25939/d6a5ZXLPMbSHG0e.jpg', 0000, 0, 'jk@gmail.com', 'f004891b188089886ac4f9dbe62245d2eabb93d1', 'j.k..rowling', 5, '', 'j.k.rowling'),
(10, 514802751519051155, 'Leo', 'Messi', 'Male', 'uploads/514802751519051155/DcxoaFBqstg1ZMk.jpg', 'uploads/514802751519051155/8bzDNv2Vi4YyZUs.jpg', 0000, 0, 'leo@gmail.com', '44472e643f451cae2ba0460e451385f0ff31482f', 'leo.messi', 2, '', 'leomessi'),
(11, 3276602400, 'Dennis', 'Ritchie', 'Male', 'uploads/3276602400/Ylj8O4eZLPO8Pem.jpg', 'uploads/3276602400/3r9PiWXOMrXW0e7.jpg', 0000, 0, 'dennis@gmail.com', 'd1fdfd2857c80eed60c996429307151fc8bbee10', 'dennis.ritchie', 1, '', 'dennisritchie');

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
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `contentid` (`contentid`);

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
  ADD KEY `date` (`date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `userid` (`userid`),
  ADD KEY `likes` (`likes`),
  ADD KEY `comments` (`comments`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `date` (`date`),
  ADD KEY `online` (`online`),
  ADD KEY `email` (`email`),
  ADD KEY `url_address` (`url_address`),
  ADD KEY `likes` (`likes`),
  ADD KEY `tag_name` (`tag_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content_i_follow`
--
ALTER TABLE `content_i_follow`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `notification_seen`
--
ALTER TABLE `notification_seen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
