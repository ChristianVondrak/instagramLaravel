-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2022 at 09:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `image_id` int(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `image_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Buena foto de familia!!', '2022-10-04 10:28:57', '2022-10-04 10:28:57'),
(2, 2, 1, 'Buena foto de PLAYA!!', '2022-10-04 10:28:57', '2022-10-04 10:28:57'),
(3, 2, 4, 'que bueno!!', '2022-10-04 10:28:57', '2022-10-04 10:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `user_id`, `image_path`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'test.jpg', 'descripción de prueba 1', '2022-10-04 10:28:57', '2022-10-04 10:28:57'),
(2, 1, 'playa.jpg', 'descripción de prueba 2', '2022-10-04 10:28:57', '2022-10-04 10:28:57'),
(3, 1, 'arena.jpg', 'descripción de prueba 3', '2022-10-04 10:28:57', '2022-10-04 10:28:57'),
(4, 3, 'familia.jpg', 'descripción de prueba 4', '2022-10-04 10:28:57', '2022-10-04 10:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL,
  `image_id` int(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2022-10-04 10:28:57', '2022-10-04 10:28:57'),
(2, 2, 4, '2022-10-04 10:28:57', '2022-10-04 10:28:57'),
(3, 3, 1, '2022-10-04 10:28:57', '2022-10-04 10:28:57'),
(4, 3, 2, '2022-10-04 10:28:57', '2022-10-04 10:28:57'),
(5, 2, 1, '2022-10-04 10:28:57', '2022-10-04 10:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `surname` varchar(200) DEFAULT NULL,
  `nick` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `nick`, `email`, `password`, `image`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'user', 'Víctor', 'Robles', 'victorroblesweb', 'victor@victor.com', 'pass', NULL, '2022-10-04 10:28:57', '2022-10-04 10:28:57', NULL),
(2, 'user', 'Juan', 'Lopez', 'juanlopez', 'juan@juan.com', 'pass', NULL, '2022-10-04 10:28:57', '2022-10-04 10:28:57', NULL),
(3, 'user', 'Manolo', 'Garcia', 'manologarcia', 'manolo@manolo.com', 'pass', NULL, '2022-10-04 10:28:57', '2022-10-04 10:28:57', NULL),
(4, NULL, 'Christian', NULL, NULL, 'christian20599@gmail.com', '$2y$10$ASeGM9smjbwlsVMaguKzd.LQNhxtYE10tYHzXsioaqy18dhNbC6BG', NULL, '2022-10-04 16:56:25', '2022-10-04 16:56:25', NULL),
(5, 'user', 'Frank', 'Alonzo', 'frankjn', 'frank@frank.com', '$2y$10$ZjbES2WmHLIGShcVgzlDU.Z2EdsJSBsMYZ0xfsUwt.ASc4FdE30/e', NULL, '2022-10-04 18:12:15', '2022-10-04 18:12:15', 'w1YpmcCNBPCS1Jzht87e0zszRqIdW6PpfE67wuuHDKQCUTiBnLlZIA8V0vGC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_users` (`user_id`),
  ADD KEY `fk_comments_images` (`image_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_images_users` (`user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_likes_users` (`user_id`),
  ADD KEY `fk_likes_images` (`image_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_images` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `fk_comments_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_images_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `fk_likes_images` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `fk_likes_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
