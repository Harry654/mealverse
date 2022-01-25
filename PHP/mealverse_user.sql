-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2022 at 11:23 AM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id14461269_mealverse_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `cust_ID` int(11) NOT NULL,
  `order_ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `order_time` varchar(50) COLLATE utf8_bin NOT NULL,
  `order_date` varchar(10) COLLATE utf8_bin NOT NULL,
  `delivered` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `item_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `item_price` int(50) NOT NULL,
  `item_ID` int(50) NOT NULL,
  `item_URL` varchar(9000) COLLATE utf8_bin NOT NULL,
  `item_desc` varchar(1000) COLLATE utf8_bin NOT NULL,
  `category` varchar(50) COLLATE utf8_bin NOT NULL,
  `cook_time` int(3) NOT NULL,
  `likes_` int(10) NOT NULL,
  `dislikes_` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `food_items`
--

INSERT INTO `food_items` (`item_name`, `item_price`, `item_ID`, `item_URL`, `item_desc`, `category`, `cook_time`, `likes_`, `dislikes_`) VALUES
('Pepperoni Pizza', 200, 1, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/pepperoni_pizza.jpeg', '', 'Pizza', 15, 0, 0),
('White Bread', 150, 3, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/white_bread.jpeg', '', 'Bread', 10, 0, 0),
('Cheese Cake', 350, 4, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/cheese_cake.jpeg', '', 'Cake', 30, 0, 0),
('Blazin\' Dog', 500, 2, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/blazin_dog.jpeg', '', 'Hotdog', 20, 0, 0),
('Chicago Deep Dish', 1000, 5, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/chicago_deep_dish.jpeg', '', 'Pizza', 15, 0, 0),
('Thin Crust', 650, 6, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/thin_crust.jpeg', '', 'Pizza', 15, 0, 0),
('Sicilian Style', 800, 7, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/sicilian_style.jpeg', '', 'Pizza', 15, 0, 0),
('Neapolitan Crust', 900, 8, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/neapolitan_crust.jpeg', '', 'Pizza', 15, 0, 0),
('Flatbread Pizza', 500, 9, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/flatbread.jpeg', '', 'Pizza', 15, 0, 0),
('Tomato Pie', 650, 10, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/tomato_pie.jpeg', '', 'Pie', 8, 0, 0),
('Classic Lamb Shepherd\'s Pie', 650, 11, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/lamb_shepherds_pie.jpeg', '', 'Pie', 8, 0, 0),
('Chicken Pie', 500, 12, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/chicken_pie.jpeg', '', 'Pie', 8, 0, 0),
('Butter Pie Crust', 350, 13, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/butter_pie.jpeg', 'Yummy', 'Pie', 8, 0, 0),
('Gluten-free Pumpkin Pie', 800, 14, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/pumpkin_pie.jpeg', '', 'Pie', 8, 0, 0),
('Old Fashioned Apple Pie', 850, 15, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/apple_pie.jpeg', '', 'Pie', 8, 0, 0),
('Lemon Pie Filling', 650, 16, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/lemon_pie.jpeg', '', 'Pie', 8, 0, 0),
('Chicken Pot Pie', 750, 17, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/chicken_pot_pie.jpeg', '', 'Pie', 8, 0, 0),
('Key Lime Pie', 750, 18, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/key_lime_pie.jpeg', '', 'Pie', 8, 0, 0),
('Blackberry Pie', 500, 19, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/blackberry_pie.jpeg', '', 'Pie', 8, 0, 0),
('Battera', 200, 20, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/battera.jpeg', '', 'Sushi', 2, 0, 0),
('Bozushi', 500, 21, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/bozushi.jpeg', '', 'Sushi', 2, 0, 0),
('Hakozushi', 350, 22, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/hakozushi.jpeg', '', 'Sushi', 2, 0, 0),
('Hazushi', 400, 23, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/hazushi.jpeg', '', 'Sushi', 2, 0, 0),
('Masuzushi', 500, 24, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/masuzushi.jpeg', '', 'Sushi', 2, 1, 0),
('Rye Bread', 300, 25, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/rye_bread.jpeg', '', 'Bread', 10, 6, 0),
('Wheat Bread', 200, 26, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/wheat_bread.jpeg', '', 'Bread', 10, 1, 0),
('Pretzel', 250, 27, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/pretzel.jpeg', '', 'Bread', 10, 1, 12),
('Whole Grain Bread', 650, 28, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/whole_grain_bread.jpeg', '', 'Bread', 10, 0, 4),
('French Bread (Baguette)', 750, 29, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/french_bread.jpeg', '', 'Bread', 10, 2, 14),
('Raspberry Ice Cream', 350, 39, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/raspberry_icecream.jpeg', '', 'Ice Cream', 15, 0, 0),
('Butter Cake', 2000, 30, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/butter_cake.jpeg', '', 'Cake', 30, 0, 0),
('Sponge Cake', 1500, 31, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/sponge_cake.jpeg', '', 'Cake', 30, 0, 0),
('Layer Cake', 1000, 34, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/layer_cake.jpeg', '', 'Cake', 30, 0, 0),
('Genoise', 1500, 35, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/genoise.jpeg', '', 'Cake', 30, 0, 0),
('Chocolate Cake', 1300, 36, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/chocolate_cake.jpeg', '', 'Cake', 30, 1, 0),
('PoundCake', 1000, 37, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/pound_cake.jpeg', '', 'Cake', 30, 0, 0),
('Angel Food Cake', 1500, 38, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/angel_food_cake.jpeg', '', 'Cake', 30, 0, 0),
('Coffee Ice Cream', 400, 40, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/coffee_icecream.jpeg', '', 'Ice Cream', 15, 0, 0),
('Caramel Ice Cream', 300, 41, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/caramel_icecream.jpeg', '', 'Ice Cream', 15, 0, 5),
('Sea Salt Ice Cream', 300, 42, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/sea_salt_icecream.jpeg', '', 'Ice Cream', 15, 0, 0),
('Strawberry Ice Cream', 450, 44, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/strawberry_icecream.jpeg', '', 'Ice Cream', 15, 0, 0),
('Lemon Sorbet Ice Cream', 200, 45, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/lemon_sorbet_icecream.jpeg', '', 'Ice Cream', 15, 0, 0),
('Peppermint Ice Cream', 200, 46, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/peppermint_icecream.jpeg', '', 'Ice Cream', 15, 0, 0),
('Cookies and Cream', 500, 47, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/cookies_and_cream_icecream.jpeg', '', 'Ice Cream', 15, 0, 0),
('Cincinnati Coney', 500, 48, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/cincinnati_coney_hotdog.jpeg', '', 'Hotdog', 20, 0, 0),
('Pastrami Dog', 500, 49, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/pastrami_hotdog.jpeg', 'A hot dog topped with pastrami, Swiss cheese, mustard, and a pickle, and a Bratwurst for Oktoberfest.', 'Hotdog', 20, 0, 0),
('Big Irish Corned Beef Dog', 500, 50, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/big_irish_corned_beef_dog.jpeg', '', 'Hotdog', 20, 1, 0),
('Bubble Gum Ice Cream', 650, 52, 'https://harrison-calculator.000webhostapp.com/mealverse/food_images/bubble_gum_ice_cream.jpeg', '', 'Ice Cream', 15, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_items`
--

CREATE TABLE `ordered_items` (
  `cust_ID` int(4) NOT NULL,
  `order_ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `quantity` int(2) NOT NULL,
  `item_ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `parkinglot_info`
--

CREATE TABLE `parkinglot_info` (
  `position` varchar(3) NOT NULL,
  `status` int(1) NOT NULL
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

CREATE TABLE `parking_order` (
  `cust_ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `parking_ticket_no` varchar(50) COLLATE utf8_bin NOT NULL,
  `parking_date` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `parking_slots`
--

CREATE TABLE `parking_slots` (
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

CREATE TABLE `reviews_info` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `cust_ID` varchar(1000) COLLATE utf8_bin NOT NULL,
  `review` varchar(10000) COLLATE utf8_bin NOT NULL,
  `review_date` date NOT NULL,
  `review_time` varchar(50) COLLATE utf8_bin NOT NULL,
  `rating` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_signup_info`
--

CREATE TABLE `user_signup_info` (
  `cust_ID` int(4) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `email` text NOT NULL,
  `salt1` text NOT NULL,
  `salt2` text NOT NULL,
  `password` longtext NOT NULL,
  `dietary_concern` text NOT NULL,
  `enrollment_date` varchar(11) NOT NULL,
  `orders_placed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_signup_info`
--

INSERT INTO `user_signup_info` (`cust_ID`, `username`, `phone_number`, `email`, `salt1`, `salt2`, `password`, `dietary_concern`, `enrollment_date`, `orders_placed`) VALUES
(13, 'Mohammed ', '07034888020', 'mohammedyesiru12345@gmail.com', '7025db02b13fe09943fd9632c992e3b532bb21c330b35c18ae92314129279acb', '146c74ca00708d10f0a20c65411ab74d0fbbf1c2353a3f7285883be0edc14db7', 'f8e2350a7d15f04f82a0e11701477ea978a888caca009ab2a9e454d2c8873747', 'none', '25-1-2022', 0),
(18, 'Ike', '09013276776', 'ikechukwugodson35@gmail.com', '78830cc69d2085119cac22412c4d00bd0eb3ee515f82a26dc7d487016e7aacd8', '21fae72843510552eb3b05829da0d3cc4008d180036967d73f2cb74f6f93967e', 'f640f95323d6d10d24c289f6247153ab60e76ed04a07966a72bca889d187f250', 'none', '25-1-2022', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `order_ID` (`order_ID`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`item_ID`);

--
-- Indexes for table `parkinglot_info`
--
ALTER TABLE `parkinglot_info`
  ADD UNIQUE KEY `UNIQUE` (`position`);

--
-- Indexes for table `user_signup_info`
--
ALTER TABLE `user_signup_info`
  ADD PRIMARY KEY (`cust_ID`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_signup_info`
--
ALTER TABLE `user_signup_info`
  MODIFY `cust_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
