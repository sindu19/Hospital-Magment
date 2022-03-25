-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 08:15 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'pandu', 'hemanth', '28-10-2021 11:42:05 PM'),
(2, 'harika', 'harika', '28-10-2021 11:42:05 PM'),
(3, 'prasanthi', 'prasanthi', '28-10-2021 11:42:05 PM'),
(4, 'chinna', 'naresh', '28-10-2021 11:42:05 PM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` varchar(25) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'General checkup', 7, 'siri', 600, '29-10-2021', '9:15 AM', '20-05-2012 18:31:28', 1, 0, '21-10-2021 15:05:20'),
(4, 'Ayurveda', 5, 'valmiki', 8050, '30-10-2021', '1:00 PM', '13-04-2014 10:28:54', 1, 1, '21-10-2021 15:05:20'),
(5, 'Dermatologist', 9, 'raju', 500, '15-11-2021', '5:30 PM', '02-11-2019 18:41:34', 1, 0, '2019-11-10 18:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Mounika', 'Guntur', '500', 9548756123, 'mounika@gmail.com', '1e511bdd4f6d0563c899fb8c7670eab4', '20-12-2012 06:25:37', '20-11-2021 12:11:05'),
(2, 'Homeopath', 'Varma', 'Nagayalanka', '600', 6541287952, 'varma@gmail.com', '434eb8d3ae761237261a98bee14f21ca', '12-12-2012 06:51:51', '21-10-2021 15:05:20'),
(3, 'General Physician', 'Surya', 'Guntur', '1200', 8309519033, 'palaparthikiran@gmail.com', '1eaf7c068a250a38e3bab770053c14c3', '24-01-2014 07:43:35', '21-10-2021 15:05:20'),
(4, 'cardilogist', 'Vijay', 'Nampalli', '700', 8457921468, 'vijay@gmail.com', '4f9fecabbd77fba02d2497f880f44e6f', '05-11-2013 07:45:09', '21-10-2021 15:05:20'),
(5, 'Ayurveda', 'Srujana', 'Gudlavalleru', '8050', 7546812578, 'srujana@gmail.com', 'fe3263db5e033202e65685fb488f8856', '20-10-2016 07:47:07', '21-10-2021 15:05:20'),
(6, 'ENT specilist', 'Yaswanth', 'Guntur', '2500', 9875481545, 'yaswanthponnikanti@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '01-05-2015 07:52:50', '21-10-2021 15:05:20'),
(7, 'General surgeon', 'arjun ', 'Eluru', '200', 8526547891, 'arjunreddy@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '11-05-2016 08:08:58', '25-10-2021 18:17:25'),
(8, 'Bones specilist', 'kiran', 'budabukkala palem', '600', 8309521468, 'kiran@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '26-07-2018 17:57:43', '20-06-2021 18:06:06'),
(9, 'Dermatologist', 'Durga', 'nuzuvid', '500', 9475315780, 'durga@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '27-09-2018 18:37:47', '20-10-2021 18:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '12-05-2016 06:37:25', '21-10-2021 15:05:20'),
(2, 'General Physician', '12-10-2014 06:38:12', '21-10-2021 15:05:20'),
(3, 'Dermatologist', '12-10-2014 06:38:48', '21-10-2021 15:05:20'),
(4, 'Homeopath', '12-10-2014 06:39:26', '21-10-2021 15:05:20'),
(5, 'Ayurveda', '12-10-2014 06:39:51', '21-10-2021 15:05:20'),
(6, 'Dentist', '12-10-2014 06:40:08', '21-10-2021 15:05:20'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '12-10-2014 06:41:18', '21-10-2021 15:05:20'),
(9, 'Demo test', '12-10-2014 07:37:39', '21-10-2021 15:05:20'),
(10, 'Bones Specialist ', '20-05-2016 08:07:53', '21-10-2021 15:05:20'),
(11, 'Test', '13-06-2019 17:51:06', '17-05-2021 17:55:06'),
(12, 'Dermatologist', '15-06-2015 18:36:36', '19-10-2021 18:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'pandu', 'hemanthtata14@@gmail.com', 8309519033, ' If you have any problem please contact me. This is admin pandu signing off', '20-11-2021 19:03:08', 'Any Remarks', '2019-06-30 12:55:23', 1),
(2, 'bharath', 'bharath@gmail.com', 9875641385, ' This is sample text for testing.', '02-11-2021 13:06:50', NULL, NULL, NULL),
(3, 'bhasha', 'bhasha@gmail.com', 9264826346, 'sample text', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manish', 4558968789, 'manish@gmail.com', 'male', '\"\"J&K Block J-127, Laxmi Nagar guntur', 26, 'She is diabetic patient', '17-11-2021 21:38:06', '20-11-2021 06:48:05'),
(2, 5, 'Raghu', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 machilipatnam', 39, 'No', '06-11-2021 10:40:13', '14-11-2021 11:53:45'),
(3, 7, 'Mansi', 9878978798, 'mansi@gmail.com', 'Female', '\"fdghyj', 46, 'No', '01-11-2021 10:49:41', '01-11-2021 11:58:59'),
(4, 7, 'Manas', 9888988989, 'manas@gmail.com', 'Male', 'L-56,Ashok Nagar vizag', 45, 'He is long suffered by asthma', '19-11-2021 14:33:54', '05-11-2021 14:34:31'),
(5, 9, 'gani', 9834567890, 'gani@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '08-11-2021 18:49:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Sakshi', 'Narsaraopet', 'narsaraopet', 'female', 'sakshi@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '17-05-2019 05:34:39', '21-10-2021 15:05:20'),
(3, 'shri', 'rvr', 'guntur', 'male', 'shri@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '25-06-2017 06:36:53', '21-10-2021 15:05:20'),
(4, 'Rahul', 'vizag', 'AP', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '26-09-2018 07:41:14', '21-10-2021 15:05:20'),
(5, 'kumar', 'housing board', 'machilipatnam', 'male', 'kumar@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '20-06-2018 08:00:26', '21-10-2021 15:05:20'),
(6, 'Tarak', 'hyd', 'hyd', 'male', 'tarak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '19-08-2019 18:24:53', '21-10-2021 18:36:09'),
(7, 'Jagadeesh', 'nagayalanka', 'nagayalanka', 'male', 'jaga@test.com', 'f925916e2754e5e03f75dd58a5733251', '27-05-2018 18:40:21', '21-10-2021 18:40:51');



CREATE TABLE `Patienthistory` (
  `ID` int(100) NOT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `Doctorname` varchar(200) DEFAULT NULL,
  `patproblem` varchar(50) DEFAULT NULL,
  `medicines` varchar(500) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
--
--

INSERT INTO `Patienthistory` (`ID`, `PatientName`, `PatientContno`, `Doctorname`, `Patproblem`, `medicines`, `Price`,  `CreationDate`, `UpdationDate`) VALUES
(1, 'Manish', 8558968789, 'mounika', 'teeth decay', 'Eido-Fe ,Supracal', '119,148', '17-11-2021 21:38:06', '20-11-2021 06:48:05'),
(2, 'Raghu', 9797977979, 'varma', 'zondies', 'Livful-DS,Heposem,Jaundinil', '120,157,248', '06-11-2021 10:40:13', '14-11-2021 11:53:45'),
(3, 'Mansi', 9878978798, 'kiran', 'bone braked', 'Reostro,EthiCal,Osteoporosis', '235,148,215', '06-11-2021 10:40:13', '01-11-2021 11:58:59'),
(4, 'Manas', 9888988989, 'vijay', 'heart problem', 'Cardilip,Norvasc,Satatins', '145,351,189',  '19-11-2021 14:33:54', '06-11-2021 10:40:13'),
(5, 'gani', 9834567890, 'yaswanth', 'ear problem', 'Ogiclave,Azicip,Vertin', '125,245,401', '08-11-2021 18:49:24', '06-11-2021 10:40:13');


CREATE TABLE `tablets` (
  `ID` int(100) NOT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `Doctorname` varchar(200) DEFAULT NULL,
  `medicines` varchar(500) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
--
--

INSERT INTO `tablets` (`ID`, `PatientName`, `PatientContno`, `Doctorname`, `medicines`, `Price`) VALUES
(1, 'raju', 8558968789, 'surya', 'paracetmol', '60');


-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `patienthistory`
--
ALTER TABLE `patienthistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tablets`
--
ALTER TABLE `tablets`
  ADD PRIMARY KEY (`ID`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
