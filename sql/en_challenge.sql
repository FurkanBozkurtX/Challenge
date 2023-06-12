-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 31 Ara 2021, 13:34:50
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `en_challenge`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `developer`
--

DROP TABLE IF EXISTS `developer`;
CREATE TABLE IF NOT EXISTS `developer` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(255) NOT NULL,
  `d_level` int(11) NOT NULL,
  `d_duration` int(11) NOT NULL,
  `d_total_task_h` int(11) NOT NULL,
  `d_time_x` text NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `developer`
--

INSERT INTO `developer` (`d_id`, `d_name`, `d_level`, `d_duration`, `d_total_task_h`, `d_time_x`) VALUES
(1, 'DEV1', 1, 1, 0, '{\"0\":\"60\"}'),
(2, 'DEV2', 2, 1, 0, '{\"1\":\"30\"}'),
(3, 'DEV3', 3, 1, 0, '{\"2\":\"10\",\"1\":\"40\"}'),
(4, 'DEV4', 4, 1, 0, '{\"3\":\"5\",\"2\":\"15\",\"1\":\"45\"}'),
(5, 'DEV5', 5, 1, 0, '{\"4\":\"3\",\"3\":\"8\",\"2\":\"18\",\"1\":\"48\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `task`
--

DROP TABLE IF EXISTS `task`;
CREATE TABLE IF NOT EXISTS `task` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(255) NOT NULL,
  `t_level` int(11) NOT NULL,
  `t_duration` int(11) NOT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=604 DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `task`
--

INSERT INTO `task` (`t_id`, `t_name`, `t_level`, `t_duration`) VALUES
(599, 'IT Task 62', 1, 6),
(598, 'IT Task 61', 1, 3),
(597, 'IT Task 60', 3, 4),
(596, 'IT Task 59', 2, 4),
(595, 'IT Task 58', 1, 7),
(594, 'IT Task 57', 2, 11),
(593, 'IT Task 56', 3, 10),
(592, 'IT Task 55', 4, 12),
(591, 'IT Task 54', 4, 10),
(590, 'IT Task 53', 3, 3),
(589, 'IT Task 52', 4, 8),
(588, 'IT Task 51', 1, 10),
(587, 'IT Task 50', 1, 4),
(586, 'IT Task 49', 1, 7),
(585, 'IT Task 48', 1, 12),
(584, 'IT Task 47', 4, 4),
(583, 'IT Task 46', 3, 3),
(582, 'IT Task 45', 5, 9),
(581, 'IT Task 44', 5, 8),
(580, 'IT Task 43', 3, 10),
(579, 'IT Task 42', 5, 10),
(578, 'IT Task 41', 3, 8),
(577, 'IT Task 40', 2, 6),
(576, 'IT Task 39', 4, 12),
(575, 'IT Task 38', 5, 12),
(574, 'IT Task 37', 1, 10),
(573, 'IT Task 36', 1, 10),
(572, 'IT Task 35', 1, 10),
(571, 'IT Task 34', 5, 6),
(570, 'IT Task 33', 2, 6),
(569, 'IT Task 32', 2, 5),
(568, 'IT Task 31', 2, 5),
(567, 'IT Task 30', 5, 9),
(565, 'IT Task 28', 1, 4),
(566, 'IT Task 29', 4, 5),
(564, 'IT Task 27', 4, 7),
(563, 'IT Task 26', 4, 6),
(562, 'IT Task 25', 3, 9),
(561, 'IT Task 24', 2, 6),
(560, 'IT Task 23', 2, 7),
(559, 'IT Task 22', 4, 5),
(558, 'IT Task 21', 1, 5),
(557, 'IT Task 20', 3, 11),
(556, 'IT Task 19', 3, 8),
(555, 'IT Task 18', 2, 11),
(554, 'IT Task 17', 3, 11),
(553, 'IT Task 16', 5, 4),
(552, 'IT Task 15', 4, 6),
(551, 'IT Task 14', 1, 11),
(550, 'IT Task 13', 5, 3),
(549, 'IT Task 12', 4, 11),
(548, 'IT Task 11', 1, 6),
(547, 'IT Task 10', 2, 10),
(546, 'IT Task 9', 1, 6),
(545, 'IT Task 8', 3, 8),
(544, 'IT Task 7', 5, 6),
(543, 'IT Task 6', 1, 4),
(542, 'IT Task 5', 1, 12),
(541, 'IT Task 4', 3, 5),
(540, 'IT Task 3', 4, 4),
(539, 'IT Task 2', 3, 10),
(538, 'IT Task 1', 4, 6),
(537, 'IT Task 0', 3, 6),
(536, 'Business Task 66', 1, 3),
(535, 'Business Task 65', 3, 9),
(534, 'Business Task 64', 4, 5),
(533, 'Business Task 63', 4, 11),
(532, 'Business Task 62', 1, 10),
(531, 'Business Task 61', 3, 8),
(530, 'Business Task 60', 2, 10),
(529, 'Business Task 59', 4, 9),
(528, 'Business Task 58', 2, 4),
(527, 'Business Task 57', 3, 7),
(526, 'Business Task 56', 4, 9),
(525, 'Business Task 55', 2, 11),
(524, 'Business Task 54', 4, 10),
(523, 'Business Task 53', 1, 3),
(522, 'Business Task 52', 3, 7),
(521, 'Business Task 51', 1, 11),
(520, 'Business Task 50', 5, 12),
(519, 'Business Task 49', 5, 7),
(518, 'Business Task 48', 1, 3),
(517, 'Business Task 47', 1, 12),
(516, 'Business Task 46', 1, 9),
(515, 'Business Task 45', 5, 8),
(514, 'Business Task 44', 5, 8),
(513, 'Business Task 43', 1, 9),
(512, 'Business Task 42', 5, 9),
(511, 'Business Task 41', 1, 5),
(510, 'Business Task 40', 1, 6),
(509, 'Business Task 39', 5, 7),
(508, 'Business Task 38', 1, 9),
(507, 'Business Task 37', 4, 5),
(506, 'Business Task 36', 5, 3),
(505, 'Business Task 35', 1, 9),
(504, 'Business Task 34', 2, 9),
(503, 'Business Task 33', 3, 9),
(502, 'Business Task 32', 4, 7),
(501, 'Business Task 31', 1, 7),
(500, 'Business Task 30', 4, 4),
(499, 'Business Task 29', 4, 4),
(498, 'Business Task 28', 1, 7),
(497, 'Business Task 27', 3, 9),
(496, 'Business Task 26', 2, 12),
(495, 'Business Task 25', 3, 9),
(494, 'Business Task 24', 5, 12),
(493, 'Business Task 23', 5, 9),
(492, 'Business Task 22', 2, 5),
(491, 'Business Task 21', 4, 4),
(490, 'Business Task 20', 5, 4),
(489, 'Business Task 19', 4, 4),
(488, 'Business Task 18', 1, 7),
(487, 'Business Task 17', 4, 9),
(486, 'Business Task 16', 3, 9),
(485, 'Business Task 15', 2, 12),
(484, 'Business Task 14', 2, 10),
(483, 'Business Task 13', 1, 3),
(482, 'Business Task 12', 3, 10),
(481, 'Business Task 11', 4, 3),
(480, 'Business Task 10', 2, 7),
(479, 'Business Task 9', 1, 4),
(478, 'Business Task 8', 4, 12),
(477, 'Business Task 7', 2, 11),
(476, 'Business Task 6', 4, 5),
(475, 'Business Task 5', 5, 7),
(474, 'Business Task 4', 2, 7),
(473, 'Business Task 3', 5, 4),
(472, 'Business Task 2', 1, 6),
(471, 'Business Task 1', 3, 4),
(470, 'Business Task 0', 1, 7),
(600, 'IT Task 63', 3, 3),
(601, 'IT Task 64', 4, 12),
(602, 'IT Task 65', 2, 11),
(603, 'IT Task 66', 3, 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
