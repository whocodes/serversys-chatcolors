SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE IF NOT EXISTS `chatcolors` (
  `rownum` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `game` int(11) NOT NULL,
  `msg` varchar(64) NOT NULL,
  `tag` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

ALTER TABLE `chatcolors`
  ADD PRIMARY KEY (`rownum`),
  ADD UNIQUE KEY `pid_game` (`pid`, `game`),
  ADD KEY `pid` (`pid`),
  ADD KEY `game` (`game`),
  ADD KEY `msg` (`msg`),
  ADD KEY `tag` (`tag`);

--
ALTER TABLE `chatcolors`
  MODIFY `rownum` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;