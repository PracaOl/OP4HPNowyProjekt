-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Kwi 2023, 16:09
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cmse`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `filename` char(125) NOT NULL,
  `title` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `post`
--

INSERT INTO `post` (`id`, `timestamp`, `filename`, `title`, `userId`, `removed`) VALUES
(1, '2023-03-01 14:28:02', 'img/39ee1acee78cda6b67f0cf51a0957d2e647e92f55d10ce8406d5944ef46ef2b4.webp', '', 0, 1),
(2, '2023-03-01 14:28:13', 'img/8207a6f7c29a0b2e2d979d6d608c3b91ecd41c6b86bf898ebeb41bde793f7356.webp', '', 0, 1),
(3, '2023-03-01 14:50:23', 'img/fd01ff486f877a742f453513c3aae31554c54ee6006e9275ea7a0642cb81208e.webp', '', 0, 1),
(4, '2023-03-01 15:21:27', 'img/1524f26eea42fb32f62a70105a6a4ffc1d3bb09d292559d3f4d8fef184796737.webp', '', 0, 1),
(5, '2023-03-01 15:25:22', 'img/4db02f3c55bd1098d49c07ca8681060c73d5863f71e932dfb58d1f227c952594.webp', '', 0, 1),
(6, '2023-03-08 15:40:24', 'img/896f22572b30f949d8bd240c83012a0659899ab73074fc7c6357434fe1b1877e.webp', '', 0, 1),
(7, '2023-03-15 14:02:32', 'img/2a678414f7456a60813bd88fce1de46f122ba0580dae880e58fcac125c880095.webp', '', 0, 1),
(8, '2023-03-15 14:05:55', 'img/0a2eec9b2e852df8b87379ce0854ddbeb6829a141a928a78b831423119da3e65.webp', '', 0, 1),
(9, '2023-03-15 14:16:03', 'img/74e501c2e484c9105630e9423f7f7738a3a991f4f51f773c9b0454f4343b4bd6.webp', 'test', 0, 1),
(10, '2023-03-15 14:17:41', 'img/811553a2f46d6932247afd49b3920dd9ee5878f0356e4691be52e0cfbdd2a196.webp', '', 0, 1),
(11, '2023-03-15 14:18:48', 'img/b1bd109e791ba6960efbf6c323ddd4e89eaafb76eef07cb470207d27b6674774.webp', '', 0, 1),
(12, '2023-03-15 14:20:16', 'img/20867bd1051e519a9188fc6d365e163f59cba9b9713d69185b5906dea23c6090.webp', '', 0, 1),
(13, '2023-03-15 14:24:04', 'img/11ab4523164dfe42b762d33b44dcaaab7b6d2743aecad3527a5e37b3f3c7dba9.webp', 'FunnyMEme', 0, 1),
(14, '2023-03-15 14:29:25', 'img/41f37dac972327859d275448e02a85dee3b883f60cbdcbebb890b49d6d4cf240.webp', '', 0, 1),
(15, '2023-03-15 14:29:40', 'img/2650fcf4b7148ede8b7fe609b5bdcaf152a445d95728d3487292607ec6ea611b.webp', '', 0, 1),
(16, '2023-03-15 14:32:47', 'img/a46d800c6b289b4e1498732c7b61585229e80d0cf13f15de8c03a20f3d34ab7b.webp', '', 0, 1),
(17, '2023-03-15 14:45:22', 'img/1aa4287be0071f4f8d7dc8767e89c2729d37fbb908b631cb5c6f1f66d115e20e.webp', 'eeee', 0, 1),
(18, '2023-03-15 14:45:40', 'img/c327d6b0d7db15f82e2e19055018862e248b67142828d1377aa2d4f041197971.webp', 'testingworksmaybe', 0, 1),
(19, '2023-03-15 14:48:13', 'img/95a2a456e524df930f575d8c2c7d2eb51d56b8c4d863e5860d7acb3c8cd11c83.webp', 'sans', 0, 1),
(20, '2023-03-15 14:52:42', 'img/b4c80d956e0969d368501ae0074d58daccdc2208cd7d7cf02d4f2b5180d98e77.webp', 'troll', 0, 1),
(21, '2023-03-15 14:53:52', 'img/a8cd9cdedb3174fca4769918d4f50f08d4654f8471e7f46b8c5ceea8b9e63ac1.webp', 'pikachu', 0, 1),
(22, '2023-03-15 14:54:51', 'img/b43c79cac9c7db1432e5ab8ae203931c0568f03ca84323729cedde26e865f019.webp', 'test123', 0, 1),
(23, '2023-03-15 14:55:02', 'img/be5504ebacdbdae4d6574867f7ff941d03187913006e9fbe935f9448c1b9f926.webp', 'testing real!', 0, 1),
(24, '2023-04-12 13:59:25', 'img/4b6830f8068c45bbe215d5bc26dc9336b208a6efc95a93f3f8be8802669f2a01.webp', 'eraeareara', 0, 1),
(25, '2023-04-19 15:04:39', 'img/903c2a64a2105cdd5da2013e6423e0c2d44782f782fd229dae135ecd27bf3cb7.webp', '1232132131', 1, 0),
(26, '2023-04-19 15:09:40', 'img/ea2668715fc28d517a196b467e9b2f9939a4338efd102228d2de638e3b0b179e.webp', '4234332432', 1, 1),
(27, '2023-04-26 15:44:20', 'img/b320ebaa22c933e8fbf87aa8992b9140dd9a0b0e4dc356aec195b0631c46b927.webp', 'art', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'e@op.pl', '$argon2i$v=19$m=65536,t=4,p=1$OWJiZnRSUEJDOTNac3c3Nw$wxJZ6K6oIIpqvQUhI4iB++loVZZKvFDuBbnMjaQBLLA'),
(2, 'ee@op.pl', '$argon2i$v=19$m=65536,t=4,p=1$YmJ3N2MyVm1zUGNBVWNPcw$mtzxq/4pb8FZaMxhCZCC0fD6t9rOOi1v9SVzWtcbYvA'),
(3, 'eeee@op.pl', '$argon2i$v=19$m=65536,t=4,p=1$eGtzb2hiam92UXdsdTRJeg$oB7ldXYc65lAriPRR7Y1560yLuArck00fc3e2ynBMG4'),
(4, '123e@op.pl', '$argon2i$v=19$m=65536,t=4,p=1$bjhpM3JsaEJVRzdaLzZwWQ$qg6WF5wBpz8dntsSGn1v7ZRCGA1G93k854pMJP40UYM');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `vote`
--

INSERT INTO `vote` (`id`, `score`, `post_id`, `user_id`) VALUES
(32, 1, 27, 1),
(35, -1, 25, 1),
(40, 1, 27, 4),
(41, -1, 25, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_2` (`post_id`,`user_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
