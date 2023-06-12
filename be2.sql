-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 12, 2023 lúc 09:55 AM
-- Phiên bản máy phục vụ: 8.0.31
-- Phiên bản PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `training_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'iPhone (Apple)', NULL, NULL),
(2, 'Samsung', NULL, NULL),
(3, 'OPPO', NULL, NULL),
(4, 'Xiaomi', NULL, NULL),
(5, 'Vivo', NULL, NULL),
(6, 'realme', NULL, NULL),
(7, 'Nokia', NULL, NULL),
(8, 'Masstel', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartltem`
--

DROP TABLE IF EXISTS `cartltem`;
CREATE TABLE IF NOT EXISTS `cartltem` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-06-05 00:10:50', '2023-06-05 00:10:50'),
(2, 2, '2023-06-05 00:12:29', '2023-06-05 00:12:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `cart_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cartitem_cart_id_foreign` (`cart_id`),
  KEY `cartitem_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_items`
--

INSERT INTO `cart_items` (`id`, `quantity`, `cart_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 2, '2023-06-05 00:11:26', '2023-06-05 00:11:26'),
(3, 1, 1, 18, '2023-06-05 00:11:34', '2023-06-05 00:11:34'),
(4, 1, 2, 2, '2023-06-05 00:12:29', '2023-06-05 00:12:29'),
(5, 1, 2, 6, '2023-06-05 00:12:44', '2023-06-05 00:12:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `productId` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_productid_foreign` (`productId`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `url`, `productId`, `created_at`, `updated_at`) VALUES
(1, 'https://cdn.tgdd.vn/Products/Images/42/299034/oppo-find-n2-flip-purple-thumb-1-600x600-1-600x600.jpg', 1, NULL, NULL),
(2, 'https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-den-thumb-600x600.jpg', 2, NULL, NULL),
(3, 'https://cdn.tgdd.vn/Products/Images/42/247508/iphone-14-pro-vang-thumb-600x600.jpg', 3, NULL, NULL),
(4, 'https://cdn.tgdd.vn/Products/Images/42/267211/Samsung-Galaxy-S21-FE-vang-1-2-600x600.jpg', 4, NULL, NULL),
(5, 'https://cdn.tgdd.vn/Products/Images/42/303575/xiaomi-redmi-12c-grey-thumb-600x600.jpg', 5, NULL, NULL),
(6, 'https://cdn.tgdd.vn/Products/Images/42/249948/samsung-galaxy-s23-ultra-1-600x600.jpg', 6, NULL, NULL),
(7, 'https://cdn.tgdd.vn/Products/Images/42/153856/iphone-xi-den-600x600.jpg', 7, NULL, NULL),
(8, 'https://cdn.tgdd.vn/Products/Images/42/286697/vivo-y35-thumb-den-600x600.jpg', 8, NULL, NULL),
(9, 'https://cdn.tgdd.vn/Products/Images/42/301642/oppo-reno8t-vang1-thumb-600x600.jpg', 9, NULL, NULL),
(10, 'https://cdn.tgdd.vn/Products/Images/42/301603/realme-c35-vang-thumb-600x600.jpg', 10, NULL, NULL),
(11, 'https://cdn.tgdd.vn/Products/Images/42/262650/samsung-galaxy-a23-cam-thumb-600x600.jpg', 11, NULL, NULL),
(12, 'https://cdn.tgdd.vn/Products/Images/42/224859/samsung-galaxy-s20-fan-edition-xanh-la-thumbnew-600x600.jpeg', 12, NULL, NULL),
(13, 'https://cdn.tgdd.vn/Products/Images/42/240259/iPhone-14-thumb-do-600x600.jpg', 13, NULL, NULL),
(14, 'https://cdn.tgdd.vn/Products/Images/42/283148/vivo-v25-5g-vang-thumb-1-1-600x600.jpg', 14, NULL, NULL),
(15, 'https://cdn.tgdd.vn/Products/Images/42/290877/Realme-c30s-xanh-temp-600x600.jpg', 15, NULL, NULL),
(16, 'https://cdn.tgdd.vn/Products/Images/42/290829/samsung-galaxy-s23-plus-600x600.jpg', 16, NULL, NULL),
(17, 'https://cdn.tgdd.vn/Products/Images/42/245545/iPhone-14-plus-thumb-den-600x600.jpg', 17, NULL, NULL),
(18, 'https://cdn.tgdd.vn/Products/Images/42/250625/samsung-galaxy-z-fold4-kem-256gb-600x600.jpg', 18, NULL, NULL),
(19, 'https://cdn.tgdd.vn/Products/Images/42/279065/xiaomi-12t-thumb-600x600.jpg', 19, NULL, NULL),
(20, 'https://cdn.tgdd.vn/Products/Images/42/286702/Xiaomi-Redmi-A1-thumb-xanh-duong-600x600.jpg', 20, NULL, NULL),
(21, 'https://cdn.tgdd.vn/Products/Images/42/291697/vivo-y16-vang-thumb-600x600.jpg', 21, NULL, NULL),
(22, 'https://cdn.tgdd.vn/Products/Images/42/260546/oppo-reno8-pro-thumb-xanh-1-600x600.jpg', 22, NULL, NULL),
(23, 'https://cdn.tgdd.vn/Products/Images/42/249944/oppo-a55-4g-thumb-new-600x600.jpg', 23, NULL, NULL),
(24, 'https://cdn.tgdd.vn/Products/Images/42/236780/iphone-13-mini-pink-1-600x600.jpg', 24, NULL, NULL),
(25, 'https://cdn.tgdd.vn/Products/Images/42/285032/vivo-y02s-thumb-1-2-3-600x600.jpg', 25, NULL, NULL),
(26, 'https://cdn.tgdd.vn/Products/Images/42/292672/realme-10-thumb-1-600x600.jpg', 26, NULL, NULL),
(27, 'https://cdn.tgdd.vn/Products/Images/42/274084/Nokia-C21-Plus-Gray-600x600.jpg', 27, NULL, NULL),
(28, 'https://cdn.tgdd.vn/Products/Images/42/283819/samsung-galaxy-a04s-den-thumb-1-600x600.jpg', 28, NULL, NULL),
(29, 'https://cdn.tgdd.vn/Products/Images/42/115343/vivo-y21-white-01-1-600x600.jpg', 29, NULL, NULL),
(30, 'https://cdn.tgdd.vn/Products/Images/42/273459/tcl-30-se-xanh-thumb-600x600.jpg', 30, NULL, NULL),
(31, 'https://cdn.tgdd.vn/Products/Images/42/250622/oppo-find-x5-pro-den-thumb-600x600.jpg', 31, NULL, NULL),
(32, 'https://cdn.tgdd.vn/Products/Images/42/258047/samsung-galaxy-z-flip4-5g-128gb-thumb-tim-600x600.jpg', 32, NULL, NULL),
(33, 'https://cdn.tgdd.vn/Products/Images/42/235838/Galaxy-S22-Ultra-Burgundy-600x600.jpg', 33, NULL, NULL),
(34, 'https://cdn.tgdd.vn/Products/Images/42/242439/Galaxy-S22-Plus-White-600x600.jpg', 34, NULL, NULL),
(35, 'https://cdn.tgdd.vn/Products/Images/42/267984/xiaomi-13-thumb-den-600x600.jpg', 35, NULL, NULL),
(36, 'https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-blue-1-600x600.jpg', 36, NULL, NULL),
(37, 'https://cdn.tgdd.vn/Products/Images/42/264060/samsung-galaxy-s23-600x600.jpg', 37, NULL, NULL),
(38, 'https://cdn.tgdd.vn/Products/Images/42/213031/iphone-12-tim-1-600x600.jpg', 38, NULL, NULL),
(39, 'https://cdn.tgdd.vn/Products/Images/42/236187/oppo-reno6-pro-grey-600x600.jpg', 39, NULL, NULL),
(40, 'https://cdn.tgdd.vn/Products/Images/42/231110/Galaxy-S22-Black-600x600.jpg', 40, NULL, NULL),
(41, 'https://cdn.tgdd.vn/Products/Images/42/282389/vivo-v25-pro-5g-xanh-thumb-1-600x600.jpg', 41, NULL, NULL),
(42, 'https://cdn.tgdd.vn/Products/Images/42/303585/samsung-galaxy-a54-5g-tim-thumb-600x600.jpg', 42, NULL, NULL),
(43, 'https://cdn.tgdd.vn/Products/Images/42/246195/samsung-galaxy-a73-5g-xanh-thumb-600x600.jpg', 43, NULL, NULL),
(44, 'https://cdn.tgdd.vn/Products/Images/42/278886/xiaomi-redmi-note-12-pro-5g-momo-1-600x600.jpg', 44, NULL, NULL),
(45, 'https://cdn.tgdd.vn/Products/Images/42/246196/Samsung-Galaxy-A53-xanh-thumb-600x600.jpg', 45, NULL, NULL),
(46, 'https://cdn.tgdd.vn/Products/Images/42/299248/oppo-reno8t-4g-den1-thumb-600x600.jpg', 46, NULL, NULL),
(47, 'https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-nau-thumb-600x600.jpg', 47, NULL, NULL),
(48, 'https://cdn.tgdd.vn/Products/Images/42/303583/samsung-galaxy-a34-5g-thumb-600x600.jpg', 48, NULL, NULL),
(49, 'https://cdn.tgdd.vn/Products/Images/42/255513/realme-9-pro-plus-5g-blue-thumb-600x600.jpg', 49, NULL, NULL),
(50, 'https://cdn.tgdd.vn/Products/Images/42/271717/oppo-reno7-z-5g-thumb-2-1-600x600.jpg', 50, NULL, NULL),
(51, 'https://cdn.tgdd.vn/Products/Images/42/246199/samsung-galaxy-a33-5g-thumb-new-1-600x600.jpg', 51, NULL, NULL),
(52, 'https://cdn.tgdd.vn/Products/Images/42/292780/oppo-a77s-den-thumb-1-2-600x600.jpg', 52, NULL, NULL),
(53, 'https://cdn.tgdd.vn/Products/Images/42/274381/oppo-a96-den-thumb-1-600x600.jpg', 53, NULL, NULL),
(54, 'https://cdn.tgdd.vn/Products/Images/42/303298/xiaomi-redmi-note-12-4g-mono-den-600x600.jpg', 54, NULL, NULL),
(55, 'https://cdn.tgdd.vn/Products/Images/42/272016/sam-sung-galaxy-a23-5g-den-thumb-600x600.jpg', 55, NULL, NULL),
(56, 'https://cdn.tgdd.vn/Products/Images/42/251703/oppo-a95-4g-bac-2-600x600.jpg', 56, NULL, NULL),
(57, 'https://cdn.tgdd.vn/Products/Images/42/245607/Vivo-V23e-1-2-600x600.jpg', 57, NULL, NULL),
(58, 'https://cdn.tgdd.vn/Products/Images/42/270471/xiaomi-redmi-note-11-pro-trang-thumb-600x600.jpg', 58, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `internal_memories`
--

DROP TABLE IF EXISTS `internal_memories`;
CREATE TABLE IF NOT EXISTS `internal_memories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `internal_memories`
--

INSERT INTO `internal_memories` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, '32 GB', NULL, NULL),
(2, '64 GB', NULL, NULL),
(3, '128 GB', NULL, NULL),
(4, '256 GB', NULL, NULL),
(5, '512 GB', NULL, NULL),
(6, '1 TB', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_29_065814_create_products_table', 1),
(6, '2023_04_29_070221_create_brands_table', 1),
(7, '2023_04_29_070308_create_ram_sizes_table', 1),
(8, '2023_04_29_070555_create_internal_memories_table', 1),
(9, '2023_04_29_072250_create_images_table', 1),
(10, '2023_04_29_072333_create_cartltem_table', 1),
(11, '2023_04_29_072439_create_cart_item_table', 1),
(12, '2023_04_29_072504_create_carts_table', 1),
(13, '2023_04_29_072532_create_review_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `openratingSystems` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandId` bigint UNSIGNED NOT NULL,
  `ramSizeId` bigint UNSIGNED NOT NULL,
  `operatingSystemId` bigint UNSIGNED NOT NULL,
  `internalMemoryId` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_brandid_foreign` (`brandId`),
  KEY `products_ramsizeid_foreign` (`ramSizeId`),
  KEY `products_operatingsystemid_foreign` (`operatingSystemId`),
  KEY `products_internalmemoryid_foreign` (`internalMemoryId`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `openratingSystems`, `brandId`, `ramSizeId`, `operatingSystemId`, `internalMemoryId`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại OPPO Find N2 Flip', 'Về thiết kế của máy, Find N2 Flip sẽ được làm theo cơ chế gập ấn tượng với tỷ lệ khung hình rộng và viền mỏng. Ngoài ra, điện thoại còn được trang bị một màn hình phụ nhỏ ở mặt sau giúp người dùng tiện lợi trong việc chụp ảnh selfie hoặc kiểm tra thông báo. ', 19990000, 'Android 13', 3, 4, 0, 3, NULL, NULL),
(2, 'Điện thoại iPhone 14 Pro Max 128GB', 'iPhone năm nay sẽ được thừa hưởng nét đặc trưng từ người anh iPhone 13 Pro Max, vẫn sẽ là khung thép không gỉ và mặt lưng kính cường lực kết hợp với tạo hình vuông vức hiện đại thông qua cách tạo hình phẳng ở các cạnh và phần mặt lưng.', 27090000, 'iOS 16', 1, 3, 0, 1, NULL, NULL),
(3, 'Điện thoại iPhone 14 Pro 128GB', 'Đến với thiết kế của iPhone 14 Pro năm nay, hãng vẫn giữ lại nét đặc trưng vốn có từ các đời trước, vẫn mang trong mình ngoại hình vuông vức với các cạnh và mặt lưng vát phẳng. Hiện tại thị hiếu của người dùng về kiểu thiết kế này vẫn đang rất cao, vậy nên theo mình thấy thì đây vẫn sẽ là chiếc điện thoại bắt trend cho trong nhiều năm tiếp theo.', 24990000, 'iOS 16', 1, 3, 0, 1, NULL, NULL),
(4, 'Điện thoại Samsung Galaxy S21 FE 5G (6GB/128GB)', 'Galaxy S21 FE 5G thiết kế mỏng nhẹ với độ dày 7.9 mm, khối lượng chỉ 177 gram, các góc cạnh bo tròn cho cảm giác hài hòa, mềm mại, kết hợp các tông màu thời thượng gồm tím, xanh lá, xám và trắng giúp bạn dễ dàng tạo nên phong cách riêng đầy cá tính.', 9990000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(5, 'Điện thoại Xiaomi Redmi 12C 64GB', 'Với thiết kế bo cong mềm mại qua những đường nét tinh xảo và màu sắc hiện đại, Redmi 12C có vẻ ngoài rất sang trọng và thời thượng để mang đến cái nhìn đầy bắt mắt. Điện thoại không chỉ đơn thuần là một thiết bị thông thường mà còn có thể sử dụng như một phụ kiện thời trang giúp bạn tự tin hơn mỗi khi cầm nắm chúng trên tay.', 2990000, 'Android 12', 4, 2, 0, 4, NULL, NULL),
(6, 'Điện thoại Samsung Galaxy S23 Ultra 5G 256GB', 'Về thiết kế thì Samsung Galaxy S23 Ultra sẽ tiếp tục thừa hưởng kiểu dáng sang trọng đến từ thế hệ trước, vẫn là bộ khung kim loại, mặt lưng kính cùng kiểu tạo hình bo cong nhẹ ở cạnh bên và màn hình.', 26090000, 'Android 13', 2, 4, 0, 2, NULL, NULL),
(7, 'Điện thoại iPhone 11 64GB', 'Nói về nâng cấp thì camera chính là điểm có nhiều cải tiến nhất trên thế hệ iPhone mới.', 10390000, 'iOS 15', 1, 2, 0, 1, NULL, NULL),
(8, 'Điện thoại Vivo Y35', 'Vivo Y35 có kích thước màn hình 6.58 inch đi cùng là tấm nền IPS LCD, độ phân giải Full HD+ với những thông số trên chất lượng hình ảnh hiển thị có chi tiết tốt, góc nhìn rộng và màu sắc trung thực.', 5790000, 'Android 12', 5, 3, 0, 5, NULL, NULL),
(9, 'Điện thoại OPPO Reno8 T 5G 256GB', 'Qua những lần chạm đầu tiên trên chiếc Reno8 T 5G thì mình thấy đây là một chiếc điện thoại có độ hoàn thiện khá tốt, máy mang lại cho mình một cảm giác cầm nắm tương đối là đầm tay, hai bên cạnh cũng được làm bo cong giúp hạn chế tình trạng cấn tay mang đến cho mình một trải nghiệm sử dụng khá là thoải mái.', 10690000, 'Android 13', 3, 4, 0, 3, NULL, NULL),
(10, 'Điện thoại realme C55 6GB', 'realme C55 chiếc smartphone có thiết kế đơn giản với ngôn ngữ thiết kế vuông vắn và màu sắc thanh lịch, khung viền được làm cứng cáp cùng mặt lưng nhựa nhám giúp mang lại cảm giác cầm chắc tay hay hạn chế việc bám dấu vân tay mỗi khi sử dụng.', 4590000, 'Android 13', 6, 3, 0, 6, NULL, NULL),
(11, 'Điện thoại Samsung Galaxy A23 4GB', 'Để máy vận hành một cách ổn định hơn Samsung trang bị cho Galaxy A23 con chip quốc dân dành cho thị trường di động tầm trung hiện nay (04/2022) mang tên Snapdragon 680 8 nhân với hiệu suất tối đa đạt được là 2.4 GHz.', 4690000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(12, 'Điện thoại Samsung Galaxy S20 FE (8GB/256GB)', 'Camera trên S20 FE là 3 cảm biến chất lượng nằm gọn trong mô đun chữ nhật độc đáo ở mặt lưng bao gồm: Camera chính 12 MP cho chất lượng ảnh sắc nét, camera góc siêu rộng 12 MP cung cấp góc chụp tối đa và cuối cùng camera tele 8 MP hỗ trợ zoom quang học 3X.', 8790000, 'Android 12', 2, 4, 0, 2, NULL, NULL),
(13, 'Điện thoại iPhone 14 128GB', 'Với phiên bản tiêu chuẩn thì nhà Apple vẫn giữ nguyên kiểu dáng thiết kế so với thế hệ tiền nhiệm, vẫn là mặt lưng phẳng cùng bộ khung vuông giúp máy trở nên hiện đại hơn.', 19490000, 'iOS 16', 1, 3, 0, 1, NULL, NULL),
(14, 'Điện thoại Vivo V25 5G', 'Vivo V25 sở hữu cho mình những màu sắc hết sức trẻ trung và hiện đại, không chỉ mang đến nhiều sự lựa chọn hơn cho người dùng mà điều này còn đem lại cái nhìn tươi mới năng động hơn khi cầm nắm sử dụng.', 9490000, 'Android 12', 5, 3, 0, 5, NULL, NULL),
(15, 'Điện thoại realme C30s (2GB/32GB)', 'realme C30s có cho mình một thiết kế đẹp mắt nhờ lối tạo hình vuông vức bắt trend, sở hữu hai phiên bản màu sắc trung tính là xanh và đen nên đây được xem là thiết bị có thể phù hợp với mọi lứa tuổi giới tính.', 2190000, 'Android 12 (Go Edition)', 6, 1, 0, 6, NULL, NULL),
(16, 'Điện thoại Samsung Galaxy S23+ 5G 256GB', 'Ấn tượng đầu tiên của mình khi trên tay chiếc Galaxy S23+ là cái nhìn vuông vắn sang trọng, tổng thể máy được hoàn thiện từ các loại chất liệu cao cấp giúp mang đến trải nghiệm cầm nắm đầm tay hơn. ', 22190000, 'Android 13', 2, 4, 0, 2, NULL, NULL),
(17, 'Điện thoại iPhone 14 Plus 128GB', 'Giống như những thế hệ “Plus” trước đây, iPhone 14 Plus vẫn sẽ là phiên bản phóng to từ iPhone 14 với ngôn ngữ thiết kế không đổi, vẫn sẽ là cạnh viền vuông vức đi kèm với mặt lưng phẳng để tạo nên cái nhìn bắt trend và đặc trưng.', 21890000, 'iOS 16', 1, 3, 0, 1, NULL, NULL),
(18, 'Điện thoại Samsung Galaxy Z Fold4 256GB', 'Galaxy Z Fold4 (2022) ra mắt với ngoại hình gần như là không đổi khi so với Galaxy Z Fold3, nếu bạn chỉ nhìn bề ngoài thì bạn sẽ khó lòng phân biệt được 2 sản phẩm này. Máy vẫn sử dụng khung viền Armor Aluminum bền bỉ, mặt kính màn hình phụ là Corning Gorilla Glass Victus+, mặt kính màn hình chính là Ultra Thin Glass.', 35790000, 'Android 12', 2, 4, 0, 2, NULL, NULL),
(19, 'Điện thoại Xiaomi 12T 5G 128GB', 'Xiaomi 12T có thiết kế khá tương đồng với thế hệ tiền nhiệm, mặt lưng được làm bo cong ở hai cạnh kèm theo một dòng chữ “Xiaomi” bố trí ở góc dưới phần thân máy.', 9490000, 'Android 12', 4, 3, 0, 4, NULL, NULL),
(20, 'Điện thoại Xiaomi Redmi A1', 'Sở hữu thiết kế giả da sang trọng mang đến cho thiết bị một diện mạo cuốn hút thời trang, đi kèm với đó sẽ là những màu sắc vô cùng cá tính và trẻ trung.', 1890000, 'Android 12 (Go Edition)', 4, 1, 0, 4, NULL, NULL),
(21, 'Điện thoại Vivo Y16 64GB', 'Vivo Y16 được thiết kế phẳng bởi các cạnh và hai mặt của máy được tạo hình vuông vức, điều này giúp chiếc máy trở nên sang trọng và hợp thời hơn để bạn có thể tự tin sử dụng trên tay.', 3390000, 'Android 12', 5, 2, 0, 5, NULL, NULL),
(22, 'Điện thoại OPPO Reno8 Pro 5G', 'Lần này nhà OPPO mang đến cho chúng ta một chiếc điện thoại có thiết kế đặc biệt, máy sở hữu một diện mạo khác hẳn với những chiếc điện thoại OPPO Reno trước đây, cách thiết kế này đã làm mình liên tưởng đến chiếc OPPO Find X5 Pro được ra mắt trước đó.', 17990000, 'Android 12', 3, 4, 0, 3, NULL, NULL),
(23, 'Điện thoại OPPO A55', 'OPPO A55 4G có 3 phiên bản màu độc đáo là xanh lá, xanh dương và màu đen. Thiết kế cong 3D cùng kích thước mỏng nhẹ, OPPO A55 4G vừa vặn trong tay người cầm, cho từng thao tác trải nghiệm thoải mái và chắc chắn.', 3690000, 'Android 11', 3, 2, 0, 3, NULL, NULL),
(24, 'Điện thoại iPhone 13 mini 128GB', 'iPhone 13 mini được trang bị bộ vi xử lý A15 Bionic sản xuất trên tiến trình 5 nm giúp cải thiện hiệu suất và giảm điện năng tiêu thụ đến 15% so với phiên bản A14 Bionic trước đó, đáp ứng hoàn hảo trong công việc cũng như trong giải trí của người dùng tốt hơn.', 16990000, 'iOS 15', 1, 3, 0, 1, NULL, NULL),
(25, 'Điện thoại Vivo Y02s 32GB', 'Vivo Y02s được hoàn thiện với hai mặt và các cạnh vát phẳng giúp cho thân hình của chiếc máy trở nên vuông vắn và cực kỳ hợp xu hướng hiện nay. Nổi bật hơn hết là cụm camera được Vivo thiết kế với hai cụm tròn to nổi khá ấn tượng.', 2890000, 'Android 12', 5, 1, 0, 5, NULL, NULL),
(26, 'Điện thoại realme 10', 'realme 10 có một ngoại hình vuông vắn nhờ lối tạo hình phẳng ở các mặt và cạnh viền. Tổng khối lượng của máy đạt 178 g, vậy nên khi sử dụng lâu dài sẽ giúp giảm thiểu việc mỏi tay, điều này thực sự hữu ích dành cho những ai thường xuyên phải sử dụng điện thoại trong nhiều giờ liền.', 6490000, 'Android 12', 6, 4, 0, 6, NULL, NULL),
(27, 'Điện thoại Nokia C21 Plus 64GB', 'C21 Plus mang trong mình viên pin có dung lượng 5050 mAh, bạn có thể sử dụng liên tục xuyên suốt cả ngày. Đi kèm với đó là chuẩn sạc Micro USB 10 W cơ bản, với công suất này thì bạn có thể sạc máy trong thời gian nghỉ ngơi để hạn chế thời gian chờ đợi.', 2390000, 'Android 11 (Go Edition)', 7, 2, 0, 7, NULL, NULL),
(28, 'Điện thoại Samsung Galaxy A04s', 'Samsung trang bị cho tân binh Galaxy A04s màn hình IPS LCD kích thước 6.5 inch với độ phân giải HD+ đủ để hiển thị hình ảnh một cách sắc nét, màu sắc thể hiện chân thực mang đến cho người dùng trải nghiệm xem đắm chìm. Đặc biệt màn hình hỗ trợ tần số quét 90 Hz cao hơn hẳn so với 60 Hz thông thường, tạo độ mượt mà khi bạn cuộn, lướt hoặc chơi các tựa game có FPS cao.', 3190000, 'Android 12', 2, 2, 0, 2, NULL, NULL),
(29, 'Điện thoại Vivo Y21', 'Máy có một thiết kế nguyên khối tạo cảm giác bền bỉ, chắc chắn. Vivo Y21 còn mang đến trải nghiệm cầm nắm thoải mái với thân máy mỏng chỉ 8 mm và có các cạnh viền bo tròn mịn màng giúp cho mọi thao tác sử dụng trở nên hoàn hảo.', 3090000, 'Android 11', 5, 2, 0, 5, NULL, NULL),
(30, 'Điện thoại TCL 30 SE', 'TCL 30 SE khoác lên mình một vẻ ngoài khá thời thượng nhờ lối thiết kế phẳng, cạnh viền có hơi bo cong nhẹ để mang đến cảm giác cầm nắm dễ chịu hơn khi sử dụng máy trong khoảng thời gian dài.', 2540000, 'Android 12', 3, 3, 0, 4, NULL, NULL),
(31, 'Điện thoại OPPO Find X5 Pro 5G', 'Điều làm mình mê hoặc ngay từ cái nhìn đầu tiên là mặt lưng hết sức bóng bẩy, trên phiên bản màu đen thì mình hoàn toàn có thể sử dụng máy với công dụng tương tự như một chiếc gương soi tiện ích.', 22990000, 'Android 12', 3, 4, 0, 3, NULL, NULL),
(32, 'Điện thoại Samsung Galaxy Z Flip4 128GB', 'Có lẽ điện thoại gập đã không còn là cái tên quá xa lạ bởi nhiều ông lớn trong ngành sản xuất thiết bị di động đã cho ra mắt khá nhiều sản phẩm có thiết kế tương tự, gần đây nhất thì có sự góp mặt của chiếc flagship đến từ nhà Samsung mang tên Galaxy Z Flip4. ', 19990000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(33, 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB', 'Galaxy S22 Ultra 5G được kế thừa form thiết kế từ những dòng Note trước đây của hãng đem đến cho bạn có cảm giác vừa mới lạ vừa hoài niệm. Khối lượng của máy 228 g cho cảm giác cầm nắm đầm tay, khi cầm máy trần thì hơi có cảm giác dễ trượt.', 18890000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(34, 'Điện thoại Samsung Galaxy S22+ 5G 128GB', 'Galaxy S22+ 5G thiết kế bền bỉ với khung viền từ hợp kim Armor Aluminum cứng cáp, trang bị kính cường lực Gorilla Glass Victus+ giúp hạn chế trầy xước cho bạn thoải mái sử dụng thiết bị.', 17790000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(35, 'Điện thoại Xiaomi 13 5G', 'Năm nay, nhà Xiaomi khoác lên mình sản phẩm mới với một vẻ ngoài hoàn toàn khác so với thế hệ cũ, từ màu sắc cho đến cách bố trí cụm camera trên Xiaomi 13 đều thể hiện lên một điểm độc lạ chưa từng có. ', 17690000, 'Android 13', 4, 4, 0, 4, NULL, NULL),
(36, 'Điện thoại iPhone 13 128GB', 'Con chip Apple A15 Bionic siêu mạnh được sản xuất trên quy trình 5 nm giúp iPhone 13 đạt hiệu năng ấn tượng, với CPU nhanh hơn 50%, GPU nhanh hơn 30% so với các đối thủ trong cùng phân khúc.', 17090000, 'iOS 15', 1, 3, 0, 1, NULL, NULL),
(37, 'Điện thoại Samsung Galaxy S23 5G 128GB', 'Ở phiên bản năm nay, mình rất vui khi biết được rằng Galaxy S23 vẫn giữ nguyên kiểu dáng quen thuộc từ thế hệ trước, nó được xem là một biểu tượng của dòng điện thoại Samsung Galaxy dòng S khi mang trong mình một đặc trưng riêng biệt và đầy đẳng cấp.', 16390000, 'Android 13', 2, 3, 0, 2, NULL, NULL),
(38, 'Điện thoại iPhone 12 64GB', 'Apple đã trang bị con chip mới nhất của hãng (tính đến 11/2020) cho iPhone 12 đó là A14 Bionic, được sản xuất trên tiến trình 5 nm với hiệu suất ổn định hơn so với chip A13 được trang bị trên phiên bản tiền nhiệm iPhone 11.', 14990000, 'iOS 15', 1, 2, 0, 1, NULL, NULL),
(39, 'Điện thoại OPPO Reno6 Pro 5G', 'Reno6 Pro 5G trang bị bộ vi xử lý mạnh mẽ Snapdragon 870 đến từ Qualcomm, đạt tốc độ xử lý cao trên xung nhịp lên đến 3.2 GHz, hiệu suất CPU tăng lên 12% và GPU 10% so với thế hệ chipset tiền nhiệm, mang đến trải nghiệm ấn tượng trên từng tác vụ giải trí lẫn công việc.', 13990000, 'Android 11', 3, 4, 0, 3, NULL, NULL),
(40, 'Điện thoại Samsung Galaxy S22 5G 128GB', 'Cảm giác đầu tiên Samsung Galaxy S22 mang lại cho mình khi sử dụng là máy cho cảm giác cầm nắm cực kỳ chắc chắn và đằm tay với thiết kế nhỏ gọn của mình.', 13640000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(41, 'Điện thoại Vivo V25 Pro 5G', 'Giữa vô vàn thiết bị sở hữu lối thiết kế vuông vức trên thị trường thì sự xuất hiện của V25 Pro làm mình cảm thấy rất thích thú bởi điện thoại được tạo hình bo cong ở các cạnh, mang lại cho thiết bị một nét đặc trưng riêng biệt.', 11990000, 'Android 12', 5, 3, 0, 5, NULL, NULL),
(42, 'Điện thoại Samsung Galaxy A54 5G 128GB', 'Galaxy A54 5G có thiết kế khá trẻ trung với kiểu dáng phẳng và nhiều phiên bản màu sắc mới mẻ đầy cuốn hút. Máy được làm từ nhựa, giúp cảm giác cầm nắm trở nên nhẹ nhàng và thoải mái hơn.', 9590000, 'Android 13', 2, 3, 0, 2, NULL, NULL),
(43, 'Điện thoại Samsung Galaxy A73 5G 128GB', 'Điều mà mình ấn tượng nhất trên Galaxy A73 5G đó chính là khả năng chụp ảnh khi máy sở hữu 4 ống kính có độ phân giải lần lượt: Camera chính 108 MP, camera góc siêu rộng 12 MP, cảm biến độ sâu và macro có cùng độ phân giải 5 MP giúp các bức ảnh thu lại trở nên chi tiết hơn.', 9540000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(44, 'Điện thoại Xiaomi Redmi Note 12 Pro 5G', 'Xiaomi Redmi Note 12 Pro 5G có kiểu dáng tổng thể khá hợp thời và trẻ trung với các phiên bản màu sắc lần lượt là: Xanh, Trắng và Đen. Máy sở hữu mặt lưng bằng chất liệu kính và khung viền vuông vức từ nhựa, hơi bo cong nhẹ hứa hẹn sẽ mang đến trải nghiệm cầm nắm dễ chịu, thoải mái trong quá trình sử dụng.', 9490000, 'Android 12', 4, 4, 0, 4, NULL, NULL),
(45, 'Điện thoại Samsung Galaxy A53 5G 128GB', 'Máy trang bị tấm nền Super AMOLED với kích thước màn hình lên đến 6.5 inch mang đến hình ảnh đầy màu sắc, độ tương phản cao, tối ưu năng lượng tiêu hao và không gian hiển thị đầy đủ, bao quát.', 8490000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(46, 'Điện thoại OPPO Reno8 T', 'Chiếc điện thoại OPPO này sở hữu một tấm nền AMOLED với ưu điểm tái hiện màu sắc rực rỡ, nội dung có chiều sâu cùng khả năng tối ưu điện năng cực tốt, nhờ vậy mà máy có thể trở thành một cái tên rất phù hợp cho những ai đang mong muốn tìm mua một thiết bị để phục vụ cho việc giải trí, xem phim thường xuyên cùng mức giá bán hợp lý.', 8490000, 'Android 13', 3, 4, 0, 3, NULL, NULL),
(47, 'Điện thoại Samsung Galaxy M53', 'Samsung đã trình làng Galaxy M53 với ba phiên bản màu vô cùng đẹp mắt như mình đang cầm trên tay, với tone màu có hơi sẫm đi một tí làm toát lên một vẻ huyền bí đầy cuốn hút và thanh lịch.', 8290000, 'Android 12', 2, 4, 0, 2, NULL, NULL),
(48, 'Điện thoại Samsung Galaxy A34 5G 128GB', 'Với thiết kế đẹp và hiện đại, Galaxy A34 5G có mặt lưng nhẵn làm từ nhựa cao cấp và cụm camera được bố trí đối xứng theo một hàng dọc đầy bắt mắt. Nhờ sử dụng vật liệu nhựa giúp máy trở nên nhẹ hơn và cảm thấy thoải mái khi cầm nắm.', 7790000, 'Android 13', 2, 3, 0, 2, NULL, NULL),
(49, 'Điện thoại realme 9 Pro+ 5G', 'realme 9 Pro+ 5G với thiết kế Light Shift trên phiên bản Lam Hừng Đông hoàn toàn mới, có thể thay đổi màu từ xanh lam nhạt sang đỏ khi tiếp xúc với ánh sáng mặt trời đẹp tựa như cảnh bình minh. Còn một phiên bản màu khác là Lục Cực Quang cũng cực kỳ đẹp mắt.', 7690000, 'Android 12', 6, 3, 0, 6, NULL, NULL),
(50, 'Điện thoại OPPO Reno7 Z 5G', 'Điện thoại OPPO Reno7 Z 5G có khung viền vát phẳng, vuông vức trendy làm cho máy toát lên nét hiện đại và năng động. Bốn góc được bo cong mềm mại tạo cảm giác thoải mái và nhẹ nhàng (chỉ 173 g). Với thiết kế nguyên khối làm tổng thể máy trở nên cực kỳ chắc chắn, không chỉ đẹp mà còn tăng độ bền.', 7490000, 'Android 11', 3, 3, 0, 3, NULL, NULL),
(51, 'Điện thoại Samsung Galaxy A33 5G 6GB', 'Galaxy A33 có cạnh viền được chế tạo từ nhựa nhằm tối ưu khối lượng, mang lại cảm giác cầm nắm nhẹ nhàng, các cạnh được bo cong mềm mại giúp mình sử dụng lâu dài mà không thấy xuất hiện tình trạng cấn tay.', 6290000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(52, 'Điện thoại OPPO A77s', 'OPPO A77s là điện thoại RAM 8 GB, với phiên bản phần mềm được cập nhật từ tháng 11/2022 thì máy có khả năng mở rộng RAM lên đến 8 GB (thay vì 5 GB như lúc vừa ra mắt) mang lại dung lượng RAM hàng đầu phân khúc, với thông số này thì máy sẽ mang lại sự ổn định đối với hầu hết các tác vụ đa nhiệm dù là nặng nhất.', 6290000, 'Android 12', 3, 3, 0, 3, NULL, NULL),
(53, 'Điện thoại OPPO A96', 'Ở lần ra mắt này, OPPO đã trình làng A96 với hai phiên bản màu sắc đó chính là đen và hồng. Cả hai màu đều được hoàn thiện phần mặt lưng với vật liệu chính là thủy tinh hữu cơ, cùng với đó là công nghệ OPPO Glow độc quyền giúp thiết bị toát lên một vẻ ngoài sang trọng hơn. Phiên bản trên tay mình chính là màu đen huyền có thể chuyển màu đậm dần theo từng góc độ ánh sáng khác nhau.', 6190000, 'Android 11', 3, 3, 0, 3, NULL, NULL),
(54, 'Điện thoại Xiaomi Redmi Note 12 8GB', 'Redmi Note 12 sở hữu cho mình một dáng vẻ vuông vắn đầy thời thượng, các góc bo tròn cùng mặt lưng và bộ khung vát phẳng tạo nên nên một cái nhìn hiện đại và cực kỳ trẻ trung. Hơn hết, màu sắc cũng chính là điều góp phần làm cho chiếc máy trở nên thu hút với 3 tone màu hiện đại là: Xám, Xanh Dương và Xanh Lá.', 5790000, 'Android 13', 4, 3, 0, 4, NULL, NULL),
(55, 'Điện thoại Samsung Galaxy A23 5G 4GB', 'A23 sở hữu cho mình con chip Snapdragon 695 với xung nhịp tối đa đạt đến 2.2 GHz, kết hợp cùng nền tảng mạng công nghệ 5G tiên tiến mang đến khả năng làm việc tối ưu với mọi tác vụ trong cuộc sống.', 5690000, 'Android 12', 2, 3, 0, 2, NULL, NULL),
(56, 'Điện thoại OPPO A95', 'OPPO A95 có thiết kế trẻ trung hiện đại với công nghệ phủ màu độc quyền OPPO. Nó mềm mại mượt mà, chống mài mòn và chống bám vân tay một cách hiệu quả.', 5490000, 'Android 11', 3, 3, 0, 3, NULL, NULL),
(57, 'Điện thoại Vivo V23e', 'Vivo V23e vẫn giữ đặc điểm nổi bật của Vivo V Series với thiết kế mỏng 7.36 mm ấn tượng (ở phiên bản màu đen). Viền màn hình 2 cạnh bên có độ mỏng ở mức vừa phải, tuy nhiên thì phần cạnh dưới thì có dày hơn một chút.', 5490000, 'Android 11', 5, 3, 0, 5, NULL, NULL),
(58, 'Điện thoại Xiaomi Redmi Note 11 Pro', 'Điểm nổi bật ở phần thiết kế của Redmi Note 11 Pro chính là cụm camera khá lớn và lồi so với mặt lưng, mặt lưng có chất liệu bằng kính đã được làm phẳng đi. Khung viền bằng nhựa cũng được bo tròn và vát phẳng rất liền mạch, mức độ hoàn thiện tốt, không có hiện tượng ọp ẹp khi mình sử dụng chiếc máy này..', 5390000, 'Android 11', 4, 3, 0, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ram_sizes`
--

DROP TABLE IF EXISTS `ram_sizes`;
CREATE TABLE IF NOT EXISTS `ram_sizes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ram_sizes`
--

INSERT INTO `ram_sizes` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, '2 GB', NULL, NULL),
(2, '3 GB', NULL, NULL),
(3, '4 GB', NULL, NULL),
(4, '6 GB', NULL, NULL),
(5, '8 GB', NULL, NULL),
(6, '12 GB', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `review_product_id_foreign` (`product_id`),
  KEY `review_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `comment`, `rating`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'sài tốt', 5, 2, 2, '2023-06-05 00:14:05', '2023-06-05 00:14:38'),
(2, 'Giao hàng chậm', 3, 2, 1, '2023-06-05 00:15:32', '2023-06-05 00:15:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberPhone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `numberPhone`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'phucngu', '0987654123', 'cart-3.jpg', 'phucngu@gmail.com', NULL, '$2y$10$FVXypKPxC7b2hBbHTIIP8OQiMUmRq/X30q2cdy/WodtRbeYUcweU.', NULL, '2023-06-05 00:10:18', '2023-06-05 00:10:18'),
(2, 'DucThanh', '0123456789', 'cart-1.jpg', 'ducthanh@gmail.com', NULL, '$2y$10$zPu2adNK7aF1gAGGEe3Fg.BAke31k1gQ7rYZoEVhSFAGiM4RtFBtu', NULL, '2023-06-05 00:12:10', '2023-06-05 00:12:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
