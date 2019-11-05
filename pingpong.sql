-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 05 nov 2019 kl 17:12
-- Serverversion: 10.4.6-MariaDB
-- PHP-version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `pingpong`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `matches`
--

CREATE TABLE `matches` (
  `match_id` int(11) NOT NULL,
  `spelare_1` int(11) NOT NULL,
  `spelare_2` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellstruktur `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `namn` varchar(128) NOT NULL,
  `wins` int(11) NOT NULL,
  `losses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `person`
--

INSERT INTO `person` (`id`, `namn`, `wins`, `losses`) VALUES
(1, 'Greger', 5, 3),
(2, 'Nils', 3, 5),
(3, 'Matt', 6, 0),
(4, 'Jens', 0, 6);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`spelare_1`,`spelare_2`),
  ADD KEY `spelare_2` (`spelare_2`);

--
-- Index för tabell `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restriktioner för dumpade tabeller
--

--
-- Restriktioner för tabell `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`spelare_1`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`spelare_2`) REFERENCES `person` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
