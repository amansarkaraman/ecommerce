-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2023 at 01:00 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nandonik`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_addresses`
--

CREATE TABLE `billing_addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `appartment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `meta_title`, `meta_image`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Yellow', 'yellow', 'brand/169433275179.jpg', 1, NULL, NULL, NULL, '2023-09-10 11:59:11', '2023-09-10 11:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `temp_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` tinyint NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `sub_total` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `temp_user_id`, `product_id`, `size`, `color`, `quantity`, `price`, `discount`, `sub_total`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, NULL, NULL, 1, 0, 0, 0, '2023-09-10 11:55:23', '2023-09-10 11:55:23'),
(2, 1, NULL, 2, NULL, NULL, 1, 0, 0, 0, '2023-09-10 12:53:47', '2023-09-10 12:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `meta_title`, `meta_image`, `meta_description`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'clothing', NULL, 'category/169433206496.jpg', NULL, 1, '2023-09-10 11:47:44', '2023-09-11 06:14:11', 'clothing'),
(2, 'Shoes', NULL, 'category/16943330388.jpg', NULL, 1, '2023-09-10 12:03:58', '2023-09-11 06:14:24', 'shoes'),
(3, 'Jewellery', NULL, 'category/169433388625.jpg', NULL, 1, '2023-09-10 12:18:06', '2023-09-11 06:14:33', 'jewellery'),
(4, 'Accessories', NULL, 'category/169433411630.jpg', NULL, 1, '2023-09-10 12:21:56', '2023-09-11 06:14:17', 'accessories'),
(5, 'Collection', NULL, 'category/169433423597.jpg', NULL, 1, '2023-09-10 12:23:55', '2023-09-11 06:13:18', 'collection'),
(6, 'Sale', NULL, 'category/169433431693.jpg', NULL, 1, '2023-09-10 12:25:17', '2023-09-11 06:13:24', 'sale'),
(7, 'Child Shoes', NULL, 'category/169433644484.jpg', NULL, 1, '2023-09-10 13:00:44', '2023-09-11 06:13:29', 'child-shoes'),
(8, 'Men', NULL, 'category/169443416188.jpg', NULL, 1, '2023-09-10 13:42:28', '2023-09-11 06:09:21', 'men'),
(9, 'Woman', NULL, 'category/169443418187.png', NULL, 1, '2023-09-10 13:49:50', '2023-09-11 06:09:41', 'woman'),
(10, 'Kids', NULL, 'category/169443419914.jpeg', NULL, 1, '2023-09-10 13:50:33', '2023-09-11 06:09:59', 'kids'),
(11, 'Black T-shirt', NULL, 'category/169434159673.jpg', NULL, 1, '2023-09-10 14:26:37', '2023-09-11 06:13:42', 'black-t-shirt'),
(12, 'Chambray shirt', NULL, 'category/16943428792.jpg', NULL, 1, '2023-09-10 14:47:59', '2023-09-11 06:13:47', 'chambray-shirt'),
(13, 'Round Neck T-shirt', NULL, 'category/16943443798.jpg', NULL, 1, '2023-09-10 15:12:59', '2023-09-11 06:13:51', 'round-neck-t-shirt'),
(14, 'Twist front T-shirt', NULL, 'category/169434534115.jpg', NULL, 1, '2023-09-10 15:29:01', '2023-09-11 06:13:55', 'twist-front-t-shirt');

-- --------------------------------------------------------

--
-- Table structure for table `category_sub_category`
--

CREATE TABLE `category_sub_category` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `sub_category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_sub_category`
--

INSERT INTO `category_sub_category` (`id`, `category_id`, `sub_category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 5, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 2, 7, NULL, NULL),
(8, 2, 8, NULL, NULL),
(9, 8, 9, NULL, NULL),
(10, 9, 9, NULL, NULL),
(11, 10, 9, NULL, NULL),
(12, 8, 3, NULL, NULL),
(13, 9, 3, NULL, NULL),
(14, 10, 3, NULL, NULL),
(15, 9, 10, NULL, NULL),
(16, 1, 11, NULL, NULL),
(17, 8, 11, NULL, NULL),
(18, 9, 11, NULL, NULL),
(19, 8, 12, NULL, NULL),
(20, 9, 12, NULL, NULL),
(21, 9, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_services`
--

CREATE TABLE `customer_services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_services`
--

INSERT INTO `customer_services` (`id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 'about', '{\"value\":\"<p>dhfv<\\/p>\"}', '2023-08-23 02:45:53', '2023-09-09 23:29:46'),
(3, 'privacy', '{\"value\":\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h3>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet<\\/h3>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<h3>The standard Lorem Ipsum passage, used since the 1500s<\\/h3>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h3>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet<\\/h3>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<h3>The standard Lorem Ipsum passage, used since the 1500s<\\/h3>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>\"}', '2023-08-23 04:43:36', '2023-09-09 23:29:42'),
(4, 'faq', '{\"value\":\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h3>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet<\\/h3>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<h3>The standard Lorem Ipsum passage, used since the 1500s<\\/h3>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h3>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet<\\/h3>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<h3>The standard Lorem Ipsum passage, used since the 1500s<\\/h3>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words<\\/p>\"}', '2023-08-23 05:21:42', '2023-09-09 23:29:27'),
(6, 'terms_condition', '{\"value\":\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h3>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet<\\/h3>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<h3>The standard Lorem Ipsum passage, used since the 1500s<\\/h3>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>\\r\\n\\r\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\r\\n\\r\\n<h3>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet<\\/h3>\\r\\n\\r\\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<\\/p>\\r\\n\\r\\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.<\\/p>\\r\\n\\r\\n<h3>The standard Lorem Ipsum passage, used since the 1500s<\\/h3>\\r\\n\\r\\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/p>\\r\\n\\r\\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.<\\/p>\"}', '2023-08-23 05:43:56', '2023-09-09 23:29:24'),
(7, 'shipping_policy', '{\"value\":\"<h3>Payment Method<\\/h3>\\r\\n\\r\\n<p>The available international credit card options are VISA, Mastercard, Maestro, American Express, Discover and Diners. The available domestic debit card options are VISA and Mastercard.<\\/p>\\r\\n\\r\\n<p>Please note that Avon does not collect your credit\\/debit card number or personal information when you make a payment. For questions regarding your transactions on our site, please consult your card-issuing bank for information.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Please make sure that you enter the coupon code exactly as you received it, with no space before, within, or after it. To avoid errors, we recommend you to copy\\/paste the promotional code you received.<\\/li>\\r\\n\\t<li>Coupons cannot be combined. You can only use one coupon code per order.<\\/li>\\r\\n\\t<li>Coupons are subject to offer terms. This does exclude some items on our website which are not eligible for coupon discounts.<\\/li>\\r\\n\\t<li>You can pay up to 70% of your purchase with bonus points at checkout. Remember that 100 points = $1.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3>Shipping Information<\\/h3>\\r\\n\\r\\n<p>We have put a lot of focus on making sure the items get delivered to our customers as quickly as possible. You will receive your order in 6-17 business days from the date that it is placed.<\\/p>\\r\\n\\r\\n<p>A confirmation email will be sent to you once the order is authorized and verified. We begin preparing your order immediately after it is verified. With this sort of time frame, it makes it difficult for us to change or cancel your order, however, we will do our best to support your request.<\\/p>\\r\\n\\r\\n<p>It normally takes 3-7 business days for us to process your order. Please note that this does not include holidays and weekends.<\\/p>\\r\\n\\r\\n<h3>Returns &amp; Exchanges<\\/h3>\\r\\n\\r\\n<p>It&lsquo;s bummed to us if you&#39;re not 100% satisfied with the items you received, we gladly accept returns postmarked within 45 days from the purchase date and we have made the returns so easy for you!<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Sign into your account.<\\/li>\\r\\n\\t<li>Find the order in My Orders, click the &ldquo;Return Item&rdquo; button.<\\/li>\\r\\n\\t<li>Select the item(s) you would like to return, indicate the reasons, and submit.<\\/li>\\r\\n\\t<li>Select the mailing method: self-sending or pick-up service (choose the pick-up address and post office required information).<\\/li>\\r\\n\\t<li>The logistics company will contact you as soon as possible, please wait for the courier to pick up the package or take the sealed package&nbsp;to the nearby mailing point and send to the address of Avon return center.<\\/li>\\r\\n\\t<li>We will confirm the parcel immediately after we receive the return, update the status of the return and refund within 7 working days. The refund will be returned to you Avon wallet or&nbsp;to&nbsp;your original payment account.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3>Return Conditions<\\/h3>\\r\\n\\r\\n<p>We only accept returns postmarked within 45 days from the purchase date. Orders must be delivered. The address of the recipient must be in India. The following items cannot be returned or exchanged: bodysuits, lingerie &amp; sleepwear, swimwear, jewelry, and accessories (except scarves, bags, and mermaid blankets).<\\/p>\\r\\n\\r\\n<p>All items in bundling promotion is not eligible for partial cancels, exchanges, or returns. Items returned must be in their unused condition with the original packing. We do not accept a returned item that&rsquo;s worn, damaged, washed or altered in any way. We do not accept returned items that were sent back by you directly without checking with us first. We do not offer Freight To Collect (FTC) service for the packages returned to us. The returns will be made at your own cost.<\\/p>\\r\\n\\r\\n<h3>Refunds<\\/h3>\\r\\n\\r\\n<p>Returns will be processed within 7 days upon receipt of your package. The refund will be issued to your Avon Wallet or the original payment account per your request. If the order is free shipping, postage will not be deducted.<\\/p>\\r\\n\\r\\n<p>Pick-up service charge will be deducted from total refund and self-sending shipping fee will be at your own cost.<\\/p>\\r\\n\\r\\n<p>Note\\uff1a Refunds will be initiated for items only, other fees like insurance, shipping, COD service charges are non refundable.<\\/p>\"}', '2023-08-23 22:48:34', '2023-09-09 23:27:38'),
(13, 'addresses', '{\"address\":\"Uattara,Dhaka, Bangladesh\",\"phone\":\"01648485284\",\"email\":\"nandonik@gmail.com\",\"facebook\":\"facebook\",\"instagram\":\"www.instagram.com\",\"youtube\":\"www.youtube.com\",\"linkedin\":\"www.linkedin.com\",\"whatsapp\":\"www.twitter.com\",\"twitter\":\"www.twitter.com\",\"map\":\"https:\\/\\/www.google.com\\/maps\\/d\\/embed?mid=1Ud5DRnqhKifdeHQ0wjENsGgLp_0&ehbc=2E312F\\\" width=\\\"640\\\" height=\\\"480\"}', '2023-08-28 04:36:47', '2023-09-09 23:27:15'),
(17, 'logo', '{\"favicon\":\"logo\\/favicon.jpg\",\"image\":\"logo\\/logo.jpg\"}', '2023-09-09 02:26:29', '2023-09-11 03:08:40'),
(20, 'logo', '{\"image\":\"logo\\/logo.png\",\"favicon\":\"logo\\/favicon.jpg\"}', '2023-09-09 02:26:29', '2023-09-09 02:26:29'),
(21, 'home', '{\"section_one\":\"2\",\"section_two\":\"4\",\"section_three\":\"1\"}', '2023-09-09 02:26:29', '2023-09-11 04:37:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_02_154625_create_permission_tables', 1),
(6, '2023_07_23_065234_create_categories_table', 1),
(7, '2023_07_23_065640_create_sub_categories_table', 1),
(8, '2023_07_23_070312_create_category_sub_category_table', 1),
(9, '2023_07_24_051644_create_brands_table', 1),
(10, '2023_07_24_051647_create_products_table', 1),
(11, '2023_07_24_053208_create_product_images_table', 1),
(12, '2023_08_23_084402_create_customer_services_table', 1),
(13, '2023_08_24_063640_create_send_messages_table', 1),
(14, '2023_08_27_112445_create_carts_table', 1),
(15, '2023_08_29_104446_create_offers_table', 1),
(16, '2023_09_04_115938_create_orders_table', 1),
(17, '2023_09_04_115939_create_ordered_products_table', 1),
(18, '2023_09_04_115940_create_payments_table', 1),
(19, '2023_09_04_115941_create_billing_addresses_table', 1),
(20, '2023_09_07_060724_create_profiles_table', 1),
(21, '2023_09_11_120516_add_slug_to_offers', 2),
(22, '2023_09_11_120616_add_slug_to_categories', 2),
(23, '2023_09_11_120700_add_slug_to_sub_categories', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `offer_start` datetime DEFAULT NULL,
  `offer_end` datetime DEFAULT NULL,
  `button_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `products` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `description`, `offer_start`, `offer_end`, `button_name`, `button_url`, `image`, `products`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Free Gifts With Purchase', 'If you’re looking to one-up a competitor, offer low-ticket items for free with the purchase of a big-ticket item. Often you’ll see accessories added on for free. Everyone loves a deal, even if it’s only a $10-$25 value! This is a simple and effective way to boost your conversion rate and incentivize customers to place their orders now.', '2023-09-10 11:40:00', '2023-09-20 11:40:00', 'Get Offer', '#', 'offer/169442856324.jpg', NULL, 1, '2023-09-09 23:40:34', '2023-09-11 06:38:21', 'free-gifts-with-purchase'),
(2, 'Winter Offer', NULL, '2023-09-10 18:15:00', '2023-09-30 18:15:00', 'Explor', '#', 'offer/169442030199.jpg', NULL, 1, '2023-09-10 16:17:38', '2023-09-11 06:38:34', 'winter-offer'),
(3, 'Jumbo_deal Offer', NULL, '2023-09-10 18:20:00', '2023-09-22 18:20:00', 'Explor', '#', 'offer/169434853341.jpg', NULL, 1, '2023-09-10 16:22:14', '2023-09-11 06:38:39', 'jumbo-deal-offer'),
(4, 'Special offer', NULL, '2023-09-10 18:30:00', '2023-09-18 18:30:00', 'Explor', '#', 'offer/169442858549.jpg', NULL, 1, '2023-09-10 16:31:00', '2023-09-11 06:38:16', 'special-offer');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` tinyint NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `sub_total` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `shipping_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charge` double NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `coupon` double NOT NULL DEFAULT '0',
  `products_price` double NOT NULL DEFAULT '0',
  `total` double NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cachon delivery',
  `banking_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banking_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `sizes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) DEFAULT NULL,
  `discount_type` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_start` datetime DEFAULT NULL,
  `discount_end` datetime DEFAULT NULL,
  `quantity` int NOT NULL,
  `number_of_sell` int NOT NULL DEFAULT '0',
  `stock` int NOT NULL DEFAULT '0',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `sub_category_id`, `brand_id`, `name`, `slug`, `description`, `image`, `thumbnail`, `tags`, `sizes`, `colors`, `price`, `discount`, `discount_type`, `discount_start`, `discount_end`, `quantity`, `number_of_sell`, `stock`, `meta_title`, `meta_image`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Shirt', 'shirt', NULL, 'product/169433248313.jpg', 'product/169433248397.jpg', NULL, NULL, NULL, 2000.00, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, 1, '2023-09-10 11:54:43', '2023-09-10 11:54:43'),
(2, 2, 7, NULL, 'Shoes', 'shoes', NULL, 'product/169433583689.jpg', 'product/169433583663.jpg', 'Shoes', '9,10,11', 'red,black,white', 5000.00, NULL, NULL, NULL, NULL, 400, 0, 400, NULL, NULL, NULL, 1, '2023-09-10 12:50:36', '2023-09-10 12:50:36'),
(3, 2, 8, NULL, 'Child Shoes', 'child-shoes', NULL, 'product/16943374882.jpg', 'product/169433748883.jpg', 'Child Shoes', '3,4,5', 'Brown,Purple', 3000.00, NULL, NULL, NULL, NULL, 300, 0, 300, NULL, NULL, NULL, 1, '2023-09-10 13:18:08', '2023-09-10 13:18:08'),
(4, 8, 3, NULL, 'Polo T-shirt', 'polo-t-shirt', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'product/169434073189.jpg', 'product/169434073173.jpg', 'polo t-shirt,t-shirt', 'M,L,XL,XXL', 'red,black,navy blue,green,merun', 1000.00, 100.00, 'flat', '2023-09-10 16:05:00', '2023-09-12 16:05:00', 100, 0, 100, 'Pariatur Velit inve', 'product/169434073116.jpg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2023-09-10 14:12:11', '2023-09-10 14:12:11'),
(5, 9, 10, NULL, 'Black T-shirt', 'black-t-shirt', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'product/169434197551.jpg', 'product/169434197514.jpg', 'Black T-shirt', 'M,L,XL,XXL', 'black', 4000.00, 200.00, NULL, '2023-09-10 16:31:00', '2023-09-20 16:31:00', 818, 0, 818, 'Porro molestias adip', NULL, NULL, 1, '2023-09-10 14:32:55', '2023-09-10 14:32:55'),
(6, 1, 11, NULL, 'Chambray shirt', 'chambray-shirt', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'product/169434342426.jpg', 'product/16943434246.jpg', 'Chambray shirt,shirt', 'M,L,XL,XXL', 'white,black,navy,Purple', 6000.00, 300.00, 'flat', '2023-09-10 16:55:00', '2023-09-18 16:55:00', 144, 0, 144, 'Deserunt voluptatem', NULL, NULL, 1, '2023-09-10 14:57:04', '2023-09-10 14:57:04'),
(7, 9, 12, NULL, 'Round Neck T-shirt', 'round-neck-t-shirt', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'product/169434461146.jpg', 'product/169434461190.jpg', 'Round Neck T-shirt', 'M,L,XL,XXL,XXXL', 'red,green,Yellow,Forest Green,Teal', 8000.00, 200.00, 'flat', '2023-09-07 17:14:00', '2023-09-10 17:14:00', 866, 0, 866, 'Beatae ullam asperio', NULL, NULL, 1, '2023-09-10 15:16:52', '2023-09-10 15:16:52'),
(8, 9, 13, NULL, 'Twist front T-shirt', 'twist-front-t-shirt', '<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', 'product/169434775718.jpg', 'product/169434775724.jpg', 'Twist front T-shirt', 'M,L,XL,XXL,XXXL', 'Purple,Olive,Burgundy,Blue', 7000.00, 750.00, 'flat', '2023-09-10 17:30:00', '2023-09-25 17:30:00', 801, 0, 801, 'Deserunt sed sed omn', NULL, NULL, 1, '2023-09-10 16:09:17', '2023-09-10 16:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'product/169433248387.jpg', '2023-09-10 11:54:43', '2023-09-10 11:54:43'),
(2, 1, 'product/169433248330.jpg', '2023-09-10 11:54:43', '2023-09-10 11:54:43'),
(3, 1, 'product/169433248374.jpg', '2023-09-10 11:54:43', '2023-09-10 11:54:43'),
(4, 1, 'product/169433248334.jpg', '2023-09-10 11:54:43', '2023-09-10 11:54:43'),
(5, 2, 'product/169433583699.jpg', '2023-09-10 12:50:36', '2023-09-10 12:50:36'),
(6, 2, 'product/169433583668.jpg', '2023-09-10 12:50:36', '2023-09-10 12:50:36'),
(7, 2, 'product/169433583683.jpg', '2023-09-10 12:50:36', '2023-09-10 12:50:36'),
(8, 2, 'product/169433583698.jpg', '2023-09-10 12:50:36', '2023-09-10 12:50:36'),
(9, 3, 'product/169433748857.jpg', '2023-09-10 13:18:08', '2023-09-10 13:18:08'),
(10, 3, 'product/169433748846.jpg', '2023-09-10 13:18:08', '2023-09-10 13:18:08'),
(11, 3, 'product/169433748888.jpg', '2023-09-10 13:18:08', '2023-09-10 13:18:08'),
(12, 3, 'product/169433748888.jpg', '2023-09-10 13:18:08', '2023-09-10 13:18:08'),
(13, 4, 'product/169434073129.jpg', '2023-09-10 14:12:12', '2023-09-10 14:12:12'),
(14, 4, 'product/169434073247.jpg', '2023-09-10 14:12:12', '2023-09-10 14:12:12'),
(15, 4, 'product/169434073235.png', '2023-09-10 14:12:12', '2023-09-10 14:12:12'),
(16, 4, 'product/169434073280.jpeg', '2023-09-10 14:12:12', '2023-09-10 14:12:12'),
(17, 4, 'product/169434073229.jpg', '2023-09-10 14:12:12', '2023-09-10 14:12:12'),
(18, 4, 'product/169434073276.jpg', '2023-09-10 14:12:12', '2023-09-10 14:12:12'),
(19, 5, 'product/169434197530.jpg', '2023-09-10 14:32:56', '2023-09-10 14:32:56'),
(20, 5, 'product/169434197637.jpg', '2023-09-10 14:32:56', '2023-09-10 14:32:56'),
(21, 5, 'product/169434197678.jpg', '2023-09-10 14:32:56', '2023-09-10 14:32:56'),
(22, 5, 'product/169434197679.jpg', '2023-09-10 14:32:56', '2023-09-10 14:32:56'),
(23, 6, 'product/169434342424.jpg', '2023-09-10 14:57:04', '2023-09-10 14:57:04'),
(24, 6, 'product/169434342492.jpg', '2023-09-10 14:57:05', '2023-09-10 14:57:05'),
(25, 6, 'product/169434342540.jpg', '2023-09-10 14:57:05', '2023-09-10 14:57:05'),
(26, 6, 'product/169434342515.jpg', '2023-09-10 14:57:05', '2023-09-10 14:57:05'),
(27, 6, 'product/169434342555.jpg', '2023-09-10 14:57:05', '2023-09-10 14:57:05'),
(28, 7, 'product/169434461286.jpg', '2023-09-10 15:16:52', '2023-09-10 15:16:52'),
(29, 7, 'product/169434461277.jpg', '2023-09-10 15:16:52', '2023-09-10 15:16:52'),
(30, 7, 'product/16943446127.jpg', '2023-09-10 15:16:52', '2023-09-10 15:16:52'),
(31, 7, 'product/169434461228.jpg', '2023-09-10 15:16:52', '2023-09-10 15:16:52'),
(32, 7, 'product/169434461267.jpg', '2023-09-10 15:16:52', '2023-09-10 15:16:52'),
(33, 7, 'product/169434461240.jpg', '2023-09-10 15:16:52', '2023-09-10 15:16:52'),
(34, 8, 'product/169434775731.jpg', '2023-09-10 16:09:17', '2023-09-10 16:09:17'),
(35, 8, 'product/169434775720.jpg', '2023-09-10 16:09:17', '2023-09-10 16:09:17'),
(36, 8, 'product/169434775791.jpg', '2023-09-10 16:09:17', '2023-09-10 16:09:17'),
(37, 8, 'product/169434775795.jpg', '2023-09-10 16:09:17', '2023-09-10 16:09:17'),
(38, 8, 'product/169434775721.jpg', '2023-09-10 16:09:18', '2023-09-10 16:09:18'),
(39, 8, 'product/169434775857.jpg', '2023-09-10 16:09:18', '2023-09-10 16:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `lname` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8mb4_unicode_ci,
  `state` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-09-09 23:21:57', '2023-09-09 23:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `send_messages`
--

CREATE TABLE `send_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `meta_title`, `meta_image`, `meta_description`, `status`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Men', NULL, 'sub_category/16943321495.jpg', NULL, 1, '2023-09-10 11:49:10', '2023-09-11 06:26:06', 'men'),
(2, 'Women', NULL, 'sub_category/169433218184.jpg', NULL, 1, '2023-09-10 11:49:42', '2023-09-11 06:26:22', 'women'),
(3, 'T-shirt', NULL, 'sub_category/169434027951.jpg', NULL, 1, '2023-09-10 12:31:11', '2023-09-11 06:26:28', 't-shirt'),
(4, 'Ring', NULL, 'sub_category/169433476047.jpg', NULL, 1, '2023-09-10 12:32:41', '2023-09-11 06:27:22', 'ring'),
(5, 'Neckalses', NULL, 'sub_category/169433502743.jpg', NULL, 1, '2023-09-10 12:37:07', '2023-09-11 06:27:18', 'neckalses'),
(6, 'Eaarings', NULL, 'sub_category/169433512134.jpg', NULL, 1, '2023-09-10 12:38:41', '2023-09-11 06:28:17', 'eaarings'),
(7, 'Ladies Shoes', NULL, 'sub_category/169443523227.jpg', NULL, 1, '2023-09-10 12:48:14', '2023-09-11 06:27:12', 'ladies-shoes'),
(8, 'Child Shoes', NULL, 'sub_category/169433664637.jpg', NULL, 1, '2023-09-10 13:04:07', '2023-09-11 06:27:02', 'child-shoes'),
(9, 'Shirt', NULL, 'sub_category/169434011658.jpg', NULL, 1, '2023-09-10 14:01:57', '2023-09-11 06:26:48', 'shirt'),
(10, 'Black T-shirt', NULL, 'sub_category/169434168970.jpg', NULL, 1, '2023-09-10 14:28:09', '2023-09-10 14:28:09', NULL),
(11, 'Chambray Shirt', NULL, 'sub_category/169434296591.jpg', NULL, 1, '2023-09-10 14:49:25', '2023-09-11 06:26:43', 'chambray-shirt'),
(12, 'Round Neck T-shirt', NULL, 'sub_category/169434442020.jpg', NULL, 1, '2023-09-10 15:13:41', '2023-09-11 06:26:39', 'round-neck-t-shirt'),
(13, 'Twist front T-shirt', NULL, 'sub_category/169434539929.jpg', NULL, 1, '2023-09-10 15:29:59', '2023-09-11 06:26:34', 'twist-front-t-shirt');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nandonik', 'nandonik@gmail.com', NULL, '$2y$10$tP/QzfDTFSgFINWU4fOKSOCLeem.ni6VFVbYN38VjC6tDeiITT.8G', NULL, '2023-09-09 23:21:57', '2023-09-09 23:21:57'),
(2, 'User', 'user@gmail.com', NULL, '$2y$10$GKRGXHNTUgKAtV.N/P3YkuHncRJHwm7ndvsGZAbYO13/FuDa65ZUG', NULL, '2023-09-09 23:21:57', '2023-09-09 23:21:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_addresses_user_id_foreign` (`user_id`),
  ADD KEY `billing_addresses_order_id_foreign` (`order_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_sub_category`
--
ALTER TABLE `category_sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_sub_category_category_id_foreign` (`category_id`),
  ADD KEY `category_sub_category_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `customer_services`
--
ALTER TABLE `customer_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordered_products_product_id_foreign` (`product_id`),
  ADD KEY `ordered_products_order_id_foreign` (`order_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_order_id_foreign` (`order_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `send_messages`
--
ALTER TABLE `send_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category_sub_category`
--
ALTER TABLE `category_sub_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer_services`
--
ALTER TABLE `customer_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `send_messages`
--
ALTER TABLE `send_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billing_addresses`
--
ALTER TABLE `billing_addresses`
  ADD CONSTRAINT `billing_addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `billing_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `category_sub_category`
--
ALTER TABLE `category_sub_category`
  ADD CONSTRAINT `category_sub_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_sub_category_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD CONSTRAINT `ordered_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ordered_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
