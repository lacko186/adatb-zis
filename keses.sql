-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 27. 08:56
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `kaposvar`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `keses`
--

CREATE TABLE `keses` (
  `id` int(11) NOT NULL,
  `route_name` varchar(10) NOT NULL,
  `datum` date NOT NULL DEFAULT current_timestamp(),
  `ido` time NOT NULL,
  `keses_perc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `keses`
--

INSERT INTO `keses` (`id`, `route_name`, `datum`, `ido`, `keses_perc`) VALUES
(1, '12', '2025-03-12', '06:10:00', 20),
(2, '20', '2025-03-12', '10:30:00', 30),
(3, '91', '2025-03-12', '04:55:00', 25),
(4, '90', '2025-03-12', '22:10:00', 60);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `keses`
--
ALTER TABLE `keses`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `keses`
--
ALTER TABLE `keses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
