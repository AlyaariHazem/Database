-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 03:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('hazem', 'hazem'),
('hazem', 'std2024');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `class_teacher_id` int(10) NOT NULL,
  `class_school_id` int(10) NOT NULL,
  `study_year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `class_teacher_id`, `class_school_id`, `study_year`) VALUES
(1, 'الاول', 2, 1, '2023-12-08'),
(2, 'الثاني', 1, 1, '2023-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE `division` (
  `class_id` int(10) NOT NULL,
  `division_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `division_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`class_id`, `division_name`, `division_id`) VALUES
(1, 'أ', 1),
(1, 'ب', 2);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `manager_id` int(10) NOT NULL,
  `manager_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manager_age` int(10) NOT NULL,
  `manager_salary` int(50) NOT NULL,
  `manager_phone` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_id`, `manager_name`, `manager_age`, `manager_salary`, `manager_phone`) VALUES
(1, 'حازم عبدالله اليعري', 22, 1000000, 776137120);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_id` int(10) NOT NULL,
  `school_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `manage_ch_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_id`, `school_name`, `school_location`, `manage_ch_id`) VALUES
(1, 'النجاح', 'صنعاء الحيمة الداخلية', 1);

-- --------------------------------------------------------

--
-- Table structure for table `studnet`
--

CREATE TABLE `studnet` (
  `student_id` int(10) NOT NULL,
  `student_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `grade` int(10) NOT NULL,
  `phone` int(9) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` int(10) NOT NULL,
  `stud_class_id` int(10) NOT NULL,
  `division_id` int(10) NOT NULL,
  `appreciation` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studnet`
--

INSERT INTO `studnet` (`student_id`, `student_name`, `grade`, `phone`, `gender`, `age`, `stud_class_id`, `division_id`, `appreciation`, `password`) VALUES
(1, 'علي عبدالله صلاح محمد اليعري', 90, 789854662, 'ذكر', 11, 1, 1, 'ممتاز', '123'),
(3, 'hazem', 0, 2147483647, 'ذكر', 5, 1, 2, 'جيد', '121'),
(4, 'صالح', 0, 11, 'ذكر', 3, 1, 1, 'very good', '123'),
(5, 'حازم', 0, 775006921, 'ذكر', 555, 2, 1, 'ممتاز', 's'),
(10, 'صالح', 0, 775006921, 'ذكر', 5, 1, 1, 'very good', '111');

-- --------------------------------------------------------

--
-- Table structure for table `study`
--

CREATE TABLE `study` (
  `subject_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(10) NOT NULL,
  `subject_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subject_class_id` int(10) NOT NULL,
  `subject_teach_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_name`, `subject_class_id`, `subject_teach_id`) VALUES
(1, 'math', 1, 1),
(2, 'Quran', 1, 2),
(3, 'history', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject_name` varchar(100) DEFAULT NULL,
  `degree` int(11) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `appreciation` varchar(30) DEFAULT NULL,
  `OrderLevel` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `subject_name`, `degree`, `phone`, `appreciation`, `OrderLevel`, `created_at`) VALUES
(18, 'فاهم عبدالله صلاح محمد اليعري', 'الرياضيات', 100, '775006921', 'very good', '1', '2023-12-25 17:32:43'),
(49, 'Hazem Alyaari', 'math ', 50, '775006921', 'ممتاز', '20', '2024-01-04 17:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `teacher_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(10) NOT NULL,
  `teacher_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_phone` int(9) NOT NULL,
  `teacher_salary` int(50) NOT NULL,
  `teacher_sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_mang_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `teacher_name`, `teacher_phone`, `teacher_salary`, `teacher_sex`, `teacher_mang_id`) VALUES
(1, 'أيمن الكامل', 776546546, 500000, 'ذكر', 1),
(2, 'حازم عبدالله اليعري', 776137120, 400000, 'ذكر', 1),
(3, 'محمد عبدالله صلاح', 333, 10000, 'ذكر', 1),
(5, 'مسفر', 2147483647, 44444, 'رجل', 1),
(11, 'مسفر', 2147483647, 44444, 'رجل', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `class_teacher_id_key` (`class_teacher_id`),
  ADD KEY `class_school_id_key` (`class_school_id`);

--
-- Indexes for table `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`division_id`),
  ADD KEY `class_id_key` (`class_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_id`),
  ADD KEY `manager_id_key` (`manage_ch_id`);

--
-- Indexes for table `studnet`
--
ALTER TABLE `studnet`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `stud_class_id_key` (`stud_class_id`),
  ADD KEY `division_id_key` (`division_id`);

--
-- Indexes for table `study`
--
ALTER TABLE `study`
  ADD PRIMARY KEY (`subject_id`,`student_id`),
  ADD KEY `student_id_key1` (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `subj_class_id_key` (`subject_class_id`),
  ADD KEY `subj_teach_id_key` (`subject_teach_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teach`
--
ALTER TABLE `teach`
  ADD PRIMARY KEY (`teacher_id`,`student_id`),
  ADD KEY `student_id_key` (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `teacher_mang_id_key` (`teacher_mang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `division`
--
ALTER TABLE `division`
  MODIFY `division_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `manager_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studnet`
--
ALTER TABLE `studnet`
  MODIFY `student_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `study`
--
ALTER TABLE `study`
  MODIFY `subject_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_school_id_key` FOREIGN KEY (`class_school_id`) REFERENCES `school` (`school_id`),
  ADD CONSTRAINT `class_teacher_id_key` FOREIGN KEY (`class_teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `division`
--
ALTER TABLE `division`
  ADD CONSTRAINT `class_id_key` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`);

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `manager_id_key` FOREIGN KEY (`manage_ch_id`) REFERENCES `manager` (`manager_id`);

--
-- Constraints for table `studnet`
--
ALTER TABLE `studnet`
  ADD CONSTRAINT `division_id_key` FOREIGN KEY (`division_id`) REFERENCES `division` (`division_id`),
  ADD CONSTRAINT `stud_class_id_key` FOREIGN KEY (`stud_class_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `stud_division_id_key` FOREIGN KEY (`division_id`) REFERENCES `division` (`division_id`);

--
-- Constraints for table `study`
--
ALTER TABLE `study`
  ADD CONSTRAINT `student_id_key1` FOREIGN KEY (`student_id`) REFERENCES `studnet` (`student_id`),
  ADD CONSTRAINT `subject_id_key` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subj_class_id_key` FOREIGN KEY (`subject_class_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `subj_teach_id_key` FOREIGN KEY (`subject_teach_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `teach`
--
ALTER TABLE `teach`
  ADD CONSTRAINT `student_id_key` FOREIGN KEY (`student_id`) REFERENCES `studnet` (`student_id`),
  ADD CONSTRAINT `teacher_id_key` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_mang_id_key` FOREIGN KEY (`teacher_mang_id`) REFERENCES `manager` (`manager_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
