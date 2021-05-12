-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2021 at 10:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rtms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `username` text NOT NULL,
  `train` text NOT NULL,
  `sourse` text NOT NULL,
  `destination` text NOT NULL,
  `date` text NOT NULL,
  `sit` text NOT NULL,
  `cost` text NOT NULL,
  `bank` text NOT NULL,
  `ac` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dashboard`
--

INSERT INTO `dashboard` (`username`, `train`, `sourse`, `destination`, `date`, `sit`, `cost`, `bank`, `ac`, `id`) VALUES
('sutej', 'Chennai Express', 'Goa', 'Chennai', '21/01/2021-15:30:00Hrs', 'AC 1', '1200', 'syndicate bank', '04782010066768', 20),
('sutej', 'Goa Express', 'Bangalore', 'Goa', '21/01/2020-23:05:00Hrs', 'AC 2', '3000', 'syndicate bank', '04782010066768', 19),
('sutej', 'Rajdhani Express', 'Bangalore', 'New Delhi', '21/01/2021-23:05:00', 'AC 6', '18000', 'syndicate bank', '04782010066768', 18),
('jayashree A', 'Goa Express', 'Bangalore', 'Goa', '25/03/2020-23:05:00Hrs', 'AC 4', '6000', 'sbi', '3426578998547532', 17),
('Sam', 'Double Deck', 'Bangalore', 'Chennai', '12/08/1995-07:25:00Hrs', 'Normal 8', '2800', 'HDFC', '2171204724492', 16),
('sutej', 'Goa Express', 'Bangalore', 'Goa', '21/01/2021-23:05:00Hrs', 'AC 1', '1500', 'syndicate bank', '04782010066768', 15);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `name`, `description`) VALUES
(1, 'Bangalore', 'KSR'),
(2, 'Goa', 'MAO'),
(3, 'Chennai', 'MAS'),
(5, 'New Delhi', 'NDLS'),
(9, 'Jaipur', 'JP');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `place1` text NOT NULL,
  `place2` text NOT NULL,
  `route` text NOT NULL,
  `time` text NOT NULL,
  `AC` int(11) NOT NULL,
  `normal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`id`, `name`, `place1`, `place2`, `route`, `time`, `AC`, `normal`) VALUES
(12780, 'Goa Express', 'Bangalore', 'Goa', 'via, Margao, Londa, Belgaum, Miraj, Sangli, Satara, Pune, Daund, Manmad, Bhusawal, Khandwa, Itarsi, Bhopal, Jhansi, Gwalior, Agra and Mathura .', '23:05:00Hrs', 1500, 700),
(12742, 'Vasco Express', 'Goa', 'Bangalore', 'vis Yesvantpur Junction,Arsikere Junction,Davangere,Hubli Junction,Dharwad,Londa Junction,Castle Rock,,Kulem,Kudchade,Madgaon Junction,Vasco da Gama', '14:30:00Hrs', 1200, 600),
(2027, 'Shatabdi Express', 'Bangalore', 'Chenai', 'via Hosur,Krishnagiri,Ambur,vellore,Kanchipuram,Katpad,Ramapuram', '06:00:00Hrs', 1000, 400),
(6075, 'Double Deck', 'chennai', 'Bangalore', 'via Ramapuram,Katpadi,Kanchipuram,Vellore,Ambur,Krishnagiri,Hosur', '07:25:00Hrs', 800, 350),
(22691, 'Rajdhani Express', 'bangalore', 'New Delhi', 'via Secunderabad-Nagpur-Bhopal-Agra route. Currently 22693/94 is being planned to be revived again in Yeshvantapur Junction - Hazrat Nizamuddin route, which will either run via Hubli or Hubballi-Pune-Vadodara-Kota route or run via Raichur-Solapur-Bhusaval-Bhopal-Agra route', '23:05:00', 3000, 1300),
(12628, 'Karnataka Express', 'New Delhi', 'Bangalore', 'via Mathura, Agra Cantt, Gwalior, Jhansi, Bhopal, Itarsi, Khandwa, Bhusaval, Manmad, Ahmednagar, Daund, Solapur, Gulbarga, Wadi, Raichur, Guntakal, Anantapur, and Sri Satya Sai Prashanti Nilayam.', '21:15:00Hrs', 2400, 1100),
(12975, 'Jaipur Express', 'jaipur', 'bangalore', 'via Durgapura, Sawai Madhopur, Kota Junction, Nagda, Ujjain Junction, Bhopal Junction, Itarsi Junction, Nagpur, Balharshah, Kazipet, Kacheguda, Kurnool City, Dhone, Guntakal, Dharmavaram', '13:00:Hrs', 2800, 1000),
(2079, 'MYS JP EXP', 'Bangalore', 'Jaipur', ' via Durgapura, Sawai Madhopur, Kota Junction, Nagda, Ujjain Junction, Bhopal Junction, Itarsi Junction, Nagpur, Balharshah, Kazipet, Kacheguda, Kurnool City, Dhone, Guntakal, Dharmavaram, Bangalore City to Mysore Junction.', '10:40:00Hrs', 2600, 700),
(12978, 'Marusagar Express', 'jaipur', 'goa', 'via Jaipur, Sawai Madhopur, Kota, Nagda, Ratlam Junction, Vadodara, Panvel, Ratnagiri, Goa', '10:15:00Hrs', 2200, 800),
(12977, 'Marusagar Express', 'Goa', 'Jaipur', 'via Goa,rathnagirpanvel,vadodara,ratlam junction,nagda,kota,jaipur', '10:15:00Hrs', 2300, 900),
(17312, 'Chennai Express', 'goa', 'chennai', ' via Madgaon Junction, Castlerock, Hubli, Yesvantpur Junction to Chennai Central.', '15:20:00Hrs', 1200, 600),
(17311, 'Chennai Express', 'Chennai', 'goa', 'via Chennai Central. Yesvantpur Junction , Hubli, Castlerock, Madgaon Junction,', '15:30:00Hrs', 1000, 400),
(2780, ' Goa Express SPL', 'New Delhi', 'Goa', 'via DELHI HAZRAT NIZAMUDDIN ,GWALIOR JN,JHANSI JN,BHOPAL JN,KOPARGAON,AHMADNAGAR,PUNE JN,SANGLI ,BELAGAVI,CASTLE ROCK,VASCO DA GAMA', '15:00:00Hrs', 2600, 1400),
(2780, 'Goa  Express SPL', 'Goa', 'New Delhi', 'via VASCO DA GAMA, CASTLE ROCK, BELGAVI, SANGLI, PUNE JN, AHMADNAGE, KOPARGAON,BHOPA JN, JHANSI JN, GWALIOR JN,DELHI HAZRAT NIZAMUDDIN', '15:00:00Hrs', 2500, 1250),
(2695, 'MAS NDLS Express', 'Chennai', 'New Delhi', 'via MGR Chennai Central, Vijayawada Jn, Warangar, Balharshar Jn, Nagpur Jn, Bhopal Jn, Jhansi Jn, Gwalior Jn, Agra Cantt, Hazrat Nizamuddin', '07:15:00Hrs', 3300, 1750),
(2270, 'MAS DURONTO SPL', 'New Delh', 'Chennai', 'via Hazrat Nizauddin, Gwalior Jn, Jhansi Jn, Habibganj,Nagpur, Balharshah, Vijayawada Jn, MGR Chennai Central', '', 3100, 1425),
(2967, 'MAS JP SPL', 'Chennai', 'Jaipur', 'MGR Chennai Central, Vijayawada Jn, Warangal, Chandrapur, Nagpur, Bhopal Jn, Ujjain Jn, Kota Jn, Jaipur', '06:45:00Hrs', 2400, 1245),
(2970, 'JP CBE SUP SPL', 'Jaipur ', 'Chennai', 'Jaipur, Durgapur, Kota Jn, Ujjain Jn, Bhopal Jn, Betul, Chandrapur, Warangal, Nellore, MGR Chennai Central', '19:35:00Hrs', 2300, 1290),
(2985, 'Double Deck SP', 'Jaipur', 'New Delhi', 'Jaipur, Gandhinagar, Alwar, Gurgaon, New Delhi', '06:00:00Hrs', 800, 300),
(2916, 'Ashram EXP SPL', 'New Delhi', 'Jaipur', 'New Delhi, Gurgaon, Khairthal, Alwar Jn, Gandhinagar,Jaipur', '19:55:00Hrs', 750, 250),
(560070, 'chennai Expres1', 'goa', 'chennai', 'karnataka', '12:30:30', 500, 6000);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `fullname` text NOT NULL,
  `username` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `bankname` text NOT NULL,
  `acn` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`fullname`, `username`, `address`, `mobile`, `bankname`, `acn`, `password`, `email`) VALUES
('samyuktha YM', 'Sam', 'qidhqwo', '9538725051', 'HDFC', '2171204724492', 'samyukha', 'samyuktha158#gmail.com'),
('sutej y m', 'sutej', 'Banashankari Post Office, 9th Main, Siddanna Layout, BSK 2nd Stage, Banashankari, Bengaluru, Karnataka, India', '9663044040', 'syndicate bank', '04782010066768', 'Sutej@22', 'sutejym122@gmail.com'),
('SUJAY S', 'sujay', 'Banashankari Post Office, 9th Main, Siddanna Layout, BSK 2nd Stage, Banashankari, Bengaluru, Karnataka, India', '9739336902', 'SBI', '12345678901', 'Sujay@1', 'sujays2029@gmail.com'),
('jayashree A', 'jayashree A', 'no 2386 7 main 22 cross bsk 2 stage', '9916224596', 'sbi', '3426578998547532', 'kamal2466', 'jayashree manjunath 2@gmail.com'),
('adqd', 'qdqddqd', 'dqdqdq', 'wfwfwfw', 'fwfwf', 'wfwfw', 'fwfwf', 'fwfwfwfw'),
('dadad', 'ddd', 'dqqd', 'dqdq', 'qdd', 'qdq', 'dqdq', 'qddq'),
('wfwfwf', 'fwfwfw', 'wffwfw', 'wfwff', 'fwfwf', 'fwfw', 'fwfwf', 'fwfwf'),
('veev', 'vevev', 'eve', 'veveve', 'veve', 'veve', '1213', 'veveve'),
('fwf', 'fwfw', 'wf', 'fwfw', 'fwf', 'fwfw', 'fwfw', 'fwfw'),
('dwd', 'dwdw', 'dwdw', 'dwdw', 'dwdw', 'dwd', 'dwdw', 'dwdwd'),
('veve', 'evev', 'veve', 'veve', 'veve', 'veve', 'evve', 'dqdqd'),
('fwfw', 'wffwf', 'fwfwf', 'wfwf', 'fwfw', 'fwfw', 'fwfw', 'fwfw'),
('dqdq', 'dqd', 'dqdq', 'dqdq', 'dqd', 'dqd', 'dqqd', 'dqdq'),
('fwf', 'wffw', 'fqqf', 'fww', 'fwfw', 'fwfw', 'ffwfw', 'fwf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`id`,`name`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `train`
--
ALTER TABLE `train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560071;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
