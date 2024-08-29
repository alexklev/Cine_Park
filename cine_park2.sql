-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 29 août 2024 à 16:54
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cine_park2`
--

-- --------------------------------------------------------

--
-- Structure de la table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `main_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video_link` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `title`, `main_title`, `description`, `video_link`, `created_at`, `updated_at`) VALUES
(1, '/uploads/media_650a8acf27d2a.jpg', 'About Company', 'Helathy Foods Provider', '<div class=\"fp__about_us_text\">\r\n                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Cupiditate aspernatur molestiae\r\n                            minima pariatur consequatur voluptate sapiente deleniti soluta, animi ab necessitatibus\r\n                            optio similique quasi fuga impedit corrupti obcaecati neque consequatur sequi.</p>\r\n                        <ul><li>Delicious & Healthy Foods </li><li>Spacific Family & Kids Zone</li><li>Best Price & Offers</li><li>Made By Fresh Ingredients</li><li>Music & Other Facilities</li><li>Delicious & Healthy Foods </li><li>Spacific Family & Kids Zone</li><li>Best Price & Offers</li><li>Made By Fresh Ingredients</li><li>Delicious & Healthy Foods </li></ul>\r\n                    </div><p></p>', 'https://www.youtube.com/watch?v=WSTf9Bja7is', '2023-09-20 00:01:51', '2023-09-20 00:02:46');

-- --------------------------------------------------------

--
-- Structure de la table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_area_id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `delivery_area_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `type`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Anastasia', 'ahmed', 'test@gmail.com', '+1 (106) 882-8138', '7232 Broadway Suite 308,', 'home', '2023-09-20 01:30:46', '2023-09-20 01:30:46'),
(2, 3, 4, 'Anastasia', 'Abbott', 'test@gmail.com', '+1 (106) 882-8138', '172 Waterford Oaks', 'office', '2023-09-20 01:31:16', '2023-09-20 01:31:16'),
(3, 2, 1, 'Anastasia', 'Avila', 'hello@gmaiol.com', '+1 (106) 882-8138', '232 Broadway Suite', 'home', '2023-09-20 22:16:59', '2023-09-20 22:16:59'),
(4, 2, 3, 'Anastasia', 'Abbott', 'hello@gmaiol.com', '+1 (106) 882-8138', '453 Broadway Suite', 'office', '2023-09-20 22:17:26', '2023-09-20 22:17:26'),
(5, 1, 1, 'Hercule Socrate', 'Kenmeugne Djouko', 'destructeurkratos@gmail.com', '+237 0654770063', 'Dschang, Foto', 'home', '2024-08-28 19:32:13', '2024-08-28 19:32:13'),
(6, 4, 1, 'Hercule Socrate', 'Kenmeugne Djouko', 'destructeurkratos@gmail.com', '+237 0654770063', 'Dschang, Foto', 'home', '2024-08-28 19:48:21', '2024-08-28 19:48:21');

-- --------------------------------------------------------

--
-- Structure de la table `admin_menus`
--

CREATE TABLE `admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_menus`
--

INSERT INTO `admin_menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'main_menu', NULL, NULL),
(2, 'footer_menu_one', '2023-09-12 23:31:22', '2023-09-12 23:31:22'),
(3, 'footer_menu_two', '2023-09-12 23:34:53', '2023-09-12 23:34:53'),
(4, 'footer_menu_three', '2023-09-12 23:35:29', '2023-09-12 23:35:29');

-- --------------------------------------------------------

--
-- Structure de la table `admin_menu_items`
--

CREATE TABLE `admin_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  `class` varchar(255) DEFAULT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `depth` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `admin_menu_items`
--

INSERT INTO `admin_menu_items` (`id`, `label`, `link`, `parent_id`, `sort`, `class`, `menu_id`, `depth`, `created_at`, `updated_at`) VALUES
(2, 'Home', '/', 0, 2, NULL, 2, 0, '2023-09-13 00:00:59', '2023-09-13 00:14:43'),
(3, 'About', '/about', 0, 1, NULL, 2, 0, '2023-09-13 00:02:18', '2023-09-21 02:49:28'),
(4, 'Contact', '/contact', 0, 0, NULL, 2, 0, '2023-09-13 00:03:39', '2023-09-21 02:49:28'),
(5, 'Our Service', '#', 0, 3, NULL, 2, 0, '2023-09-13 00:04:12', '2023-09-13 00:04:12'),
(6, 'More About Us', '#', 0, 4, NULL, 2, 0, '2023-09-13 00:04:27', '2023-09-13 00:04:27'),
(7, 'Trams and Condition', '/trams-and-conditions', 0, 3, NULL, 3, 0, '2023-09-13 00:56:59', '2023-09-13 01:00:59'),
(8, 'Privacy Policy', '/privacy-policy', 0, 2, NULL, 3, 0, '2023-09-13 00:57:29', '2023-09-13 01:00:59'),
(9, 'More', '#', 0, 4, NULL, 3, 0, '2023-09-13 00:59:45', '2023-09-13 01:00:59'),
(10, 'Blogs', '/blogs', 0, 0, NULL, 3, 0, '2023-09-13 01:00:20', '2023-09-13 01:00:56'),
(11, 'Chefs', '/chefs', 0, 1, NULL, 3, 0, '2023-09-13 01:00:41', '2023-09-13 01:01:05'),
(12, 'Contact', '/contact', 0, 0, NULL, 4, 0, '2023-09-13 01:03:56', '2023-09-13 01:04:12'),
(13, 'About', '/about', 0, 1, NULL, 4, 0, '2023-09-13 01:04:11', '2023-09-13 01:04:33'),
(14, 'Blogs', '/bogs', 0, 3, NULL, 4, 0, '2023-09-13 01:04:33', '2023-09-13 01:04:33'),
(15, 'Home', '/', 0, 0, NULL, 1, 0, '2023-09-13 01:21:58', '2023-09-21 05:00:54'),
(16, 'About', '/about', 0, 3, NULL, 1, 0, '2023-09-13 01:22:20', '2023-09-20 21:10:47'),
(17, 'Chefs', '/chef', 23, 6, NULL, 1, 1, '2023-09-13 01:22:49', '2023-09-20 21:10:06'),
(18, 'Blogs', '/blogs', 0, 2, NULL, 1, 0, '2023-09-13 01:23:05', '2023-09-22 21:09:32'),
(19, 'Contact', '/contact', 0, 4, NULL, 1, 0, '2023-09-13 01:23:23', '2023-09-20 21:10:06'),
(20, 'Testimonials', '/testimonials', 23, 7, NULL, 1, 1, '2023-09-13 01:24:10', '2023-09-20 21:10:06'),
(21, 'Privacy Policy', '/privacy-policy', 23, 8, NULL, 1, 1, '2023-09-13 01:24:53', '2023-09-20 21:10:06'),
(22, 'Trams and Conditions', '/trams-and-conditions', 23, 9, NULL, 1, 1, '2023-09-13 01:25:15', '2023-09-20 21:10:06'),
(23, 'Pages', '#', 0, 5, NULL, 1, 0, '2023-09-13 01:26:58', '2023-09-20 21:10:06'),
(24, 'Films', '/products', 0, 1, NULL, 1, 0, '2023-09-13 01:26:58', '2024-08-28 17:40:23');

-- --------------------------------------------------------

--
-- Structure de la table `app_download_sections`
--

CREATE TABLE `app_download_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `background` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `play_store_link` varchar(255) DEFAULT NULL,
  `apple_store_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `app_download_sections`
--

INSERT INTO `app_download_sections` (`id`, `image`, `background`, `title`, `short_description`, `play_store_link`, `apple_store_link`, `created_at`, `updated_at`) VALUES
(1, '/uploads/media_650a82eb0939c.png', '/uploads/media_650a82eb09906.jpg', 'download our mobile apps', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque assumenda tenetur, provident earum consequatur, ut voluptas laboriosam fuga error aut eaque architecto quo pariatur. Vel dolore omnis quisquam. Lorem ipsum dolor, sit amet consectetur adipisicing elit Cumque.', 'https://websolutionus.com/', 'https://websolutionus.com/', '2023-09-19 23:28:11', '2023-09-19 23:28:11');

-- --------------------------------------------------------

--
-- Structure de la table `banner_sliders`
--

CREATE TABLE `banner_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `banner_sliders`
--

INSERT INTO `banner_sliders` (`id`, `title`, `sub_title`, `url`, `banner`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum', 'Lorem ipsum dolor sit amet consectetur.', '#', '/uploads/media_66cf6c9035865.jpeg', 1, '2023-09-19 23:19:01', '2024-08-28 17:29:36'),
(2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet consectetur.', '#', '/uploads/media_66cf6ca9bdb90.jpeg', 1, '2023-09-19 23:19:37', '2024-08-28 17:30:01'),
(3, 'Lorem ipsum', 'Lorem ipsum dolor sit amet consectetur.', '#', '/uploads/media_66cf6cc26544c.jpeg', 1, '2023-09-19 23:20:16', '2024-08-28 17:30:26'),
(4, 'Lorem ipsum', 'Lorem ipsum dolor sit amet consectetur.', '#', '/uploads/media_66cf6cf1b83dd.jpeg', 1, '2023-09-19 23:20:48', '2024-08-28 17:31:13');

-- --------------------------------------------------------

--
-- Structure de la table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `show_at_home` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `show_at_home`, `created_at`, `updated_at`) VALUES
(5, 'Cinema 1', 'cinema-1', 1, 1, '2024-08-28 16:55:51', '2024-08-28 16:55:51'),
(6, 'Cinema 2', 'cinema-2', 1, 1, '2024-08-28 16:56:12', '2024-08-28 16:56:12'),
(7, 'Cinema 3', 'cinema-3', 1, 1, '2024-08-28 16:56:33', '2024-08-28 16:56:33');

-- --------------------------------------------------------

--
-- Structure de la table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `chats`
--

INSERT INTO `chats` (`id`, `sender_id`, `receiver_id`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Hi', 1, '2023-09-20 01:35:41', '2023-09-20 01:36:26'),
(2, 3, 1, 'What is the status of my product?', 1, '2023-09-20 01:35:53', '2023-09-20 01:36:26'),
(3, 1, 3, 'your order is proccessing..', 1, '2023-09-20 01:36:50', '2023-09-20 01:41:11'),
(4, 3, 1, 'how long it will take to deliver ?', 1, '2023-09-20 01:37:14', '2023-09-20 01:38:06'),
(5, 1, 3, '1-2 days', 1, '2023-09-20 01:37:42', '2023-09-20 01:41:11'),
(6, 3, 1, 'Thanks.', 1, '2023-09-20 01:37:54', '2023-09-20 01:38:06'),
(7, 1, 3, '👍✨', 1, '2023-09-20 01:38:36', '2023-09-20 01:41:11'),
(8, 2, 1, 'Hellloooo!', 1, '2023-09-20 23:03:23', '2023-09-21 02:45:55'),
(9, 2, 1, 'hello', 1, '2023-09-21 02:34:25', '2023-09-21 02:45:55'),
(10, 1, 3, 'hy', 0, '2023-09-21 02:46:14', '2023-09-21 02:46:14');

-- --------------------------------------------------------

--
-- Structure de la table `chefs`
--

CREATE TABLE `chefs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fb` varchar(255) DEFAULT NULL,
  `in` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `show_at_home` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `phone_two` varchar(255) DEFAULT NULL,
  `mail_one` varchar(255) DEFAULT NULL,
  `mail_two` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `map_link` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `phone_one`, `phone_two`, `mail_one`, `mail_two`, `address`, `map_link`, `created_at`, `updated_at`) VALUES
(1, '+1347-430-9510', '+9658745554002', 'websolutionus1@gmail.com', 'example@gmail.com', '7232 Broadway Suite 308, Jackson Heights, 11372, NY, United States', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29199.78758207035!2d90.43684581929195!3d23.819543211524437!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c62fce7d991f%3A0xacfaf1ac8e944c05!2sBasundhara%20Residential%20Area%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1667021568123!5m2!1sen!2sbd', '2023-09-20 00:12:45', '2023-09-20 00:12:45');

-- --------------------------------------------------------

--
-- Structure de la table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `background` varchar(255) NOT NULL,
  `counter_icon_one` varchar(255) NOT NULL,
  `counter_count_one` varchar(255) NOT NULL,
  `counter_name_one` varchar(255) NOT NULL,
  `counter_icon_two` varchar(255) NOT NULL,
  `counter_count_two` varchar(255) NOT NULL,
  `counter_name_two` varchar(255) NOT NULL,
  `counter_icon_three` varchar(255) NOT NULL,
  `counter_count_three` varchar(255) NOT NULL,
  `counter_name_three` varchar(255) NOT NULL,
  `counter_icon_four` varchar(255) NOT NULL,
  `counter_count_four` varchar(255) NOT NULL,
  `counter_name_four` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `counters`
--

INSERT INTO `counters` (`id`, `background`, `counter_icon_one`, `counter_count_one`, `counter_name_one`, `counter_icon_two`, `counter_count_two`, `counter_name_two`, `counter_icon_three`, `counter_count_three`, `counter_name_three`, `counter_icon_four`, `counter_count_four`, `counter_name_four`, `created_at`, `updated_at`) VALUES
(1, '/uploads/media_650a85261f08f.jpg', 'fas fa-box', '500', 'customer serve', 'fas fa-user', '100', 'experience chef', 'fas fa-handshake', '100', 'happy customer', 'fas fa-trophy', '100', 'winning award', '2023-09-19 23:37:42', '2023-09-20 04:51:56');

-- --------------------------------------------------------

--
-- Structure de la table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `min_purchase_amount` int(11) NOT NULL DEFAULT 0,
  `expire_date` date NOT NULL,
  `discount_type` enum('percent','amount') NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `quantity`, `min_purchase_amount`, `expire_date`, `discount_type`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, '20 % Off', 'super20', 1000, 10, '2024-09-17', 'percent', 20, 1, '2023-09-19 23:13:20', '2023-09-19 23:13:20');

-- --------------------------------------------------------

--
-- Structure de la table `custom_page_builders`
--

CREATE TABLE `custom_page_builders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `custom_page_builders`
--

INSERT INTO `custom_page_builders` (`id`, `name`, `slug`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Custom Page', 'custom-page', '<h3>This is a custom page :</h3>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <h3>Main responsibilities:</h3>\r\n                        <ul><li>Solve the problem with code.</li><li>Work on Client\'s projects &amp; In-house products as well.</li><li>Analyze the product\'s needs and find out the best solutions.</li><li>Work as a team and lead the junior developer.</li><li>Collaborate with other teams by providing code review and technical direction.</li></ul>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p>\r\n                        <ul><li>Solve the problem with code.</li><li>Work on Client\'s projects &amp; In-house products as well.</li><li>Analyze the product\'s needs and find out the best solutions.</li><li>Work as a team and lead the junior developer.</li><li>Collaborate with other teams by providing code review and technical direction.</li></ul>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p><p></p>', 1, '2023-09-20 21:09:24', '2023-09-20 21:09:24');

-- --------------------------------------------------------

--
-- Structure de la table `daily_offers`
--

CREATE TABLE `daily_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `daily_offers`
--

INSERT INTO `daily_offers` (`id`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(6, 33, 1, '2024-08-28 17:16:49', '2024-08-28 17:16:49'),
(7, 35, 1, '2024-08-28 17:17:08', '2024-08-28 17:17:08'),
(8, 34, 1, '2024-08-28 17:17:30', '2024-08-28 17:17:30');

-- --------------------------------------------------------

--
-- Structure de la table `delivery_areas`
--

CREATE TABLE `delivery_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `min_delivery_time` varchar(255) NOT NULL,
  `max_delivery_time` varchar(255) NOT NULL,
  `delivery_fee` double NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `delivery_areas`
--

INSERT INTO `delivery_areas` (`id`, `area_name`, `min_delivery_time`, `max_delivery_time`, `delivery_fee`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cedarwood Park', '20', '25', 10, 1, '2023-09-20 01:28:21', '2023-09-20 01:28:21'),
(2, 'Maplewood Terrace', '10', '20', 15, 1, '2023-09-20 01:28:37', '2023-09-20 01:28:37'),
(3, 'Riverview Estates', '10', '15', 15, 1, '2023-09-20 01:28:48', '2023-09-20 01:28:48'),
(4, 'Oakridge Meadows', '10m', '30m', 15, 1, '2023-09-20 01:29:08', '2023-09-20 01:29:08'),
(5, 'Sunset Ridge', '15m', '30m', 15, 1, '2023-09-20 01:29:24', '2023-09-20 01:29:24'),
(6, 'Brookside Haven', '15m', '30m', 15, 1, '2023-09-20 01:29:35', '2023-09-20 01:29:35');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `footer_infos`
--

CREATE TABLE `footer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_info` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `footer_infos`
--

INSERT INTO `footer_infos` (`id`, `short_info`, `address`, `phone`, `email`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'There are many variations of Lorem Ipsum available, but the majority have suffered.', '7232 Broadway Suite 308, Jackson Heights, 11372, NY, United States', '+1347-430-9510', 'contact@kekottech.com', 'Copyright 2024 CinePark All Rights Reserved.', '2023-09-20 00:14:31', '2024-08-28 19:07:43');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2017_08_11_073824_create_menus_wp_table', 1),
(4, '2017_08_11_074006_create_menu_items_wp_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_07_13_062327_create_sliders_table', 1),
(8, '2023_07_16_034121_create_why_choose_us_table', 1),
(9, '2023_07_16_034352_create_section_titles_table', 1),
(10, '2023_08_01_051504_create_categories_table', 1),
(11, '2023_08_01_102352_create_products_table', 1),
(12, '2023_08_03_035416_create_product_galleries_table', 1),
(13, '2023_08_03_062618_create_product_sizes_table', 1),
(14, '2023_08_03_091617_create_product_options_table', 1),
(15, '2023_08_05_072633_create_settings_table', 1),
(16, '2023_08_12_062151_create_coupons_table', 1),
(17, '2023_08_14_042130_create_delivery_areas_table', 1),
(18, '2023_08_14_071832_create_addresses_table', 1),
(19, '2023_08_17_072342_create_orders_table', 1),
(20, '2023_08_17_072407_create_order_items_table', 1),
(21, '2023_08_19_035121_create_payment_gateway_settings_table', 1),
(22, '2023_08_20_065829_create_jobs_table', 1),
(23, '2023_08_20_093708_add_address_id_table', 1),
(24, '2023_08_27_091240_create_order_placed_notifications_table', 1),
(25, '2023_08_28_072704_create_chats_table', 1),
(26, '2023_09_02_042454_create_daily_offers_table', 1),
(27, '2023_09_02_112836_create_banner_sliders_table', 1),
(28, '2023_09_03_064440_create_chefs_table', 1),
(29, '2023_09_04_045906_create_app_download_sections_table', 1),
(30, '2023_09_04_095634_create_testimonials_table', 1),
(31, '2023_09_05_061255_create_counters_table', 1),
(32, '2023_09_05_101935_create_blog_categories_table', 1),
(33, '2023_09_06_033753_create_blogs_table', 1),
(34, '2023_09_07_050056_create_blog_comments_table', 1),
(35, '2023_09_09_045531_create_abouts_table', 1),
(36, '2023_09_09_101329_create_privacy_policies_table', 1),
(37, '2023_09_09_111400_create_trams_and_conditions_table', 1),
(38, '2023_09_10_032823_create_contacts_table', 1),
(39, '2023_09_11_040528_create_reservation_times_table', 1),
(40, '2023_09_11_073206_create_reservations_table', 1),
(41, '2023_09_12_042307_create_subscribers_table', 1),
(42, '2023_09_12_064908_create_social_links_table', 1),
(43, '2023_09_12_104836_create_footer_infos_table', 1),
(44, '2023_09_14_035403_create_custom_page_builders_table', 1),
(45, '2023_09_14_071015_create_product_ratings_table', 1),
(46, '2023_09_16_111107_create_wishlists_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `delivery_charge` double NOT NULL DEFAULT 0,
  `subtotal` double NOT NULL,
  `grand_total` double NOT NULL,
  `product_qty` int(11) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `payment_approve_date` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `coupon_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`coupon_info`)),
  `currency_name` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `user_id`, `address`, `discount`, `delivery_charge`, `subtotal`, `grand_total`, `product_qty`, `payment_method`, `payment_status`, `payment_approve_date`, `transaction_id`, `coupon_info`, `currency_name`, `order_status`, `created_at`, `updated_at`, `address_id`) VALUES
(1, '868232043', 3, '7232 Broadway Suite 308,, Aria: Cedarwood Park', 87, 10, 435, 358, 3, 'PayPal', 'completed', '2023-09-20 01:32:09', '0L3009975R675583A', '{\"code\": \"super20\", \"discount\": \"87.00\"}', 'USD', 'delivered', '2023-09-20 01:31:43', '2023-09-20 01:44:37', 1),
(2, '2218232044', 3, '7232 Broadway Suite 308,, Aria: Cedarwood Park', 0, 10, 150, 160, 2, 'PayPal', 'completed', '2023-09-20 01:41:58', '17E76628VU0157335', 'null', 'USD', 'delivered', '2023-09-20 01:41:44', '2023-09-20 01:44:44', 1),
(3, '125232046', 3, '7232 Broadway Suite 308,, Aria: Cedarwood Park', 0, 10, 140, 150, 2, 'PayPal', 'completed', '2023-09-20 01:43:58', '22C489894V3327925', 'null', 'USD', 'pending', '2023-09-20 01:43:46', '2023-09-20 01:43:58', 1),
(4, '4275232117', 2, '453 Broadway Suite, Aria: Riverview Estates', 0, 15, 345, 360, 2, 'PayPal', 'completed', '2023-09-20 22:18:56', '5E468902SB295722R', 'null', 'USD', 'pending', '2023-09-20 22:18:17', '2023-09-20 22:18:56', 4),
(5, '9643232108', 2, '232 Broadway Suite, Aria: Cedarwood Park', 0, 10, 130, 140, 1, 'PayPal', 'completed', '2023-09-20 23:02:23', '0TK97272WU868634E', 'null', 'USD', 'pending', '2023-09-20 23:02:08', '2023-09-20 23:02:23', 3),
(6, '5743232119', 2, '453 Broadway Suite, Aria: Riverview Estates', 66, 15, 330, 279, 2, 'PayPal', 'completed', '2023-09-21 02:23:04', '0B9617197M068064G', '{\"code\": \"super20\", \"discount\": \"66.00\"}', 'USD', 'pending', '2023-09-21 02:22:19', '2023-09-21 02:23:04', 4),
(7, '6105242823', 4, 'Dschang, Foto, Aria: Cedarwood Park', 0, 10, 5010, 5020, 1, 'Razorpay', 'completed', '2024-08-28 19:52:29', 'pay_OqSRRMcLqIRs2u', 'null', 'USD', 'pending', '2024-08-28 19:49:23', '2024-08-28 19:52:29', 6),
(8, '9729242837', 4, 'Dschang, Foto, Aria: Cedarwood Park', 0, 10, 5010, 5020, 1, 'Razorpay', 'completed', '2024-08-28 19:56:32', 'pay_OqSVifmjxcu0Z2', 'null', 'USD', 'pending', '2024-08-28 19:55:37', '2024-08-28 19:56:32', 6),
(9, '9844242819', 4, 'Dschang, Foto, Aria: Cedarwood Park', 0, 10, 5010, 5020, 1, 'Razorpay', 'completed', '2024-08-28 20:54:40', 'pay_OqTUxA6EalIAuQ', 'null', 'USD', 'pending', '2024-08-28 20:53:19', '2024-08-28 20:54:40', 6);

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` double NOT NULL,
  `qty` int(11) NOT NULL,
  `product_size` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`product_size`)),
  `product_option` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`product_option`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_name`, `product_id`, `unit_price`, `qty`, `product_size`, `product_option`, `created_at`, `updated_at`) VALUES
(1, 1, 'Egg Roll', 24, 30, 3, '{\"id\": 73, \"name\": \"Large\", \"price\": 30}', '[{\"id\": 47, \"name\": \"Coca-Cola\", \"price\": 5}, {\"id\": 48, \"name\": \"Extra Cheese\", \"price\": 10}]', '2023-09-20 01:31:43', '2023-09-20 01:31:43'),
(2, 1, 'Hot Dog', 5, 15, 1, '{\"id\": 16, \"name\": \"Large\", \"price\": 30}', '[]', '2023-09-20 01:31:43', '2023-09-20 01:31:43'),
(3, 1, 'Hamburger', 1, 15, 3, '{\"id\": 4, \"name\": \"Large\", \"price\": 30}', '[{\"id\": 2, \"name\": \"Extra Cheese\", \"price\": 10}]', '2023-09-20 01:31:43', '2023-09-20 01:31:43'),
(4, 2, 'Egg Roll', 24, 30, 1, '{\"id\": 73, \"name\": \"Large\", \"price\": 30}', '[]', '2023-09-20 01:41:44', '2023-09-20 01:41:44'),
(5, 2, 'Chicken Nuggets', 4, 70, 1, '{\"id\": 14, \"name\": \"Medium\", \"price\": 20}', '[]', '2023-09-20 01:41:44', '2023-09-20 01:41:44'),
(6, 3, 'Cheeseburger', 2, 50, 1, '{\"id\": 7, \"name\": \"Large\", \"price\": 30}', '[{\"id\": 3, \"name\": \"Coca-Cola\", \"price\": 5}, {\"id\": 4, \"name\": \"Extra Cheese\", \"price\": 10}]', '2023-09-20 01:43:46', '2023-09-20 01:43:46'),
(7, 3, 'Hamburger', 1, 15, 1, '{\"id\": 4, \"name\": \"Large\", \"price\": 30}', '[]', '2023-09-20 01:43:46', '2023-09-20 01:43:46'),
(8, 4, 'Chili Cheese Fries', 18, 60, 2, '{\"id\": 55, \"name\": \"Large\", \"price\": 30}', '[{\"id\": 35, \"name\": \"Coca-Cola\", \"price\": 5}, {\"id\": 36, \"name\": \"Extra Cheese\", \"price\": 10}]', '2023-09-20 22:18:17', '2023-09-20 22:18:17'),
(9, 4, 'Buffalo Wings', 16, 100, 1, '{\"id\": 49, \"name\": \"Large\", \"price\": 30}', '[{\"id\": 31, \"name\": \"Coca-Cola\", \"price\": 5}]', '2023-09-20 22:18:17', '2023-09-20 22:18:17'),
(10, 5, 'Tater Tots', 20, 100, 1, '{\"id\": 61, \"name\": \"Large\", \"price\": 30}', '[]', '2023-09-20 23:02:08', '2023-09-20 23:02:08'),
(11, 6, 'Sausage Biscuit', 32, 40, 3, '{\"id\": 97, \"name\": \"Large\", \"price\": 30}', '[{\"id\": 63, \"name\": \"Coca-Cola\", \"price\": 5}]', '2023-09-21 02:22:19', '2023-09-21 02:22:19'),
(12, 6, 'Poutine', 25, 60, 1, '{\"id\": 76, \"name\": \"Large\", \"price\": 30}', '[{\"id\": 49, \"name\": \"Coca-Cola\", \"price\": 5}, {\"id\": 50, \"name\": \"Extra Cheese\", \"price\": 10}]', '2023-09-21 02:22:19', '2023-09-21 02:22:19'),
(13, 7, 'Captain Marvel', 33, 5000, 1, '{\"id\":100,\"name\":\"Francais\",\"price\":10}', '[]', '2024-08-28 19:49:23', '2024-08-28 19:49:23'),
(14, 8, 'Captain Marvel', 33, 5000, 1, '{\"id\":100,\"name\":\"Francais\",\"price\":10}', '[]', '2024-08-28 19:55:37', '2024-08-28 19:55:37'),
(15, 9, 'Captain Marvel', 33, 5000, 1, '{\"id\":100,\"name\":\"Francais\",\"price\":10}', '[]', '2024-08-28 20:53:19', '2024-08-28 20:53:19');

-- --------------------------------------------------------

--
-- Structure de la table `order_placed_notifications`
--

CREATE TABLE `order_placed_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_placed_notifications`
--

INSERT INTO `order_placed_notifications` (`id`, `message`, `order_id`, `seen`, `created_at`, `updated_at`) VALUES
(1, '#868232043 a new order has been placed!', 1, 0, '2023-09-20 01:32:18', '2023-09-20 01:32:18'),
(2, '#2218232044 a new order has been placed!', 2, 0, '2023-09-20 01:42:05', '2023-09-20 01:42:05'),
(3, '#125232046 a new order has been placed!', 3, 1, '2023-09-20 01:44:04', '2023-09-20 21:03:33'),
(4, '#4275232117 a new order has been placed!', 4, 0, '2023-09-20 22:19:05', '2023-09-20 22:19:05'),
(5, '#9643232108 a new order has been placed!', 5, 1, '2023-09-20 23:02:29', '2023-09-21 02:42:24'),
(6, '#5743232119 a new order has been placed!', 6, 1, '2023-09-21 02:23:11', '2024-08-28 19:02:36'),
(7, '#9729242837 a new order has been placed!', 8, 1, '2024-08-28 19:56:37', '2024-08-28 21:12:00'),
(8, '#9844242819 a new order has been placed!', 9, 1, '2024-08-28 20:54:42', '2024-08-28 20:58:29');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `payment_gateway_settings`
--

CREATE TABLE `payment_gateway_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payment_gateway_settings`
--

INSERT INTO `payment_gateway_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'paypal_logo', '/uploads/media_64e58838d3a51.png', '2023-08-18 23:36:53', '2023-08-22 22:16:56'),
(2, 'paypal_status', '1', '2023-08-18 23:36:53', '2023-08-22 22:19:47'),
(3, 'paypal_account_mode', 'sandbox', '2023-08-18 23:36:53', '2023-08-18 23:36:53'),
(4, 'paypal_country', 'GB', '2023-08-18 23:36:53', '2023-08-18 23:39:44'),
(5, 'paypal_currency', 'USD', '2023-08-18 23:36:53', '2023-08-18 23:36:53'),
(6, 'paypal_rate', '1', '2023-08-18 23:36:53', '2023-08-18 23:36:53'),
(7, 'paypal_api_key', 'AUnOIw_wR15MzYo0eg87xjJ4bH2b_fsXVMtVtVZcpJVTrQC_rcStGAjyzBJK40vpaaCnYSvi1Gbf6L9f', '2023-08-18 23:36:53', '2023-08-19 01:56:43'),
(8, 'paypal_secret_key', 'EPrUhxAOGPrnp_5-BkaI6UO0CQMyZ-F4ANGdm3Ye4QZofTuHjyzzJCZm3sP5hiSb4XKlUKOo-ozDddD3', '2023-08-18 23:36:53', '2023-08-19 01:56:43'),
(9, 'paypal_app_id', 'APP_ID', '2023-08-20 23:07:55', '2023-08-20 23:07:55'),
(10, 'stripe_logo', '/uploads/media_64e30eb5c51eb.png', '2023-08-21 01:13:57', '2023-08-21 01:13:57'),
(11, 'stripe_status', '1', '2023-08-21 01:13:57', '2023-08-21 01:13:57'),
(12, 'stripe_country', 'US', '2023-08-21 01:13:57', '2023-08-21 01:13:57'),
(13, 'stripe_currency', 'USD', '2023-08-21 01:13:57', '2023-08-21 01:13:57'),
(14, 'stripe_rate', '1', '2023-08-21 01:13:57', '2023-08-21 01:13:57'),
(15, 'stripe_api_key', 'pk_test_51NhSkBLAjq0ac3am3UhnOZKyJcyh1wHiH4tkIeu60qcYE53YFCeQiD6mvkEcDyR5a8TrnMq0HiMndlflptDDU5cc00NA7t4tNd', '2023-08-21 01:13:57', '2023-08-21 01:47:18'),
(16, 'stripe_secret_key', 'sk_test_51NhSkBLAjq0ac3amThHW5zGEFluTCqirQw3xYwNh2KlYTIoV1nUfj0wXQ1ktXOlooaVRF0M99N7XXnaTBoLX7xgd00suPQpGgI', '2023-08-21 01:13:57', '2023-08-21 01:47:18'),
(17, 'razorpay_status', '1', '2023-08-21 23:45:12', '2023-08-21 23:45:12'),
(18, 'razorpay_country', 'IN', '2023-08-21 23:45:13', '2023-08-21 23:45:13'),
(19, 'razorpay_currency', 'USD', '2023-08-21 23:45:13', '2023-08-22 05:42:34'),
(20, 'razorpay_rate', '1', '2023-08-21 23:45:13', '2023-08-22 05:42:34'),
(21, 'razorpay_api_key', 'rzp_test_K7CipNQYyyMPiS', '2023-08-21 23:45:13', '2023-08-22 00:42:04'),
(22, 'razorpay_secret_key', 'zSBmNMorJrirOrnDrbOd1ALO', '2023-08-21 23:45:13', '2023-08-22 00:42:04'),
(23, 'razorpay_logo', '/uploads/media_64e44b9f4fac0.png', '2023-08-21 23:46:07', '2023-08-21 23:46:07');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `privacy_policies`
--

CREATE TABLE `privacy_policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `privacy_policies`
--

INSERT INTO `privacy_policies` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<h3>Your agreement:</h3>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <h3>Main responsibilities:</h3>\r\n                        <ul><li>Solve the problem with code.</li><li>Work on Client\'s projects &amp; In-house products as well.</li><li>Analyze the product\'s needs and find out the best solutions.</li><li>Work as a team and lead the junior developer.</li><li>Collaborate with other teams by providing code review and technical direction.</li></ul>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p>\r\n                        <ul><li>Solve the problem with code.</li><li>Work on Client\'s projects &amp; In-house products as well.</li><li>Analyze the product\'s needs and find out the best solutions.</li><li>Work as a team and lead the junior developer.</li><li>Collaborate with other teams by providing code review and technical direction.</li></ul>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p><p></p>', '2023-09-20 00:11:35', '2023-09-20 00:11:35');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text NOT NULL,
  `price` double NOT NULL,
  `offer_price` double NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `thumb_image`, `category_id`, `short_description`, `long_description`, `price`, `offer_price`, `quantity`, `sku`, `seo_title`, `seo_description`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(33, 'Captain Marvel', 'captain-marvel', '/uploads/media_66cf667dcecbd.jpeg', 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 5000, 0, 100, 'Salle 1', 'Captain Marvel', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 1, 1, '2024-08-28 17:03:41', '2024-08-28 17:03:41'),
(34, 'Avengers', 'avengers', '/uploads/media_66cf67aea9fa4.jpeg', 6, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</span><br></p>', 200, 0, 100, 'Salle 2', 'Avengers', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1, 1, '2024-08-28 17:08:46', '2024-08-28 17:08:46'),
(35, 'Captain Marvel 2', 'captain-marvel-2', '/uploads/media_66cf6954c0ea2.jpeg', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non lacus eu lacus dignissim vestibulum. Nunc ut bibendum augue. Nulla facilisi.', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non lacus eu lacus dignissim vestibulum. Nunc ut bibendum augue. Nulla facilisi. Curabitur pulvinar facilisis lorem, vitae maximus turpis commodo eget. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi tellus dui, luctus et ipsum at, varius feugiat massa. Aliquam ut felis ac magna ornare rhoncus. Donec a ligula quis odio rhoncus mollis. Praesent suscipit scelerisque tristique. Cras viverra arcu quis interdum tincidunt. Donec aliquet sollicitudin ante eu ornare.</span><br></p>', 200, 0, 100, 'Salle 2', 'Captain Marvel 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non lacus eu lacus dignissim vestibulum. Nunc ut bibendum augue. Nulla facilisi.', 1, 1, '2024-08-28 17:15:48', '2024-08-28 17:15:48');

-- --------------------------------------------------------

--
-- Structure de la table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_options`
--

CREATE TABLE `product_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_options`
--

INSERT INTO `product_options` (`id`, `product_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(65, 33, 'Pop corn', 5, '2024-08-28 17:06:46', '2024-08-28 17:06:46'),
(66, 34, 'Pop corn', 5, '2024-08-28 17:10:39', '2024-08-28 17:10:39');

-- --------------------------------------------------------

--
-- Structure de la table `product_ratings`
--

CREATE TABLE `product_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(100, 33, 'Francais', 10, '2024-08-28 17:05:57', '2024-08-28 17:05:57'),
(101, 33, 'Anglais', 12, '2024-08-28 17:06:18', '2024-08-28 17:06:18'),
(102, 34, 'Francais', 15, '2024-08-28 17:09:42', '2024-08-28 17:09:42'),
(103, 34, 'Anglais', 12, '2024-08-28 17:10:29', '2024-08-28 17:10:29');

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reservation_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(255) NOT NULL,
  `persons` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `reservation_id`, `user_id`, `name`, `phone`, `date`, `time`, `persons`, `status`, `created_at`, `updated_at`) VALUES
(1, '23199', 3, 'jhone Deo', '+1 (106) 882-8138', '2023-09-29', '9:00 AM-10:00 AM', 5, 'pending', '2023-09-20 01:58:55', '2023-09-20 01:58:55'),
(2, '268730', 3, 'jhone Deo', '+1 (106) 882-8138', '2023-09-22', '11:00 AM-12:00 AM', 4, 'pending', '2023-09-20 01:59:13', '2023-09-20 01:59:13');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_times`
--

CREATE TABLE `reservation_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservation_times`
--

INSERT INTO `reservation_times` (`id`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(1, '9:00 AM', '10:00 AM', 1, '2023-09-20 01:57:30', '2023-09-20 01:57:30'),
(2, '11:00 AM', '12:00 AM', 1, '2023-09-20 01:57:54', '2023-09-20 01:57:54'),
(3, '1:00 PM', '2:00 PM', 1, '2023-09-20 01:58:15', '2023-09-20 01:58:15'),
(4, '3:00 PM', '4:00 PM', 1, '2023-09-20 01:58:26', '2023-09-20 01:58:26'),
(5, '5:00 PM', '6:00 PM', 1, '2023-09-20 01:58:37', '2023-09-20 01:58:37');

-- --------------------------------------------------------

--
-- Structure de la table `section_titles`
--

CREATE TABLE `section_titles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `section_titles`
--

INSERT INTO `section_titles` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4, 'why_choose_top_title', 'Pourquoi nous choisir ?', '2023-07-16 00:04:13', '2023-09-02 04:42:34'),
(5, 'why_choose_main_title', 'Pourquoi nous choisir ?', '2023-07-16 00:04:13', '2023-09-02 04:42:34'),
(6, 'why_choose_sub_title', 'Objectively pontificate quality models before intuitive information. Dramatically recaptiualize multifunctional materials.', '2023-07-16 00:05:48', '2023-09-02 04:42:34'),
(7, 'daily_offer_top_title', 'Offre du jour', '2023-09-02 04:41:02', '2023-09-02 04:41:02'),
(8, 'daily_offer_main_title', 'Jusqu\'à 75% de moins ce jour', '2023-09-02 04:41:02', '2023-09-02 04:41:02'),
(9, 'daily_offer_sub_title', 'Objectively pontificate quality models before intuitive information. Dramatically recaptiualize multifunctional materials.', '2023-09-02 04:41:02', '2023-09-02 04:41:02'),
(10, 'chef_top_title', 'Notre equipe', '2023-09-03 22:18:09', '2023-09-03 22:18:09'),
(11, 'chef_main_title', 'Nos experts', '2023-09-03 22:18:09', '2023-09-03 22:18:09'),
(12, 'chef_sub_title', 'Objectively pontificate quality models before intuitive information. Dramatically recaptiualize multifunctional materials.', '2023-09-03 22:18:09', '2023-09-03 22:18:09'),
(13, 'testimonial_top_title', 'témoignage', '2023-09-04 22:24:02', '2023-09-04 22:24:02'),
(14, 'testimonial_main_title', 'nos retours d\'expérience', '2023-09-04 22:24:02', '2023-09-04 22:24:02'),
(15, 'testimonial_sub_title', 'Objectively pontificate quality models before intuitive information. Dramatically recaptiualize multifunctional materials.', '2023-09-04 22:24:02', '2023-09-04 22:24:02');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Cine Park', '2023-08-05 04:31:55', '2024-08-28 16:37:20'),
(2, 'site_default_currency', 'USD', '2023-08-05 04:31:55', '2023-08-06 00:56:35'),
(3, 'site_currency_icon', '$', '2023-08-05 04:31:55', '2023-08-13 21:43:30'),
(4, 'site_currency_icon_position', 'left', '2023-08-05 04:31:55', '2023-08-06 01:30:18'),
(5, 'site_delivery_charge', '50', '2023-08-13 21:43:44', '2023-08-13 21:43:44'),
(6, 'pusher_app_id', '1659217', '2023-08-26 04:36:34', '2023-08-26 04:36:34'),
(7, 'pusher_key', 'be9d8c800e229ec729c6', '2023-08-26 04:36:34', '2023-08-26 04:36:34'),
(8, 'pusher_secret', '52afd25d2a55c3df77e5', '2023-08-26 04:36:34', '2023-08-26 04:36:34'),
(9, 'pusher_cluster', 'mt1', '2023-08-26 04:36:34', '2023-08-26 04:36:34'),
(10, 'mail_driver', 'smtp', '2023-09-10 00:35:57', '2023-09-10 00:44:34'),
(11, 'mail_host', 'sandbox.smtp.mailtrap.io', '2023-09-10 00:35:57', '2023-09-10 00:44:34'),
(12, 'mail_port', '2525', '2023-09-10 00:35:57', '2023-09-10 00:44:34'),
(13, 'mail_username', '808ae887829cf7', '2023-09-10 00:35:57', '2023-09-10 00:44:34'),
(14, 'mail_password', '188d4565252515', '2023-09-10 00:35:57', '2023-09-10 00:44:34'),
(15, 'mail_encryption', 'tls', '2023-09-10 00:35:57', '2023-09-10 00:44:34'),
(16, 'mail_from_address', 'cinepark@example.com', '2023-09-10 00:35:57', '2024-08-28 16:38:29'),
(17, 'mail_receive_address', 'support.cinepark@example.com', '2023-09-10 00:35:57', '2024-08-28 16:38:29'),
(18, 'logo', '/uploads/media_66cf60770847f.jpeg', '2023-09-17 03:27:14', '2024-08-28 16:37:59'),
(19, 'footer_logo', '/uploads/media_66cf60770d90f.jpeg', '2023-09-17 03:27:14', '2024-08-28 16:37:59'),
(20, 'favicon', '/uploads/media_66cf607711cc6.jpeg', '2023-09-17 03:27:14', '2024-08-28 16:37:59'),
(21, 'breadcrumb', '/uploads/media_66cf607716460.jpeg', '2023-09-17 03:27:14', '2024-08-28 16:37:59'),
(22, 'site_email', 'cinepark@gmail.com', '2023-09-17 05:18:32', '2024-08-28 16:37:20'),
(23, 'site_phone', '+96487452145214', '2023-09-17 05:18:32', '2023-09-17 05:18:32'),
(24, 'site_color', '#ed7011', '2023-09-17 22:02:41', '2023-09-17 22:15:30'),
(25, 'seo_title', 'Food Park', '2023-09-17 23:17:55', '2023-09-17 23:17:55'),
(26, 'seo_description', 'test description', '2023-09-17 23:17:55', '2023-09-17 23:17:55'),
(27, 'seo_keywords', 'food,restaurant', '2023-09-17 23:17:55', '2023-09-17 23:17:55');

-- --------------------------------------------------------

--
-- Structure de la table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `offer` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `offer`, `title`, `sub_title`, `short_description`, `button_link`, `status`, `created_at`, `updated_at`) VALUES
(1, '/uploads/media_66cf6aa573282.jpeg', '40% off', 'Capitain Marvel 2', 'Marvel studio', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsum fugit minima et debitis ut distinctio optio qui voluptate natus.', '#', 1, '2023-09-19 22:04:08', '2024-08-28 17:21:25'),
(2, '/uploads/media_66cf6a5a67f6f.jpeg', '30% off', 'Avengers', 'Marvel studio', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsum fugit minima et debitis ut distinctio optio qui voluptate natus.', '#', 1, '2023-09-19 22:05:35', '2024-08-28 17:20:10'),
(3, '/uploads/media_66cf6a2e82bc0.jpeg', '20% off', 'Capitain Marvel', 'Marvel', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ipsum fugit minima et debitis ut distinctio optio qui voluptate natus.', '#', 1, '2023-09-19 22:06:47', '2024-08-28 17:19:26');

-- --------------------------------------------------------

--
-- Structure de la table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `social_links`
--

INSERT INTO `social_links` (`id`, `icon`, `name`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-facebook-f', 'facebook', 'https://facebook.com', 1, '2023-09-19 23:57:42', '2023-09-19 23:57:42'),
(2, 'fab fa-twitter', 'Twitter', 'https://x.com', 1, '2023-09-19 23:57:59', '2023-09-19 23:57:59'),
(3, 'fab fa-discord', 'discord', 'https://discord.com', 1, '2023-09-19 23:58:16', '2023-09-19 23:58:16'),
(4, 'fab fa-linkedin-in', 'linkedin', 'https://linkedin.com', 1, '2023-09-19 23:58:41', '2023-09-19 23:58:41');

-- --------------------------------------------------------

--
-- Structure de la table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `show_at_home` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `testimonials`
--

INSERT INTO `testimonials` (`id`, `image`, `name`, `title`, `review`, `rating`, `show_at_home`, `status`, `created_at`, `updated_at`) VALUES
(1, '/uploads/media_650a83706854b.jpg', 'sumon mahmud', 'nyc usa', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut accusamus praesentium quaerat  nihil magnam a porro eaque numquam', 5, 1, 1, '2023-09-19 23:30:24', '2023-09-19 23:30:24'),
(2, '/uploads/media_650a8394a77e6.png', 'Jhone Deo', 'nyc usa', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut accusamus praesentium quaerat  nihil magnam a porro eaque numquam', 5, 1, 1, '2023-09-19 23:31:00', '2023-09-19 23:31:00'),
(3, '/uploads/media_650a83c787418.png', 'Payel Sarkar', 'nyc usa', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut accusamus praesentium quaerat  nihil magnam a porro eaque numquam', 5, 1, 1, '2023-09-19 23:31:51', '2023-09-19 23:31:51'),
(4, '/uploads/media_650a83ecf1452.png', 'Deo Jhone', 'nyc usa', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aut accusamus praesentium quaerat  nihil magnam a porro eaque numquam', 5, 1, 1, '2023-09-19 23:32:28', '2023-09-19 23:32:28');

-- --------------------------------------------------------

--
-- Structure de la table `trams_and_conditions`
--

CREATE TABLE `trams_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trams_and_conditions`
--

INSERT INTO `trams_and_conditions` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<h3>Your agreement:</h3>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <h3>Main responsibilities:</h3>\r\n                        <ul><li>Solve the problem with code.</li><li>Work on Client\'s projects &amp; In-house products as well.</li><li>Analyze the product\'s needs and find out the best solutions.</li><li>Work as a team and lead the junior developer.</li><li>Collaborate with other teams by providing code review and technical direction.</li></ul>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p>\r\n                        <ul><li>Solve the problem with code.</li><li>Work on Client\'s projects &amp; In-house products as well.</li><li>Analyze the product\'s needs and find out the best solutions.</li><li>Work as a team and lead the junior developer.</li><li>Collaborate with other teams by providing code review and technical direction.</li></ul>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam\r\n                            doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit porro\r\n                            consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime nostrum\r\n                            quod\r\n                            ipsum, quibusdam, a omnis quam aperiam pariatur consectetur est perspiciatis. Laboriosam\r\n                            praesentium id asperiores cumque debitis, ex adipisci? Impedit temporibus labore dolores\r\n                            iusto\r\n                            error nobis, porro hic iure placeat, sint esse corporis, quibusdam adipisci magni non minus\r\n                            quo\r\n                            quae repudiandae earum facere eum ad qui voluptatum eaque.</p>\r\n                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ad, repellendus! Nesciunt fugit\r\n                            aliquam doloremque velit ullam quos ad et magnam aperiam eum vero unde cum reprehenderit\r\n                            porro consectetur voluptatum, veritatis blanditiis. Repellendus veritatis fugit maxime\r\n                            nostrum quod ipsum, quibusdam, a omnis quam aperiam pariatur</p><p></p>', '2023-09-20 00:11:54', '2023-09-20 00:11:54');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT '/uploads/avatar.png',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `avatar`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '/uploads/avatar.png', 'Admin', 'admin@gmail.com', 'admin', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL),
(2, '/uploads/media_650bce8f34d46.png', 'User', 'user@gmail.com', 'user', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2023-09-20 23:03:11'),
(3, '/uploads/media_650a9196f120d.jpg', 'Jhone Deo', 'jhonedeo@gmail.com', 'user', NULL, '$2y$10$8kMHpzR9kogLoWSh2ve1z.viHcES2jNdmmaytq72lyT0IGKAshj46', NULL, '2023-09-20 00:30:32', '2023-09-20 00:30:46'),
(4, '/uploads/avatar.png', 'kratos', 'ft@gmail.com', 'user', NULL, '$2y$10$IK4NuKtNl59aRtc3lPerDes7h01Ps8sVrUslGPAAjoq27tNvFXtie', NULL, '2024-08-28 19:33:45', '2024-08-28 19:33:45');

-- --------------------------------------------------------

--
-- Structure de la table `why_choose_us`
--

CREATE TABLE `why_choose_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `why_choose_us`
--

INSERT INTO `why_choose_us` (`id`, `icon`, `title`, `short_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-percent', 'discount voucher', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, debitis expedita .', 1, '2023-09-19 22:09:14', '2023-09-19 22:09:14'),
(2, 'fas fa-bullhorn', 'Lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, debitis expedita .', 1, '2023-09-19 22:10:17', '2024-08-28 17:26:42'),
(3, 'fas fa-shipping-fast', 'Lorem ipsum', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Est, debitis expedita .', 1, '2023-09-19 22:10:48', '2024-08-28 17:26:20');

-- --------------------------------------------------------

--
-- Structure de la table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 1, 35, '2024-08-28 17:37:09', '2024-08-28 17:37:09');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_delivery_area_id_foreign` (`delivery_area_id`);

--
-- Index pour la table `admin_menus`
--
ALTER TABLE `admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `app_download_sections`
--
ALTER TABLE `app_download_sections`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `banner_sliders`
--
ALTER TABLE `banner_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Index pour la table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comments_blog_id_foreign` (`blog_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `chefs`
--
ALTER TABLE `chefs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `custom_page_builders`
--
ALTER TABLE `custom_page_builders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `daily_offers`
--
ALTER TABLE `daily_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_offers_product_id_foreign` (`product_id`);

--
-- Index pour la table `delivery_areas`
--
ALTER TABLE `delivery_areas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `footer_infos`
--
ALTER TABLE `footer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Index pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Index pour la table `order_placed_notifications`
--
ALTER TABLE `order_placed_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `payment_gateway_settings`
--
ALTER TABLE `payment_gateway_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Index pour la table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_galleries_product_id_foreign` (`product_id`);

--
-- Index pour la table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_options_product_id_foreign` (`product_id`);

--
-- Index pour la table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ratings_user_id_foreign` (`user_id`),
  ADD KEY `product_ratings_product_id_foreign` (`product_id`);

--
-- Index pour la table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sizes_product_id_foreign` (`product_id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation_times`
--
ALTER TABLE `reservation_times`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `section_titles`
--
ALTER TABLE `section_titles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trams_and_conditions`
--
ALTER TABLE `trams_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `admin_menus`
--
ALTER TABLE `admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `app_download_sections`
--
ALTER TABLE `app_download_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `banner_sliders`
--
ALTER TABLE `banner_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `chefs`
--
ALTER TABLE `chefs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `custom_page_builders`
--
ALTER TABLE `custom_page_builders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `daily_offers`
--
ALTER TABLE `daily_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `delivery_areas`
--
ALTER TABLE `delivery_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `footer_infos`
--
ALTER TABLE `footer_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `order_placed_notifications`
--
ALTER TABLE `order_placed_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `payment_gateway_settings`
--
ALTER TABLE `payment_gateway_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `privacy_policies`
--
ALTER TABLE `privacy_policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `product_options`
--
ALTER TABLE `product_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `product_ratings`
--
ALTER TABLE `product_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `reservation_times`
--
ALTER TABLE `reservation_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `section_titles`
--
ALTER TABLE `section_titles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `trams_and_conditions`
--
ALTER TABLE `trams_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `why_choose_us`
--
ALTER TABLE `why_choose_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_delivery_area_id_foreign` FOREIGN KEY (`delivery_area_id`) REFERENCES `delivery_areas` (`id`),
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `admin_menu_items`
--
ALTER TABLE `admin_menu_items`
  ADD CONSTRAINT `admin_menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `daily_offers`
--
ALTER TABLE `daily_offers`
  ADD CONSTRAINT `daily_offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD CONSTRAINT `product_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product_options`
--
ALTER TABLE `product_options`
  ADD CONSTRAINT `product_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product_ratings`
--
ALTER TABLE `product_ratings`
  ADD CONSTRAINT `product_ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
