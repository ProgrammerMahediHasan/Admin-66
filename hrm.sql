-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2025 at 04:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_logs`
--

CREATE TABLE `attendance_logs` (
  `source` enum('Biometric','Manual','Web') DEFAULT 'Manual',
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `status` enum('Working-Day','Weekend','Holiday') DEFAULT 'Weekend',
  `grace_time` time DEFAULT '09:10:00',
  `late_time` time DEFAULT '09:11:00',
  `total_work_minutes` int(11) DEFAULT 0,
  `remarks` varchar(255) DEFAULT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_logs`
--

INSERT INTO `attendance_logs` (`source`, `in_time`, `out_time`, `status`, `grace_time`, `late_time`, `total_work_minutes`, `remarks`, `id`) VALUES
('Manual', '09:00:00', '17:30:00', '', '09:10:00', '09:11:00', 480, 'Attendance', 0);

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendance`
--

CREATE TABLE `daily_attendance` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `att_date` date NOT NULL,
  `day_type` enum('Working','Weekend','Holiday') NOT NULL DEFAULT 'Working',
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `total_work_minutes` int(11) DEFAULT 0,
  `status` enum('Present','Absent','Day Off') DEFAULT 'Present',
  `late_minutes` int(11) DEFAULT 0,
  `overtime_minutes` int(11) DEFAULT 0,
  `remarks` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_attendance`
--

INSERT INTO `daily_attendance` (`id`, `emp_id`, `att_date`, `day_type`, `in_time`, `out_time`, `total_work_minutes`, `status`, `late_minutes`, `overtime_minutes`, `remarks`) VALUES
(87, 5, '2025-10-05', 'Working', '09:05:00', '17:00:00', 475, 'Present', 0, 0, ''),
(89, 5, '2025-10-04', 'Working', '09:01:00', '17:05:00', 484, 'Present', 0, 5, ''),
(92, 5, '2025-10-06', 'Working', '09:08:00', '17:00:00', 472, 'Present', 0, 0, ''),
(93, 5, '2025-10-07', 'Working', '09:05:00', '17:00:00', 475, 'Present', 0, 0, ''),
(94, 5, '2025-10-08', 'Working', '09:00:00', '17:00:00', 480, 'Present', 0, 0, ''),
(95, 5, '2025-10-09', 'Working', '09:20:00', '17:00:00', 460, 'Present', 20, 0, ''),
(99, 5, '2025-10-11', 'Working', '09:02:00', '17:00:00', 478, 'Present', 0, 0, ''),
(100, 5, '2025-10-15', 'Working', '09:01:00', '17:01:00', 480, 'Present', 0, 1, ''),
(101, 5, '2025-10-14', 'Working', '09:01:00', '17:01:00', 480, 'Present', 0, 1, ''),
(102, 5, '2025-10-13', 'Working', '09:00:00', '17:00:00', 480, 'Present', 0, 0, ''),
(103, 5, '2025-10-12', 'Working', '09:01:00', '17:00:00', 479, 'Present', 0, 0, ''),
(104, 5, '2025-10-16', 'Working', '09:01:00', '17:00:00', 479, 'Present', 0, 0, ''),
(106, 5, '2025-10-18', 'Working', '09:01:00', '17:00:00', 479, 'Present', 0, 0, ''),
(107, 5, '2025-10-19', 'Working', '09:02:00', '17:06:00', 484, 'Present', 0, 6, ''),
(108, 5, '2025-10-20', 'Working', '09:00:00', '17:01:00', 481, 'Present', 0, 1, ''),
(109, 5, '2025-10-21', 'Working', '09:00:00', '17:02:00', 482, 'Present', 0, 2, ''),
(110, 5, '2025-10-22', 'Working', '09:00:00', '17:03:00', 483, 'Present', 0, 3, ''),
(111, 5, '2025-10-23', 'Working', '09:10:00', '17:01:00', 471, 'Present', 0, 1, ''),
(112, 5, '2025-10-24', 'Weekend', '00:00:00', '00:00:00', 0, '', 0, 0, ''),
(113, 5, '2025-10-25', 'Working', '09:15:00', '17:00:00', 465, 'Present', 15, 0, ''),
(114, 5, '2025-10-26', 'Working', '09:00:00', '17:00:00', 480, 'Present', 0, 0, ''),
(115, 5, '2025-10-27', 'Working', '09:12:00', '17:01:00', 469, 'Present', 12, 1, ''),
(116, 5, '2025-10-28', 'Working', '09:01:00', '17:00:00', 479, 'Present', 0, 0, ''),
(117, 5, '2025-10-29', 'Working', '09:00:00', '17:03:00', 483, 'Present', 0, 3, ''),
(253, 5, '2025-10-30', 'Working', '09:00:00', '17:30:00', 510, 'Present', 0, 0, ''),
(257, 5, '2025-10-31', 'Weekend', '00:00:00', '00:00:00', 0, 'Day Off', 0, 0, ''),
(269, 5, '2025-10-01', 'Holiday', '00:00:00', '00:00:00', 0, 'Day Off', 0, 0, ''),
(270, 5, '2025-10-02', 'Holiday', '00:00:00', '00:00:00', 0, 'Day Off', 0, 0, ''),
(271, 5, '2025-10-03', 'Weekend', '00:00:00', '00:00:00', 0, 'Day Off', 0, 0, ''),
(304, 5, '2025-10-10', 'Weekend', '00:00:00', '00:00:00', 0, 'Day Off', 0, 0, ''),
(305, 5, '2025-10-17', 'Weekend', '00:00:00', '00:00:00', 0, 'Day Off', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `status`) VALUES
(1, 'Human Resources (HR)', 'Handles employee recruitment, onboarding, training, and welfare. Manages payroll, attendance, and organizational policies', 'Active'),
(2, 'Finance Officer', 'Maintains company accounts, prepares financial statements, and monitors budget usage. Handles billing and auditing tasks.', 'Active'),
(3, 'Information Technology (IT)', 'Responsible for maintaining computer systems, software development, network security, and technical support.', 'Active'),
(4, 'Sales & Marketing', 'Focuses on promoting company products or services, managing sales targets, market research, and advertising strategies.', 'Active'),
(5, 'Operations & Administration', 'Oversees day-to-day business activities, ensures workflow efficiency, and supports all other departments with logistics and planning.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `dept_id`, `name`, `description`) VALUES
(1, 1, 'HR Manager', 'Oversees recruitment, employee relations, and company policies. Ensures compliance with labor laws and manages HR staff.'),
(2, 2, 'Accountant', 'Manages company finances, prepares financial statements, and ensures accurate record-keeping and reporting.'),
(3, 3, 'Software Engineer', 'Develops, tests, and maintains software applications and provides technical solutions to business needs.'),
(4, 4, 'Sales Executive', 'Identifies business opportunities, manages client relationships, and works to achieve company sales targets.'),
(5, 5, 'Operations Officer', 'Coordinates daily business operations, monitors workflow, and ensures smooth departmental collaboration.'),
(17, 0, 'AAA', 'ttt');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `desig_id` int(11) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `basic_salary` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `joining_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `dept_id`, `desig_id`, `gender`, `email`, `phone`, `basic_salary`, `status`, `joining_date`) VALUES
(1, 'Mahedi Hasan Abir', 3, 3, 'Male', 'mahedihasanabir8@gmail.com', '01732074663', 50000.00, 'Inactive', '2025-09-30'),
(2, 'Tanvir Jubayer', 4, 4, 'Male', 'tanvir@gmail.com', '01732074663', 30000.00, 'Active', '2025-09-30'),
(3, 'Pollob Ahmed Sagor', 2, 2, 'Male', 'pollobsagor@gmail.com', '01575550883', 35000.00, 'Active', '2025-09-30'),
(4, 'Rashed Khan', 5, 5, 'Male', 'rashed@gmail.com', '01983581152', 42000.00, 'Active', '2025-09-30'),
(5, 'Abdullah Bin Hanif', 1, 1, 'Male', 'hanif@gmail.com', '01983581152', 55000.00, 'Active', '2025-09-30'),
(18, 'Harun', 1, 1, 'Male', 'afranabir03@gmail.com', '01632606827', 0.00, 'Inactive', '2025-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `basic_salary` decimal(10,2) NOT NULL DEFAULT 0.00,
  `hra` decimal(10,2) NOT NULL DEFAULT 0.00,
  `medical_allowance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax_deduction` decimal(10,2) NOT NULL DEFAULT 0.00,
  `pf_deduction` decimal(10,2) NOT NULL DEFAULT 0.00,
  `gross_salary` decimal(10,2) DEFAULT NULL,
  `net_salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`id`, `emp_id`, `basic_salary`, `hra`, `medical_allowance`, `tax_deduction`, `pf_deduction`, `gross_salary`, `net_salary`) VALUES
(4, 1, 55000.00, 5000.00, 4000.00, 2000.00, 3000.00, 64000.00, 59000.00),
(5, 2, 40000.00, 5000.00, 4000.00, 2000.00, 2000.00, 49000.00, 45000.00);

-- --------------------------------------------------------

--
-- Table structure for table `leave_configuration`
--

CREATE TABLE `leave_configuration` (
  `id` int(11) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  `total_days` int(11) NOT NULL DEFAULT 0,
  `carry_forward` enum('Yes','No') DEFAULT 'No',
  `description` text DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_configuration`
--

INSERT INTO `leave_configuration` (`id`, `leave_type`, `total_days`, `carry_forward`, `description`, `status`) VALUES
(1, 'Casual Leave', 12, 'Yes', 'Personal or urgent work leave', 'Active'),
(2, 'Sick Leave', 8, 'Yes', 'Leave due to illness', 'Active'),
(3, 'Earned Leave', 10, 'Yes', 'Leave earned based on work performance', 'Active'),
(4, 'LFA Leave', 10, 'Yes', 'It,s a type of leave where the employee is absent from work without pay.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `leave_request`
--

CREATE TABLE `leave_request` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `leave_type` varchar(50) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `total_days` int(11) DEFAULT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `applied_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `approved_by` varchar(50) DEFAULT NULL,
  `approved_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_request`
--

INSERT INTO `leave_request` (`id`, `emp_id`, `leave_type`, `from_date`, `to_date`, `total_days`, `status`, `applied_time`, `approved_by`, `approved_time`) VALUES
(21, 1, 'Casual Leave', '2025-10-01', '2025-10-02', 2, 'Approved', '2025-10-21 13:41:06', 'GM', '2025-10-21 13:41:06'),
(22, 5, 'Sick Leave', '2025-09-03', '2025-09-03', 1, 'Approved', '2025-10-21 13:41:12', 'GM', '2025-10-21 13:41:12'),
(23, 3, 'Earned Leave', '2025-09-04', '2025-09-04', 1, 'Approved', '2025-10-21 14:19:38', 'GM', '2025-10-21 14:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(24, 'Manager2', '0000-00-00 00:00:00', '2025-11-23 12:45:37'),
(25, 'Accounts', '0000-00-00 00:00:00', '2025-11-17 16:13:14'),
(29, 'HR', '2025-11-12 20:55:21', '2025-11-16 17:00:01'),
(34, 'Admin', '2025-11-13 16:37:49', '2025-11-17 17:44:19'),
(36, 'AGM', '2025-12-01 11:31:38', '2025-12-01 11:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `role_id`, `address`, `status`, `created_at`, `updated_at`, `photo`) VALUES
(1, 'mahedi', '123mahedi', 'mahedi@gmail.com', 0, 'dhaka', 'Active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(7, 'Pollob', 'Pollob123', 'pollob@example.com', NULL, 'Mirpur, Bangladesh', 'Active', '2025-11-10 15:43:48', '2025-11-10 15:43:48', ''),
(36, 'Mahim', 'mahim123', 'afranabir03@gmail.com', 0, 'dhaka', 'Active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_id` (`emp_id`),
  ADD KEY `idx_att_date` (`att_date`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_emp` (`emp_id`);

--
-- Indexes for table `leave_configuration`
--
ALTER TABLE `leave_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_request`
--
ALTER TABLE `leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_roles` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_configuration`
--
ALTER TABLE `leave_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `leave_request`
--
ALTER TABLE `leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daily_attendance`
--
ALTER TABLE `daily_attendance`
  ADD CONSTRAINT `daily_attendance_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD CONSTRAINT `fk_emp` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
