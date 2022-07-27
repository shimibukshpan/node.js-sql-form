-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: יולי 27, 2022 בזמן 09:00 PM
-- גרסת שרת: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forms`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `persons`
--

CREATE TABLE `persons` (
  `Personid` int(11) NOT NULL,
  `firatname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- הוצאת מידע עבור טבלה `persons`
--

INSERT INTO `persons` (`Personid`, `firatname`, `lastname`, `Email`, `Phone`) VALUES
(5, 'shimi', 'rew', '1224@gmail.com', '0546786599'),
(6, 'moshe', 'viner', 'jacobalon123@gmail.com', '0535361971'),
(7, 'ewrw', 'gggggggggggggggggggggggggg', 'jacobalon123@gmail.com', '0535361971'),
(9, 'slomo', 'michael', 'ww@gmail.com', '2222222222'),
(10, 'dffffffffff', 'dddddddd', 'ddddddd@gmai.com', '1111111111'),
(11, 'shimi', 'bukshpan', 'buki8060@gmail.com', '1111111111'),
(12, 'shimi', 'bukshpan', 'buki8060@gmail.com', '2222222222'),
(13, 'shimi', 'bukshpan', 'buki8060@gmail.com', '2222222222'),
(14, 'shimi', 'bukshpan', 'buki8060@gmail.com', '0546786599'),
(15, 'shimi', 'bukshpan', 'buki8060@gmail.com', '0546786599'),
(16, 'shimi', 'bukshpan', 'buki8060@gmail.com', '0546786599'),
(17, 'shimi', 'bukshpan', 'buki8060@gmail.com', '0546786599'),
(18, 'shimi', 'bukshpan', 'buki8060@gmail.com', '0546786599'),
(19, 'shimi', 'bukshpan', 'buki8060@gmail.com', '0546786599'),
(20, 'shimi', 'bukshpan', 'buki8060@gmail.com', '0546786599'),
(21, 'shimi', 'bukshpan', 'buki8060@gmail.com', '0546786599'),
(22, 'eli', 'segal', 'eki567@gmail.com', '0546786599');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`Personid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `Personid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
