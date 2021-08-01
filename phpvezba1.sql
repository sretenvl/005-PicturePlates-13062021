-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 07:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpvezba1`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `idAutora` int(11) NOT NULL,
  `fullName` text COLLATE utf8_unicode_ci NOT NULL,
  `universityIndex` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `university` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`idAutora`, `fullName`, `universityIndex`, `university`, `city`, `description`) VALUES
(1, 'Sreten Vladisavljević', '123/17', 'Visokoa ICT škola', 'Belgrade', 'Ime i prezime: Sreten Vladisavljević\r\nDatum rođenja: 26.08.1998.\r\nMesto rođenja: Beograd\r\nBroj indeksa: 123/17\r\nZavršio sam Gimnaziju \"Sveti Sava\" u Beogradu i sada sam student prve godine na Visokoj ICT školi na smeru Internet tehnologije.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `idCart` int(11) NOT NULL,
  `idUsera` int(11) NOT NULL,
  `idP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`idCart`, `idUsera`, `idP`) VALUES
(2, 2, 6),
(5, 2, 7),
(6, 2, 8),
(7, 2, 10),
(8, 2, 15),
(9, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `meni`
--

CREATE TABLE `meni` (
  `idMeni` int(11) NOT NULL,
  `naziv` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `href` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posteri`
--

CREATE TABLE `posteri` (
  `idP` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cena` int(11) NOT NULL,
  `opis` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `slika` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `manjaSlika` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `altSlike` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posteri`
--

INSERT INTO `posteri` (`idP`, `naziv`, `cena`, `opis`, `slika`, `manjaSlika`, `altSlike`) VALUES
(1, 'Voyager-50X50', 1500, 'Voyager-50X50', 'assets/images/noveSlike/1591988175_poster1.jpg', NULL, '1591988175_poster1.jpg'),
(2, 'Voyager-20X20', 1000, 'Voyager-20X20', 'assets/images/noveSlike/1592341585_poster2.jpg', NULL, '1592341585_poster2.jpg'),
(3, 'Bioshock-50X50', 2000, 'Rapture poster', 'assets/images/noveSlike/1592342210_poster3.jpg', NULL, '1592341585_poster2.jpg'),
(4, 'Voyager2 Blue-50X50', 5000, 'Voyager2 Blue', 'assets/images/noveSlike/1592342277_poster4.jpg', NULL, '1592342277_poster4.jpg'),
(5, 'Voyager2 Black-50X50', 5000, 'Voyager2 Black', 'assets/images/noveSlike/1592342314_poster5.jpg', NULL, '1592342314_poster5.jpg'),
(6, 'Think Positive-20X20', 5000, 'Think Positive', 'assets/images/noveSlike/1592342360_poster6.jpg', NULL, '1592342360_poster6.jpg'),
(7, 'Black Cat-25X25', 1200, 'Black Cat', 'assets/images/noveSlike/1592342413_poster7.jpg', NULL, '1592342413_poster7.jpg'),
(8, 'Venece-30X30', 2500, 'Venece', 'assets/images/noveSlike/1592342447_poster8.jpg', NULL, '1592342447_poster8.jpg'),
(9, 'Rome-30X30', 2000, 'Rome', 'assets/images/noveSlike/1592342477_poster9.jpg', NULL, '1592342477_poster9.jpg'),
(10, 'BlackCat-20X20', 1500, 'BlackCat', 'assets/images/noveSlike/1592342509_poster10.jpg', NULL, '1592342509_poster10.jpg'),
(11, 'Keep Calm-30X30', 2000, 'Calm', 'assets/images/noveSlike/1592342568_poster11.jpg', NULL, '1592342568_poster11.jpg'),
(12, 'Dog-20X20', 1500, 'Dog', 'assets/images/noveSlike/1592342636_poster12.jpg', NULL, '1592342636_poster12.jpg'),
(13, 'Africa-25X25', 2500, 'Africa', 'assets/images/noveSlike/1592342663_poster13.jpg', NULL, '1592342663_poster13.jpg'),
(14, 'Welcome-25X25', 2500, 'Welcome', 'assets/images/noveSlike/1592342703_poster14.jpg', NULL, '1592342703_poster14.jpg'),
(15, 'Orange Cat-20X20', 1500, 'Orange Cat', 'assets/images/noveSlike/1592342735_poster15.jpg', NULL, '1592342735_poster15.jpg'),
(16, 'Mountain-35X35', 3000, 'Mountain', 'assets/images/noveSlike/1592342782_poster16.jpg', NULL, '1592342782_poster16.jpg'),
(19, 'Oz', 4000, 'Oz', 'assets/images/noveSlike/1621512604_1613388795913.png', NULL, 'Oz'),
(34, 'Dapper Oz', 45676, 'Oz', 'assets/images/noveSlike/1622240395_1613388795913.png', '', 'Oz'),
(43, 'Dapper Oz', 2345, 'Oz', 'assets/images/noveSlike/1622275168_DapperOz.png', 'assets/images/manjeSlike/manja_1622275168_DapperOz.png', 'Dapper Oz'),
(44, 'Dapper Oz', 2345, 'Oz', 'assets/images/noveSlike/1622275197_DapperOz.png', 'assets/images/manjeSlike/manja_1622275197_DapperOz.png', 'Dapper Oz'),
(45, 'Dapper Oz', 2345, 'Oz', 'assets/images/noveSlike/1622275408_DapperOz.png', 'assets/images/manjeSlike/manja_1622275408_DapperOz.png', 'Dapper Oz');

-- --------------------------------------------------------

--
-- Table structure for table `slike`
--

CREATE TABLE `slike` (
  `idS` int(11) NOT NULL,
  `slika` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `altSlike` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipkorisnika`
--

CREATE TABLE `tipkorisnika` (
  `idTip` int(11) NOT NULL,
  `naziv` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tipkorisnika`
--

INSERT INTO `tipkorisnika` (`idTip`, `naziv`) VALUES
(1, 'Adiministrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idTip` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `idTip`) VALUES
(1, 'sretenvl', 'Lopta123', 'sretenvl@yahoo.com', 1),
(2, 'nesto', 'Lopta123', 'nesto@gmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`idAutora`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`idCart`);

--
-- Indexes for table `meni`
--
ALTER TABLE `meni`
  ADD PRIMARY KEY (`idMeni`);

--
-- Indexes for table `posteri`
--
ALTER TABLE `posteri`
  ADD PRIMARY KEY (`idP`);

--
-- Indexes for table `slike`
--
ALTER TABLE `slike`
  ADD PRIMARY KEY (`idS`);

--
-- Indexes for table `tipkorisnika`
--
ALTER TABLE `tipkorisnika`
  ADD PRIMARY KEY (`idTip`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `idAutora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `idCart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `meni`
--
ALTER TABLE `meni`
  MODIFY `idMeni` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posteri`
--
ALTER TABLE `posteri`
  MODIFY `idP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `slike`
--
ALTER TABLE `slike`
  MODIFY `idS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipkorisnika`
--
ALTER TABLE `tipkorisnika`
  MODIFY `idTip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
