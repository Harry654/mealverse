-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 23, 2022 at 04:01 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mealverse_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
CREATE TABLE IF NOT EXISTS `customer_order` (
  `cust_ID` int(11) NOT NULL,
  `order_ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `order_time` varchar(50) COLLATE utf8_bin NOT NULL,
  `order_date` varchar(10) COLLATE utf8_bin NOT NULL,
  `delivered` int(1) NOT NULL,
  PRIMARY KEY (`order_ID`),
  KEY `order_ID` (`order_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`cust_ID`, `order_ID`, `order_time`, `order_date`, `delivered`) VALUES
(3, '3a9d7d8932a1bf666355e89d2a28ceade11817ad466a32f63d47c45fc5e71cd2', '21 : 06 pm', '2022-01-19', 0),
(2, '23437c15f33efe091fec7784403f492a913b210c718cd3eec411dc8c42f87ee7', '20 : 24 pm', '2022-01-19', 0),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', '21 : 00 pm', '2022-01-19', 0),
(2, 'c5a2d290348a1e375bfea4ac243eb45991314720f3c10070f67ee2fe2e951a32', '17 : 12 pm', '2022-01-19', 0),
(2, '4aced74e18485e1a2d18148c1bb86e9fd431a33a9e697c40cce528febdc3b6cd', '17 : 11 pm', '2022-01-19', 0),
(3, '1217be4793ab8473d7eafc7ee79403e1e673c6e700ef07715932cc12eded059e', '21 : 13 pm', '2022-01-19', 0),
(3, '148ad562d63e48661db1912c0abc79c048672fd24d1078a825dc2397eac650cd', '21 : 14 pm', '2022-01-19', 0),
(2, '25dec3002d5b23581524f6dd0a12539a5e9cdc2a4c857306f795e8e43f2dd23b', '22 : 44 pm', '2022-01-19', 0),
(2, '1c147d87cbcfc8def96c3156013a435df41eb0e8a2612cce9ec9eaa783d525c0', '00 : 53 am', '2022-01-20', 0),
(2, 'e676a0243f3bcdd9c64ba54521b3fd1f901d3a99fb19f59c0c55028006dbba40', '09 : 04 am', '2022-01-20', 0),
(2, '8a63035d7d529485e7dc98d1c26c185194dd5f4625e0e03aa59f096fd78f1a42', '12 : 43 pm', '2022-01-20', 0),
(2, '1e1fcf0566d09416dd77636a75b68516a309095a179e682d93747a1309e2a1cf', '12 : 54 pm', '2022-01-20', 0),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', '14 : 41 pm', '2022-01-20', 0),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', '15 : 03 pm', '2022-01-20', 0),
(2, 'c52fb02686d94ddd756cf12690302980b39ac440fb72f1094328d97ace66d8d3', '23 : 28 pm', '2022-01-20', 0),
(2, 'afadbbd07fb6f2020bd00101bab37de2907dc590093350472fbdca22c6851290', '23 : 29 pm', '2022-01-20', 0),
(2, 'f6ce84d88d05bf46ce4ff32e5f3e35e273a6d5f1f6ce38b018df90e1c4e8e407', '00 : 04 am', '2022-01-21', 0),
(2, '7eb3c0285bef7c573e404bd159a7bace3f8f862908f31bcc8546f7476e5b2a70', '00 : 04 am', '2022-01-21', 0),
(2, 'be699fc8370c3c58fb9e29486d62bb10b1e757417687b4228ac7e25179b3bc13', '00 : 05 am', '2022-01-21', 0),
(2, '4c06de5025a6a5096dce76e22158a6030718333230f611cf77178fe56828d981', '00 : 23 am', '2022-01-21', 0),
(2, '8b5ee8d092e33f6eaf8d40a0eac7a67127c35191e0c1013afaaba1e4700fef2e', '00 : 37 am', '2022-01-21', 0),
(2, '4d6d738ad1aebb8cb2be2c1ddf1d51676cdcb6169848436f7fb3c7c8a2c4152f', '00 : 54 am', '2022-01-21', 0),
(2, 'ecafd4178d2b667dd3348d05fd2b0af412c512c0327205393cfca9b2aaca9f14', '01 : 07 am', '2022-01-21', 0),
(2, '82d63dc56a946b0bd98741a3a015df3cb8be47bf3e6147ad50d4db37bbddce8f', '01 : 09 am', '2022-01-21', 0),
(2, '038b940dd4bcf486559b65c22d3be3db9c32d65b4e1158e19ad394471a22d410', '01 : 09 am', '2022-01-21', 0),
(2, 'aaba45512db8bda2ff3cc74c0be24eae7432b1a9cb6841c393ab8babaf94efa0', '03 : 18 am', '2022-01-21', 0),
(2, 'ceea4fbd8cd5a2b425722d0004226e79a013e2d35ced7458110dcb71d1ee21b9', '10 : 07 am', '2022-01-21', 0),
(2, '0dbac5824310e1e5519d76fdccb746439856a898f7a357102337cde73d68ded3', '13 : 11 pm', '2022-01-21', 0),
(2, '52a91f401bfdf6831055f100d5dfd82c1aea73fdc3cf012f77c1f42f1c450ce8', '13 : 13 pm', '2022-01-21', 0),
(2, '8981cc1c50187ecda894f45370b05e07f52c745b4edfd781213ff13208f953eb', '13 : 14 pm', '2022-01-21', 0),
(2, 'ac84ef201c50ae826655c2310f0811e6dbb20db845f335ebc785f95c42b72dba', '14 : 02 pm', '2022-01-21', 0),
(2, '762f2b60347a20271fa6dd8f0a9237ad912af17cbe14101ae31354c25ede635d', '14 : 22 pm', '2022-01-21', 0),
(2, '24bf18c612911b47b51efb5923c948d273fccfd21296411a17517fb598a1b49b', '15 : 43 pm', '2022-01-21', 0),
(2, '7d63864542917080d92b07c743522964b89161bc2246d8b4c3fbb9bc504333ea', '16 : 32 pm', '2022-01-21', 0),
(2, 'ef0657500e5e205072790ffc6cd5a1677a220514bcc7f6422bc1846ada6a536b', '16 : 38 pm', '2022-01-21', 0),
(2, 'd6c81a3fdc0007a9c3730a35f1f20e57c39e43fe2a4b96469a3943995e4fa94f', '16 : 39 pm', '2022-01-21', 0),
(2, 'f59127d75ecd60dcbd323c1f21a4177262adb1ce16e8f972a8c3b4415bd09059', '16 : 40 pm', '2022-01-21', 0),
(2, '9fbc599c749b8f689fbdd1181b7c2c6918f96d50a70f6d7ac35fe18e0a2a6ba6', '16 : 40 pm', '2022-01-21', 0),
(2, 'ca8201b0011221d2255791f752533c9bb1236916ad6b7f186bf061271eec1841', '20 : 27 pm', '2022-01-21', 0),
(2, '359dad1a23d21b3b5743b0ed022e42367f7136fc5a8163ac63a3905851a3ca7a', '00 : 56 am', '2022-01-22', 0),
(2, '5355f0f275dd4df82a45bd3555fdbdc603a905ba4fd1346cb6f0300a67c4831d', '00 : 57 am', '2022-01-22', 0),
(2, 'f729efbf8eb57ef26eb3195f8936c729c475c5ab25acc82c07cf599927c4f736', '01 : 11 am', '2022-01-22', 0),
(2, '4196b917ef729b64c1d0acee3d206a7a717a7d55e06096ae97dcff0a25bdb7e9', '01 : 13 am', '2022-01-22', 0),
(2, '9b2c8471d9662171916cf9e4bc3048c6c58e614a2ef02b8e28b2944646782981', '01 : 26 am', '2022-01-22', 0),
(2, '26ea4af1a4d487a3bc2364d8f1fc125972e9dc59059eb8a16c50adaf5c72e736', '01 : 31 am', '2022-01-22', 0),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', '01 : 38 am', '2022-01-22', 0),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', '01 : 51 am', '2022-01-22', 0),
(1, '0d29ecfd5e60d867f87d40ad941f8498473515a8528e62d82bede3488ed9c966', '01 : 53 am', '2022-01-22', 0),
(5, '4c493d0cecd9ea23066fb5e5f29e1dc38ad90e7f0a25b056940b6e7183107a69', '02 : 23 am', '2022-01-22', 0),
(2, '60f34ce4692c7da4c13398ae1d4f70537531f50d03aefba030a72a3f3846bc7f', '12 : 26 pm', '2022-01-22', 0),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', '12 : 37 pm', '2022-01-22', 0),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', '12 : 41 pm', '2022-01-22', 0),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', '12 : 48 pm', '2022-01-22', 0),
(2, '81138eb54c9e7dc7d121a5b12e8768aaca456400f12980d73f9a30e12854aefa', '14 : 06 pm', '2022-01-22', 0),
(2, 'f44e50ccd37b8c8dc6f61e6edf889ba25c03b6055435876c13e6769022a418fb', '15 : 24 pm', '2022-01-22', 0),
(2, '976d56a84fd0884c5d9159f0a082abcb879e3d349ec5ec8d54724b9bcfd6c9ce', '15 : 29 pm', '2022-01-22', 0),
(2, 'd288277c9e9009a29537dedc461b2376952c0b9a8a76dd95cbe734b8bb96cc01', '14 : 42 pm', '2022-01-23', 0),
(2, '27eb1f163b0162d1465f98fe9a2bb4852784697f481268a4eee457ded60b2ba6', '14 : 56 pm', '2022-01-23', 0),
(2, 'b53ab78ea79c77f09d03a4fcc09b3642e4a3434d287128fd5317f8a9c8630cbb', '15 : 44 pm', '2022-01-23', 0),
(2, 'b6678b777a370c56b07ac013398ae7ee61ae68d7a15918a4642585120f1db3f3', '15 : 57 pm', '2022-01-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

DROP TABLE IF EXISTS `food_items`;
CREATE TABLE IF NOT EXISTS `food_items` (
  `item_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `item_price` int(50) NOT NULL,
  `item_ID` int(50) NOT NULL,
  `item_URL` varchar(9000) COLLATE utf8_bin NOT NULL,
  `item_desc` varchar(1000) COLLATE utf8_bin NOT NULL,
  `category` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`item_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`item_name`, `item_price`, `item_ID`, `item_URL`, `item_desc`, `category`) VALUES
('Pepperoni Pizza', 200, 1, '/mealverse/food_images/pepperoni_pizza.jpeg', '', 'Pizza'),
('White Bread', 150, 3, '/mealverse/food_images/white_bread.jpeg', '', 'Bread'),
('Cheese Cake', 350, 4, '/mealverse/food_images/cheese_cake.jpeg', '', 'Cake'),
('Blazin\' Dog', 500, 2, '/mealverse/food_images/blazin_dog.jpeg', '', 'Hotdog'),
('Chicago Deep Dish', 1000, 5, '/mealverse/food_images/chicago_deep_dish.jpeg', '', 'Pizza'),
('Thin Crust', 650, 6, '/mealverse/food_images/thin_crust.jpeg', '', 'Pizza'),
('Sicilian Style', 800, 7, '/mealverse/food_images/sicilian_style.jpeg', '', 'Pizza'),
('Neapolitan Crust', 900, 8, '/mealverse/food_images/neapolitan_crust.jpeg', '', 'Pizza'),
('Flatbread Pizza', 500, 9, '/mealverse/food_images/flatbread.jpeg', '', 'Pizza'),
('Tomato Pie', 650, 10, '/mealverse/food_images/tomato_pie.jpeg', '', 'Pie'),
('Classic Lamb Shepherd\'s Pie', 650, 11, '/mealverse/food_images/lamb_shepherds_pie.jpeg', '', 'Pie'),
('Chicken Pie', 500, 12, '/mealverse/food_images/chicken_pie.jpeg', '', 'Pie'),
('Butter Pie Crust', 350, 13, '/mealverse/food_images/butter_pie.jpeg', '', 'Pie'),
('Gluten-free Pumpkin Pie', 800, 14, '/mealverse/food_images/pumpkin_pie.jpeg', '', 'Pie'),
('Old Fashioned Apple Pie', 850, 15, '/mealverse/food_images/apple_pie.jpeg', '', 'Pie'),
('Lemon Pie Filling', 650, 16, '/mealverse/food_images/lemon_pie.jpeg', '', 'Pie'),
('Chicken Pot Pie', 750, 17, '/mealverse/food_images/chicken_pot_pie.jpeg', '', 'Pie'),
('Key Lime Pie', 750, 18, '/mealverse/food_images/key_lime_pie.jpeg', '', 'Pie'),
('Blackberry Pie', 500, 19, '/mealverse/food_images/blackberry_pie.jpeg', '', 'Pie'),
('Battera', 200, 20, '/mealverse/food_images/battera.jpeg', '', 'Sushi'),
('Bozushi', 500, 21, '/mealverse/food_images/bozushi.jpeg', '', 'Sushi'),
('Hakozushi', 350, 22, '/mealverse/food_images/hakozushi.jpeg', '', 'Sushi'),
('Hazushi', 400, 23, '/mealverse/food_images/hazushi.jpeg', '', 'Sushi'),
('Masuzushi', 500, 24, '/mealverse/food_images/masuzushi.jpeg', '', 'Sushi'),
('Rye Bread', 300, 25, '/mealverse/food_images/rye_bread.jpeg', '', 'Bread'),
('Wheat Bread', 200, 26, '/mealverse/food_images/wheat_bread.jpeg', '', 'Bread'),
('Pretzel', 250, 27, '/mealverse/food_images/pretzel.jpeg', '', 'Bread'),
('Whole Grain Bread', 650, 28, '/mealverse/food_images/whole_grain_bread.jpeg', '', 'Bread'),
('French Bread (Baguette)', 750, 29, '/mealverse/food_images/french_bread.jpeg', '', 'Bread'),
('Raspberry Ice Cream', 350, 39, '/mealverse/food_images/raspberry_icecream.jpeg', '', 'Ice Cream'),
('Butter Cake', 2000, 30, '/mealverse/food_images/butter_cake.jpeg', '', 'Cake'),
('Sponge Cake', 1500, 31, '/mealverse/food_images/sponge_cake.jpeg', '', 'Cake'),
('Layer Cake', 1000, 34, '/mealverse/food_images/layer_cake.jpeg', '', 'Cake'),
('Genoise', 1500, 35, '/mealverse/food_images/genoise.jpeg', '', 'Cake'),
('Chocolate Cake', 1300, 36, '/mealverse/food_images/chocolate_cake.jpeg', '', 'Cake'),
('PoundCake', 1000, 37, '/mealverse/food_images/pound_cake.jpeg', '', 'Cake'),
('Angel Food Cake', 1500, 38, '/mealverse/food_images/angel_food_cake.jpeg', '', 'Cake'),
('Coffee Ice Cream', 400, 40, '/mealverse/food_images/coffee_icecream.jpeg', '', 'Ice Cream'),
('Caramel Ice Cream', 300, 41, '/mealverse/food_images/caramel_icecream.jpeg', '', 'Ice Cream'),
('Sea Salt Ice Cream', 300, 42, '/mealverse/food_images/sea_salt_icecream.jpeg', '', 'Ice Cream'),
('Strawberry Ice Cream', 450, 44, '/mealverse/food_images/strawberry_icecream.jpeg', '', 'Ice Cream'),
('Lemon Sorbet Ice Cream', 200, 45, '/mealverse/food_images/lemon_sorbet_icecream.jpeg', '', 'Ice Cream'),
('Peppermint Ice Cream', 200, 46, '/mealverse/food_images/peppermint_icecream.jpeg', '', 'Ice Cream'),
('Cookies and Cream', 500, 47, '/mealverse/food_images/cookies_and_cream_icecream.jpeg', '', 'Ice Cream'),
('Cincinnati Coney', 500, 48, '/mealverse/food_images/cincinnati_coney_hotdog.jpeg', '', 'Hotdog'),
('Pastrami Dog', 500, 49, '/mealverse/food_images/pastrami_hotdog.jpeg', '', 'Hotdog'),
('Big Irish Corned Beef Dog', 500, 50, '/mealverse/food_images/big_irish_corned_beef_dog.jpeg', '', 'Hotdog'),
('Bubble Gum Ice Cream', 650, 52, '/mealverse/food_images/bubble_gum_ice_cream.jpeg', '', 'Ice Cream');

-- --------------------------------------------------------

--
-- Table structure for table `mvp_menu`
--

DROP TABLE IF EXISTS `mvp_menu`;
CREATE TABLE IF NOT EXISTS `mvp_menu` (
  `username` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `monday_br` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `monday_dn` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `tuesday_br` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `tuesday_dn` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `wednesday_br` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `wednesday_dn` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `thursday_br` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `thursday_dn` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `friday_br` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `friday_dn` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `saturday_br` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `saturday_lu` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `saturday_dn` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `sunday_br` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `sunday_lu` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `sunday_dn` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mvp_menu`
--

INSERT INTO `mvp_menu` (`username`, `monday_br`, `monday_dn`, `tuesday_br`, `tuesday_dn`, `wednesday_br`, `wednesday_dn`, `thursday_br`, `thursday_dn`, `friday_br`, `friday_dn`, `saturday_br`, `saturday_lu`, `saturday_dn`, `sunday_br`, `sunday_lu`, `sunday_dn`, `time`) VALUES
('Harrison', 'Bread', 'Plaintain', 'Waffles', 'Swallow', 'Yam', 'Rice and stew', 'Beans', 'Bread', 'Peanuts', 'Egg', 'Pap and Moi-moi', 'Porridge', 'Chips', 'Scrambled egg', 'Fried rice', 'Macrony', '20 : 08 pm'),
('Dennis', 'Dodo', 'Banana', 'Fried Yam', 'Pap', 'Soup', 'Bread', 'Waffles', 'Rice and stew', 'Sausage', 'Swallow', 'Pringles', 'Yam', 'Soup', 'Scrambled egg', 'Macrony', 'Cheese', ''),
('Harrison', 'Dodo', 'Banana', 'Waffles', 'Pap', 'Sandwich', 'Bread', 'Beans', 'Bread', 'Peanuts', 'Egg', 'Pringles', 'Porridge', 'Soup', 'Scrambled egg', 'Fried rice', 'Macrony', '09 : 48 am');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_items`
--

DROP TABLE IF EXISTS `ordered_items`;
CREATE TABLE IF NOT EXISTS `ordered_items` (
  `cust_ID` int(4) NOT NULL,
  `order_ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `quantity` int(2) NOT NULL,
  `item_ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ordered_items`
--

INSERT INTO `ordered_items` (`cust_ID`, `order_ID`, `quantity`, `item_ID`) VALUES
(2, '4aced74e18485e1a2d18148c1bb86e9fd431a33a9e697c40cce528febdc3b6cd', 1, 25),
(2, '4aced74e18485e1a2d18148c1bb86e9fd431a33a9e697c40cce528febdc3b6cd', 1, 27),
(2, '4aced74e18485e1a2d18148c1bb86e9fd431a33a9e697c40cce528febdc3b6cd', 1, 29),
(2, 'c5a2d290348a1e375bfea4ac243eb45991314720f3c10070f67ee2fe2e951a32', 1, 25),
(2, 'c5a2d290348a1e375bfea4ac243eb45991314720f3c10070f67ee2fe2e951a32', 1, 27),
(2, 'c5a2d290348a1e375bfea4ac243eb45991314720f3c10070f67ee2fe2e951a32', 2, 29),
(2, 'c5a2d290348a1e375bfea4ac243eb45991314720f3c10070f67ee2fe2e951a32', 3, 38),
(2, '23437c15f33efe091fec7784403f492a913b210c718cd3eec411dc8c42f87ee7', 1, 5),
(2, '23437c15f33efe091fec7784403f492a913b210c718cd3eec411dc8c42f87ee7', 2, 9),
(2, '23437c15f33efe091fec7784403f492a913b210c718cd3eec411dc8c42f87ee7', 2, 13),
(2, '23437c15f33efe091fec7784403f492a913b210c718cd3eec411dc8c42f87ee7', 1, 29),
(2, '23437c15f33efe091fec7784403f492a913b210c718cd3eec411dc8c42f87ee7', 1, 49),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 1, 2),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 2, 4),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 1, 5),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 1, 8),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 2, 19),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 3, 20),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 1, 25),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 1, 26),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 0, 27),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 1, 29),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 1, 38),
(2, 'ba81ff1811dc7e4cefec1ae128ee7c89340c5f572ee1f0830daa07b35289c0b3', 1, 43),
(3, '3a9d7d8932a1bf666355e89d2a28ceade11817ad466a32f63d47c45fc5e71cd2', 2, 1),
(3, '3a9d7d8932a1bf666355e89d2a28ceade11817ad466a32f63d47c45fc5e71cd2', 1, 2),
(3, '3a9d7d8932a1bf666355e89d2a28ceade11817ad466a32f63d47c45fc5e71cd2', 1, 43),
(3, '1217be4793ab8473d7eafc7ee79403e1e673c6e700ef07715932cc12eded059e', 2, 1),
(3, '1217be4793ab8473d7eafc7ee79403e1e673c6e700ef07715932cc12eded059e', 1, 2),
(3, '1217be4793ab8473d7eafc7ee79403e1e673c6e700ef07715932cc12eded059e', 1, 29),
(3, '1217be4793ab8473d7eafc7ee79403e1e673c6e700ef07715932cc12eded059e', 1, 43),
(3, '148ad562d63e48661db1912c0abc79c048672fd24d1078a825dc2397eac650cd', 2, 1),
(3, '148ad562d63e48661db1912c0abc79c048672fd24d1078a825dc2397eac650cd', 1, 2),
(3, '148ad562d63e48661db1912c0abc79c048672fd24d1078a825dc2397eac650cd', 1, 29),
(3, '148ad562d63e48661db1912c0abc79c048672fd24d1078a825dc2397eac650cd', 1, 43),
(2, '25dec3002d5b23581524f6dd0a12539a5e9cdc2a4c857306f795e8e43f2dd23b', 1, 48),
(2, '25dec3002d5b23581524f6dd0a12539a5e9cdc2a4c857306f795e8e43f2dd23b', 1, 50),
(2, '1c147d87cbcfc8def96c3156013a435df41eb0e8a2612cce9ec9eaa783d525c0', 1, 3),
(2, '1c147d87cbcfc8def96c3156013a435df41eb0e8a2612cce9ec9eaa783d525c0', 2, 6),
(2, '1c147d87cbcfc8def96c3156013a435df41eb0e8a2612cce9ec9eaa783d525c0', 1, 26),
(2, 'e676a0243f3bcdd9c64ba54521b3fd1f901d3a99fb19f59c0c55028006dbba40', 1, 4),
(2, 'e676a0243f3bcdd9c64ba54521b3fd1f901d3a99fb19f59c0c55028006dbba40', 2, 28),
(2, 'e676a0243f3bcdd9c64ba54521b3fd1f901d3a99fb19f59c0c55028006dbba40', 2, 30),
(2, '8a63035d7d529485e7dc98d1c26c185194dd5f4625e0e03aa59f096fd78f1a42', 1, 28),
(2, '8a63035d7d529485e7dc98d1c26c185194dd5f4625e0e03aa59f096fd78f1a42', 1, 29),
(2, '8a63035d7d529485e7dc98d1c26c185194dd5f4625e0e03aa59f096fd78f1a42', 1, 44),
(2, '1e1fcf0566d09416dd77636a75b68516a309095a179e682d93747a1309e2a1cf', 1, 28),
(2, '1e1fcf0566d09416dd77636a75b68516a309095a179e682d93747a1309e2a1cf', 1, 44),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 2),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 12),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 3, 13),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 19),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 27),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 2, 29),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 38),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 40),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 41),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 47),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 48),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 49),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 50),
(2, 'f5be4d3c775f929ae7f78d076654ab8b06621a2e7c8889a92e6533869cb4ebec', 1, 52),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 2),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 12),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 3, 13),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 19),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 27),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 2, 29),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 38),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 40),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 41),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 47),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 48),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 49),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 50),
(2, '309afe51a09f4bbf30da7cafd03a48d99ef34384b1ab0b5f5935a23b6f4d5cce', 1, 52),
(2, 'c52fb02686d94ddd756cf12690302980b39ac440fb72f1094328d97ace66d8d3', 1, 48),
(2, 'c52fb02686d94ddd756cf12690302980b39ac440fb72f1094328d97ace66d8d3', 1, 50),
(2, 'c52fb02686d94ddd756cf12690302980b39ac440fb72f1094328d97ace66d8d3', 1, 52),
(2, 'afadbbd07fb6f2020bd00101bab37de2907dc590093350472fbdca22c6851290', 1, 48),
(2, 'afadbbd07fb6f2020bd00101bab37de2907dc590093350472fbdca22c6851290', 1, 50),
(2, 'afadbbd07fb6f2020bd00101bab37de2907dc590093350472fbdca22c6851290', 1, 52),
(2, 'f6ce84d88d05bf46ce4ff32e5f3e35e273a6d5f1f6ce38b018df90e1c4e8e407', 2, 25),
(2, '7eb3c0285bef7c573e404bd159a7bace3f8f862908f31bcc8546f7476e5b2a70', 1, 25),
(2, 'be699fc8370c3c58fb9e29486d62bb10b1e757417687b4228ac7e25179b3bc13', 1, 25),
(2, '4c06de5025a6a5096dce76e22158a6030718333230f611cf77178fe56828d981', 1, 25),
(2, '4c06de5025a6a5096dce76e22158a6030718333230f611cf77178fe56828d981', 1, 26),
(2, '4c06de5025a6a5096dce76e22158a6030718333230f611cf77178fe56828d981', 2, 38),
(2, '8b5ee8d092e33f6eaf8d40a0eac7a67127c35191e0c1013afaaba1e4700fef2e', 1, 29),
(2, '4d6d738ad1aebb8cb2be2c1ddf1d51676cdcb6169848436f7fb3c7c8a2c4152f', 1, 25),
(2, 'ecafd4178d2b667dd3348d05fd2b0af412c512c0327205393cfca9b2aaca9f14', 1, 25),
(2, '82d63dc56a946b0bd98741a3a015df3cb8be47bf3e6147ad50d4db37bbddce8f', 1, 25),
(2, '038b940dd4bcf486559b65c22d3be3db9c32d65b4e1158e19ad394471a22d410', 1, 25),
(2, 'aaba45512db8bda2ff3cc74c0be24eae7432b1a9cb6841c393ab8babaf94efa0', 1, 29),
(2, 'ceea4fbd8cd5a2b425722d0004226e79a013e2d35ced7458110dcb71d1ee21b9', 1, 29),
(2, '0dbac5824310e1e5519d76fdccb746439856a898f7a357102337cde73d68ded3', 1, 29),
(2, '0dbac5824310e1e5519d76fdccb746439856a898f7a357102337cde73d68ded3', 1, 40),
(2, '0dbac5824310e1e5519d76fdccb746439856a898f7a357102337cde73d68ded3', 1, 41),
(2, '0dbac5824310e1e5519d76fdccb746439856a898f7a357102337cde73d68ded3', 1, 52),
(2, '52a91f401bfdf6831055f100d5dfd82c1aea73fdc3cf012f77c1f42f1c450ce8', 1, 29),
(2, '52a91f401bfdf6831055f100d5dfd82c1aea73fdc3cf012f77c1f42f1c450ce8', 2, 40),
(2, '52a91f401bfdf6831055f100d5dfd82c1aea73fdc3cf012f77c1f42f1c450ce8', 2, 41),
(2, '52a91f401bfdf6831055f100d5dfd82c1aea73fdc3cf012f77c1f42f1c450ce8', 1, 52),
(2, '8981cc1c50187ecda894f45370b05e07f52c745b4edfd781213ff13208f953eb', 2, 4),
(2, 'ac84ef201c50ae826655c2310f0811e6dbb20db845f335ebc785f95c42b72dba', 1, 29),
(2, '762f2b60347a20271fa6dd8f0a9237ad912af17cbe14101ae31354c25ede635d', 1, 13),
(2, '762f2b60347a20271fa6dd8f0a9237ad912af17cbe14101ae31354c25ede635d', 1, 19),
(2, '762f2b60347a20271fa6dd8f0a9237ad912af17cbe14101ae31354c25ede635d', 1, 50),
(2, '762f2b60347a20271fa6dd8f0a9237ad912af17cbe14101ae31354c25ede635d', 2, 52),
(2, '24bf18c612911b47b51efb5923c948d273fccfd21296411a17517fb598a1b49b', 1, 8),
(2, '24bf18c612911b47b51efb5923c948d273fccfd21296411a17517fb598a1b49b', 3, 31),
(2, '24bf18c612911b47b51efb5923c948d273fccfd21296411a17517fb598a1b49b', 3, 35),
(2, '24bf18c612911b47b51efb5923c948d273fccfd21296411a17517fb598a1b49b', 1, 38),
(2, '7d63864542917080d92b07c743522964b89161bc2246d8b4c3fbb9bc504333ea', 1, 27),
(2, '7d63864542917080d92b07c743522964b89161bc2246d8b4c3fbb9bc504333ea', 1, 29),
(2, '7d63864542917080d92b07c743522964b89161bc2246d8b4c3fbb9bc504333ea', 1, 40),
(2, '7d63864542917080d92b07c743522964b89161bc2246d8b4c3fbb9bc504333ea', 1, 46),
(2, 'ef0657500e5e205072790ffc6cd5a1677a220514bcc7f6422bc1846ada6a536b', 3, 29),
(2, 'ef0657500e5e205072790ffc6cd5a1677a220514bcc7f6422bc1846ada6a536b', 1, 40),
(2, 'ef0657500e5e205072790ffc6cd5a1677a220514bcc7f6422bc1846ada6a536b', 2, 46),
(2, 'd6c81a3fdc0007a9c3730a35f1f20e57c39e43fe2a4b96469a3943995e4fa94f', 10, 25),
(2, 'd6c81a3fdc0007a9c3730a35f1f20e57c39e43fe2a4b96469a3943995e4fa94f', 3, 29),
(2, 'd6c81a3fdc0007a9c3730a35f1f20e57c39e43fe2a4b96469a3943995e4fa94f', 1, 40),
(2, 'd6c81a3fdc0007a9c3730a35f1f20e57c39e43fe2a4b96469a3943995e4fa94f', 2, 46),
(2, 'f59127d75ecd60dcbd323c1f21a4177262adb1ce16e8f972a8c3b4415bd09059', 10, 25),
(2, 'f59127d75ecd60dcbd323c1f21a4177262adb1ce16e8f972a8c3b4415bd09059', 3, 29),
(2, 'f59127d75ecd60dcbd323c1f21a4177262adb1ce16e8f972a8c3b4415bd09059', 1, 40),
(2, 'f59127d75ecd60dcbd323c1f21a4177262adb1ce16e8f972a8c3b4415bd09059', 2, 46),
(2, '9fbc599c749b8f689fbdd1181b7c2c6918f96d50a70f6d7ac35fe18e0a2a6ba6', 10, 25),
(2, '9fbc599c749b8f689fbdd1181b7c2c6918f96d50a70f6d7ac35fe18e0a2a6ba6', 3, 29),
(2, '9fbc599c749b8f689fbdd1181b7c2c6918f96d50a70f6d7ac35fe18e0a2a6ba6', 6, 40),
(2, '9fbc599c749b8f689fbdd1181b7c2c6918f96d50a70f6d7ac35fe18e0a2a6ba6', 5, 46),
(2, 'ca8201b0011221d2255791f752533c9bb1236916ad6b7f186bf061271eec1841', 3, 19),
(2, 'ca8201b0011221d2255791f752533c9bb1236916ad6b7f186bf061271eec1841', 2, 52),
(2, '359dad1a23d21b3b5743b0ed022e42367f7136fc5a8163ac63a3905851a3ca7a', 2, 2),
(2, '359dad1a23d21b3b5743b0ed022e42367f7136fc5a8163ac63a3905851a3ca7a', 4, 50),
(2, '5355f0f275dd4df82a45bd3555fdbdc603a905ba4fd1346cb6f0300a67c4831d', 5, 2),
(2, '5355f0f275dd4df82a45bd3555fdbdc603a905ba4fd1346cb6f0300a67c4831d', 4, 50),
(2, 'f729efbf8eb57ef26eb3195f8936c729c475c5ab25acc82c07cf599927c4f736', 2, 4),
(2, 'f729efbf8eb57ef26eb3195f8936c729c475c5ab25acc82c07cf599927c4f736', 1, 19),
(2, 'f729efbf8eb57ef26eb3195f8936c729c475c5ab25acc82c07cf599927c4f736', 2, 29),
(2, 'f729efbf8eb57ef26eb3195f8936c729c475c5ab25acc82c07cf599927c4f736', 2, 30),
(2, 'f729efbf8eb57ef26eb3195f8936c729c475c5ab25acc82c07cf599927c4f736', 2, 36),
(2, 'f729efbf8eb57ef26eb3195f8936c729c475c5ab25acc82c07cf599927c4f736', 1, 38),
(2, '4196b917ef729b64c1d0acee3d206a7a717a7d55e06096ae97dcff0a25bdb7e9', 4, 4),
(2, '4196b917ef729b64c1d0acee3d206a7a717a7d55e06096ae97dcff0a25bdb7e9', 2, 19),
(2, '4196b917ef729b64c1d0acee3d206a7a717a7d55e06096ae97dcff0a25bdb7e9', 2, 29),
(2, '4196b917ef729b64c1d0acee3d206a7a717a7d55e06096ae97dcff0a25bdb7e9', 2, 30),
(2, '4196b917ef729b64c1d0acee3d206a7a717a7d55e06096ae97dcff0a25bdb7e9', 2, 36),
(2, '4196b917ef729b64c1d0acee3d206a7a717a7d55e06096ae97dcff0a25bdb7e9', 1, 38),
(2, '9b2c8471d9662171916cf9e4bc3048c6c58e614a2ef02b8e28b2944646782981', 2, 19),
(2, '9b2c8471d9662171916cf9e4bc3048c6c58e614a2ef02b8e28b2944646782981', 2, 29),
(2, '9b2c8471d9662171916cf9e4bc3048c6c58e614a2ef02b8e28b2944646782981', 2, 30),
(2, '9b2c8471d9662171916cf9e4bc3048c6c58e614a2ef02b8e28b2944646782981', 2, 36),
(2, '26ea4af1a4d487a3bc2364d8f1fc125972e9dc59059eb8a16c50adaf5c72e736', 2, 19),
(2, '26ea4af1a4d487a3bc2364d8f1fc125972e9dc59059eb8a16c50adaf5c72e736', 1, 25),
(2, '26ea4af1a4d487a3bc2364d8f1fc125972e9dc59059eb8a16c50adaf5c72e736', 1, 27),
(2, '26ea4af1a4d487a3bc2364d8f1fc125972e9dc59059eb8a16c50adaf5c72e736', 3, 29),
(2, '26ea4af1a4d487a3bc2364d8f1fc125972e9dc59059eb8a16c50adaf5c72e736', 2, 36),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 2, 2),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 2, 4),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 2, 27),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 2, 30),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 1, 38),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 6, 44),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 2, 45),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 2, 46),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 8, 50),
(2, '116a2759e114ba6a7efff02a28a692080fd0bb2f0df139cdb26264d4f593b318', 5, 52),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 3, 2),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 2, 4),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 3, 27),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 2, 28),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 3, 29),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 2, 30),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 1, 38),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 6, 44),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 2, 45),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 2, 46),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 9, 50),
(2, 'a72f2842db5445d6c8c33f7dfa4c9b91493188dd912f22f3a0bb5ca3114e7f1b', 5, 52),
(1, '0d29ecfd5e60d867f87d40ad941f8498473515a8528e62d82bede3488ed9c966', 1, 12),
(1, '0d29ecfd5e60d867f87d40ad941f8498473515a8528e62d82bede3488ed9c966', 1, 14),
(1, '0d29ecfd5e60d867f87d40ad941f8498473515a8528e62d82bede3488ed9c966', 10, 17),
(1, '0d29ecfd5e60d867f87d40ad941f8498473515a8528e62d82bede3488ed9c966', 1, 19),
(1, '0d29ecfd5e60d867f87d40ad941f8498473515a8528e62d82bede3488ed9c966', 1, 29),
(5, '4c493d0cecd9ea23066fb5e5f29e1dc38ad90e7f0a25b056940b6e7183107a69', 1, 25),
(5, '4c493d0cecd9ea23066fb5e5f29e1dc38ad90e7f0a25b056940b6e7183107a69', 1, 27),
(5, '4c493d0cecd9ea23066fb5e5f29e1dc38ad90e7f0a25b056940b6e7183107a69', 1, 29),
(5, '4c493d0cecd9ea23066fb5e5f29e1dc38ad90e7f0a25b056940b6e7183107a69', 1, 41),
(5, '4c493d0cecd9ea23066fb5e5f29e1dc38ad90e7f0a25b056940b6e7183107a69', 1, 42),
(5, '4c493d0cecd9ea23066fb5e5f29e1dc38ad90e7f0a25b056940b6e7183107a69', 1, 44),
(5, '4c493d0cecd9ea23066fb5e5f29e1dc38ad90e7f0a25b056940b6e7183107a69', 1, 50),
(5, '4c493d0cecd9ea23066fb5e5f29e1dc38ad90e7f0a25b056940b6e7183107a69', 1, 52),
(2, '60f34ce4692c7da4c13398ae1d4f70537531f50d03aefba030a72a3f3846bc7f', 1, 3),
(2, '60f34ce4692c7da4c13398ae1d4f70537531f50d03aefba030a72a3f3846bc7f', 1, 28),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 1, 19),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 2, 27),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 1, 29),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 1, 38),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 1, 40),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 1, 41),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 1, 47),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 1, 48),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 2, 50),
(2, '8c6ba27e3191650061fdc13e7188b663a59cf9a7726b7326bd31754b59cb247b', 1, 52),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 5),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 2, 9),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 11),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 12),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 13),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 14),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 17),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 18),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 2, 19),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 25),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 27),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 29),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 38),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 50),
(2, '3624536c97993b785a8837d833490284ca939d1dcd8d9beae8decb7004b32f5c', 1, 52),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', 1, 17),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', 4, 18),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', 2, 19),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', 1, 25),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', 1, 27),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', 1, 29),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', 1, 38),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', 1, 50),
(2, '1407293d8f0f5adb0a3adffe103b36857076bdc9afbe86a9dfb408d4baf0ad9e', 1, 52),
(2, '81138eb54c9e7dc7d121a5b12e8768aaca456400f12980d73f9a30e12854aefa', 1, 3),
(2, '81138eb54c9e7dc7d121a5b12e8768aaca456400f12980d73f9a30e12854aefa', 1, 25),
(2, '81138eb54c9e7dc7d121a5b12e8768aaca456400f12980d73f9a30e12854aefa', 3, 26),
(2, '81138eb54c9e7dc7d121a5b12e8768aaca456400f12980d73f9a30e12854aefa', 3, 38),
(2, 'f44e50ccd37b8c8dc6f61e6edf889ba25c03b6055435876c13e6769022a418fb', 3, 4),
(2, 'f44e50ccd37b8c8dc6f61e6edf889ba25c03b6055435876c13e6769022a418fb', 1, 30),
(2, 'f44e50ccd37b8c8dc6f61e6edf889ba25c03b6055435876c13e6769022a418fb', 5, 35),
(2, 'f44e50ccd37b8c8dc6f61e6edf889ba25c03b6055435876c13e6769022a418fb', 2, 38),
(2, '976d56a84fd0884c5d9159f0a082abcb879e3d349ec5ec8d54724b9bcfd6c9ce', 2, 38),
(2, 'd288277c9e9009a29537dedc461b2376952c0b9a8a76dd95cbe734b8bb96cc01', 1, 3),
(2, 'd288277c9e9009a29537dedc461b2376952c0b9a8a76dd95cbe734b8bb96cc01', 1, 26),
(2, 'd288277c9e9009a29537dedc461b2376952c0b9a8a76dd95cbe734b8bb96cc01', 1, 29),
(2, 'd288277c9e9009a29537dedc461b2376952c0b9a8a76dd95cbe734b8bb96cc01', 2, 41),
(2, 'd288277c9e9009a29537dedc461b2376952c0b9a8a76dd95cbe734b8bb96cc01', 3, 50),
(2, 'd288277c9e9009a29537dedc461b2376952c0b9a8a76dd95cbe734b8bb96cc01', 1, 52),
(2, '27eb1f163b0162d1465f98fe9a2bb4852784697f481268a4eee457ded60b2ba6', 1, 30),
(2, '27eb1f163b0162d1465f98fe9a2bb4852784697f481268a4eee457ded60b2ba6', 1, 38),
(2, 'b53ab78ea79c77f09d03a4fcc09b3642e4a3434d287128fd5317f8a9c8630cbb', 4, 29),
(2, 'b53ab78ea79c77f09d03a4fcc09b3642e4a3434d287128fd5317f8a9c8630cbb', 1, 38),
(2, 'b53ab78ea79c77f09d03a4fcc09b3642e4a3434d287128fd5317f8a9c8630cbb', 1, 50),
(2, 'b53ab78ea79c77f09d03a4fcc09b3642e4a3434d287128fd5317f8a9c8630cbb', 1, 52),
(2, 'b6678b777a370c56b07ac013398ae7ee61ae68d7a15918a4642585120f1db3f3', 1, 38),
(2, 'b6678b777a370c56b07ac013398ae7ee61ae68d7a15918a4642585120f1db3f3', 1, 50),
(2, 'b6678b777a370c56b07ac013398ae7ee61ae68d7a15918a4642585120f1db3f3', 1, 52);

-- --------------------------------------------------------

--
-- Table structure for table `parkinglot_info`
--

DROP TABLE IF EXISTS `parkinglot_info`;
CREATE TABLE IF NOT EXISTS `parkinglot_info` (
  `position` varchar(3) NOT NULL,
  `status` int(1) NOT NULL,
  UNIQUE KEY `UNIQUE` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parkinglot_info`
--

INSERT INTO `parkinglot_info` (`position`, `status`) VALUES
('A10', 1),
('A11', 1),
('A12', 0),
('A13', 1),
('A14', 1),
('A15', 0),
('A16', 0),
('A17', 1),
('A18', 0),
('A19', 1),
('A20', 1),
('A21', 0),
('A22', 0),
('A23', 0),
('A24', 0),
('A25', 1),
('A26', 0),
('A27', 0),
('A28', 1),
('A29', 0),
('A30', 1),
('A31', 1),
('A32', 0),
('A33', 1),
('A34', 0),
('A35', 1),
('A36', 1),
('A37', 1),
('A38', 1),
('A39', 1),
('A40', 1),
('A41', 1),
('A42', 1),
('A43', 1),
('A44', 1),
('A45', 1),
('A46', 1),
('A47', 1),
('A48', 1),
('A49', 1),
('A50', 1),
('B10', 1),
('B11', 1),
('B12', 1),
('B13', 1),
('B14', 1),
('B15', 1),
('B16', 1),
('B17', 1),
('B18', 1),
('B19', 1),
('B20', 1),
('B21', 1),
('B22', 0),
('B23', 1),
('B24', 1),
('B25', 1),
('B26', 1),
('B27', 1),
('B28', 1),
('B29', 1),
('B30', 0),
('B31', 1),
('B32', 1),
('B33', 1),
('B34', 1),
('B35', 0),
('B36', 1),
('B37', 1),
('B38', 1),
('B39', 1),
('B40', 0),
('B41', 1),
('B42', 1),
('B43', 0),
('B44', 0),
('B45', 1),
('B46', 1),
('B47', 1),
('B48', 1),
('B49', 1),
('B50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parking_order`
--

DROP TABLE IF EXISTS `parking_order`;
CREATE TABLE IF NOT EXISTS `parking_order` (
  `cust_ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `parking_ticket_no` varchar(50) COLLATE utf8_bin NOT NULL,
  `parking_date` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `parking_slots`
--

DROP TABLE IF EXISTS `parking_slots`;
CREATE TABLE IF NOT EXISTS `parking_slots` (
  `parking_ticket_no` varchar(50) COLLATE utf8_bin NOT NULL,
  `parking_position` varchar(50) COLLATE utf8_bin NOT NULL,
  `start_time` varchar(50) COLLATE utf8_bin NOT NULL,
  `duration` int(50) NOT NULL,
  `stop_time` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_info`
--

DROP TABLE IF EXISTS `reviews_info`;
CREATE TABLE IF NOT EXISTS `reviews_info` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `cust_ID` varchar(1000) COLLATE utf8_bin NOT NULL,
  `review` varchar(10000) COLLATE utf8_bin NOT NULL,
  `review_date` date NOT NULL,
  `review_time` varchar(50) COLLATE utf8_bin NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `reviews_info`
--

INSERT INTO `reviews_info` (`username`, `cust_ID`, `review`, `review_date`, `review_time`, `rating`) VALUES
('Harrison', '2', 'Great app.', '2022-01-03', '20 : 18 pm', 0),
('Harrison', '2', 'ðŸ˜‹ðŸ¥«', '2022-01-03', '20 : 19 pm', 0),
('Harrison', '2', 'Tremendous ðŸ”', '2022-01-03', '20 : 19 pm', 0),
('Harrison', '2', 'Tremendous ðŸ”', '2022-01-03', '20 : 19 pm', 0),
('Harrison', '2', 'Tremendous man!', '2022-01-03', '20 : 20 pm', 0),
('Harrison', '2', 'Mealverse Rules!!', '2022-01-03', '20 : 40 pm', 0),
('Harrison', '2', 'Thye', '2022-01-08', '18 : 22 pm', 0),
('Harrison', '2', 'They', '2022-01-08', '18 : 49 pm', 0),
('Harrison', '2', 'They', '2022-01-08', '18 : 49 pm', 0),
('Harrison', '2', 'Very good ðŸ˜Š', '2022-01-22', '01 : 14 am', 0),
('Harrison', '2', 'Lovely day', '2022-01-22', '03 : 39 am', 5),
('Harrison', '2', 'Too salty dish!', '2022-01-22', '03 : 45 am', 2),
('Harrison', '2', 'Clean!!', '2022-01-22', '12 : 57 pm', 4),
('Harrison', '2', 'Clean!!\nThe calmness of the Mealverse area really gets me and I\'ll continue to come here all the time. Expect me!!', '2022-01-22', '13 : 11 pm', 5),
('Harrison', '2', 'Reas', '2022-01-22', '14 : 08 pm', 4),
('Harrison', '2', 'I really love your app!!ðŸ‘', '2022-01-23', '15 : 50 pm', 4),
('Harrison', '2', 'I really love your app!!ðŸ‘', '2022-01-23', '15 : 51 pm', 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_signup_info`
--

DROP TABLE IF EXISTS `user_signup_info`;
CREATE TABLE IF NOT EXISTS `user_signup_info` (
  `cust_ID` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `email` text NOT NULL,
  `salt1` text NOT NULL,
  `salt2` text NOT NULL,
  `password` longtext NOT NULL,
  `dietary_concern` text NOT NULL,
  `enrollment_date` varchar(11) NOT NULL,
  `orders_placed` int(11) NOT NULL,
  PRIMARY KEY (`cust_ID`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_signup_info`
--

INSERT INTO `user_signup_info` (`cust_ID`, `username`, `phone_number`, `email`, `salt1`, `salt2`, `password`, `dietary_concern`, `enrollment_date`, `orders_placed`) VALUES
(1, 'Bailey', '09037442458', 'Bailey@gmail.com', ',ÆF', '\Zæ¢¾', 'cc917eb290281538fce665cf5da1b706afd9e5e33864f1b7e21ef4d299bc10b7', 'none', '9-12-2021', 2),
(2, 'Harrison', '09037442408', 'harrisonderick.65@gmail.com', 'ÿ”¯\"', 'u,Pâá', 'd40b1e25e16f2301e1521d0b71a9ab307a70bad5e788e5486367736318f726e7', 'none', '21-12-2021', 32),
(3, 'Derick', '09037442480', 'harrisonderick.65@gmail.com', ':=ûƒ', '¼Ež', '27f4091c69544a5cb660131568459c5c90428fa120ef733667f8ee28b588a165', 'none', '21-12-2021', 1),
(4, 'Ik', '09091345776', 'ikechukwugodson@gmail.com', 'Ü,{õ1', '#aû<M', 'a67c8b5b1e0d6481dcec4cda14c833929254aed59c4ca355bfd3d79b7d0cb920', 'none', '10-1-2022', 0),
(5, 'Batter ', '09037442468', 'harrisonderick.65@gmail.com', 'kž‹', 'üv¾¥', '5b4c9103dc6271bab9198963ba7eb718f76f3be8b5335a0b3229713e5d8dc0b7', 'Less salt, more pepperðŸ˜Š', '22-1-2022', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
