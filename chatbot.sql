-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2022 at 07:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_hints`
--

CREATE TABLE `chat_hints` (
  `id` int(11) NOT NULL,
  `question` varchar(256) NOT NULL,
  `answer` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_hints`
--

INSERT INTO `chat_hints` (`id`, `question`, `answer`) VALUES
(1, 'hi|hello|h', 'hello, how are you ?'),
(2, 'how are you', 'Im good, how you doing?'),
(3, 'whats your name', 'Im a bot, i can answer all your queries'),
(4, 'can you be quick', 'Yes, absolutely, always try my best');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `type` text NOT NULL,
  `message` text NOT NULL,
  `timer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`type`, `message`, `timer`) VALUES
('user', 'how are you', '2022-04-16 07:29:15'),
('bot', 'Im good, how you doing?', '2022-04-16 07:29:15'),
('user', 'hi', '2022-04-16 07:30:57'),
('bot', 'hello, how are you ?', '2022-04-16 07:30:57'),
('user', 'hi', '2022-04-16 07:34:56'),
('bot', 'hello, how are you ?', '2022-04-16 07:34:56'),
('user', 'hi', '2022-04-16 07:35:09'),
('bot', 'hello, how are you ?', '2022-04-16 07:35:09'),
('user', 'hi', '2022-04-16 07:39:40'),
('bot', 'hello, how are you ?', '2022-04-16 07:39:40'),
('user', 'hi', '2022-04-16 07:39:54'),
('bot', 'hello, how are you ?', '2022-04-16 07:39:54'),
('user', 'whats your name', '2022-04-16 07:48:42'),
('bot', 'Im a bot, i can answer all your queries', '2022-04-16 07:48:42'),
('user', 'h', '2022-04-16 07:53:57'),
('bot', 'hello, how are you ?', '2022-04-16 07:53:57'),
('user', 'lol', '2022-04-16 07:54:07'),
('bot', 'no data', '2022-04-16 07:54:07'),
('user', 'how are you', '2022-04-16 07:54:14'),
('bot', 'Im good, how you doing?', '2022-04-16 07:54:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_hints`
--
ALTER TABLE `chat_hints`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_hints`
--
ALTER TABLE `chat_hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
