/*
 Navicat Premium Data Transfer

 Source Server         : ConnectDBXampp
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : shopaoquan

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 29/02/2024 22:06:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `vitri` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (8, '/images/2024-02-29-11-03-50-banner_2.png', 1, 0, '2024-02-29 11:03:50', '2024-02-29 11:03:50');
INSERT INTO `banners` VALUES (9, '/images/2024-02-29-11-02-14-banner_1.png', 1, 0, '2024-02-29 11:02:14', '2024-02-29 11:02:14');
INSERT INTO `banners` VALUES (11, '/images/2024-02-29-14-29-07-banner_2.png', 0, 1, '2024-02-29 14:29:07', '2024-02-29 14:29:25');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (9, 'Áo', '2024-02-29 11:08:21', '2024-02-29 11:08:21');
INSERT INTO `categories` VALUES (10, 'Quần', '2024-02-29 11:22:46', '2024-02-29 11:22:46');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guarantees
-- ----------------------------
DROP TABLE IF EXISTS `guarantees`;
CREATE TABLE `guarantees`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `time` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for images_products
-- ----------------------------
DROP TABLE IF EXISTS `images_products`;
CREATE TABLE `images_products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for info_ships
-- ----------------------------
DROP TABLE IF EXISTS `info_ships`;
CREATE TABLE `info_ships`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_ships
-- ----------------------------
INSERT INTO `info_ships` VALUES (11, 20, 'Minh Khang', '0866411902', 'Xã Phú Phong', 'Huyện Hương Khê', 'Tỉnh Hà Tĩnh', '2024-02-29 14:24:28', '2024-02-29 14:24:28', 'laravelmail444@gmail.com', '123 ABC');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_12_16_093154_edit_users_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_12_16_114945_create_categories_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_12_16_184800_create_promotions_table', 1);
INSERT INTO `migrations` VALUES (8, '2023_12_18_152421_create_guarantees_table', 2);
INSERT INTO `migrations` VALUES (10, '2023_12_18_153517_create_import_coupons_table', 4);
INSERT INTO `migrations` VALUES (11, '2023_12_18_152708_create_suppliers_table', 5);
INSERT INTO `migrations` VALUES (12, '2023_12_18_154010_create_detail_import_coupons_table', 6);
INSERT INTO `migrations` VALUES (13, '2023_12_20_090611_create_images_products_table', 7);
INSERT INTO `migrations` VALUES (19, '2023_12_20_090930_create_products_table', 8);
INSERT INTO `migrations` VALUES (22, '2023_12_22_224258_add_column_to_users', 9);
INSERT INTO `migrations` VALUES (25, '2023_12_24_160425_create_parameter_products_table', 11);
INSERT INTO `migrations` VALUES (27, '2023_12_24_220007_remove_id_category_from_products', 12);
INSERT INTO `migrations` VALUES (34, '2023_12_25_150518_create_orders_table', 13);
INSERT INTO `migrations` VALUES (35, '2023_12_25_150531_create_order_items_table', 13);
INSERT INTO `migrations` VALUES (36, '2023_12_25_150551_create_transactions_table', 13);
INSERT INTO `migrations` VALUES (37, '2023_12_26_155539_remove_column_from_orders', 14);
INSERT INTO `migrations` VALUES (38, '2023_12_26_155849_add_column_from_orders', 15);
INSERT INTO `migrations` VALUES (39, '2023_12_26_181401_modify_column_from_orders', 16);
INSERT INTO `migrations` VALUES (40, '2023_12_26_185434_modify_column_from_orders', 17);
INSERT INTO `migrations` VALUES (41, '2023_12_26_190022_remove_column_from_orders', 18);
INSERT INTO `migrations` VALUES (42, '2023_12_26_190504_modify_column_from_orders', 19);
INSERT INTO `migrations` VALUES (45, '2023_12_26_190644_modify_column_from_orders', 22);
INSERT INTO `migrations` VALUES (46, '2023_12_26_190722_add_column_from_orders', 23);
INSERT INTO `migrations` VALUES (47, '2023_12_26_191146_remove_column_from_orders', 24);
INSERT INTO `migrations` VALUES (48, '2023_12_26_191220_add_column_from_order_items', 25);
INSERT INTO `migrations` VALUES (49, '2023_12_29_071208_create_roles_table', 26);
INSERT INTO `migrations` VALUES (50, '2023_12_29_071505_modify_column_from_users', 27);
INSERT INTO `migrations` VALUES (51, '2023_12_29_071928_add_column_from_users', 28);
INSERT INTO `migrations` VALUES (52, '2023_12_29_125028_remove_column_from_users', 29);
INSERT INTO `migrations` VALUES (53, '2023_12_29_125047_remove_column_from_suppliers', 29);
INSERT INTO `migrations` VALUES (54, '2023_12_29_125207_add_column_from_suppliers', 30);
INSERT INTO `migrations` VALUES (55, '2024_01_02_080529_remove_column_from_images_product', 31);
INSERT INTO `migrations` VALUES (56, '2024_01_02_080601_add_column_from_images_product', 32);
INSERT INTO `migrations` VALUES (57, '2024_01_02_080718_remove_column_from_images_products', 33);
INSERT INTO `migrations` VALUES (58, '2024_01_03_063345_create_banners_table', 34);
INSERT INTO `migrations` VALUES (59, '2024_01_20_084907_create_tbl_address_ship_table', 35);
INSERT INTO `migrations` VALUES (60, '2024_01_20_090347_create_info_ships_table', 36);
INSERT INTO `migrations` VALUES (61, '2024_01_21_100413_add_column_orders', 37);
INSERT INTO `migrations` VALUES (62, '2024_01_21_101630_create_transactions_table', 38);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_items_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `order_items_order_id_foreign`(`order_id`) USING BTREE,
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES (30, 29, 28, 2, '2024-02-29 14:24:41', '2024-02-29 14:24:41', 1100000);
INSERT INTO `order_items` VALUES (31, 29, 29, 1, '2024-02-29 14:47:34', '2024-02-29 14:47:34', 550000);
INSERT INTO `order_items` VALUES (32, 27, 30, 1, '2024-02-29 14:49:14', '2024-02-29 14:49:14', 350000);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `delivered_date` date NULL DEFAULT NULL,
  `canceled_date` date NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total` double NOT NULL,
  `isPay` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (28, 20, 'Minh Khang', '0866411902', 'laravelmail444@gmail.com', 'Xã Phú Phong', '123 ABC', 'Huyện Hương Khê', 'Tỉnh Hà Tĩnh', 4, NULL, NULL, '2024-02-29 14:24:41', '2024-02-29 14:25:27', 1250000, 0);
INSERT INTO `orders` VALUES (29, 20, 'Minh Khang', '0866411902', 'laravelmail444@gmail.com', 'Xã Phú Phong', '123 ABC', 'Huyện Hương Khê', 'Tỉnh Hà Tĩnh', 4, NULL, NULL, '2024-02-29 14:47:34', '2024-02-29 14:48:53', 700000, 0);
INSERT INTO `orders` VALUES (30, 20, 'Minh Khang', '0866411902', 'laravelmail444@gmail.com', 'Xã Phú Phong', '123 ABC', 'Huyện Hương Khê', 'Tỉnh Hà Tĩnh', 4, NULL, NULL, '2024-02-29 14:49:14', '2024-02-29 14:49:20', 500000, 0);

-- ----------------------------
-- Table structure for parameter_products
-- ----------------------------
DROP TABLE IF EXISTS `parameter_products`;
CREATE TABLE `parameter_products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `main` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cpu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vga` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hhd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ssd` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `psu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `case` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `parameter_products_id_product_unique`(`id_product`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parameter_products
-- ----------------------------
INSERT INTO `parameter_products` VALUES (22, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 11:21:51', '2024-02-29 11:21:51');
INSERT INTO `parameter_products` VALUES (23, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-29 11:23:17', '2024-02-29 11:23:17');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sku` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `id_bh` int NULL DEFAULT NULL,
  `quantity` int NOT NULL,
  `status` int NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `promotion_id` int NULL DEFAULT NULL,
  `id_supploer` int NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (27, 'AO2902', '/images/2024-02-29-11-08-57-sanpham_1.png', 'Áo Thun Regular Chicago Baseball', 'Áo Thun Regular Chicago Baseball', 350000, NULL, 19, 1, 9, NULL, NULL, '2024-02-29 11:08:57', '2024-02-29 14:49:18');
INSERT INTO `products` VALUES (28, 'AO20909', '/images/2024-02-29-11-21-51-id-006397a_3fbb6ba56a884bc7b34582beec4f7314_1024x1024.jpg', 'Chia sẻ Áo Sơmi Cuban Roadway Legend', 'Chia sẻ\r\nÁo Sơmi Cuban Roadway Legend', 390000, NULL, 20, 1, 9, NULL, NULL, '2024-02-29 11:21:51', '2024-02-29 11:21:51');
INSERT INTO `products` VALUES (29, 'QUAN2902', '/images/2024-02-29-11-23-17-quan.png', 'Quần Jeans Slim Fit Blue Wash Modern Vibe', 'Quần Jeans Slim Fit Blue Wash Modern Vibe', 550000, NULL, 17, 1, 10, NULL, NULL, '2024-02-29 11:23:17', '2024-02-29 14:48:00');

-- ----------------------------
-- Table structure for promotions
-- ----------------------------
DROP TABLE IF EXISTS `promotions`;
CREATE TABLE `promotions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotions
-- ----------------------------
INSERT INTO `promotions` VALUES (1, 'Tết Đến Rồi', '30', '2023-12-30 00:00:00', '2024-02-09 00:00:00', 1, '2023-12-18 14:21:57', '2023-12-18 15:18:00');
INSERT INTO `promotions` VALUES (2, 'Vui Cùng Noel', '25', '2023-12-18 00:00:00', '2023-12-28 00:00:00', 1, '2023-12-18 14:37:10', '2023-12-18 14:37:10');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', '2023-12-29 14:20:51', '2023-12-29 14:20:53');
INSERT INTO `roles` VALUES (2, 'employee', '2023-12-29 14:21:05', '2023-12-29 14:21:07');
INSERT INTO `roles` VALUES (3, 'user', '2023-12-29 14:21:21', '2023-12-29 14:21:23');

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES (10, 'Ecom', 'Ecom', 1, '2024-02-29 11:25:40', '2024-02-29 11:25:40', '/images/2024-02-29-11-25-40-banner_thuonghieu.png');
INSERT INTO `suppliers` VALUES (11, 'Local Brand VN', 'Local Brand VN', 1, '2024-02-29 11:26:17', '2024-02-29 11:26:17', '/images/2024-02-29-11-26-17-local-brand-la-gi-thumb.jpg');
INSERT INTO `suppliers` VALUES (12, 'Paris', 'Paris', 1, '2024-02-29 11:27:39', '2024-02-29 11:27:39', '/images/2024-02-29-11-27-39-banner');

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `amout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (1, 22, '46050000', 'Thanh toan GD:22', 1, '2024-01-21 10:53:38', '2024-01-21 10:53:38');
INSERT INTO `transactions` VALUES (2, 23, '33120000', 'Thanh toan GD:23', 1, '2024-01-21 11:29:14', '2024-01-21 11:29:14');
INSERT INTO `transactions` VALUES (3, 24, '46050000', 'Thanh toan GD:24', 1, '2024-01-22 00:03:08', '2024-01-22 00:03:08');
INSERT INTO `transactions` VALUES (4, 26, '33120000', 'Thanh toan GD:26', 1, '2024-01-22 02:38:56', '2024-01-22 02:38:56');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@mail.com', NULL, '$2y$12$4GPSoHX0meHhXrn61QrNkuaSx7rQP7IHyQcjE0dyKpKA1XrRWOLqS', '9pAhHhUxricGeb3YfysPCXbhs5gDfijD6pvrjFJsOekueu6Gp52YvskGFujR', '2023-12-18 06:33:05', '2023-12-18 06:33:05', '0866411902', NULL, NULL, 1);
INSERT INTO `users` VALUES (12, 'Trần Minh Khang', 'trmkhang2001@gmail.com', NULL, '$2y$12$f0kw7RuOHoyATle9pXJY0.IzHUEc4kXufebSmGZu4iWVPhV5djt5G', NULL, '2023-12-22 23:52:41', '2023-12-22 23:58:55', '0866411902', NULL, NULL, 2);
INSERT INTO `users` VALUES (13, 'Tran Van An', 'tranquocbao@gmail.com', NULL, '$2y$12$W2obJihNjohhOUowOvKSvegZimJfx0xm376yKg3doqX88irWtBijq', NULL, '2023-12-22 23:52:52', '2023-12-29 08:49:56', '0935713289', NULL, NULL, 3);
INSERT INTO `users` VALUES (15, 'Trần Minh Khang', 'trmkhang2002@gmail.com', NULL, '$2y$12$Fl9ytqKXv5pFaETfXaer/ep95Vp/YT/ir2EeTbuB.AYdHeQd09tea', NULL, '2023-12-22 23:55:26', '2023-12-22 23:55:26', '0866411902', NULL, NULL, 3);
INSERT INTO `users` VALUES (17, 'Minh Khang', 'minhkhangcloud@gmail.com', NULL, '$2y$12$GjwqYOU7NjO2OURMtpvumutgoyfXLkH2zer/K26WzG4lTNV8Urv.2', NULL, '2024-01-21 10:13:35', '2024-01-21 10:13:35', '0866411902', NULL, NULL, 3);
INSERT INTO `users` VALUES (19, 'Nguyễn Thùy Linh', 'thuylinh2201@gmail.com', NULL, '$2y$12$GJjn8YJgc9ha7dFXNRLjPeSfL.z/DPy4seVbJyfeVGNua8B0KIphi', NULL, '2024-01-22 00:01:14', '2024-01-22 00:01:14', '0866411902', NULL, NULL, 3);
INSERT INTO `users` VALUES (20, 'Minh Khang', 'minhkhang1234@gmail.com', NULL, '$2y$12$xr8pm4P4iZq8yiuobr3J8ORBJk1FODNP/dooonpHb7dFuvUNjwTDi', NULL, '2024-02-29 14:23:28', '2024-02-29 14:23:28', '0866411902', NULL, NULL, 3);

SET FOREIGN_KEY_CHECKS = 1;
