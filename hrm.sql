-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2025 at 04:52 PM
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
('Manual', '09:00:00', '17:00:00', 'Working-Day', '09:10:00', '09:11:00', 480, 'Good', 0);

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
(305, 5, '2025-10-17', 'Weekend', '00:00:00', '00:00:00', 0, 'Day Off', 0, 0, ''),
(306, 5, '2025-12-09', 'Working', '18:51:35', '18:51:47', 0, 'Absent', 592, 112, NULL);

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
(19, 'Tithi Akter', 1, 1, 'Female', 'tithi@gmail.com', '01575550844', 0.00, 'Active', '1997-02-01');

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
  `leave_deduct` decimal(10,2) DEFAULT 0.00,
  `tax_deduction` decimal(10,2) NOT NULL DEFAULT 0.00,
  `pf_deduction` decimal(10,2) NOT NULL DEFAULT 0.00,
  `gross_salary` decimal(10,2) DEFAULT NULL,
  `net_salary` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`id`, `emp_id`, `basic_salary`, `hra`, `medical_allowance`, `leave_deduct`, `tax_deduction`, `pf_deduction`, `gross_salary`, `net_salary`) VALUES
(5, 2, 40000.00, 5000.00, 4000.00, 0.00, 2000.00, 2000.00, 49000.00, 45000.00),
(7, 5, 70000.00, 5000.00, 5000.00, 0.00, 3000.00, 3000.00, 80000.00, 74000.00);

-- --------------------------------------------------------

--
-- Table structure for table `leave_assign`
--

CREATE TABLE `leave_assign` (
  `id` int(11) NOT NULL COMMENT 'প্রতিটি রেকর্ডের ইউনিক ID',
  `emp_id` int(11) NOT NULL COMMENT 'যে এমপ্লয়ারের জন্য ছুটি নির্ধারণ করা হয়েছে তার ID',
  `leave_type_id` int(11) NOT NULL COMMENT 'ছুটির ধরন ID (Casual, Sick, Annual ইত্যাদি)',
  `allow_days` int(11) NOT NULL COMMENT 'মোট অনুমোদিত ছুটির দিন সংখ্যা',
  `used_days` int(11) DEFAULT 0 COMMENT 'এখন পর্যন্ত ব্যবহৃত ছুটির দিন সংখ্যা',
  `year` year(4) NOT NULL COMMENT 'কোন বছরের জন্য ছুটি নির্ধারণ করা হয়েছে',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'রেকর্ড তৈরির সময়',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'রেকর্ড আপডেটের সময়'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='প্রতিটি এমপ্লয়ারের ছুটির বরাদ্দ সংরক্ষণের টেবিল';

--
-- Dumping data for table `leave_assign`
--

INSERT INTO `leave_assign` (`id`, `emp_id`, `leave_type_id`, `allow_days`, `used_days`, `year`, `created_at`, `updated_at`) VALUES
(16, 1, 17, 10, 0, '2025', '2025-12-09 20:50:49', '2025-12-09 20:50:49'),
(19, 5, 20, 12, 15, '2025', '2025-12-09 20:53:13', '2025-12-09 20:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `leave_request`
--

CREATE TABLE `leave_request` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `leave_id` int(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_days` int(11) DEFAULT 0,
  `reason` text NOT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `approver_id` int(11) DEFAULT NULL,
  `applied_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_request`
--

INSERT INTO `leave_request` (`id`, `emp_id`, `leave_id`, `start_date`, `end_date`, `total_days`, `reason`, `status`, `approver_id`, `applied_on`) VALUES
(55, 5, 20, '2025-11-01', '2025-11-06', 6, 'LWP', 'Approved', 0, '1970-01-01 00:00:00'),
(56, 5, 20, '2025-10-11', '2025-10-16', 6, 'LWP', 'Approved', 0, '1970-01-01 00:00:00'),
(57, 5, 20, '2025-12-01', '2025-12-03', 3, 'LWP', 'Approved', 0, '1970-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `leave_code` varchar(20) DEFAULT NULL,
  `total_days` int(11) NOT NULL DEFAULT 0,
  `deduct_apply` tinyint(5) DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `name`, `leave_code`, `total_days`, `deduct_apply`, `description`, `status`) VALUES
(17, 'Casual Leave', 'CL', 10, 0, 'Personal or urgent work leave', 'Active'),
(18, 'Sick Leave', 'SL', 8, 0, 'Leave due to illness', 'Active'),
(19, 'Earned Leave', 'EL', 10, 0, 'Leave earned based on work performance', 'Active'),
(20, 'Leave Without Pay', 'LWP', 12, 1, 'Employee is allowed to take leave without pay. No salary will be paid for the days taken under this leave.', 'Active');

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
(24, 'Manager', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Accounts', '0000-00-00 00:00:00', '2025-11-17 16:13:14'),
(29, 'HR', '2025-11-12 20:55:21', '2025-11-16 17:00:01'),
(34, 'Admin', '2025-11-13 16:37:49', '2025-11-17 17:44:19'),
(36, 'GM', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 'mahedi', 'mahedi123', 'mahedi@gmail.com', 24, 'dhaka', 'Active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(37, 'Kofil', 'Kofil123', 'kofil@gmail.com', 29, 'Gulshan-1', 'Active', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

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
-- Indexes for table `leave_assign`
--
ALTER TABLE `leave_assign`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emp_id` (`emp_id`,`leave_type_id`,`year`) COMMENT 'একই বছরে একই এমপ্লয়ারের একই ছুটির ধরন একাধিকবার এন্ট্রি না করতে';

--
-- Indexes for table `leave_request`
--
ALTER TABLE `leave_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_code` (`leave_code`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `employee_salary`
--
ALTER TABLE `employee_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `leave_assign`
--
ALTER TABLE `leave_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'প্রতিটি রেকর্ডের ইউনিক ID', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `leave_request`
--
ALTER TABLE `leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

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
