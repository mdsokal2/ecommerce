-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 06:49 AM
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
-- Database: `ecommercewebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'sabrina', 'sabrinarimiss@gmail.com', NULL, 'Dhaka', 'BONAJOUR AC CONTROL GREEN TEA LOTION 150ML', '8000', '1', 'admin/assets/images/products/2356554701668086088.png', 1, 1, '2022-11-10 21:26:30', '2022-11-10 21:26:30'),
(3, 'sabrina', 'sabrinarimiss@gmail.com', NULL, 'Dhaka', 'BONAJOUR PEPTIDE WATER CREAM 100ML', '2000', '1', 'admin/assets/images/products/9655239081668086206.jpg', 2, 1, '2022-11-10 21:27:25', '2022-11-10 21:27:25'),
(4, 'sabrina', 'sabrinarimiss@gmail.com', NULL, 'Dhaka', 'Blue Cotton Kids Cushion', '699', '1', 'admin/assets/images/products/12889088831668086645.jpg', 5, 1, '2022-11-10 21:31:29', '2022-11-10 21:31:29'),
(5, 'sabrina', 'sabrinarimiss@gmail.com', '00000000', 'Dhaka', 'Hand Painted Wrought Iron Van', '2090', '1', 'admin/assets/images/products/17598370881668086744.jpg', 6, 1, '2022-11-10 21:43:50', '2022-11-10 21:43:50'),
(6, 'sabrina', 'sabrinarimiss@gmail.com', '00000000', 'Dhaka', 'Hand Painted Wrought Iron Van', '2090', '1', 'admin/assets/images/products/17598370881668086744.jpg', 6, 1, '2022-11-10 23:17:20', '2022-11-10 23:17:20'),
(7, 'sabrina', 'sabrinarimiss@gmail.com', '00000000', 'Dhaka', 'Hand Painted Wrought Iron Van', '8360', '4', 'admin/assets/images/products/17598370881668086744.jpg', 6, 1, '2022-11-10 23:17:42', '2022-11-10 23:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(2, 'Shoe', '2022-11-05 13:44:29', '2022-11-06 02:26:30'),
(3, 'Watch', '2022-11-05 13:54:45', '2022-11-05 13:54:45'),
(7, 'Baby dress', '2022-11-06 00:09:29', '2022-11-06 00:09:29'),
(8, 'Mobile', '2022-11-06 14:10:10', '2022-11-06 14:10:10'),
(9, 'Laptop', '2022-11-06 14:10:22', '2022-11-06 14:10:22'),
(10, 'Face Wash', '2022-11-06 14:10:33', '2022-11-06 14:10:33'),
(11, 'Oil', '2022-11-06 14:10:45', '2022-11-06 14:10:45'),
(12, 'Furniture', '2022-11-06 14:12:02', '2022-11-06 14:12:02'),
(13, 'Bangles', '2022-11-06 14:12:13', '2022-11-06 14:12:13'),
(14, 'Purse', '2022-11-06 14:12:25', '2022-11-06 14:12:25'),
(15, 'Cream', '2022-11-10 21:18:14', '2022-11-10 21:18:14'),
(16, 'Mans Cloth', '2022-11-10 21:20:10', '2022-11-10 21:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_03_063716_create_sessions_table', 1),
(7, '2022_11_04_184944_create_categories_table', 1),
(14, '2022_11_05_171454_create_products_table', 2),
(15, '2022_11_07_061236_create_carts_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `quantity`, `category`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'BONAJOUR AC CONTROL GREEN TEA LOTION 150ML', '<ul>\r\n	<li><strong>Which skin type is it good for?</strong><br />\r\n	✓ Oily ✓ Trouble ✓ Combination<strong>Main Ingredient</strong><br />\r\n	✓ Camellia Sinensis Leaf Extract ✓ EGCG\r\n	<p>&nbsp;</p>\r\n\r\n	<p>Containing green tea components, rich in Vitamins A, C, and tocopherol, it will make skin healthy and glossy.</p>\r\n	</li>\r\n	<li>Oily Skin Type use. Vegan Proof.</li>\r\n	<li>Contains Green Tea Leaf Extract to soothe troubled skin and control sebum.</li>\r\n	<li>Controls excessive sebum secretion and leaves skin fresh without sticky feeling.<strong>Without</strong><br />\r\n	parabens, phenoxyethanol, artificial coloring, artificial fragrance, Allergen fragrance, synthetic alcohol, PEG, sulfates, silicone, animal ingredient, animal testing\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>Natural Ingredient Content 96%</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Ingredients</strong></p>\r\n\r\n<p>Water,Butylene Glycol,Glycerin,Camellia Sinensis Leaf Extract,Helianthus Annuus (Sunflower) Seed Oil,Cetearyl Alcohol,Houttuynia Cordata Extract,Cetearyl Olivate,Pentylene Glycol,Nelumbo Nucifera Leaf Extract,Cryptomeria Japonica Leaf Extract,Saccharomyces Ferment,Carbomer,Arginine,Sorbitan Olivate,1,2-Hexanediol,Caprylyl Glycol,Ginkgo Biloba Nut Extract,Punica Granatum Fruit Extract,Morus Alba Fruit Extract,Ficus Carica (Fig) Fruit Extract,Allantoin,Sodium Hyaluronate,Epigallocatechin Gallate</p>', 'admin/assets/images/products/2356554701668086088.png', '2', 'Face Wash', '9000', '8000', '2022-11-10 21:14:49', '2022-11-10 21:14:49'),
(2, 'BONAJOUR PEPTIDE WATER CREAM 100ML', '<ul>\r\n	<li><strong>recommended skin</strong><br />\r\n	✓ Oily ✓ Complexity\r\n	<p>&nbsp;</p>\r\n\r\n	<p><strong>main ingredient</strong><br />\r\n	✓ Peptides ✓ Hyaluronic Acid</p>\r\n\r\n	<p>Moist and refreshing moisture cream without greasy (recommended for oily and combination)<br />\r\n	It is a popular product for both men and women and men and women who have dry skin on the inside but are concerned about the appearance of oiliness.<br />\r\n	Various peptide ingredients help to keep stressed skin healthy.<br />\r\n	It covers and cares for the weakened skin moisture barrier.</p>\r\n\r\n	<p><strong>Without</strong><br />\r\n	Parabens, Phenoxyethanol, Synthetic Colorants, Artificial Flavors, Allergens, Synthetic Alcohol, Sebum, Sulfates, Animal Ingredients, Animal Testing</p>\r\n\r\n	<p><strong>83% naturally derived ingredients</strong></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Ingredients</strong></p>\r\n\r\n<p>Water,Butylene Glycol,Cyclopentasiloxane,Glycerin,Helianthus Annuus (Sunflower) Seed Oil,Sodium Hyaluronate,Polyglutamic Acid,Phenyl Trimethicone,Squalane,Octyldodecanol,Glycereth-26,Pentylene Glycol,Hamamelis Virginiana (Witch Hazel) Water,Glyceryl Stearate Citrate,Polyglyceryl-3 Distearate,Polyglyceryl-10 Dilaurate,Dipotassium Glycrrhizinate,Nicotinoyl dipeptide-23,Acetyl Hexapeptide-8,1,2-Hexanediol,Carbomer,Arginine,Allantoin,Dexpanthenol,Dimethicone Crosspolymer,Sodium Polyacryloyldimethyl Taurate,Caprylyl Glycol,Dicaprylyl ether,Adenosine,Propanediol,Caprylhydroxamic Acid</p>', 'admin/assets/images/products/9655239081668086206.jpg', '6', 'Face Wash', '2000', NULL, '2022-11-10 21:16:46', '2022-11-10 21:16:46'),
(3, 'TIAM MY SIGNATURE A+ CREAM- 50ML', '<p>A brightening moisturizing cream that increases skin&rsquo;s moisture level while restoring dull skin and helping to get back a glowing skin. &acirc;&raquo; For better result, use with vitamin C serum Key Ingredients : Vitamin C, Shea butter, Niacinamide.</p>\r\n\r\n<p><strong>Benefits:</strong><br />\r\n-Nourishes and hydrates skin for healthy and elastic skin.<br />\r\n-Strengthens the skin&rsquo;s barrier and protects skin from external aggressors.<br />\r\n-Evens out and brightens skin tone.<br />\r\n-Balances pH value for healthy skin.</p>\r\n\r\n<p><strong>How to use:</strong><br />\r\n1. At the last step of skincare routine (both day and night), take a moderate amount and apply to the entire face.<br />\r\n2. Gently press palms over face for better absorption.</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nPurified Water, Butylene Glycol, Glycerin, Hydrogenated Polydecene, Caprylic/capric Triglyceride, Niacinamide, Hydrogenated Polyisobutene, Isohexadecane, Cetearyl Alcohol, Glyceryl Stearate, Polysorb Bate 60, 1, 2-hexanediol, Phenoxyethanol, Sorbitan Stearate, etc.</p>', 'admin/assets/images/products/9787542881668086283.jpg', '5', 'Face Wash', '1200', '1100', '2022-11-10 21:18:03', '2022-11-10 21:18:03'),
(4, 'BANILA CO CLEAN IT ZERO CLASSIC 100ML', '<p>This award-winning cleanser goes on as a solid balm and transforms into a silky oil on the skin. Its sorbet-soft, lightweight texture effortlessly dissolves stubborn makeup without stripping your own natural oils. Papaya extract works to naturally exfoliate the skin and acerola extact is rich in vitamin C which helps to brighten.</p>\r\n\r\n<p>This is great for most skin types! For those with sensitive skin, we recommend&nbsp;<a href=\"https://sokoglam.com/products/banila-co-clean-it-zero-purity\" target=\"_blank\">Clean It Zero Purity</a>.</p>', 'admin/assets/images/products/13941679591668086366.jpg', '5', 'Cream', '1700', '1550', '2022-11-10 21:19:26', '2022-11-10 21:19:26'),
(5, 'Blue Cotton Kids Cushion', '<h1>&nbsp;</h1>\r\n\r\n<p>Blue cotton cloth cushion with rabbit detail. A soft and comfortable toy for kids. Specifications Care&nbsp;&nbsp; &nbsp;Clean With Soft Dry Brush And Keep It Dry Place Fabric&nbsp;&nbsp; &nbsp;Cotton Height&nbsp;&nbsp; &nbsp;8 Length&nbsp;&nbsp; &nbsp;42 Lining&nbsp;&nbsp; &nbsp;Fibre Stuffing Measurment Unit&nbsp;&nbsp; &nbsp;CM Unit&nbsp;&nbsp; &nbsp;Single Width&nbsp;&nbsp; &nbsp;42</p>', 'admin/assets/images/products/12889088831668086645.jpg', '5', 'Baby dress', '699', NULL, '2022-11-10 21:24:05', '2022-11-10 21:24:05'),
(6, 'Hand Painted Wrought Iron Van', '<h3>PRODUCT DESCRIPTION</h3>\r\n\r\n<p>Multicolour hand painted wrought iron van.</p>\r\n\r\n<table>\r\n	<caption>Specifications</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Colour</th>\r\n			<td>Multicolour</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Unit</th>\r\n			<td>Single Piece</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Length</th>\r\n			<td>18</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Width</th>\r\n			<td>7.5</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Height</th>\r\n			<td>9</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Measurement Unit</th>\r\n			<td>CM</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Care</th>\r\n			<td>Clean With Soft Dry Cloth And Keep It Dry Place</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'admin/assets/images/products/17598370881668086744.jpg', '6', 'Baby dress', '2090', NULL, '2022-11-10 21:25:44', '2022-11-10 21:25:44'),
(7, 'v', NULL, NULL, NULL, 'Mans Cloth', NULL, NULL, '2022-11-10 22:30:54', '2022-11-10 22:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7yZkiD4ODMOvHfY6HcWT1tZBu35QDVdZFbMwGcTt', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2JnZWtOZzJZVFdWaXJnUnVUZUdkZU5jbkh1RnBVUlM2QVBRV2pJYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93LWNhcnQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1668093467);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL DEFAULT 0,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_type`, `Phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'sabrina', 'sabrinarimiss@gmail.com', 1, '00000000', 'Dhaka', NULL, '$2y$10$yQ5eD2SAcajJ5Hy4JhGKTuwoipdysK52q0D5b9SG/luvgULKvtOqu', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-05 13:32:24', '2022-11-05 13:32:24'),
(2, 'sokal', 'sokal161@gmail.com', 0, '00000000', 'Dhaka', NULL, '$2y$10$i84eKygGan9aioEwASiKR.h2xWw.aPdnQgT2g.XN68KuXcNhnu3rS', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-05 13:40:25', '2022-11-05 13:40:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
