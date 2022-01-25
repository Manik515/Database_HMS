-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 11:09 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `AID` varchar(15) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `PHONE_NO` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`AID`, `EMAIL`, `NAME`, `ADDRESS`, `GENDER`, `PHONE_NO`) VALUES
('A-01', 'manbendra520@gmail.com', 'Manbendra Nath', 'Panchagarh', 'Male', '01339870290'),
('A-02', 'sobujmondal20@gmail.com', 'Sabuj Mondal', 'Dhaka', 'Male', '01779870290'),
('A-03', 'tareqmahfuz30@gmail.com', 'Tareq Mahfuz', 'Kustia', 'Male', '01708770270'),
('A-04', 'moriomem710@gmail.com', 'Moriom Mim', 'Khulna', 'Female', '01899870284'),
('A-05', 'mariayamin230@gmail.com', 'Maria Yamin', 'Dhaka', 'Female', '01900870257');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BILL_NO` int(11) NOT NULL,
  `PAT_NAME` varchar(30) NOT NULL,
  `DR_NAME` varchar(50) NOT NULL,
  `DR_CHARGE` int(11) NOT NULL,
  `ROOM_CHARGE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BILL_NO`, `PAT_NAME`, `DR_NAME`, `DR_CHARGE`, `ROOM_CHARGE`) VALUES
(701, 'Sujon Das', 'Dr Sabina Yasmin', 1500, 300),
(702, 'Mir Ali', 'Dr Anwer Hussain', 1200, 400),
(703, 'Liton Das', 'Dr Maruf Hasan', 2500, 700),
(704, 'Abdul Raz', 'Dr Soriful Islam', 1000, 250),
(705, 'Mira Mim', 'Dr Nasima Khatum', 2100, 900);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPT_NAME` varchar(30) NOT NULL,
  `MGRID` varchar(20) NOT NULL,
  `MGR_START_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPT_NAME`, `MGRID`, `MGR_START_DATE`) VALUES
('Chief executive officer', 'E-401', '2014-02-01'),
('Healthcare manager', 'E-403', '2016-09-01'),
('Medical admissions clerk', 'E-405', '2014-07-01'),
('Medical technologist', 'E-402', '2017-11-05'),
('Pharmacist', 'E-404', '2015-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `DIA_REG` varchar(25) NOT NULL,
  `DIA_NO` int(11) NOT NULL,
  `REMARK` text NOT NULL,
  `DETAILS` text NOT NULL,
  `DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`DIA_REG`, `DIA_NO`, `REMARK`, `DETAILS`, `DATE`) VALUES
('20220109', 1, 'CT scans', 'A CT scan or computed tomography scan is a medical imaging technique used in radiology', '2021-02-23 10:15:30'),
('20220110', 2, 'ECG', 'People with chest pains, a racing heart', '2021-04-12 11:32:09'),
('20220111', 3, 'Ultrasound', 'An ultrasound scan is performed using a hand-held scanner', '2021-12-15 11:40:12'),
('20220112', 4, 'x-ray', 'A plain x-ray is painless and usually takes less than 15 minutes', '2022-01-05 10:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `discharge`
--

CREATE TABLE `discharge` (
  `DP_ID` varchar(20) NOT NULL,
  `DA_ID` varchar(20) NOT NULL,
  `DBILL_NO` int(11) NOT NULL,
  `DISCHARGE_NO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discharge`
--

INSERT INTO `discharge` (`DP_ID`, `DA_ID`, `DBILL_NO`, `DISCHARGE_NO`) VALUES
('P-01', 'A-01', 701, 1001),
('P-02', 'A-02', 702, 1002),
('P-03', 'A-03', 703, 1003),
('P-05', 'A-05', 705, 1004);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DID` varchar(15) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `PHONE_NO` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DID`, `EMAIL`, `NAME`, `ADDRESS`, `GENDER`, `PHONE_NO`) VALUES
('D-201', 'anwerhussain99@gmail.com', 'Dr Anwer Hussain', 'Rangpur', 'Male', '01310950022'),
('D-202', 'marufhasan65@gmail.com', 'Dr Maruf Hasan', 'Rajshahi', 'Male', '01900300518'),
('D-203', 'sorifulislam231@gmail.com', 'Dr Soriful Islam', 'Pabna', 'Male', '01823233000'),
('D-204', 'nasimakhatun909@gmail.com', 'Dr Nasima Khatum', 'Tangail', 'Female', '01705944509'),
('D-205', 'sabinayasmin012@gmail.com', 'Dr Sabina Yasmin', 'Gazipur', 'Female', '01876135841');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` varchar(15) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `PHONE_NO` varchar(12) DEFAULT NULL,
  `DEPT_NAME` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `EMAIL`, `NAME`, `ADDRESS`, `GENDER`, `PHONE_NO`, `DEPT_NAME`) VALUES
('E-401', 'rafimahud10@gmail.com', 'Rafi Mahmud', 'Tungi', 'Male', '01939320110', 'Chief executive officer'),
('E-402', 'jahidhasan55@gmail.com', 'Jahid Hasan', 'Mymensingh', 'Male', '01899899098', 'Medical technologist'),
('E-403', 'subrotomohonto123@gmail.com', 'Subroto Mohanto', 'Rangpur', 'Male', '01330090101', 'Healthcare manager'),
('E-404', 'sohagrana654@gmail.com', 'Sohag Rana', 'Tangail', 'Male', '01798701439', 'Pharmacist'),
('E-405', 'rabikislam45@gmail.com', 'Rakib Islam', 'Dinajpur', 'Male', '01981501937', 'Medical admissions clerk');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `NID` varchar(15) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `PHONE_NO` varchar(12) DEFAULT NULL,
  `DEGREE` varchar(20) DEFAULT NULL,
  `JOB_DESCRIPTION` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`NID`, `EMAIL`, `NAME`, `ADDRESS`, `GENDER`, `PHONE_NO`, `DEGREE`, `JOB_DESCRIPTION`) VALUES
('N-301', 'selinabegum@gmail.com', 'Selina Begum', 'Saidpur', 'Female', '01793854030', 'B.Sc Nursing', 'Junior Staff Nurse'),
('N-302', 'rokeyabegum33@gmail.com', 'Rokeya Begum', 'Kustia', 'Female', '01835352090', 'M.Sc in Nursing', 'Senior Staff Nurse'),
('N-303', 'salmakhatun551@gmail.com', 'Salma Khatun', 'Sylhet', 'Female', '01995069032', 'B.Sc Nursing', 'Junior Staff Nurse'),
('N-304', 'nusratjahan909@gmail.com', 'Nusrat Jahan', 'Barisal', 'Female', '01330022987', 'Ph.D. in Nursing', 'OT In Charge Nurse'),
('N-305', 'payelnasw@gmail.com', 'Payel Nowsin', 'Noakhali', 'Female', '01632012156', 'M.Sc in Nursing', 'Nursing Supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `nursing`
--

CREATE TABLE `nursing` (
  `NID` varchar(20) NOT NULL,
  `PID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nursing`
--

INSERT INTO `nursing` (`NID`, `PID`) VALUES
('N-301', 'P-04'),
('N-301', 'P-05'),
('N-302', 'P-02'),
('N-303', 'P-01'),
('N-305', 'P-03');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PID` varchar(20) NOT NULL,
  `F_NAME` varchar(20) NOT NULL,
  `L_NAME` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `PHONE_NO` varchar(12) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `DIAGNOSIS` varchar(20) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `PD_ID` varchar(20) NOT NULL,
  `PA_ID` varchar(20) NOT NULL,
  `PR_ID` varchar(20) NOT NULL,
  `ROOM_NO` varchar(10) DEFAULT NULL,
  `DIA_REG` varchar(25) DEFAULT NULL,
  `DISC_NO` int(11) DEFAULT NULL,
  `REG_NO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PID`, `F_NAME`, `L_NAME`, `ADDRESS`, `PHONE_NO`, `DATE`, `DIAGNOSIS`, `AGE`, `PD_ID`, `PA_ID`, `PR_ID`, `ROOM_NO`, `DIA_REG`, `DISC_NO`, `REG_NO`) VALUES
('P-01', 'Sujon', 'Das', 'Chadpur', '01333210209', '2020-12-03 09:25:23', 'Headache,Migraine', 23, 'D-205', 'A-02', 'R-101', 'RM-212', '20220109', 801, '12020'),
('P-02', 'Mir', 'Ali', 'Nikunjo', '01790569352', '2020-12-15 11:39:33', 'Defects of heart', 25, 'D-201', 'A-01', 'R-102', 'RM-420', '20220110', 802, '12021'),
('P-03', 'Liton', 'Das', 'Savar', '01932129071', '2020-12-21 10:05:55', 'Diabetes', 28, 'D-202', 'A-03', 'R-105', 'RM-605', '20220111', 803, '12022'),
('P-04', 'Abdul', 'Raz', 'Banani', '01800320658', '2022-01-05 08:56:45', 'gallbladder disease', 27, 'D-203', 'A-01', 'R-103', 'RM-408', '20220110', 804, '12023'),
('P-05', 'Mira', 'Mim', 'Khulna', '01612093847', '2022-01-08 09:44:37', 'hyperemesis', 21, 'D-204', 'A-05', 'R-104', 'RM-420', '20220112', 805, '12024');

-- --------------------------------------------------------

--
-- Table structure for table `recieptionist`
--

CREATE TABLE `recieptionist` (
  `RID` varchar(15) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `ADDRESS` varchar(30) DEFAULT NULL,
  `GENDER` varchar(10) DEFAULT NULL,
  `PHONE_NO` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recieptionist`
--

INSERT INTO `recieptionist` (`RID`, `EMAIL`, `NAME`, `ADDRESS`, `GENDER`, `PHONE_NO`) VALUES
('R-101', 'taskinrh70@gmail.com', 'Taskin Rahman', 'Bogura', 'Male', '01879856579'),
('R-102', 'shakibalhasan20@gmail.com', 'Shakibul Hasan ', 'sylhet', 'Male', '01609247824'),
('R-103', 'rubelhussain007@gmail.com', 'Rubel Hussain', 'Rangpur', 'Male', '01808779090'),
('R-104', 'jahanarakh71@gmail.com', 'Jahanara Khatun', 'Mirpur', 'Female', '01799810293'),
('R-105', 'mominulhaq55@gmail.com', 'Mominul Haque', 'Khilkhet', 'Male', '01330918274'),
('R-106', 'ashraful06@gmail.com', 'Mohammad Ashraful', 'Khilkhet', 'Male', '01890870070');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ROOM_NO` varchar(7) NOT NULL,
  `TYPE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ROOM_NO`, `TYPE`) VALUES
('RM-110', 'Emergency Room'),
('RM-212', 'Consulting room'),
('RM-315', 'Day room'),
('RM-408', 'Surgery'),
('RM-420', 'Operating Theatre'),
('RM-515', 'ICU'),
('RM-605', 'Pharmacy');

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `SPECIALIZATION` varchar(20) NOT NULL,
  `DID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specialization`
--

INSERT INTO `specialization` (`SPECIALIZATION`, `DID`) VALUES
('Cardiologists', 'D-201'),
('Endocrinologists', 'D-202'),
('Gastroenterologists', 'D-203'),
('gynecologists', 'D-204'),
('Neurologists', 'D-205');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`AID`,`EMAIL`),
  ADD UNIQUE KEY `PHONE_NO` (`PHONE_NO`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BILL_NO`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPT_NAME`),
  ADD KEY `MGRID` (`MGRID`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`DIA_REG`,`DIA_NO`);

--
-- Indexes for table `discharge`
--
ALTER TABLE `discharge`
  ADD PRIMARY KEY (`DP_ID`,`DA_ID`,`DBILL_NO`),
  ADD UNIQUE KEY `DISCHARGE_NO` (`DISCHARGE_NO`),
  ADD KEY `DA_ID` (`DA_ID`),
  ADD KEY `DBILL_NO` (`DBILL_NO`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DID`,`EMAIL`),
  ADD UNIQUE KEY `PHONE_NO` (`PHONE_NO`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`,`EMAIL`),
  ADD UNIQUE KEY `PHONE_NO` (`PHONE_NO`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`NID`,`EMAIL`),
  ADD UNIQUE KEY `PHONE_NO` (`PHONE_NO`);

--
-- Indexes for table `nursing`
--
ALTER TABLE `nursing`
  ADD PRIMARY KEY (`NID`,`PID`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PID`),
  ADD UNIQUE KEY `REG_NO` (`REG_NO`),
  ADD UNIQUE KEY `PHONE_NO` (`PHONE_NO`),
  ADD UNIQUE KEY `DISC_NO` (`DISC_NO`),
  ADD KEY `PD_ID` (`PD_ID`),
  ADD KEY `PA_ID` (`PA_ID`),
  ADD KEY `PR_ID` (`PR_ID`),
  ADD KEY `ROOM_NO` (`ROOM_NO`),
  ADD KEY `DIA_REG` (`DIA_REG`);

--
-- Indexes for table `recieptionist`
--
ALTER TABLE `recieptionist`
  ADD PRIMARY KEY (`RID`,`EMAIL`),
  ADD UNIQUE KEY `PHONE_NO` (`PHONE_NO`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ROOM_NO`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`SPECIALIZATION`,`DID`),
  ADD KEY `DID` (`DID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`MGRID`) REFERENCES `employee` (`ID`);

--
-- Constraints for table `discharge`
--
ALTER TABLE `discharge`
  ADD CONSTRAINT `discharge_ibfk_1` FOREIGN KEY (`DP_ID`) REFERENCES `patient` (`PID`),
  ADD CONSTRAINT `discharge_ibfk_2` FOREIGN KEY (`DA_ID`) REFERENCES `accountant` (`AID`),
  ADD CONSTRAINT `discharge_ibfk_3` FOREIGN KEY (`DBILL_NO`) REFERENCES `bill` (`BILL_NO`);

--
-- Constraints for table `nursing`
--
ALTER TABLE `nursing`
  ADD CONSTRAINT `nursing_ibfk_1` FOREIGN KEY (`NID`) REFERENCES `nurse` (`NID`),
  ADD CONSTRAINT `nursing_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `patient` (`PID`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`PD_ID`) REFERENCES `doctor` (`DID`),
  ADD CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`PA_ID`) REFERENCES `accountant` (`AID`),
  ADD CONSTRAINT `patient_ibfk_3` FOREIGN KEY (`PR_ID`) REFERENCES `recieptionist` (`RID`),
  ADD CONSTRAINT `patient_ibfk_4` FOREIGN KEY (`ROOM_NO`) REFERENCES `room` (`ROOM_NO`),
  ADD CONSTRAINT `patient_ibfk_5` FOREIGN KEY (`DIA_REG`) REFERENCES `diagnosis` (`DIA_REG`);

--
-- Constraints for table `specialization`
--
ALTER TABLE `specialization`
  ADD CONSTRAINT `specialization_ibfk_1` FOREIGN KEY (`DID`) REFERENCES `doctor` (`DID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
