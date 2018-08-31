-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2016 at 08:35 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vpsons`
--

-- --------------------------------------------------------

--
-- Table structure for table `clarity`
--

CREATE TABLE `clarity` (
  `clar_id` int(5) NOT NULL,
  `clar_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clarity_audit`
--

CREATE TABLE `clarity_audit` (
  `clar_audit_id` int(5) NOT NULL,
  `clar_id` int(5) NOT NULL,
  `clar_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `color_scale`
--

CREATE TABLE `color_scale` (
  `c_scale_id` int(5) NOT NULL,
  `c_scale_name` varchar(50) NOT NULL,
  `c_id` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `color_scale_audit`
--

CREATE TABLE `color_scale_audit` (
  `c_scale_audit_id` int(5) NOT NULL,
  `c_scale_id` int(5) NOT NULL,
  `c_scale_name` varchar(50) NOT NULL,
  `c_id` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `color_type`
--

CREATE TABLE `color_type` (
  `c_id` int(5) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_flag` varchar(1) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `color_type_audit`
--

CREATE TABLE `color_type_audit` (
  `c_audit_id` int(5) NOT NULL,
  `c_id` int(5) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_flag` varchar(1) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `cost_id` int(5) NOT NULL,
  `pro_mod_it_id` int(5) NOT NULL,
  `stone _cost` int(5) NOT NULL,
  `shipping_cost` int(5) NOT NULL,
  `handling_cost` int(5) NOT NULL,
  `polish_cost` int(5) NOT NULL,
  `plat_cost` int(5) NOT NULL,
  `labour_cost` int(5) NOT NULL,
  `loss_factor` int(5) NOT NULL,
  `loss_factor_cost` int(5) NOT NULL,
  `supplier_cost` int(5) NOT NULL,
  `adjusted_cost` int(5) NOT NULL,
  `adjust_sell` int(5) NOT NULL,
  `sell_price` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cost_audit`
--

CREATE TABLE `cost_audit` (
  `cost_audit_id` int(5) NOT NULL,
  `cost_id` int(5) NOT NULL,
  `pro_mod_it_id` int(5) NOT NULL,
  `stone _cost` int(5) NOT NULL,
  `shipping_cost` int(5) NOT NULL,
  `handling_cost` int(5) NOT NULL,
  `polish_cost` int(5) NOT NULL,
  `plat_cost` int(5) NOT NULL,
  `labour_cost` int(5) NOT NULL,
  `loss_factor` int(5) NOT NULL,
  `loss_factor_cost` int(5) NOT NULL,
  `supplier_cost` int(5) NOT NULL,
  `adjusted_cost` int(5) NOT NULL,
  `adjust_sell` int(5) NOT NULL,
  `sell_price` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_ingredient`
--

CREATE TABLE `item_ingredient` (
  `i_i_id` int(5) NOT NULL,
  `pro_mod_it_id` int(5) NOT NULL,
  `l_s_id` int(5) NOT NULL,
  `total _stone _weight` int(5) NOT NULL,
  `m_s_mp_id` int(5) NOT NULL,
  `no_of_stone` int(5) NOT NULL,
  `setting_type_id` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_ingredient_audit`
--

CREATE TABLE `item_ingredient_audit` (
  `i_i_id_audit_id` int(5) NOT NULL,
  `i_i_id` int(5) NOT NULL,
  `pro_mod_it_id` int(5) NOT NULL,
  `l_s_id` int(5) NOT NULL,
  `total _stone _weight` int(5) NOT NULL,
  `m_s_mp_id` int(5) NOT NULL,
  `no_of_stone` int(5) NOT NULL,
  `setting_type_id` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loose_stone`
--

CREATE TABLE `loose_stone` (
  `l_s_id` int(5) NOT NULL,
  `ship_id` int(5) NOT NULL,
  `c_id` int(5) NOT NULL,
  `c_scale_id` int(5) NOT NULL,
  `clar_id` int(5) NOT NULL,
  `seive_id` int(5) NOT NULL,
  `l_s_desc` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loose_stone_audit`
--

CREATE TABLE `loose_stone_audit` (
  `l_s_id_audit` int(5) NOT NULL,
  `l_s_id` int(5) NOT NULL,
  `ship_id` int(5) NOT NULL,
  `c_id` int(5) NOT NULL,
  `c_scale_id` int(5) NOT NULL,
  `clar_id` int(5) NOT NULL,
  `seive_id` int(5) NOT NULL,
  `l_s_desc` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metalcolor`
--

CREATE TABLE `metalcolor` (
  `metalcolorid` int(5) NOT NULL,
  `metalcolor` char(50) NOT NULL,
  `metalcolorcode` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metalcolor_audit`
--

CREATE TABLE `metalcolor_audit` (
  `metalcolorid_audit` int(5) NOT NULL,
  `metalcolorid` int(5) NOT NULL,
  `metalcolor` char(50) NOT NULL,
  `metalcolorcode` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metalcontent`
--

CREATE TABLE `metalcontent` (
  `metalcontentid` int(5) NOT NULL,
  `metalcontent` varchar(50) NOT NULL,
  `metalcontentcode` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metalcontent_audit`
--

CREATE TABLE `metalcontent_audit` (
  `metalcontentid_audit` int(5) NOT NULL,
  `metalContentid` int(5) NOT NULL,
  `metalcontent` char(50) NOT NULL,
  `metalcontentcode` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metaltype`
--

CREATE TABLE `metaltype` (
  `metaltypeid` int(5) NOT NULL,
  `metaltype` varchar(50) NOT NULL,
  `metaltypecode` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metaltype_audit`
--

CREATE TABLE `metaltype_audit` (
  `metaltypeid_audit` int(5) NOT NULL,
  `metaltypeid` int(5) NOT NULL,
  `metaltype` varchar(50) NOT NULL,
  `metaltypecode` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metal_stone_market_price`
--

CREATE TABLE `metal_stone_market_price` (
  `m_s_m_p_id` int(5) NOT NULL,
  `r_m_id` int(5) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `p_par_id` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metal_stone_market_price_audit`
--

CREATE TABLE `metal_stone_market_price_audit` (
  `m_s_m_p_audit_id` int(5) NOT NULL,
  `m_s_m_p_id` int(5) NOT NULL,
  `r_m_id` int(5) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `p_par_id` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `ProductTypeID` int(5) NOT NULL,
  `ProductType` char(50) NOT NULL,
  `ProductTypeCode` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `producttype_audit`
--

CREATE TABLE `producttype_audit` (
  `ProductTypeID_audit` int(5) NOT NULL,
  `ProductTypeID` int(5) NOT NULL,
  `ProductType` char(50) NOT NULL,
  `ProductTypeCode` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raw_material`
--

CREATE TABLE `raw_material` (
  `r_m_id` int(5) NOT NULL,
  `r_m_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raw_material_audit`
--

CREATE TABLE `raw_material_audit` (
  `r_m_audit_id` int(5) NOT NULL,
  `r_m_id` int(5) NOT NULL,
  `r_m_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sampletype`
--

CREATE TABLE `sampletype` (
  `SampleTypeID` int(5) NOT NULL,
  `SampleType` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sampletype_audit`
--

CREATE TABLE `sampletype_audit` (
  `SampleTypeID_audit` int(5) NOT NULL,
  `SampleTypeID` int(5) NOT NULL,
  `SampleType` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting_type`
--

CREATE TABLE `setting_type` (
  `s_t_id` int(5) NOT NULL,
  `s_t_name` varchar(50) NOT NULL,
  `s_t_cost_par_stone` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting_type_audit`
--

CREATE TABLE `setting_type_audit` (
  `s_t_audit_id` int(5) NOT NULL,
  `s_t_id` int(5) NOT NULL,
  `s_t_name` varchar(50) NOT NULL,
  `s_t_cost_par_stone` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shape`
--

CREATE TABLE `shape` (
  `s_id` int(5) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='contain shapes of product';

-- --------------------------------------------------------

--
-- Table structure for table `shape_audit`
--

CREATE TABLE `shape_audit` (
  `s_audit_id` int(5) NOT NULL,
  `s_id` int(5) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_handling`
--

CREATE TABLE `shipping_handling` (
  `s_h_id` int(5) NOT NULL,
  `s_h_flag` int(1) NOT NULL,
  `amount` int(5) NOT NULL,
  `on unit` int(5) NOT NULL,
  `applicable_date` date NOT NULL,
  `end_date` date NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_handling_audit`
--

CREATE TABLE `shipping_handling_audit` (
  `s_h_audit_id` int(5) NOT NULL,
  `s_h_id` int(5) NOT NULL,
  `s_h_flag` int(1) NOT NULL,
  `amount` int(5) NOT NULL,
  `on unit` int(5) NOT NULL,
  `applicable_date` date NOT NULL,
  `end_date` date NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sieve`
--

CREATE TABLE `sieve` (
  `sieve_id` int(5) NOT NULL,
  `sieve_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sieve_audit`
--

CREATE TABLE `sieve_audit` (
  `sieve_audit_id` int(5) NOT NULL,
  `sieve_id` int(5) NOT NULL,
  `sieve_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(5) NOT NULL,
  `SupplierName` char(50) NOT NULL,
  `Abv` char(50) NOT NULL,
  `ContactName` char(50) NOT NULL,
  `ContactTitle` char(50) NOT NULL,
  `Address` char(50) NOT NULL,
  `City` char(50) NOT NULL,
  `PostalCode` char(50) NOT NULL,
  `StateOrProvince` char(50) NOT NULL,
  `Country_Region` char(50) NOT NULL,
  `PhoneNumber` char(50) NOT NULL,
  `FaxNumber` char(50) NOT NULL,
  `PaymentTerms` char(50) NOT NULL,
  `EmailAddress` char(50) NOT NULL,
  `Notes` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_audit`
--

CREATE TABLE `supplier_audit` (
  `SupplierID_audit` int(5) NOT NULL,
  `SupplierID` int(5) NOT NULL,
  `SupplierName` char(50) NOT NULL,
  `Abv` char(50) NOT NULL,
  `ContactName` char(50) NOT NULL,
  `ContactTitle` char(50) NOT NULL,
  `Address` char(50) NOT NULL,
  `City` char(50) NOT NULL,
  `PostalCode` char(50) NOT NULL,
  `StateOrProvince` char(50) NOT NULL,
  `Country_Region` char(50) NOT NULL,
  `PhoneNumber` char(50) NOT NULL,
  `FaxNumber` char(50) NOT NULL,
  `PaymentTerms` char(50) NOT NULL,
  `EmailAddress` char(50) NOT NULL,
  `Notes` char(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `tax_id` int(5) NOT NULL,
  `tax_percent` int(5) NOT NULL,
  `tax_appln_date` date NOT NULL,
  `tax_end_date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax_audit`
--

CREATE TABLE `tax_audit` (
  `tax_audit_id` int(5) NOT NULL,
  `tax_id` int(5) NOT NULL,
  `tax_percent` int(5) NOT NULL,
  `tax_appln_date` date NOT NULL,
  `tax_end_date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `v_id` int(5) NOT NULL,
  `v_no` int(5) NOT NULL,
  `v_last_name` varchar(50) NOT NULL,
  `v_first_name` varchar(50) NOT NULL,
  `v_c_name` varchar(50) NOT NULL,
  `v_address` varchar(50) NOT NULL,
  `v_city` varchar(50) NOT NULL,
  `v_state` varchar(50) NOT NULL,
  `v_zip` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_audit`
--

CREATE TABLE `vendor_audit` (
  `v_audit_id` int(5) NOT NULL,
  `v_id` int(5) NOT NULL,
  `v_no` int(5) NOT NULL,
  `v_last_name` varchar(50) NOT NULL,
  `v_first_name` varchar(50) NOT NULL,
  `v_c_name` varchar(50) NOT NULL,
  `v_address` varchar(50) NOT NULL,
  `v_city` varchar(50) NOT NULL,
  `v_state` varchar(50) NOT NULL,
  `v_zip` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clarity`
--
ALTER TABLE `clarity`
  ADD PRIMARY KEY (`clar_id`);

--
-- Indexes for table `clarity_audit`
--
ALTER TABLE `clarity_audit`
  ADD PRIMARY KEY (`clar_audit_id`),
  ADD KEY `clar_id` (`clar_id`);

--
-- Indexes for table `color_scale`
--
ALTER TABLE `color_scale`
  ADD PRIMARY KEY (`c_scale_id`);

--
-- Indexes for table `color_scale_audit`
--
ALTER TABLE `color_scale_audit`
  ADD PRIMARY KEY (`c_scale_audit_id`),
  ADD KEY `c_scale_id` (`c_scale_id`);

--
-- Indexes for table `color_type`
--
ALTER TABLE `color_type`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `color_type_audit`
--
ALTER TABLE `color_type_audit`
  ADD PRIMARY KEY (`c_audit_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`cost_id`);

--
-- Indexes for table `cost_audit`
--
ALTER TABLE `cost_audit`
  ADD PRIMARY KEY (`cost_audit_id`),
  ADD KEY `cost_id` (`cost_id`);

--
-- Indexes for table `item_ingredient`
--
ALTER TABLE `item_ingredient`
  ADD PRIMARY KEY (`i_i_id`);

--
-- Indexes for table `item_ingredient_audit`
--
ALTER TABLE `item_ingredient_audit`
  ADD PRIMARY KEY (`i_i_id_audit_id`),
  ADD KEY `i_i_id` (`i_i_id`);

--
-- Indexes for table `loose_stone`
--
ALTER TABLE `loose_stone`
  ADD PRIMARY KEY (`l_s_id`);

--
-- Indexes for table `loose_stone_audit`
--
ALTER TABLE `loose_stone_audit`
  ADD PRIMARY KEY (`l_s_id_audit`),
  ADD KEY `l_s_id` (`l_s_id`);

--
-- Indexes for table `metalcolor`
--
ALTER TABLE `metalcolor`
  ADD PRIMARY KEY (`metalcolorid`);

--
-- Indexes for table `metalcolor_audit`
--
ALTER TABLE `metalcolor_audit`
  ADD PRIMARY KEY (`metalcolorid_audit`),
  ADD KEY `metalcolorid` (`metalcolorid`);

--
-- Indexes for table `metalcontent`
--
ALTER TABLE `metalcontent`
  ADD PRIMARY KEY (`metalcontentid`);

--
-- Indexes for table `metalcontent_audit`
--
ALTER TABLE `metalcontent_audit`
  ADD PRIMARY KEY (`metalcontentid_audit`),
  ADD KEY `metalContentid` (`metalContentid`);

--
-- Indexes for table `metaltype`
--
ALTER TABLE `metaltype`
  ADD PRIMARY KEY (`metaltypeid`);

--
-- Indexes for table `metaltype_audit`
--
ALTER TABLE `metaltype_audit`
  ADD PRIMARY KEY (`metaltypeid_audit`),
  ADD KEY `metaltypeid` (`metaltypeid`);

--
-- Indexes for table `metal_stone_market_price`
--
ALTER TABLE `metal_stone_market_price`
  ADD PRIMARY KEY (`m_s_m_p_id`);

--
-- Indexes for table `metal_stone_market_price_audit`
--
ALTER TABLE `metal_stone_market_price_audit`
  ADD PRIMARY KEY (`m_s_m_p_audit_id`),
  ADD KEY `m_s_m_p_id` (`m_s_m_p_id`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`ProductTypeID`);

--
-- Indexes for table `producttype_audit`
--
ALTER TABLE `producttype_audit`
  ADD PRIMARY KEY (`ProductTypeID_audit`),
  ADD KEY `ProductTypeID` (`ProductTypeID`);

--
-- Indexes for table `raw_material`
--
ALTER TABLE `raw_material`
  ADD PRIMARY KEY (`r_m_id`);

--
-- Indexes for table `raw_material_audit`
--
ALTER TABLE `raw_material_audit`
  ADD PRIMARY KEY (`r_m_audit_id`),
  ADD KEY `r_m_id` (`r_m_id`);

--
-- Indexes for table `sampletype`
--
ALTER TABLE `sampletype`
  ADD PRIMARY KEY (`SampleTypeID`);

--
-- Indexes for table `sampletype_audit`
--
ALTER TABLE `sampletype_audit`
  ADD PRIMARY KEY (`SampleTypeID_audit`),
  ADD KEY `SampleTypeID` (`SampleTypeID`);

--
-- Indexes for table `setting_type`
--
ALTER TABLE `setting_type`
  ADD PRIMARY KEY (`s_t_id`);

--
-- Indexes for table `setting_type_audit`
--
ALTER TABLE `setting_type_audit`
  ADD PRIMARY KEY (`s_t_audit_id`),
  ADD KEY `s_t_id` (`s_t_id`);

--
-- Indexes for table `shape`
--
ALTER TABLE `shape`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `shape_audit`
--
ALTER TABLE `shape_audit`
  ADD PRIMARY KEY (`s_audit_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `shipping_handling`
--
ALTER TABLE `shipping_handling`
  ADD PRIMARY KEY (`s_h_id`);

--
-- Indexes for table `shipping_handling_audit`
--
ALTER TABLE `shipping_handling_audit`
  ADD PRIMARY KEY (`s_h_audit_id`),
  ADD KEY `s_h_id` (`s_h_id`);

--
-- Indexes for table `sieve`
--
ALTER TABLE `sieve`
  ADD PRIMARY KEY (`sieve_id`);

--
-- Indexes for table `sieve_audit`
--
ALTER TABLE `sieve_audit`
  ADD PRIMARY KEY (`sieve_audit_id`),
  ADD KEY `sieve_id` (`sieve_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Indexes for table `supplier_audit`
--
ALTER TABLE `supplier_audit`
  ADD PRIMARY KEY (`SupplierID_audit`),
  ADD KEY `SupplierID` (`SupplierID`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`tax_id`);

--
-- Indexes for table `tax_audit`
--
ALTER TABLE `tax_audit`
  ADD PRIMARY KEY (`tax_audit_id`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `vendor_audit`
--
ALTER TABLE `vendor_audit`
  ADD PRIMARY KEY (`v_audit_id`),
  ADD KEY `v_id` (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clarity`
--
ALTER TABLE `clarity`
  MODIFY `clar_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clarity_audit`
--
ALTER TABLE `clarity_audit`
  MODIFY `clar_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `color_scale`
--
ALTER TABLE `color_scale`
  MODIFY `c_scale_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `color_scale_audit`
--
ALTER TABLE `color_scale_audit`
  MODIFY `c_scale_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `color_type`
--
ALTER TABLE `color_type`
  MODIFY `c_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `color_type_audit`
--
ALTER TABLE `color_type_audit`
  MODIFY `c_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cost`
--
ALTER TABLE `cost`
  MODIFY `cost_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cost_audit`
--
ALTER TABLE `cost_audit`
  MODIFY `cost_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_ingredient`
--
ALTER TABLE `item_ingredient`
  MODIFY `i_i_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_ingredient_audit`
--
ALTER TABLE `item_ingredient_audit`
  MODIFY `i_i_id_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loose_stone`
--
ALTER TABLE `loose_stone`
  MODIFY `l_s_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loose_stone_audit`
--
ALTER TABLE `loose_stone_audit`
  MODIFY `l_s_id_audit` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metalcolor`
--
ALTER TABLE `metalcolor`
  MODIFY `metalcolorid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metalcolor_audit`
--
ALTER TABLE `metalcolor_audit`
  MODIFY `metalcolorid_audit` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metalcontent`
--
ALTER TABLE `metalcontent`
  MODIFY `metalcontentid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metalcontent_audit`
--
ALTER TABLE `metalcontent_audit`
  MODIFY `metalcontentid_audit` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metaltype`
--
ALTER TABLE `metaltype`
  MODIFY `metaltypeid` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metaltype_audit`
--
ALTER TABLE `metaltype_audit`
  MODIFY `metaltypeid_audit` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metal_stone_market_price`
--
ALTER TABLE `metal_stone_market_price`
  MODIFY `m_s_m_p_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `metal_stone_market_price_audit`
--
ALTER TABLE `metal_stone_market_price_audit`
  MODIFY `m_s_m_p_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `ProductTypeID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `producttype_audit`
--
ALTER TABLE `producttype_audit`
  MODIFY `ProductTypeID_audit` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `raw_material`
--
ALTER TABLE `raw_material`
  MODIFY `r_m_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `raw_material_audit`
--
ALTER TABLE `raw_material_audit`
  MODIFY `r_m_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sampletype`
--
ALTER TABLE `sampletype`
  MODIFY `SampleTypeID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sampletype_audit`
--
ALTER TABLE `sampletype_audit`
  MODIFY `SampleTypeID_audit` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting_type`
--
ALTER TABLE `setting_type`
  MODIFY `s_t_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting_type_audit`
--
ALTER TABLE `setting_type_audit`
  MODIFY `s_t_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shape`
--
ALTER TABLE `shape`
  MODIFY `s_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shape_audit`
--
ALTER TABLE `shape_audit`
  MODIFY `s_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipping_handling`
--
ALTER TABLE `shipping_handling`
  MODIFY `s_h_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shipping_handling_audit`
--
ALTER TABLE `shipping_handling_audit`
  MODIFY `s_h_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sieve`
--
ALTER TABLE `sieve`
  MODIFY `sieve_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sieve_audit`
--
ALTER TABLE `sieve_audit`
  MODIFY `sieve_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier_audit`
--
ALTER TABLE `supplier_audit`
  MODIFY `SupplierID_audit` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `tax_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax_audit`
--
ALTER TABLE `tax_audit`
  MODIFY `tax_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `v_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vendor_audit`
--
ALTER TABLE `vendor_audit`
  MODIFY `v_audit_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `clarity_audit`
--
ALTER TABLE `clarity_audit`
  ADD CONSTRAINT `clarity_audit_ibfk_1` FOREIGN KEY (`clar_id`) REFERENCES `clarity` (`clar_id`);

--
-- Constraints for table `color_scale_audit`
--
ALTER TABLE `color_scale_audit`
  ADD CONSTRAINT `color_scale_audit_ibfk_1` FOREIGN KEY (`c_scale_id`) REFERENCES `color_scale` (`c_scale_id`);

--
-- Constraints for table `color_type_audit`
--
ALTER TABLE `color_type_audit`
  ADD CONSTRAINT `color_type_audit_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `color_type` (`c_id`);

--
-- Constraints for table `cost_audit`
--
ALTER TABLE `cost_audit`
  ADD CONSTRAINT `cost_audit_ibfk_1` FOREIGN KEY (`cost_id`) REFERENCES `cost` (`cost_id`);

--
-- Constraints for table `item_ingredient_audit`
--
ALTER TABLE `item_ingredient_audit`
  ADD CONSTRAINT `item_ingredient_audit_ibfk_1` FOREIGN KEY (`i_i_id`) REFERENCES `item_ingredient` (`i_i_id`);

--
-- Constraints for table `loose_stone_audit`
--
ALTER TABLE `loose_stone_audit`
  ADD CONSTRAINT `loose_stone_audit_ibfk_1` FOREIGN KEY (`l_s_id`) REFERENCES `loose_stone` (`l_s_id`);

--
-- Constraints for table `metalcolor_audit`
--
ALTER TABLE `metalcolor_audit`
  ADD CONSTRAINT `metalcolor_audit_ibfk_1` FOREIGN KEY (`metalcolorid`) REFERENCES `metalcolor` (`MetalColorID`);

--
-- Constraints for table `metalcontent_audit`
--
ALTER TABLE `metalcontent_audit`
  ADD CONSTRAINT `metalcontent_audit_ibfk_1` FOREIGN KEY (`metalContentid`) REFERENCES `metalcontent` (`metalcontentid`);

--
-- Constraints for table `metaltype_audit`
--
ALTER TABLE `metaltype_audit`
  ADD CONSTRAINT `metaltype_audit_ibfk_1` FOREIGN KEY (`metaltypeid`) REFERENCES `metaltype` (`metaltypeid`);

--
-- Constraints for table `metal_stone_market_price_audit`
--
ALTER TABLE `metal_stone_market_price_audit`
  ADD CONSTRAINT `metal_stone_market_price_audit_ibfk_1` FOREIGN KEY (`m_s_m_p_id`) REFERENCES `metal_stone_market_price` (`m_s_m_p_id`);

--
-- Constraints for table `producttype_audit`
--
ALTER TABLE `producttype_audit`
  ADD CONSTRAINT `producttype_audit_ibfk_1` FOREIGN KEY (`ProductTypeID`) REFERENCES `producttype` (`ProductTypeID`);

--
-- Constraints for table `raw_material_audit`
--
ALTER TABLE `raw_material_audit`
  ADD CONSTRAINT `raw_material_audit_ibfk_1` FOREIGN KEY (`r_m_id`) REFERENCES `raw_material` (`r_m_id`);

--
-- Constraints for table `sampletype_audit`
--
ALTER TABLE `sampletype_audit`
  ADD CONSTRAINT `sampletype_audit_ibfk_1` FOREIGN KEY (`SampleTypeID`) REFERENCES `sampletype` (`SampleTypeID`);

--
-- Constraints for table `setting_type_audit`
--
ALTER TABLE `setting_type_audit`
  ADD CONSTRAINT `setting_type_audit_ibfk_1` FOREIGN KEY (`s_t_id`) REFERENCES `setting_type` (`s_t_id`);

--
-- Constraints for table `shape_audit`
--
ALTER TABLE `shape_audit`
  ADD CONSTRAINT `shape_audit_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `shape` (`s_id`);

--
-- Constraints for table `shipping_handling_audit`
--
ALTER TABLE `shipping_handling_audit`
  ADD CONSTRAINT `shipping_handling_audit_ibfk_1` FOREIGN KEY (`s_h_id`) REFERENCES `shipping_handling` (`s_h_id`);

--
-- Constraints for table `sieve_audit`
--
ALTER TABLE `sieve_audit`
  ADD CONSTRAINT `sieve_audit_ibfk_1` FOREIGN KEY (`sieve_id`) REFERENCES `sieve` (`sieve_id`);

--
-- Constraints for table `supplier_audit`
--
ALTER TABLE `supplier_audit`
  ADD CONSTRAINT `supplier_audit_ibfk_1` FOREIGN KEY (`SupplierID`) REFERENCES `supplier` (`SupplierID`);

--
-- Constraints for table `tax_audit`
--
ALTER TABLE `tax_audit`
  ADD CONSTRAINT `tax_audit_ibfk_1` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`tax_id`);

--
-- Constraints for table `vendor_audit`
--
ALTER TABLE `vendor_audit`
  ADD CONSTRAINT `vendor_audit_ibfk_1` FOREIGN KEY (`v_id`) REFERENCES `vendor` (`v_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
