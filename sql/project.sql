-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 04:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `name`) VALUES
(17, 'ENT'),
(18, 'Dental'),
(19, ' orthopaedic'),
(20, 'Neurology'),
(21, 'cardiology'),
(23, 'Psychiatry'),
(24, 'Skin'),
(25, 'pediatric'),
(26, 'Oncology'),
(27, 'Gynecology'),
(28, 'Eye'),
(29, 'psychologist');

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE `demo` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `hospital` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`id`, `department`, `hospital`) VALUES
(83, 'ENT,pediatric,Gynecology,Eye', 'Chandrakona Rural Hospital'),
(84, 'ENT,Dental, orthopaedic,Neurology,pediatric,Gynecology', 'Bankura Sammilani Medical College & Hospital Superspeciality Block'),
(85, 'pediatric,Gynecology,Eye', 'Lokepur Hospital'),
(86, 'ENT,pediatric,Eye', 'Bishnupur Super Speciality Hospital'),
(87, 'pediatric,Eye', 'Kethardanga Health center'),
(88, 'ENT,Dental,Neurology,pediatric,Gynecology,Eye', 'Medinipur Hospital'),
(89, 'ENT,Dental, orthopaedic,Neurology,Gynecology,Eye', 'Kharagpur Sub Divisional Hospital'),
(90, 'ENT,Dental, orthopaedic,Neurology,pediatric,Eye', 'Ghatal Sub Divisional Hospital'),
(91, 'ENT,Dental,Neurology,pediatric,Eye', 'Jalpaiguri Superspeciality Hospital'),
(92, 'ENT,Neurology,Skin,Eye', 'Darjeeling District Hospital'),
(93, 'ENT,Dental,Neurology,Psychiatry,Skin', 'Shahid Durga malla district hospital (eden hoslital)'),
(94, 'ENT,Dental,Neurology,pediatric,Gynecology', 'Krishnanagar Sadar District Hospital'),
(95, 'Oncology', 'Chittaranjan National Cancer Institute'),
(96, 'Oncology', 'Subodh Mitra Cancer Hospital and Techno global'),
(98, 'Oncology', 'Sri Sri Mohanananda Brahmachari Cancer Hospital'),
(99, 'ENT,Neurology,Oncology,Gynecology,Eye', 'M R Bangur Hospital'),
(100, 'ENT, orthopaedic,Neurology,cardiology,Skin,pediatric,Gynecology,Eye', 'Chittaranjan Seva Sadan Hospital'),
(101, 'ENT, orthopaedic,Neurology,cardiology,pediatric,Gynecology,Eye', 'R G Kar Medical College and Hospital'),
(102, 'ENT,Dental, orthopaedic,Neurology,cardiology,pediatric,Gynecology,Eye', 'Sambhunath Pandit Hospital.'),
(103, 'ENT,Dental, orthopaedic,Neurology,cardiology,pediatric,Gynecology,Eye', 'Calcutta National Medical College & Hospital'),
(104, 'pediatric', 'Calcutta Pavlov Hospital'),
(105, 'ENT,Dental, orthopaedic,Neurology,cardiology,Skin,pediatric,Gynecology,Eye', 'Medical College Kolkata'),
(106, 'ENT,Dental, orthopaedic,Neurology,cardiology,pediatric,Gynecology,Eye', 'Durgapur Medical College'),
(107, 'ENT,Dental, orthopaedic,Neurology,cardiology,pediatric,Gynecology,Eye', 'Purulia Sadar Hospital'),
(108, 'ENT,Neurology,Skin,Oncology', 'Suri Sadar Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_call`
--

CREATE TABLE `emergency_call` (
  `id` int(11) NOT NULL,
  `number` varchar(255) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emergency_call`
--

INSERT INTO `emergency_call` (`id`, `number`, `date`) VALUES
(9, '7719104691', '2022-06-21'),
(10, '8920209298', '2022-06-21');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `h_id` int(11) NOT NULL,
  `h_dep` varchar(255) NOT NULL,
  `h_treat` varchar(255) NOT NULL,
  `treat_price` bigint(20) NOT NULL,
  `h_name` varchar(255) NOT NULL,
  `d_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`h_id`, `h_dep`, `h_treat`, `treat_price`, `h_name`, `d_name`) VALUES
(17, 'Eye', 'Eye muscle surgery', 25000, 'Bankura Sammilani Medical College & Hospital Superspeciality Block', 'Bidhan Roy'),
(18, 'Dental', 'Spinal Surgeries', 800000, 'Bishnupur Super Speciality Hospital', 'Aniket Dey'),
(19, 'Dental', 'Root Canal', 5000, 'Lokepur Hospital', 'Sayani Mondal'),
(20, 'Dental', 'Root Canal', 2000, 'Jalpaiguri Superspeciality Hospital', 'Ramesh Ojha'),
(21, 'ENT', ' Esophagoscopy', 10000, 'Shahid Durga malla district hospital (eden hoslital)', 'Tufan Chowdhury'),
(22, 'Eye', 'Cataract ', 30000, 'Bankura Sammilani Medical College & Hospital Superspeciality Block', 'Bidhan Roy');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_dep_doctor`
--

CREATE TABLE `hospital_dep_doctor` (
  `id` int(11) NOT NULL,
  `h_name` varchar(255) NOT NULL,
  `dep_name` varchar(255) NOT NULL,
  `doctor_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_dep_doctor`
--

INSERT INTO `hospital_dep_doctor` (`id`, `h_name`, `dep_name`, `doctor_name`) VALUES
(6, 'Chandrakona Rural Hospital', 'ENT', 'Subhajit Chakraborty'),
(7, 'Chandrakona Rural Hospital', 'pediatric', 'Aniket Dey'),
(8, 'Chandrakona Rural Hospital', 'Gynecology', 'Sayantani Chakraborty'),
(9, 'Bankura Sammilani Medical College & Hospital Superspeciality Block', 'Eye', 'Bidhan Roy'),
(10, 'M R Bangur Hospital', 'Oncology', 'Debankur Chakraborty'),
(11, 'Durgapur Medical College', 'ENT', 'Biswajit Shil'),
(12, 'Chittaranjan National Cancer Institute', 'Oncology', 'Amarjit Dutta'),
(13, 'Medical College Kolkata', 'Neurology', 'Prithwijit Dey'),
(14, 'Calcutta National Medical College & Hospital', 'Gynecology', 'Sayani Mondal'),
(15, 'Purulia Sadar Hospital', 'Eye', 'Amar Mukherjee'),
(16, 'Calcutta Pavlov Hospital', 'Psychiatry', 'Sonali Sen'),
(18, 'Chandrakona Rural Hospital', 'ENT', 'Tufan Chowdhury'),
(19, 'Chandrakona Rural Hospital', 'ENT', 'Ramesh Ojha');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_details`
--

CREATE TABLE `hospital_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `district` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `map` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `pincode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital_details`
--

INSERT INTO `hospital_details` (`id`, `name`, `email`, `district`, `state`, `map`, `phone`, `pincode`) VALUES
(85, 'Chandrakona Rural Hospital', 'chandrakonamedical@gmail.com', 'Paschim Midnapore', 'West Bengal', 'https://goo.gl/maps/yneeRMBipxrofUgs7', '3225289224', 721201),
(86, 'Bankura Sammilani Medical College & Hospital Superspeciality Block', 'bankurasammilanimedical@gmail.com', 'Bankura', 'West Bengal', 'https://goo.gl/maps/RoNuHEAghUHFXDNPA', '0324225511', 722101),
(87, 'Lokepur Hospital', 'lokepurmedical@gmail.com', 'Bankura', 'West Bengal', 'https://goo.gl/maps/QSVgCFGYnopgh4wU6', '0324288797', 722101),
(88, 'Bishnupur Super Speciality Hospital', 'bishnupurmedical@gmail.com', 'Bankura', 'West Bengal', 'https://goo.gl/maps/VPkXg1p3GZJ2AG8T9', '9593127400', 722122),
(89, 'Kethardanga', 'kethardangamedical@gmai.com', 'Bankura', 'West', 'https://goo.gl/maps/a7rY3SPRhai8zcRg6', '8745698758', 722101),
(90, 'Medinipur Hospital', 'medinipurmedical@gmail.com', 'Paschim Midnapore', 'West Bengal', 'https://goo.gl/maps/d6oZE6VAfc6AWMay8', '9478563145', 721101),
(91, 'Kharagpur Sub Divisional Hospital', 'kharagpurmedical@gmail.com', 'Paschim Midnapore', 'West Bengal', 'https://goo.gl/maps/6sAqPsjjaRDwDAR9A', '9547836458', 721301),
(92, 'Ghatal Sub Divisional Hospital', 'ghatalmedical@gmail.com', 'Paschim Midnapore', 'West Bengal', 'https://goo.gl/maps/GtM1Vq1TK2poXMem7', '9874568213', 721212),
(93, 'Jalpaiguri Superspeciality Hospital', 'jalpaigurimedical@gmail.com', 'Jalpaiguri', 'West Bengal', 'https://goo.gl/maps/ovsnQw1F6z4a8EQV7', '9758463215', 735102),
(95, 'Shahid Durga malla district hospital (eden hoslital)', 'shahiddurgamedical@gmail.com', 'Darjeeling', 'West Bengal', 'https://goo.gl/maps/RBmo69VL6BSzK5Fi9', '9214578698', 734101),
(96, 'Krishnanagar Sadar District Hospital', 'krishnanagarmedical@gmail.com', 'Nadia', 'West Bengal', 'https://goo.gl/maps/4UHvCTAMf85NgYig8', '6321487954', 741101),
(97, 'Chittaranjan National Cancer Institute', 'chittaranjanmedical@gmail.com', 'Kolkata', 'West Bengal', 'https://goo.gl/maps/6kvLzDJh8tN9D5YQ8', '9874568754', 700026),
(98, 'Subodh Mitra Cancer Hospital and Techno global', 'subodhmitracancermedical@gmail.com', 'Kolkata', 'West Bengal', 'https://goo.gl/maps/v5fDYhUx8Jz1L7zc6', '3223352515', 700106),
(100, 'Sri Sri Mohanananda Brahmachari Cancer Hospital', 'srisrimahananandamedical@gmail.com', 'Kolkata', 'West Bengal', 'https://goo.gl/maps/96GBarMAzYdpTJdNA', '9458713654', 713212),
(101, 'M R Bangur Hospital', 'bangurmedical@gmail.com', 'Kolkata', 'West Bengal', 'https://goo.gl/maps/Z56GzNE8eqNe5qQK6', '9547862145', 700033),
(102, 'Chittaranjan Seva Sadan Hospital', 'chittaranjansevamedical@gmail.com', 'Kolkata', 'West Bengal', 'https://goo.gl/maps/ev799jsph8jj98SZ9', '4587963214', 700026),
(103, 'R G Kar Medical College and Hospital', 'rgkarmedical@gmail.com', 'Kolkata', 'West Bengal', 'https://goo.gl/maps/YRaLURW7Z8RYWbX48', '9872345675', 700004),
(104, 'Sambhunath Pandit Hospital.', 'sambhunathpanditmedical@gmail.com', 'Kolkata', 'West Bengal', 'https://goo.gl/maps/SLGFtgCnRE3eCAZk8', '2302282078', 700020),
(106, 'Calcutta Pavlov Hospital', 'calcuttapavlov@gmail.com', 'Kolkata', 'West Bengal', 'https://goo.gl/maps/LBRQLDy4H1hfpjwc9', '9247569871', 700046),
(107, 'Medical College Kolkata', 'cmc@gmail.com', 'Kolkata', 'West Bengal', 'https://goo.gl/maps/d4pEsHfP3ZeyCUBS9', '8796321456', 700073),
(108, 'Durgapur Medical College', 'durgapurmedical@gmail.com', 'Paschim Bardhaman', 'West Bengal', 'https://goo.gl/maps/qLJmirbebS51rPCZ9\r\n', '7908020128', 713206),
(109, 'Purulia Sadar Hospital', 'puruliamedical@gmail.com', 'purulia', 'West Bengal', 'https://goo.gl/maps/YHxbpvG1DsnvEqnd7', '7908020127', 713206);

-- --------------------------------------------------------

--
-- Table structure for table `only_treatment`
--

CREATE TABLE `only_treatment` (
  `id` int(11) NOT NULL,
  `treat_name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `only_treatment`
--

INSERT INTO `only_treatment` (`id`, `treat_name`, `department`) VALUES
(6, ' Esophagoscopy', '17'),
(7, 'Tympanostomy', '17'),
(8, 'Septoplasty', '17'),
(9, 'Stapedectomy', '17'),
(10, 'Tonsillectomy', '17'),
(11, 'Thyroidectomy (Partial)', '17'),
(12, 'Thyroidectomy (Total)', '17'),
(13, 'Parotidectomy', '17'),
(14, 'Root Canal', '18'),
(15, 'Dental Implants', '18'),
(16, 'Wisdom Tooth Extraction', '18'),
(17, 'Reconstructive', '18'),
(18, 'Teeth Cleaning', '18'),
(19, 'Ankle Repair', '19'),
(20, 'Spinal Surgeries', '19'),
(21, 'Joint Fusion', '19'),
(22, 'Shoulder Arthroscopy', '19'),
(23, 'Brain tumor surgery', '20'),
(24, 'Carotid endarterectomy', '20'),
(25, 'Brain rehabilitation ', '20'),
(26, 'Hyperhidrosis surgery', '20'),
(27, 'Heart transplant', '21'),
(28, 'Insertion of a pacemaker or an implantable cardioverter defibrillator (ICD)', '21'),
(29, 'Aortic surgery', '21'),
(30, 'Anxiety disorders', '23'),
(31, 'Sleep-wake disorders', '23'),
(32, 'Dissociative disorders', '23'),
(33, 'Obsessive-compulsive and related disorders', '23'),
(34, 'Bipolar and related disorders', '23'),
(35, 'Acne', '24'),
(36, 'Cold sore', '24'),
(37, 'Blister', '24'),
(38, 'Hand, Foot, and Mouth Disease', '25'),
(39, 'Bronchitis', '25'),
(40, 'Conjunctivitis', '25'),
(41, 'Strep Throat', '25'),
(42, 'Chemotherapy ', '26'),
(43, 'Biomarker Testing for Cancer Treatment', '26'),
(44, 'Hyperthermia', '26'),
(45, 'Radiation Therapy', '26'),
(46, 'Stem Cell Transplants', '26'),
(47, 'Music therapy', '23'),
(48, 'Plastic Surgery', '24'),
(49, 'Colposcopy', '27'),
(50, 'Hysteroscopy', '27'),
(51, 'Pelvic Laparoscopy', '27'),
(52, 'Cataract ', '28'),
(53, 'Corneal', '28'),
(54, 'Retina surgeries', '28'),
(55, 'Glaucoma surgeries', '28'),
(56, 'Eye muscle surgery', '28'),
(57, 'psychologist', '29'),
(58, 'psychologist Test', '29');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonecode` varchar(255) NOT NULL,
  `phone` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `gender`, `email`, `phonecode`, `phone`) VALUES
(41, 'sourav', 'sourav', 'male', 'abc@gmail.com', 'ABC', 1234567892),
(42, 'indu', '1234', 'female', 'indu@gmail.com', 'i', 2554796314),
(43, 'Rabi Kumar', '1234', 'male', 'Rabi@1234', 'Rabi', 9687654677);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `r_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(50) NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL COMMENT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`r_id`, `p_name`, `email`, `phone`, `catagory`, `doctor`, `date`, `status`) VALUES
(44, 'sourav', 'abc@gmail.com', 1234567892, '17', 'Sayantani Chakraborty', '2022-06-16', 'Confirmed'),
(45, 'indu', 'indu@gmail.com', 2147483647, '28', 'Debankur Chakraborty', '2022-06-19', 'pending'),
(46, 'indu', 'indu@123456', 1457963321, '23', 'Sonali Sen', '2022-07-03', 'pending'),
(47, 'Rabi Kumar', 'Rabi@1234', 2147483647, 'Eye ', 'Bidhan Roy', '2022-07-26', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demo`
--
ALTER TABLE `demo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_call`
--
ALTER TABLE `emergency_call`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `hospital_dep_doctor`
--
ALTER TABLE `hospital_dep_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_details`
--
ALTER TABLE `hospital_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `only_treatment`
--
ALTER TABLE `only_treatment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `demo`
--
ALTER TABLE `demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `emergency_call`
--
ALTER TABLE `emergency_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hospital_dep_doctor`
--
ALTER TABLE `hospital_dep_doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hospital_details`
--
ALTER TABLE `hospital_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `only_treatment`
--
ALTER TABLE `only_treatment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
