-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 29 mei 2022 om 23:13
-- Serverversie: 10.4.22-MariaDB
-- PHP-versie: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phplaravel`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `componist`
--

CREATE TABLE `componist` (
  `componistid` int(11) NOT NULL,
  `naam` varchar(30) DEFAULT NULL,
  `geboortedatum` date DEFAULT NULL,
  `schoolid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `componist`
--

INSERT INTO `componist` (`componistid`, `naam`, `geboortedatum`, `schoolid`) VALUES
(1, '6pseLWug3J', '2022-05-29', 1),
(2, 'm1Ibai5kUN', '2022-05-29', 2),
(3, '6d2v0TiXC6', '2022-05-29', 3),
(4, 'HzKJflLV9o', '2022-05-29', 4),
(5, 'R5zof7W3rv', '2022-05-29', 5),
(6, '6IOlHnBT41', '2022-05-29', 6),
(7, 'v5hZHcbS0f', '2022-05-29', 7),
(8, 'pi2pWgvJCc', '2022-05-29', 8),
(9, 'tatlVz95Vu', '2022-05-29', 9);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `muziekschool`
--

CREATE TABLE `muziekschool` (
  `schoolid` int(11) NOT NULL,
  `schoolnaam` varchar(30) DEFAULT NULL,
  `plaatsnaam` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `muziekschool`
--

INSERT INTO `muziekschool` (`schoolid`, `schoolnaam`, `plaatsnaam`) VALUES
(1, 'x0kUWwhLpy', 'B6mYSqkTfI'),
(2, 'm2VqjokKrJ', 'A8o9jyuyL4'),
(3, '0fGxKL2yXs', 'OUYOwa06AC'),
(4, 'T0dfuGMUMr', 'xaHdUy6ilX'),
(5, 'FZVQWlAHXA', '6fzx2LQgvh'),
(6, 'O5oGIhqcmr', 'TeqBZxYh4z'),
(7, 'dYhnOTD87Q', 'x3QSmv04FI'),
(8, 'dh3BzXVDn8', 'tPUoziDBxN'),
(9, 'iSDqOPSh9R', 'KNITq3GJhm');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `componist`
--
ALTER TABLE `componist`
  ADD PRIMARY KEY (`componistid`),
  ADD KEY `schoolid` (`schoolid`);

--
-- Indexen voor tabel `muziekschool`
--
ALTER TABLE `muziekschool`
  ADD PRIMARY KEY (`schoolid`),
  ADD UNIQUE KEY `ALTERNATEKEY` (`schoolnaam`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `componist`
--
ALTER TABLE `componist`
  MODIFY `componistid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `componist`
--
ALTER TABLE `componist`
  ADD CONSTRAINT `schoolid` FOREIGN KEY (`schoolid`) REFERENCES `muziekschool` (`schoolid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
