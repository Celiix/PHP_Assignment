-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 07:02 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `user_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_to_cart`
--

INSERT INTO `add_to_cart` (`id`, `product_id`, `product_name`, `product_price`, `user_id`) VALUES
(20, 3, 'Air Line Add-A-Diver Hookah', 20000, 1),
(21, 8, 'Men Indy Harmonized Neoprene Vest 3X-Large Black', 30000, 8),
(22, 3, 'Air Line Add-A-Diver Hookah', 20000, 9);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Ignatius Petty', 'viha@mailinator.com', 'Corrupti voluptatum');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone_number` int(255) DEFAULT NULL,
  `total` int(255) DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `rate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `rate`) VALUES
(2, 'Universal Floating Object', 'Versatile, Floating PlatformCan-Be-Adapted to Numerous UsesMultiple Customized Kits & AccessoriesDurable Heavy-Duty ConstructionUses: Spearfishing, Instruction or Hookah', 'XSSUFOO.jpg', 13000, '4'),
(3, 'Air Line Add-A-Diver Hookah', 'Allows multiple diver useAdjustable hookah-specific 2nd-stageFully rotational 360 degree swivel\r\n', 'ALHAAD.jpg', 20000, '1'),
(4, 'Ocean Reef GSM Mercury Underwater Communication Device', 'Blending 4-Different Ocean Reef Units Into OneExtended Range of G.PowerLike-Stereo Sound of GSM G.Power SLClearness & Double Channel Option of DCBattery Life of G.Divers', 'OEDMER.jpg', 15000, '5'),
(5, 'Ocean Reef Neptune Space', 'Full-Face Mask w/CommunicationBalanced 2nd Stage RegulatorAdjustable Flow Control KnobStreamlined VisorHigh Performance Com. System', 'OEDNSGBLMLG.jpg', 20000, '1'),
(6, 'Speedo Proview Swim Mask Monument/Steel', 'Designed for Optimal ComfortFor All Face TypePaddle Quick-Lock StrapDual Curved LensesPanoramic Wide Field of View', 'SPDPSM_Color-Monument~Steel.jpg', 18000, '1'),
(7, 'HO Sports Excel Combo Water Skis ', 'Traditional Water Ski ShapeTunnel Bottom DesignCompatible with HO Trainer BarAdjustable Horseshoe Bindings', 'HOSECHR_Color-Black~Red.jpg', 25000, '1'),
(8, 'Men Indy Harmonized Neoprene Vest 3X-Large Black', 'United States Coast Guard (USCG) Approved Type III2 Concealed  (3.8cm) StrapsFront Zipper & Squeeze-Style Side-Release Buckle ClosuresZipper & Buckles: Provide Maximum Flexibility & Easy DonningSegmented Foam Panels', 'HPLVIN2BBSM.jpg', 30000, NULL),
(9, 'Connelly Youth Classic Neoprene Vest Small Red', 'Strong Nylon Coated NeopreneUSCG Approved Type IIIFront Center Zipper ClosurePopular \"V\" Back Flex Panel DesignEasy Donning, Adjusting & Doffing', 'CONYCNVSB.jpg', 100000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` int(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `phone`, `role`) VALUES
(1, 'Admin', '', 'admin@gmail.com', '12345', 12345678, 'Admin'),
(2, 'User', NULL, 'user@gmail.com', '12345', 2147483647, 'User'),


--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
