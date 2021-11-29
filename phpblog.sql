-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 29, 2021 at 07:47 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `published_at`) VALUES
(1, 'Education', '2021-11-28 12:41:07'),
(2, 'Neuroscience', '2021-11-28 12:41:07'),
(3, 'Design', '2021-11-28 12:41:07'),
(4, 'Essays', '2021-11-28 12:41:07'),
(5, 'Books', '2021-11-28 12:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `published_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `content`, `author`, `published_at`) VALUES
(1, 1, '5 Reasons Why Online Learning is the Future of Education', 'The concept of traditional education has changed radically within the last couple of years. Being physically present in a classroom isn’t the only learning option anymore — not with the rise of the internet and new technologies, at least. Nowadays, you have access to a quality education whenever and wherever you want, as long as you can get online. We are now entering a new era — the revolution of online education.', 'Gemma Josep', '2021-11-28 12:41:07'),
(2, 2, 'MIT scientists discover fundamental rule of brain plasticity', 'Our brains are famously flexible, or “plastic,” because neurons can do new things by forging new or stronger connections with other neurons. But if some connections strengthen, neuroscientists have reasoned, neurons must compensate lest they become overwhelmed with input. In a new study in Science, researchers at the Picower Institute for Learning and Memory at MIT demonstrate for the first time how this balance is struck: when one connection, called a synapse, strengthens, immediately neighboring synapses weaken based on the action of a crucial protein called Arc.', 'David Orenstein', '2021-11-28 12:41:07'),
(3, 2, 'The Neuroscience of... Language', 'In this article, the latest in our “The Neuroscience of…” series, we investigate recent, leading theories about the emergence of language, the surprising phenomena that correlate with or might have preceded language, and what it means for our place in the animal kingdom.', ' Julia Masselos', '2021-11-28 12:41:07'),
(4, 4, 'Laughter in the Time of Cholera', 'The year 1832 in France still conjures up images of rebellion and barricades thanks to the enduring pathos of Victor Hugo’s Les Misérables. For the real-life Parisians, however, who inspired the novel’s iconic characters, it was not only a year of lost causes, bloody street battles, and political disillusionment. It was also, in the parlance of our times, a “pandemic year” during which thousands — more than 18,000 in Paris; 100,000 across France1 — succumbed to a wave of cholera that had been causing havoc throughout Asia, Russia, and parts of East Central Europe since the 1820s.', 'Vlad Solomon', '2021-11-28 12:41:07'),
(5, 4, 'The Dust That Measures All Our Time', 'Sand belongs to the great, diffuse class, undeclared, rarely described, but insistent and insinuating, of what may be called quasi-choate matters — among them mist, smoke, dust, snow, sugar, cinders, sleet, soap, syrup, mud, toffee, grit. Such pseudo-substances hover, drift, and ooze between consistency and dissolution, holding together even as they come apart from themselves. And, of all of these dishesive matters, sand is surely the most untrustworthy, the most shifting and shifty.', 'Steven Connor', '2021-11-28 12:41:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
