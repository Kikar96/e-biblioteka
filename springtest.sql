-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2022 at 08:52 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `springtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) NOT NULL,
  `about` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `about`, `birth_date`, `first_name`, `last_name`, `avatar`) VALUES
(4, 'fdsfsd', '2020-09-30', 'Branimir', 'Raguž', 'yeezus.jpg'),
(6, '...', '1998-02-05', 'Felix', 'Salten', ''),
(7, 'Amazing writer.', '1930-05-12', 'Agatha', 'Christie', 'agatha-christie-9247405-1-402.jpg'),
(8, 'fsafsa', '2020-10-21', 'J.K.', 'Rowling', 'download.jpeg'),
(9, 'gsdgsd', '2022-09-14', 'gsdgsd', 'gsdgsd', '');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `first_publish` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pb_fid` bigint(20) DEFAULT NULL,
  `cb_fid` bigint(20) DEFAULT NULL,
  `ab_fid` bigint(20) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `description`, `first_publish`, `title`, `pb_fid`, `cb_fid`, `ab_fid`, `cover_image`) VALUES
(20, 'Jedna od najomiljenijih pripovijetki iz životinjskog svijeta svih vremena, Bambi će očarati ne samo djecu nego i odrasle koji više nisu tako sretni da budu djeca.', 98, 'Bambi', 1, 5, 6, '169088.jpg'),
(22, 'Knjiga o drugom svjetskom ratu.', 252, 'World war 2 ', 2, 9, 4, '51QFgxxxvWL.jpg'),
(23, 'Knjiga o svjetskoj povijesti.', 985, 'World History', 1, 9, 4, '517OihiR00L.jpg'),
(24, 'Klasika', 1970, 'Ubojstvo na orient expresu', 2, 4, 7, 'cover.jpeg'),
(25, 'Najbolja knjiga za učiti svirati gitaru.', 2015, 'The Guitar Book', 2, 11, 4, '9781782744832_p0_v1_s550x406.jpg'),
(26, 'Prva knjiga odlične priče.', 1995, 'Harry Potter i kamen mudraca', 1, 18, 8, '81iqZ2HHD-L.jpg'),
(27, 'Biografija čovjeka', 2008, 'Winston Churchill', 2, 6, 4, 'eaafbc0d-dba9-4e9f-a124-fbfeb8b5742e.jpg'),
(28, 'Klasična trilogija', 1960, 'Star wars trilogija', 3, 18, 4, 'Star-Wars-Classic-Triology.jpg'),
(29, 'Sve što trebate znati o tijelu', 1980, 'Anatomija', 1, 10, 4, '61ZS7tj9x6L._SX408_BO1,204,203,200_.jpg'),
(30, '...', 1963, 'Star Wars', 1, 18, 4, '91keoYfM+nL.jpg'),
(31, 'Odlična knjiga o jednom od prvih uspješnih znanstveno fantasticnih filmova', 1985, 'Povratak u budućnost', 1, 18, 4, '61q-mnMy3ZL.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(4, 'Krimići'),
(5, 'Dječje'),
(6, 'Biografija'),
(7, 'Fantazija'),
(9, 'Povijest'),
(10, 'Medicina'),
(11, 'Glazba'),
(12, 'Krimići'),
(13, 'Drama'),
(15, 'Religija'),
(16, 'Romantika'),
(17, 'Znanost'),
(18, 'Znanstvena fantastika'),
(19, 'Udžbenici'),
(20, 'Recepti');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `user_id` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`user_id`, `book_id`) VALUES
(13, 24);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`id`, `name`) VALUES
(1, 'publisher 1'),
(2, 'publisher 2'),
(3, 'publisher 3');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `rating` float DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `br_fid` bigint(20) DEFAULT NULL,
  `ur_fid` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `text`, `br_fid`, `ur_fid`) VALUES
(1, 2, '', 29, 13),
(2, 3, 'brutalna knjiga', 29, 13);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_USER'),
(3, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`, `avatar`) VALUES
(1, 'antonio@gmail.cm', 'Antonio', 'Antonic', '12345678', 'avatar.png'),
(4, 'test2@gmail.com', 'Test2', 'testing2', '$2a$10$5oFxgLoLVqv8lwXj0PuaE.qYf6s7mNFq89AHGRSp9z2gll4fk9CK.', 'avatar.png'),
(5, 'fsafas@gmail.com', 'Ante', 'Antic', '$2a$10$cSx/GsVIKZY8oEKKLZqKWOxEuOg4T52qbHrzcfXCyUFKxbofZd8Ma', 'avatar.png'),
(6, 'milos.mihic99@gmail.com', 'Miloš', 'Mihić', '$2a$10$2iUN1uK5w9KfBSCbuO6uxe.uqReV.TVAqXGehEJr4ht2.pZJCOc9q', NULL),
(7, 'katarina@gmail.com', 'katarina', 'mihic', '$2a$10$blYgPCjPfT3z0O4tbp87fuviYVZvYbwjWg2/CCaE43P4hVCu9Gn8O', NULL),
(12, 'mihicm99@gmail.com', 'pero ', 'peric', '$2a$10$sUkB0z4tU4HcVYDCXrNipO1EHDtevm.d7DKOf4XwsEXHJeiEEKWCK', NULL),
(13, 'pero@gmail.com', 'Pero', 'Peric', '$2a$10$rm6NtKAWDfN.PMfZJsTu9u7VuZqYsndDrSN7L8KFTAR4aP/U/svoG', NULL),
(14, 'anton@gmail.com', 'anton', 'seric', '$2a$10$1dZgV8wNIvpbPz304rlqF.Vu4ooliwweSshiMUPBmoEtqBCg.7cuK', NULL),
(15, 'kristina.raguz@fpmoz.sum.ba', 'Kristina', 'Raguž', '$2a$10$CwlXTv9c/sHeljE3Iv.bs.HV.EesNdITJv.ZKysb1A62AaPTns4Pa', NULL),
(16, 'marija.majic@fpmoz.sum.ba', 'Marija', 'Majic', '$2a$10$YNVoIN9e4Zc8SyIfvDw78OUM42efXTgmR0gUtXSwV.YQSXXU1e4Pa', NULL),
(17, 'mate.jelavic@fpmoz.sum.ba', 'Mate', 'Jelavic', '$2a$10$Mnx6VXbLUVmbfPdwUevjEORSyYL0Hz/YvGocv8lue5kvXVwacEfDa', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(4, 1),
(5, 1),
(6, 1),
(1, 1),
(1, 3),
(7, 1),
(12, 1),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(15, 1),
(15, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp4a042r63utr20b3nxx56q0mr` (`pb_fid`),
  ADD KEY `FK5duiqirqilknor4ycb4hcej0f` (`cb_fid`),
  ADD KEY `FKh6k6ae70lyrlrexief6bmjj3a` (`ab_fid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD KEY `FK8fcod45iw8bxhemkkf9u0v6e4` (`book_id`),
  ADD KEY `FK6ffqdnwmm3ks4fenx2ml1uap8` (`user_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqn4oyt75yp5582gvse8avavd9` (`br_fid`),
  ADD KEY `FK6blemmlwmirvdvf0qmp15dvtp` (`ur_fid`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FKt7e7djp752sqn6w22i6ocqy6q` (`role_id`),
  ADD KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FK5duiqirqilknor4ycb4hcej0f` FOREIGN KEY (`cb_fid`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FKh6k6ae70lyrlrexief6bmjj3a` FOREIGN KEY (`ab_fid`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `FKp4a042r63utr20b3nxx56q0mr` FOREIGN KEY (`pb_fid`) REFERENCES `publishers` (`id`);

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `FK6ffqdnwmm3ks4fenx2ml1uap8` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK8fcod45iw8bxhemkkf9u0v6e4` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `FK6blemmlwmirvdvf0qmp15dvtp` FOREIGN KEY (`ur_fid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKqn4oyt75yp5582gvse8avavd9` FOREIGN KEY (`br_fid`) REFERENCES `books` (`id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKt7e7djp752sqn6w22i6ocqy6q` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
