-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2022 at 03:04 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peliculas2`
--

-- --------------------------------------------------------

--
-- Table structure for table `actua`
--

CREATE TABLE `actua` (
  `protagonistaID` int(11) NOT NULL,
  `peliculaID` int(11) NOT NULL,
  `actualizado` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actua`
--

INSERT INTO `actua` (`protagonistaID`, `peliculaID`, `actualizado`) VALUES
(1, 25, 0),
(2, 25, 0),
(8, 25, 0),
(11, 36, 0),
(2, 36, 0),
(2, 46, 0),
(16, 46, 0),
(13, 46, 0),
(2, 59, 0),
(8, 59, 0),
(45, 61, 0),
(46, 61, 0),
(47, 61, 0),
(11, 45, 0),
(15, 45, 0),
(1, 2, 0),
(8, 2, 0),
(48, 2, 0),
(49, 63, 0),
(50, 63, 0),
(11, 31, 0),
(51, 31, 0),
(41, 60, 0),
(42, 60, 0),
(43, 60, 0),
(44, 60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `categoriaID` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`categoriaID`, `descripcion`) VALUES
(1, 'Amor'),
(2, 'Accion'),
(3, 'Terror');

-- --------------------------------------------------------

--
-- Table structure for table `director`
--

CREATE TABLE `director` (
  `directorID` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `director`
--

INSERT INTO `director` (`directorID`, `nombre`) VALUES
(1, 'Taika Waititi'),
(2, 'Hermanos Russo'),
(5, 'J.K Rowling'),
(6, 'Tim Burton'),
(7, 'James Gunn'),
(8, 'Deadpool'),
(9, 'test1'),
(10, 'admin'),
(11, 't'),
(12, 'Tony Stark'),
(13, 'Michael Matthews'),
(14, 'Dom Toretto'),
(15, 'James Cameron');

-- --------------------------------------------------------

--
-- Table structure for table `dirige`
--

CREATE TABLE `dirige` (
  `directorID` int(11) NOT NULL,
  `peliculaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dirige`
--

INSERT INTO `dirige` (`directorID`, `peliculaID`) VALUES
(1, 2),
(2, 25),
(5, 31),
(5, 36),
(6, 45),
(7, 46),
(12, 59),
(13, 60),
(14, 61),
(15, 63);

-- --------------------------------------------------------

--
-- Table structure for table `movie_cat`
--

CREATE TABLE `movie_cat` (
  `categoriaID` int(11) NOT NULL,
  `peliculaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_cat`
--

INSERT INTO `movie_cat` (`categoriaID`, `peliculaID`) VALUES
(2, 2),
(3, 31),
(3, 36),
(3, 45),
(3, 46),
(2, 25),
(2, 59),
(1, 60),
(2, 61),
(1, 63);

-- --------------------------------------------------------

--
-- Table structure for table `pelicula`
--

CREATE TABLE `pelicula` (
  `peliculaID` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `duracion` varchar(15) NOT NULL,
  `Ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelicula`
--

INSERT INTO `pelicula` (`peliculaID`, `titulo`, `duracion`, `Ano`) VALUES
(2, 'Thor Ragnarok', '129', 2016),
(25, 'Avengers Endgame', '159', 2019),
(31, 'Harry Potter', '159', 2001),
(36, 'Avengers 2', '159', 2011),
(45, 'Esward Scissorhands', '107', 2011),
(46, 'Avengers 3', '99', 2018),
(59, 'Iron Man', '107', 2008),
(60, 'Love and Monsters', '108', 2020),
(61, 'Fast and Furious', '106', 2001),
(63, 'Titanic', '195', 1997);

-- --------------------------------------------------------

--
-- Table structure for table `protagonista`
--

CREATE TABLE `protagonista` (
  `protagonistaID` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `protagonista`
--

INSERT INTO `protagonista` (`protagonistaID`, `nombre`) VALUES
(1, 'Chris Hemsworth'),
(2, 'Robert Downey JR'),
(8, 'Tom Holland'),
(11, 'Daniel Radcliffe'),
(13, ' Natasha Romanoff'),
(15, 'Jack Sparrow'),
(16, 'Chris Evans'),
(17, 'Ryan Reynolds'),
(38, 't'),
(39, 't1'),
(40, 't2'),
(41, 'Dylan O Brien'),
(42, 'Jessica Henwick'),
(43, 'Dan Ewing'),
(44, 'Michael Rooker'),
(45, 'Brian O Conner'),
(46, 'Vin Diesel'),
(47, 'Michelle Rodriguez'),
(48, 'Tom Hiddleston'),
(49, 'Leonardo DiCaprio'),
(50, 'Kate Winslet'),
(51, 'Emma Watson'),
(52, 'Dylan OBrien');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actua`
--
ALTER TABLE `actua`
  ADD KEY `peliculaIDFK1` (`peliculaID`),
  ADD KEY `protagonistaIDFK1` (`protagonistaID`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoriaID`);

--
-- Indexes for table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`directorID`);

--
-- Indexes for table `dirige`
--
ALTER TABLE `dirige`
  ADD KEY `directorID` (`directorID`,`peliculaID`),
  ADD KEY `peliculaID` (`peliculaID`);

--
-- Indexes for table `movie_cat`
--
ALTER TABLE `movie_cat`
  ADD KEY `categoriaIDFK1` (`categoriaID`),
  ADD KEY `peliculaIDFK2` (`peliculaID`);

--
-- Indexes for table `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`peliculaID`);

--
-- Indexes for table `protagonista`
--
ALTER TABLE `protagonista`
  ADD PRIMARY KEY (`protagonistaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `director`
--
ALTER TABLE `director`
  MODIFY `directorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `peliculaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `protagonista`
--
ALTER TABLE `protagonista`
  MODIFY `protagonistaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actua`
--
ALTER TABLE `actua`
  ADD CONSTRAINT `peliculaIDFK1` FOREIGN KEY (`peliculaID`) REFERENCES `pelicula` (`peliculaID`) ON DELETE CASCADE,
  ADD CONSTRAINT `protagonistaIDFK1` FOREIGN KEY (`protagonistaID`) REFERENCES `protagonista` (`protagonistaID`) ON DELETE CASCADE;

--
-- Constraints for table `dirige`
--
ALTER TABLE `dirige`
  ADD CONSTRAINT `directorIDFK` FOREIGN KEY (`directorID`) REFERENCES `director` (`directorID`),
  ADD CONSTRAINT `peliculaIDFK` FOREIGN KEY (`peliculaID`) REFERENCES `pelicula` (`peliculaID`);

--
-- Constraints for table `movie_cat`
--
ALTER TABLE `movie_cat`
  ADD CONSTRAINT `categoriaIDFK1` FOREIGN KEY (`categoriaID`) REFERENCES `categoria` (`categoriaID`),
  ADD CONSTRAINT `peliculaIDFK2` FOREIGN KEY (`peliculaID`) REFERENCES `pelicula` (`peliculaID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
