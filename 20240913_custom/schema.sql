-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 15, 2024 at 09:15 AM
-- Server version: 8.4.2
-- PHP Version: 8.2.23

SET SQL_MODE = "no_auto_value_on_zero";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `exercise_02`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
    `id`         INT                                    NOT NULL,
    `first_name` VARCHAR(64) COLLATE utf8mb4_general_ci NOT NULL,
    `last_name`  VARCHAR(64) COLLATE utf8mb4_general_ci NOT NULL,
    `zip_code`   VARCHAR(16) COLLATE utf8mb4_general_ci NOT NULL
)
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
    `id`         INT                                    NOT NULL,
    `first_name` VARCHAR(64) COLLATE utf8mb4_general_ci NOT NULL,
    `last_name`  VARCHAR(64) COLLATE utf8mb4_general_ci NOT NULL,
    `zip_code`   VARCHAR(16) COLLATE utf8mb4_general_ci NOT NULL
)
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
    `id`                 INT  NOT NULL,
    `receipt_date`       DATE NOT NULL DEFAULT (CURDATE()),
    `expected_ship_date` DATE NOT NULL,
    `actual_ship_date`   DATE          DEFAULT NULL,
    `customer_id`        INT  NOT NULL,
    `employee_id`        INT  NOT NULL
)
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_part`
--

CREATE TABLE `order_part` (
    `order_id` INT NOT NULL,
    `part_id`  INT NOT NULL,
    `quantity` INT NOT NULL
)
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `part`
--

CREATE TABLE `part` (
    `id`                INT                                    NOT NULL,
    `name`              VARCHAR(64) COLLATE utf8mb4_general_ci NOT NULL,
    `price`             DECIMAL(10, 2)                         NOT NULL,
    `quantity_in_stock` INT                                    NOT NULL
)
    ENGINE = InnoDB
    DEFAULT CHARSET = utf8mb4
    COLLATE = utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
    ADD PRIMARY KEY (`id`),
    ADD KEY `order_customer_id_fk` (`customer_id`),
    ADD KEY `order_employee_id_fk` (`employee_id`);

--
-- Indexes for table `order_part`
--
ALTER TABLE `order_part`
    ADD PRIMARY KEY (`order_id`, `part_id`),
    ADD KEY `order_part_part_id_fk` (`part_id`);

--
-- Indexes for table `part`
--
ALTER TABLE `part`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
    MODIFY `id` INT NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
    MODIFY `id` INT NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
    MODIFY `id` INT NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `part`
--
ALTER TABLE `part`
    MODIFY `id` INT NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
    ADD CONSTRAINT `order_customer_id_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT `order_employee_id_fk` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `order_part`
--
ALTER TABLE `order_part`
    ADD CONSTRAINT `order_part_order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    ADD CONSTRAINT `order_part_part_id_fk` FOREIGN KEY (`part_id`) REFERENCES `part` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

COMMIT;
