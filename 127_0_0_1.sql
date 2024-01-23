-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 09:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sell\",\"table\":\"riguster\"},{\"db\":\"sell\",\"table\":\"admin\"},{\"db\":\"sell\",\"table\":\"account\"},{\"db\":\"sell\",\"table\":\"product\"},{\"db\":\"sell\",\"table\":\"Admin\"},{\"db\":\"sell\",\"table\":\"Riguster\"},{\"db\":\"sell\",\"table\":\"persons\"},{\"db\":\"sell\",\"table\":\"login\"},{\"db\":\"mysql\",\"table\":\"columns_priv\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'sell', 'riguster', '{\"CREATE_TIME\":\"2023-12-17 20:20:53\"}', '2023-12-23 09:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-12-23 10:10:48', '{\"Console\\/Mode\":\"collapse\",\"ThemeDefault\":\"pmahomme\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `root`
--
CREATE DATABASE IF NOT EXISTS `root` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `root`;
--
-- Database: `sell`
--
CREATE DATABASE IF NOT EXISTS `sell` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sell`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Email` text NOT NULL,
  `password` text NOT NULL,
  `ID` text NOT NULL,
  `PayMethod` text NOT NULL,
  `AccountNumber` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Email`, `password`, `ID`, `PayMethod`, `AccountNumber`) VALUES
('sunny', '170', 'ecg123', 'Easypaisa', 87654321),
('shariq', '1375', 'Irgr', 'Meezan Bank', 56654663);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ProductID` text NOT NULL,
  `ProductName` text NOT NULL,
  `Quentity` text NOT NULL,
  `Price` text NOT NULL,
  `ID` text NOT NULL,
  `Area` text NOT NULL,
  `ShopeNumber` text NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ProductID`, `ProductName`, `Quentity`, `Price`, `ID`, `Area`, `ShopeNumber`, `Status`) VALUES
('BCG12', 'Lifeboy', '2', '60', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '3', '30', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '2', '60', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '2', '20', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '3', '90', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '2', '20', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '4', '120', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '3', '30', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '5', '150', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '6', '60', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '7', '350', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '6', '60', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '0', '0', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '0', '0', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '4', '40', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '0', '0', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '0', '0', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '0', '0', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '6', '180', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '6', '180', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '3', '90', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '4', '120', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '8', '400', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '3', '30', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '4', '120', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '3', '90', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '8', '240', 'ecg123', 'Gultion', 'G70', 1),
('BCG13', 'shampo', '9', '90', 'ecg123', 'Gultion', 'G70', 1),
('BCG14', 'Excel', '0', '0', 'ecg123', 'Gultion', 'G70', 1),
('BCG12', 'Lifeboy', '0', '0', 'ecg123', 'Gultion', 'G70', 1),
('BCG12', 'Lifeboy', '8', '240', 'ecg123', 'Gultion', 'G70', 1),
('BCG12', 'Lifeboy', '5', '150', 'SW123', 'golimar', 'GC1314', 1),
('BCG13', 'shampo', '7', '70', 'SW123', 'golimar', 'GC1314', 1),
('BCG12', 'Lifeboy', '9', '270', 'ecg123', 'Gultion', 'G70', 1),
('BCG12', 'Lifeboy', '2', '60', 'ecg123', 'Gultion', 'G70', 1),
('BCG14', 'Excel', '4', '200', 'ecg123', 'Gultion', 'G70', 1),
('BCG13', 'shampo', '8', '80', 'ecg123', 'Gultion', 'G70', 1),
('BCG12', 'Lifeboy', '67', '2010', 'ecg123', 'Gultion', 'G70', 1),
('BCG14', 'Excel', '4', '200', 'ecg123', 'Gultion', 'G70', 1),
('BCG13', 'shampo', '8', '80', 'ecg123', 'Gultion', 'G70', 1),
('BCG12', 'Lifeboy', '67', '2010', 'ecg123', 'Gultion', 'G70', 1),
('BCG14', 'Excel', '4', '200', 'ecg123', 'Gultion', 'G70', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '0', '0', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '1', '30', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '4', '120', 'ecg123', 'Gultion', 'G70', 1),
('BCG12', 'Lifeboy', '4', '120', 'ecg123', 'Gultion', 'G70', 1),
('BCG14', 'Excel', '8', '400', 'ecg123', 'Gultion', 'G70', 1),
('BCG13', 'shampo', '7', '70', 'ecg123', 'Gultion', 'G70', 1),
('BCG13', 'shampo', '7', '70', 'ecg123', 'Gultion', 'G70', 1),
('BCG14', 'Excel', '8', '400', 'ecg123', 'Gultion', 'G70', 1),
('BCG14', 'Excel', '8', '400', 'ecg123', 'Gultion', 'G70', 1),
('BCG12', 'Lifeboy', '4', '120', 'ecg123', 'Gultion', 'G70', 1),
('BCG14', 'Excel', '8', '400', 'ecg123', 'Gultion', 'G70', 1),
('BCG13', 'shampo', '1', '10', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 0),
('BCG14', 'Excel', '1', '50', 'e245', 'golimar', '123', 0),
('BCG14', 'Excel', '2', '100', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '3', '30', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '3', '90', 'e245', 'golimar', '123', 1),
('BCG12', 'Lifeboy', '4', '120', 'e245', 'golimar', '123', 1),
('BCG13', 'shampo', '4', '40', 'e245', 'golimar', '123', 0),
('BCG14', 'Excel', '4', '200', 'e245', 'golimar', '123', 0),
('BCG12', 'Lifeboy', '4', '120', 'e245', 'golimar', '123', 1),
('BCG14', 'Excel', '4', '200', 'e245', 'golimar', '123', 0),
('BCG13', 'shampo', '5', '50', 'e245', 'golimar', '123', 0),
('BCG12', 'Lifeboy', '5', '150', 'e245', 'golimar', '123', 0),
('BCG13', 'shampo', '9', '90', 'ecg123', 'Gultion', 'G70', 1),
('BCG14', 'Excel', '9', '450', 'ecg123', 'Gultion', 'G70', 0),
('BCG12', 'Lifeboy', '9', '270', 'ecg123', 'Gultion', 'G70', 0),
('BCG14', 'Excel', '9', '450', 'ecg123', 'Gultion', 'G70', 0),
('BCG13', 'shampo', '9', '90', 'ecg123', 'Gultion', 'G70', 1),
('BCG13', 'shampo', '6', '60', 'ecg123', 'Gultion', 'G70', 0),
('BCG14', 'Excel', '6', '300', 'ecg123', 'Gultion', 'G70', 0),
('BCG12', 'Lifeboy', '6', '180', 'ecg123', 'Gultion', 'G70', 0),
('BCG14', 'Excel', '6', '300', 'ecg123', 'Gultion', 'G70', 0),
('BCG13', 'shampo', '6', '60', 'ecg123', 'Gultion', 'G70', 0),
('BCG13', 'shampo', '4', '40', 'ecg123', 'Gultion', 'G70', 0),
('BCG14', 'Excel', '4', '200', 'ecg123', 'Gultion', 'G70', 0),
('BCG12', 'Lifeboy', '4', '120', 'ecg123', 'Gultion', 'G70', 0),
('BCG12', 'Lifeboy', '90', '2700', 'csc 22s 234', 'Q', '13', 1),
('BCG12', 'Lifeboy', '90', '2700', 'csc 22s 234', 'Q', '13', 1),
('BCG12', 'Lifeboy', '56', '1680', 'e245', 'golimar', '123', 0),
('BCG12', 'Lifeboy', '5', '150', 'e245', 'golimar', '123', 0),
('BCG12', 'Lifeboy', '4', '120', 'Irgr', 'karachi', '32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` text NOT NULL,
  `ProductName` text NOT NULL,
  `Price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `Price`) VALUES
('BCG12', 'Lifeboy', '30'),
('ECG345', 'candy', '1'),
('e33', 'lux', '30'),
('e33', 'lux', '30');

-- --------------------------------------------------------

--
-- Table structure for table `riguster`
--

CREATE TABLE `riguster` (
  `Name` text NOT NULL,
  `Shope-Name` text NOT NULL,
  `Shope-Number` text NOT NULL,
  `Address` text NOT NULL,
  `Area` text NOT NULL,
  `Contact` text NOT NULL,
  `Email` text NOT NULL,
  `Password` text NOT NULL,
  `ID` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riguster`
--

INSERT INTO `riguster` (`Name`, `Shope-Name`, `Shope-Number`, `Address`, `Area`, `Contact`, `Email`, `Password`, `ID`) VALUES
('', '', '', '', '', '', '', '', ''),
('', '', '', '', '', '', '', '', ''),
('eded', 'dede', 'ede', 'dedede', 'ded', 'edede', 'tlhshrq@gmail.com', '123', ''),
('', '', '', '', '', '', '', '', ''),
('moneeba', 'ak', '123', 'karachi,golimar,waheedabad', 'golimar', '03323766128', 'moneeba', '123', 'e245'),
('Shariq', 'shrq', '1234', 'ikgjukkg', 'efsfg', 'hjhjh', 'shrq', '124', 't12'),
('Sunny', 'Sunny Cargo', 'G70', 'Guiltion,Karachi', 'Gultion', '03324755138', 'sunny', '170', 'ecg123'),
('Raza', 'raza shope', 'GC1314', 'sargani', 'golimar', '0333244356', 'raza', '890', 'SW123'),
('Muhammad Ahmed', 'flower', '13', 'shop no 13', 'Q', '03102616116', 'nusratahmed690@gmail.com', 'ahmed123', 'csc 22s 234'),
('shariq', 'sarq', '32', 'gfc', 'karachi', '033232345', 'shariq', '1375', 'Irgr');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
