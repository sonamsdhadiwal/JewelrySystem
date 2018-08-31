CREATE TABLE `clarity_audit` (
 `clar_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
 `clar_id` int(5) NOT NULL ,
  `clar_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(clar_id) REFERENCES clarity(clar_id)

  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

  
  
  -- --------------------------------------------------------

--
-- Table structure for table `color_scale`
--


  CREATE TABLE `color_scale_audit` (
  `c_scale_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `c_scale_id` int(5) NOT NULL,
  `c_scale_name` varchar(50) NOT NULL,
  `c_id` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(c_scale_id) REFERENCES color_scale(c_scale_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `color_type`
--

CREATE TABLE `color_type_audit` (
`c_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `c_id` int(5) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_flag` varchar(1) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(c_id) REFERENCES color_type(c_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `metal_stone_market_price`
--

CREATE TABLE `metal_stone_market_price_audit` (
`m_s_m_p_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `m_s_m_p_id` int(5) NOT NULL,
  `r_m_id` int(5) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `p_par_id` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(m_s_m_p_id) REFERENCES metal_stone_market_price(m_s_m_p_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `raw_material`
--

CREATE TABLE `raw_material_audit` (
 `r_m_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `r_m_id` int(5) NOT NULL,
  `r_m_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(r_m_id) REFERENCES raw_material(r_m_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting_type`
--

CREATE TABLE `setting_type_audit` (
  `s_t_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `s_t_id` int(5) NOT NULL,
  `s_t_name` varchar(50) NOT NULL,
  `s_t_cost_par_stone` int(5) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(s_t_id) REFERENCES setting_type(s_t_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shape`
--

CREATE TABLE `shape_audit` (
`s_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `s_id` int(5) NOT NULL,
  `s_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(s_id) REFERENCES shape(s_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='contain shapes of product';

-- --------------------------------------------------------

--
-- Table structure for table `sieve`
--

CREATE TABLE `sieve_audit` (
`sieve_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `sieve_id` int(5) NOT NULL,
  `sieve_name` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(sieve_id) REFERENCES sieve(sieve_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax_audit` (
`tax_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `tax_id` int(5) NOT NULL ,
  `tax_percent` int(5) NOT NULL,
  `tax_appln_date` date NOT NULL,
  `tax_end_date` date NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(tax_id) REFERENCES tax(tax_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor_audit` (
`v_audit_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
  `edit_user_id` int(5) DEFAULT NULL,
  FOREIGN KEY(v_id) REFERENCES vendor(v_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

