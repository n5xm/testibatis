/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50067
Source Host           : localhost:3306
Source Database       : testibatis

Target Server Type    : MYSQL
Target Server Version : 50067
File Encoding         : 65001

Date: 2015-03-06 12:58:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL auto_increment,
  `first_name` varchar(20) default NULL,
  `last_name` varchar(20) default NULL,
  `salary` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'Roma', 'Ali', '5000');
INSERT INTO `employee` VALUES ('3', 'Zara', 'Ali', '5000');

-- ----------------------------
-- Procedure structure for `getEmp`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getEmp`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEmp`(IN empid INT)
BEGIN
   SELECT * FROM EMPLOYEE
   WHERE ID = empid;
END
;;
DELIMITER ;
