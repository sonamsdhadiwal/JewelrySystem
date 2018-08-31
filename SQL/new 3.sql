CREATE TABLE `Item_type` (
  `i_t_id` int(5) NOT NULL AUTO_INCREMENT,
  `i_t_code` varchar(50) DEFAULT NULL,
  `i_t_name` varchar(50) NOT NULL,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  `create_date` date NOT NULL,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`i_t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;


CREATE TABLE `Metal_type` (
  `m_t_id` int(5) NOT NULL AUTO_INCREMENT,
  `m_t_code` varchar(50) DEFAULT NULL,
  `m_t_name` varchar(50) NOT NULL,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  `create_date` date NOT NULL,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;



CREATE TABLE `Metal_color` (
  `m_c_id` int(5) NOT NULL AUTO_INCREMENT,
  `m_c_code` varchar(50) DEFAULT NULL,
  `m_c_name` varchar(50) NOT NULL,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  `create_date` date NOT NULL,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;




CREATE TABLE `Metal_content` (
  `m_con_id` int(5) NOT NULL AUTO_INCREMENT,
  `m_con_code` varchar(50) DEFAULT NULL,
  `m_con_name` varchar(50) NOT NULL,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  `create_date` date NOT NULL,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`m_con_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;



CREATE TABLE `Product_size` (
  `p_s_id` int(5) NOT NULL AUTO_INCREMENT,
  `p_s_code` varchar(50) DEFAULT NULL,
  `p_s_name` varchar(50) NOT NULL,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  `create_date` date NOT NULL,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`p_s_id`),
  CONSTRAINT `Product_size_psfk_1` FOREIGN KEY (`i_t_id`) REFERENCES `Item_type` (`i_t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;


CREATE TABLE `Item_thickness` (
  `i_th_id` int(5) NOT NULL AUTO_INCREMENT,
  `i_th_code` varchar(50) DEFAULT NULL,
  `i_th_desc` varchar(50) NOT NULL,
  `create_user_id` int(5) NOT NULL,
  `edit_user_id` int(5) DEFAULT NULL,
  `create_date` date NOT NULL,
  `edit_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`i_th_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
