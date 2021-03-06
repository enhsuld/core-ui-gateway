/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 100116
Source Host           : localhost:3306
Source Database       : synergy

Target Server Type    : MYSQL
Target Server Version : 100116
File Encoding         : 65001

Date: 2017-09-15 18:15:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clientdetails
-- ----------------------------
DROP TABLE IF EXISTS `clientdetails`;
CREATE TABLE `clientdetails` (
  `appId` varchar(255) NOT NULL,
  `resourceIds` varchar(255) DEFAULT NULL,
  `appSecret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `grantTypes` varchar(255) DEFAULT NULL,
  `redirectUrl` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientdetails
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm715xsb1b2e9udfwgnkgyi8sr` (`creator_id`),
  KEY `FKs1slvnkuemjsq2kj4h3vhx7i1` (`post_id`),
  CONSTRAINT `FKm715xsb1b2e9udfwgnkgyi8sr` FOREIGN KEY (`creator_id`) REFERENCES `lut_user` (`id`),
  CONSTRAINT `FKs1slvnkuemjsq2kj4h3vhx7i1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for eg_journal
-- ----------------------------
DROP TABLE IF EXISTS `eg_journal`;
CREATE TABLE `eg_journal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amountValue` bigint(20) NOT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `bankNo` bigint(20) NOT NULL,
  `bankNumber` varchar(255) DEFAULT NULL,
  `cashNo` bigint(20) NOT NULL,
  `customerAddress` varchar(255) DEFAULT NULL,
  `customerCompany` varchar(255) DEFAULT NULL,
  `customerFirstName` varchar(255) DEFAULT NULL,
  `customerLastName` varchar(255) DEFAULT NULL,
  `documentNo` bigint(20) NOT NULL,
  `invoiceNo` bigint(20) NOT NULL,
  `isNuat` bit(1) NOT NULL,
  `journalKind` varchar(255) DEFAULT NULL,
  `mTotalCredit` bigint(20) NOT NULL,
  `mTotalDebit` bigint(20) NOT NULL,
  `mean` varchar(255) DEFAULT NULL,
  `modidate` varchar(255) DEFAULT NULL,
  `modiuserid` varchar(255) DEFAULT NULL,
  `modiuserip` varchar(255) DEFAULT NULL,
  `nuatValue` bigint(20) NOT NULL,
  `payTime` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  `reguserid` varchar(255) DEFAULT NULL,
  `reguserip` varchar(255) DEFAULT NULL,
  `salaryMonth` varchar(255) DEFAULT NULL,
  `salaryYear` bigint(20) NOT NULL,
  `totalCredit` bigint(20) NOT NULL,
  `totalDebit` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eg_journal
-- ----------------------------
INSERT INTO `eg_journal` VALUES ('1', '123', '545', '545', null, '0', null, null, null, null, '0', '0', '\0', null, '0', '0', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0');

-- ----------------------------
-- Table structure for eg_journal_detail
-- ----------------------------
DROP TABLE IF EXISTS `eg_journal_detail`;
CREATE TABLE `eg_journal_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `AccountCreditControl` bigint(20) NOT NULL,
  `AccountDebitControl` bigint(20) NOT NULL,
  `accountControl` bit(1) NOT NULL,
  `accountNo` bigint(20) NOT NULL,
  `barimtNo` bigint(20) NOT NULL,
  `basicAccountCredit` bigint(20) NOT NULL,
  `basicAccountDebit` bigint(20) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `credit` bigint(20) NOT NULL,
  `debit` bigint(20) NOT NULL,
  `debitCreditTotal` varchar(255) DEFAULT NULL,
  `egDate` varchar(255) DEFAULT NULL,
  `egId` bigint(20) NOT NULL,
  `modidate` varchar(255) DEFAULT NULL,
  `modiuserid` varchar(255) DEFAULT NULL,
  `modiuserip` varchar(255) DEFAULT NULL,
  `oneCreditControl` bit(1) NOT NULL,
  `oneDebitControl` bit(1) NOT NULL,
  `personName` varchar(255) DEFAULT NULL,
  `personNo` bigint(20) NOT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  `reguserid` varchar(255) DEFAULT NULL,
  `reguserip` varchar(255) DEFAULT NULL,
  `valueControl` bit(1) NOT NULL,
  `valutDun` bigint(20) NOT NULL,
  `valutDunCt` bigint(20) NOT NULL,
  `valutHansh` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6bnhlatyyeox81q5dr0m0e63b` (`egId`),
  CONSTRAINT `FK6bnhlatyyeox81q5dr0m0e63b` FOREIGN KEY (`egId`) REFERENCES `eg_journal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eg_journal_detail
-- ----------------------------

-- ----------------------------
-- Table structure for eg_journal_inv_detail
-- ----------------------------
DROP TABLE IF EXISTS `eg_journal_inv_detail`;
CREATE TABLE `eg_journal_inv_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `egId` bigint(20) NOT NULL,
  `invCount` int(11) NOT NULL,
  `invId` bigint(20) NOT NULL,
  `invName` varchar(255) DEFAULT NULL,
  `invPrise` int(11) NOT NULL,
  `measId` bigint(20) NOT NULL,
  `measName` varchar(255) DEFAULT NULL,
  `modidate` varchar(255) DEFAULT NULL,
  `modiuserid` varchar(255) DEFAULT NULL,
  `modiuserip` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  `reguserid` varchar(255) DEFAULT NULL,
  `reguserip` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `invTotal` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsh4icjr72hiabkumv44jnj2wy` (`egId`),
  CONSTRAINT `FKsh4icjr72hiabkumv44jnj2wy` FOREIGN KEY (`egId`) REFERENCES `eg_journal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eg_journal_inv_detail
-- ----------------------------
INSERT INTO `eg_journal_inv_detail` VALUES ('1', '1', '3', '1', 'sad', '23', '1', 'sd', null, null, null, null, null, null, '30', '15000');
INSERT INTO `eg_journal_inv_detail` VALUES ('3', '1', '5', '5', '5', '7', '5', '15', null, null, null, null, null, null, '100', '15555');

-- ----------------------------
-- Table structure for file_upload
-- ----------------------------
DROP TABLE IF EXISTS `file_upload`;
CREATE TABLE `file_upload` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `aan` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filesize` bigint(20) NOT NULL,
  `fileurl` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_upload
-- ----------------------------

-- ----------------------------
-- Table structure for lnk_customer_company
-- ----------------------------
DROP TABLE IF EXISTS `lnk_customer_company`;
CREATE TABLE `lnk_customer_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orgid` bigint(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK33hcnvrp76t002frffbpo0rlc` (`orgid`),
  CONSTRAINT `FK33hcnvrp76t002frffbpo0rlc` FOREIGN KEY (`orgid`) REFERENCES `lut_cmm_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lnk_customer_company
-- ----------------------------
INSERT INTO `lnk_customer_company` VALUES ('1', '325235', '234', '324@wre.com', 'wer', '3', '234');
INSERT INTO `lnk_customer_company` VALUES ('2', '325235', '234', '324@wre.com', 'wer', '3', '234');
INSERT INTO `lnk_customer_company` VALUES ('3', 'wer', '234', '324@werc.com', 'were', '3', '234');
INSERT INTO `lnk_customer_company` VALUES ('4', 'ewt6we', '324', '2342@f.com', 'weeeee', '3', '324');
INSERT INTO `lnk_customer_company` VALUES ('5', '35235', '234', '234@sdf.com', 'werwerwer', '3', '234234');
INSERT INTO `lnk_customer_company` VALUES ('6', '23423', '345', '4@dfg.comc', '345345', '3', '345');
INSERT INTO `lnk_customer_company` VALUES ('7', '23423', '345', '4@dfg.comc', '345345', '3', '345');
INSERT INTO `lnk_customer_company` VALUES ('8', '23423', '345', '4@dfg.comc', '345345', '3', '345');
INSERT INTO `lnk_customer_company` VALUES ('9', '234', '345', '345@cc.com', '345435', '3', '555');
INSERT INTO `lnk_customer_company` VALUES ('10', 'weq', '23r', '234sdf@s.com', 'etwt', '3', '324');
INSERT INTO `lnk_customer_company` VALUES ('11', '2353', '23r', '23@fs.com', 'qrwqr', '3', '2323');
INSERT INTO `lnk_customer_company` VALUES ('12', '35235', '124124', '2141@asd.com', '41241', '3', '124124');

-- ----------------------------
-- Table structure for lnk_location_company
-- ----------------------------
DROP TABLE IF EXISTS `lnk_location_company`;
CREATE TABLE `lnk_location_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orgid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK36ft3nqrp25hw4mbxmc7gmebm` (`orgid`),
  CONSTRAINT `FK36ft3nqrp25hw4mbxmc7gmebm` FOREIGN KEY (`orgid`) REFERENCES `lut_cmm_organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lnk_location_company
-- ----------------------------

-- ----------------------------
-- Table structure for lnk_menurole
-- ----------------------------
DROP TABLE IF EXISTS `lnk_menurole`;
CREATE TABLE `lnk_menurole` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menuid` bigint(20) NOT NULL,
  `orderid` int(11) NOT NULL,
  `rcreate` int(11) NOT NULL,
  `rdelete` int(11) NOT NULL,
  `rexport` int(11) NOT NULL,
  `roleid` bigint(20) NOT NULL,
  `rread` int(11) NOT NULL,
  `rupdate` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl6iftc2446af2q1yfhv7mr6nq` (`roleid`),
  KEY `FKtnl66pw5lk5pyvjuf4nwqhiuj` (`menuid`),
  CONSTRAINT `FKl6iftc2446af2q1yfhv7mr6nq` FOREIGN KEY (`roleid`) REFERENCES `lut_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKtnl66pw5lk5pyvjuf4nwqhiuj` FOREIGN KEY (`menuid`) REFERENCES `lut_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lnk_menurole
-- ----------------------------
INSERT INTO `lnk_menurole` VALUES ('207', '1', '1', '1', '0', '0', '5', '0', '0');
INSERT INTO `lnk_menurole` VALUES ('208', '2', '7', '1', '0', '0', '5', '1', '0');
INSERT INTO `lnk_menurole` VALUES ('209', '5', '4', '1', '0', '0', '5', '1', '0');
INSERT INTO `lnk_menurole` VALUES ('210', '19', '3', '1', '1', '1', '5', '1', '1');
INSERT INTO `lnk_menurole` VALUES ('211', '71', '1', '1', '1', '1', '5', '1', '1');
INSERT INTO `lnk_menurole` VALUES ('212', '32', '4', '0', '0', '0', '5', '1', '0');
INSERT INTO `lnk_menurole` VALUES ('213', '66', '1', '0', '0', '0', '5', '1', '0');
INSERT INTO `lnk_menurole` VALUES ('214', '67', '2', '0', '0', '0', '5', '1', '0');
INSERT INTO `lnk_menurole` VALUES ('215', '68', '4', '0', '0', '0', '5', '1', '0');
INSERT INTO `lnk_menurole` VALUES ('216', '69', '5', '0', '0', '0', '5', '1', '0');
INSERT INTO `lnk_menurole` VALUES ('217', '70', '6', '0', '0', '0', '5', '1', '0');
INSERT INTO `lnk_menurole` VALUES ('218', '60', '85', '1', '1', '1', '5', '0', '1');

-- ----------------------------
-- Table structure for lnk_userrole
-- ----------------------------
DROP TABLE IF EXISTS `lnk_userrole`;
CREATE TABLE `lnk_userrole` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roleid` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdvjytdbrwjmcl3uw534x5qnv1` (`roleid`),
  KEY `FKnisr7mgcbgjyc1lu54b8yj2c0` (`userid`),
  CONSTRAINT `FKdvjytdbrwjmcl3uw534x5qnv1` FOREIGN KEY (`roleid`) REFERENCES `lut_role` (`id`),
  CONSTRAINT `FKnisr7mgcbgjyc1lu54b8yj2c0` FOREIGN KEY (`userid`) REFERENCES `lut_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lnk_userrole
-- ----------------------------
INSERT INTO `lnk_userrole` VALUES ('3', '5', '1');
INSERT INTO `lnk_userrole` VALUES ('4', '5', '2');

-- ----------------------------
-- Table structure for lut_cmm_code
-- ----------------------------
DROP TABLE IF EXISTS `lut_cmm_code`;
CREATE TABLE `lut_cmm_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classcode` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `isactive` bit(1) NOT NULL,
  `modidate` varchar(255) DEFAULT NULL,
  `modiuserid` varchar(255) DEFAULT NULL,
  `modiuserip` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  `reguserid` varchar(255) DEFAULT NULL,
  `reguserip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_lrwq4psoh884hoyeob2p17eu1` (`classcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lut_cmm_code
-- ----------------------------

-- ----------------------------
-- Table structure for lut_cmm_code_detail
-- ----------------------------
DROP TABLE IF EXISTS `lut_cmm_code_detail`;
CREATE TABLE `lut_cmm_code_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classcode` varchar(255) DEFAULT NULL,
  `detailclasscode` varchar(255) DEFAULT NULL,
  `detailclassname` varchar(255) DEFAULT NULL,
  `isactive` bit(1) NOT NULL,
  `modidate` varchar(255) DEFAULT NULL,
  `modiuserid` varchar(255) DEFAULT NULL,
  `modiuserip` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  `reguserid` varchar(255) DEFAULT NULL,
  `reguserip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK24c3o9i2qk1epuai5o0k7vyl1` (`classcode`),
  CONSTRAINT `FK24c3o9i2qk1epuai5o0k7vyl1` FOREIGN KEY (`classcode`) REFERENCES `lut_cmm_code` (`classcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lut_cmm_code_detail
-- ----------------------------

-- ----------------------------
-- Table structure for lut_cmm_organization
-- ----------------------------
DROP TABLE IF EXISTS `lut_cmm_organization`;
CREATE TABLE `lut_cmm_organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orgname` varchar(255) DEFAULT NULL,
  `orgtype` bigint(20) NOT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `aimag` varchar(255) DEFAULT NULL,
  `bag` varchar(255) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enybo` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `isactive` bit(1) NOT NULL,
  `modidate` varchar(255) DEFAULT NULL,
  `modiuserid` varchar(255) DEFAULT NULL,
  `modiuserip` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ndno` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `regdate` varchar(255) DEFAULT NULL,
  `regno` varchar(255) DEFAULT NULL,
  `reguserid` varchar(255) DEFAULT NULL,
  `reguserip` varchar(255) DEFAULT NULL,
  `sum` varchar(255) DEFAULT NULL,
  `tnybo` varchar(255) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj90xfoukkayplrnrdstdghxk0` (`parentid`),
  CONSTRAINT `FKj90xfoukkayplrnrdstdghxk0` FOREIGN KEY (`parentid`) REFERENCES `lut_cmm_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lut_cmm_organization
-- ----------------------------
INSERT INTO `lut_cmm_organization` VALUES ('1', 'tyder', '0', null, null, null, null, null, null, null, null, '\0', null, null, null, '2434', null, '234', null, null, null, null, null, null, null);
INSERT INTO `lut_cmm_organization` VALUES ('3', null, '0', null, '345666', '5345', '345', '333', '345', '345345', '1', '', null, null, null, '345', '4534', '345', null, '3453', null, null, '5345', '345', '345');

-- ----------------------------
-- Table structure for lut_internalization
-- ----------------------------
DROP TABLE IF EXISTS `lut_internalization`;
CREATE TABLE `lut_internalization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cn` varchar(255) DEFAULT NULL,
  `en` varchar(255) DEFAULT NULL,
  `kor` varchar(255) DEFAULT NULL,
  `mn` varchar(255) DEFAULT NULL,
  `rus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lut_internalization
-- ----------------------------

-- ----------------------------
-- Table structure for lut_menu
-- ----------------------------
DROP TABLE IF EXISTS `lut_menu`;
CREATE TABLE `lut_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `isactive` int(11) NOT NULL,
  `menuname` varchar(255) DEFAULT NULL,
  `orderid` int(11) NOT NULL,
  `parentid` bigint(20) DEFAULT NULL,
  `stateurl` varchar(255) DEFAULT NULL,
  `uicon` varchar(255) DEFAULT NULL,
  `uptype` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK488e289tocj3695371cmj9day` (`parentid`),
  CONSTRAINT `FK488e289tocj3695371cmj9day` FOREIGN KEY (`parentid`) REFERENCES `lut_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lut_menu
-- ----------------------------
INSERT INTO `lut_menu` VALUES ('1', '0', 'Системийн удирдлага', '1', null, '#', '<i class=\"material-icons\">account_balance</i>', '0');
INSERT INTO `lut_menu` VALUES ('2', '0', 'Цэс', '7', '1', 'restricted.pages.pmenu', '23', '2');
INSERT INTO `lut_menu` VALUES ('5', '0', 'Эрх', '4', '1', 'restricted.pages.prole', '<i class=\"material-icons\">account_balance</i>', '0');
INSERT INTO `lut_menu` VALUES ('10', '0', 'Ерөнхий журнал', '2', null, '2', '<i class=\"material-icons\">list</i>', '0');
INSERT INTO `lut_menu` VALUES ('11', '0', 'Гүйлгээ бүртгэх', '11', '10', 'restricted.pages.transactions', null, '0');
INSERT INTO `lut_menu` VALUES ('12', '0', 'Гүйлгээний жагсаалт', '12', '10', '3', null, '0');
INSERT INTO `lut_menu` VALUES ('13', '0', 'Хаалтын бичилт', '13', '10', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('14', '0', 'Дансны нэр', '14', '10', '5', null, '0');
INSERT INTO `lut_menu` VALUES ('15', '0', 'Валютын нэр', '15', '10', '6', null, '0');
INSERT INTO `lut_menu` VALUES ('16', '0', 'Ханшийин тэгшитгэл', '16', '10', '7', null, '0');
INSERT INTO `lut_menu` VALUES ('17', '0', 'Эхний үлдэгдэл', '17', '10', '10', null, '0');
INSERT INTO `lut_menu` VALUES ('18', '0', 'Тайлан', '17', '10', '11', null, '0');
INSERT INTO `lut_menu` VALUES ('19', '0', 'Мөнгөн хөрөнгө', '3', null, '3', '<i class=\"material-icons\">euro_symbol</i>', '0');
INSERT INTO `lut_menu` VALUES ('20', '0', 'Кассын бүртгэл', '21', '19', '21', null, '0');
INSERT INTO `lut_menu` VALUES ('21', '0', 'Кассын жагсаалт', '22', '19', '22', null, '0');
INSERT INTO `lut_menu` VALUES ('22', '0', 'Харилцахын бүртгэл', '23', '19', '23', null, '0');
INSERT INTO `lut_menu` VALUES ('23', '0', 'Харилцахын жагсаалт', '24', '19', '24', null, '0');
INSERT INTO `lut_menu` VALUES ('24', '0', 'Кассын тайлан', '25', '19', '25', null, '0');
INSERT INTO `lut_menu` VALUES ('25', '0', 'Авлага, Өглөг', '3', null, '3', '<i class=\"material-icons\">feedback</i>', '0');
INSERT INTO `lut_menu` VALUES ('26', '0', 'Авлагын бүртгэл', '31', '25', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('27', '0', 'Авлагын жагсаалт', '32', '25', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('28', '0', 'Өглөгийн бүртгэл', '33', '25', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('29', '0', 'Өглөгийн жагсаалт', '34', '25', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('30', '0', 'Харилцагчийн', '35', '25', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('31', '0', 'Тайлан', '36', '25', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('32', '0', 'Бараа материал', '4', null, '4', '<i class=\"material-icons\">view_quilt</i>', '0');
INSERT INTO `lut_menu` VALUES ('33', '0', 'Гүйлгээ бүртгэх', '41', '32', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('34', '0', 'Гүйлгээний жагсаалт', '42', '32', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('35', '0', 'Барааны нэр', '43', '32', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('36', '0', 'Барааны үнэ', '44', '32', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('37', '0', 'Хэмжих нэгж', '45', '32', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('38', '0', 'Эхний үлдэгдэл', '46', '32', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('39', '0', 'Тайлан', '47', '32', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('40', '0', 'Үндсэн хөрөнгө', '5', null, '4', '<i class=\"material-icons\">attach_money</i>', '0');
INSERT INTO `lut_menu` VALUES ('41', '0', 'Гүйлгээ бүртгэх', '51', '40', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('42', '0', 'Гүйгээний жагсаалт', '52', '40', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('43', '0', 'Хөрөнгийн нэр', '53', '40', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('44', '0', 'Эхний үлдэгдэл', '54', '40', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('45', '0', 'Тайлан', '55', '40', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('46', '0', 'Цалин', '6', null, '4', '<i class=\"material-icons\">credit_card</i>', '0');
INSERT INTO `lut_menu` VALUES ('47', '0', 'Цалин бүртгэх', '61', '46', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('48', '0', 'Цалингийн жагсаалт', '62', '46', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('49', '0', 'Ажиллагсадын нэр', '63', '46', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('50', '0', 'Цалингийн үзүүлэлт', '64', '46', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('51', '0', 'Тайлан', '65', '46', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('52', '0', 'Санхүү, татвар', '7', null, '4', '<i class=\"material-icons\">business</i>', '0');
INSERT INTO `lut_menu` VALUES ('53', '0', 'Санхүүгийн тайлан', '71', '52', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('54', '0', 'Татварын тайлан', '72', '52', '4', null, '0');
INSERT INTO `lut_menu` VALUES ('55', '0', 'Тохиргоо', '8', null, '4', '<i class=\"material-icons\">settings</i>', '0');
INSERT INTO `lut_menu` VALUES ('56', '0', 'Байгууллагын мэдээлэл', '81', '55', 'restricted.pages.cmmorganization', null, '2');
INSERT INTO `lut_menu` VALUES ('58', '0', 'Ерөнхий журнал №', '83', '55', 'restricted.pages.egnosettings', null, '1');
INSERT INTO `lut_menu` VALUES ('59', '0', 'Гүйлгээний утга', '84', '55', 'restricted.pages.meansettings', null, '1');
INSERT INTO `lut_menu` VALUES ('60', '0', 'Мөнгөн гүйлгээний томъёо', '85', '55', 'restricted.pages.mgtsettings', null, '1');
INSERT INTO `lut_menu` VALUES ('61', '0', 'Дансны тохиргоо', '86', '55', 'restricted.pages.accsettings', null, '1');
INSERT INTO `lut_menu` VALUES ('62', '0', 'Татварын хувь', '87', '55', 'restricted.pages.taxsettings', null, '1');
INSERT INTO `lut_menu` VALUES ('63', '0', 'Байгууллага', '1', '1', 'restricted.pages.cmmorganization', null, '1');
INSERT INTO `lut_menu` VALUES ('65', '0', 'Хэрэглэгч', '3', '1', 'restricted.pages.puser', null, '4');
INSERT INTO `lut_menu` VALUES ('66', '0', 'Худалдан авалт', '1', '32', 'restricted.inv.income', null, '4');
INSERT INTO `lut_menu` VALUES ('67', '0', 'Борлуулалт', '2', '32', 'restricted.inv.sale', null, '4');
INSERT INTO `lut_menu` VALUES ('68', '0', 'Буцаалт', '4', '32', 'restricted.inv.refund', null, '4');
INSERT INTO `lut_menu` VALUES ('69', '0', 'Зарлага', '5', '32', 'restricted.inv.debit', null, '4');
INSERT INTO `lut_menu` VALUES ('70', '0', 'Дотоод хөдөлгөөн', '6', '32', 'restricted.inv.movement', null, '1');
INSERT INTO `lut_menu` VALUES ('71', '0', 'Орлого / Зарлага', '1', '19', 'restricted.fund.income', null, '4');

-- ----------------------------
-- Table structure for lut_organizations
-- ----------------------------
DROP TABLE IF EXISTS `lut_organizations`;
CREATE TABLE `lut_organizations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lpreg` varchar(255) DEFAULT NULL,
  `ownerfirstname` varchar(255) DEFAULT NULL,
  `ownerlastname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lut_organizations
-- ----------------------------

-- ----------------------------
-- Table structure for lut_role
-- ----------------------------
DROP TABLE IF EXISTS `lut_role`;
CREATE TABLE `lut_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `accessid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `roleauth` varchar(255) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lut_role
-- ----------------------------
INSERT INTO `lut_role` VALUES ('5', '5', null, 'we', 'rereewrwerw');

-- ----------------------------
-- Table structure for lut_user
-- ----------------------------
DROP TABLE IF EXISTS `lut_user`;
CREATE TABLE `lut_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `familyname` varchar(255) DEFAULT NULL,
  `givenname` varchar(255) DEFAULT NULL,
  `isactive` bit(1) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `organizationid` bigint(20) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbfgleuo48slnilr5d8lkofcsi` (`organizationid`),
  CONSTRAINT `FKbfgleuo48slnilr5d8lkofcsi` FOREIGN KEY (`organizationid`) REFERENCES `lut_cmm_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lut_user
-- ----------------------------
INSERT INTO `lut_user` VALUES ('1', '1', '1', '1', '', '1', '1', '$2a$10$ZOB.mAxBvHn70R1zH2WSf.6uif0qoE67hbZ0LO5s3bXHN6YPIZjxK', 'admin');
INSERT INTO `lut_user` VALUES ('2', '3', '234', '234', '', '34', '3', '$2a$10$cKLyxLBLzGZkJgCutV.YuekV0tU0IREP2.Ke2/WOJYQDe5RIBCSAq', '33');

-- ----------------------------
-- Table structure for lut_user_lut_roles
-- ----------------------------
DROP TABLE IF EXISTS `lut_user_lut_roles`;
CREATE TABLE `lut_user_lut_roles` (
  `lut_user_id` bigint(20) NOT NULL,
  `lut_roles_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK_bb3nkrlcmui87elcexn4qdqie` (`lut_roles_id`),
  KEY `FKjskph81tbxq5ihh4hv98qh7ts` (`lut_user_id`),
  CONSTRAINT `FKgmvitv7vsciod5m6mcfu1j1a2` FOREIGN KEY (`lut_roles_id`) REFERENCES `lut_role` (`id`),
  CONSTRAINT `FKjskph81tbxq5ihh4hv98qh7ts` FOREIGN KEY (`lut_user_id`) REFERENCES `lut_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lut_user_lut_roles
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `authentication` mediumblob,
  `refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------
INSERT INTO `oauth_access_token` VALUES ('0b2f34de66c6b274cb4376cf14a63af5', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E00057870737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F72646572787200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000C6F7267616E697A6174696F6E74000633336842547678007372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015E852A2181787372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E71007E0002787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C756571007E0005787074002463336162353262622D666633622D343062632D613965652D6663313064333164303130667371007E000C77080000015E852A218178737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000043F40000000000003740003666F6F7400047265616474000577726974657874000662656172657274002461356536643662622D653831632D343433302D613465322D323535656265313132653364, '12353da3863b14447ac367781857aab7', '33', 'fooClientIdPassword', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000007704000000007871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B72656469726563745572697400124C6A6176612F6C616E672F537472696E673B4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0011787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000F4C001172657175657374506172616D657465727371007E000E4C000573636F706571007E00117870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E000E7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D65740002333378737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0020770C000000103F40000000000000787371007E00173F40000000000000770800000010000000007870707371007E0020770C000000103F40000000000000787371007E0020770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B000000007704000000007871007E002C737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E00173F400000000000067708000000080000000271007E001971007E001A71007E001B71007E001C78007073720026636F6D2E6D6163726F2E6465762E636F6E6669672E437573746F6D5573657244657461696C73A96DCAF6E81D65860200034C000B617574686F72697469657371007E00044C000870617373776F726471007E000F4C0008757365726E616D6571007E000F78707371007E000B000000007704000000007874003C24326124313024634B4C79784C424C7A475A6B4A67437574562E5975656B563074553049524550322E4B65322F574F4A5951446535524942435341717400023333, '4d66e491aded2cb0d1a312a34c68d1f6');
INSERT INTO `oauth_access_token` VALUES ('bd67202a244a7db199211e5de999a021', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E00057870737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F72646572787200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000017708000000020000000174000C6F7267616E697A6174696F6E74000873756C6452474E6478007372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015E7A834F8B787372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E71007E0002787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C756571007E0005787074002430663661323230612D636666362D346162342D393363392D3533633264353366646263627371007E000C77080000015E7A834F8A78737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F7400047265616474000577726974657874000662656172657274002461623031633038392D346462662D346532622D396330392D316664663661353765613839, '4f7e58e4d7c31ff73eac075e3357a9c9', 'suld', 'fooClientIdPassword', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64, '01737a0fdd78f0032eb4cda2d41e4883');
INSERT INTO `oauth_access_token` VALUES ('f2695cda558b2446c5b3468f3d9d7278', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E00057870737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F72646572787200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000C6F7267616E697A6174696F6E74000961646D696E5264475278007372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015E4D2096D6787372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E71007E0002787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C756571007E0005787074002435646235663061372D663666652D346131342D383737382D3733323964633730393739647371007E000C77080000015E4D2096D678737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000043F40000000000003740003666F6F7400047265616474000577726974657874000662656172657274002434353365353735622D366531392D343362362D396533382D366632373337383263393934, 'dce9f31aa06d749fe553e087f3f8a13f', 'admin', 'fooClientIdPassword', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000007704000000007871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B72656469726563745572697400124C6A6176612F6C616E672F537472696E673B4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0011787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000F4C001172657175657374506172616D657465727371007E000E4C000573636F706571007E00117870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E000E7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000561646D696E78737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0020770C000000103F40000000000000787371007E00173F40000000000000770800000010000000007870707371007E0020770C000000103F40000000000000787371007E0020770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B000000007704000000007871007E002C737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E00173F400000000000067708000000080000000271007E001971007E001A71007E001B71007E001C78007073720026636F6D2E6D6163726F2E6465762E636F6E6669672E437573746F6D5573657244657461696C73A96DCAF6E81D65860200034C000B617574686F72697469657371007E00044C000870617373776F726471007E000F4C0008757365726E616D6571007E000F78707371007E000B000000007704000000007874003C2432612431302472376539356C2F514E3135664B2E45473139424F572E306C746C4F4333316F356D4E796633463542624C6549757641424E6450723674000561646D696E, '8146e3af498b51af2304d6b6225af1a1');
INSERT INTO `oauth_access_token` VALUES ('ea871d2d8cf6671c79f7d7273f5461c0', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E00057870737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F72646572787200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000017708000000020000000174000C6F7267616E697A6174696F6E740007746F6D44465A5878007372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015DE942C9C2787372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E71007E0002787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C756571007E0005787074002463316135356633312D323737392D343533392D396439362D6661343731313435626637627371007E000C77080000015DE942C9C278737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F7400047265616474000577726974657874000662656172657274002434353162303865312D393339652D343331642D613138372D623063626161353861376663, 'e544ab56a033bd8667ab96d66ffb82ff', 'tom', 'fooClientIdPassword', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D65740003746F6D78737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F7870740003746F6D, '38dfa29a92a7de4e6a3272285f4db514');

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(255) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastModifiedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_approvals
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('barClientIdPassword', null, 'secret', 'bar,read,write', 'password,authorization_code,refresh_token', null, null, '36000', '36000', null, '1');
INSERT INTO `oauth_client_details` VALUES ('fooClientIdPassword', null, 'secret', 'foo,read,write', 'password,authorization_code,refresh_token', null, null, '3600', '3600', null, '1');
INSERT INTO `oauth_client_details` VALUES ('sampleClientId', null, 'secret', 'read,write,foo,bar', 'implicit', null, null, '36000', '36000', null, '0');

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` mediumblob,
  `authentication` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------
INSERT INTO `oauth_refresh_token` VALUES ('38dfa29a92a7de4e6a3272285f4db514', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002463316135356633312D323737392D343533392D396439362D6661343731313435626637627372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015DE942C9C278, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D65740003746F6D78737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F7870740003746F6D);
INSERT INTO `oauth_refresh_token` VALUES ('15f83198ea19dc415891cc00fef2a5ae', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002437386330623138382D386131322D343164342D393030312D6165646634303132643034627372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015DE95A8DD478, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64);
INSERT INTO `oauth_refresh_token` VALUES ('45347a2186e5604fa1bb871d0cc77219', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002463346439386230312D333362342D346436622D626435372D6363616461653939656232637372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015DEA6BA52E78, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64);
INSERT INTO `oauth_refresh_token` VALUES ('942ec48299a4b47ed4a29b7d12780173', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002439623466336536622D373964632D343831392D623332392D3065663838393036323761637372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015DEA71EDF778, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64);
INSERT INTO `oauth_refresh_token` VALUES ('fa24af52f9178d71c4f4b300803424cf', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002464306333666135642D326334652D343165302D623330392D3731366662323064636663377372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015DEA7334FC78, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64);
INSERT INTO `oauth_refresh_token` VALUES ('491f26a014b4f48c9a7b7d5753357b5f', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002435316665363732622D396530352D343938352D613337342D6439363732356633356262377372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015DEA813CAA78, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64);
INSERT INTO `oauth_refresh_token` VALUES ('64d15d1888e0fcd1e6c0ec511ccf8cce', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002462393932623266612D633530302D343837352D386664622D3436313666646530363938347372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015DEA98353378, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64);
INSERT INTO `oauth_refresh_token` VALUES ('8146e3af498b51af2304d6b6225af1a1', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002435646235663061372D663666652D346131342D383737382D3733323964633730393739647372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015E4D2096D678, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000007704000000007871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B72656469726563745572697400124C6A6176612F6C616E672F537472696E673B4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0011787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000F4C001172657175657374506172616D657465727371007E000E4C000573636F706571007E00117870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E000E7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000561646D696E78737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0020770C000000103F40000000000000787371007E00173F40000000000000770800000010000000007870707371007E0020770C000000103F40000000000000787371007E0020770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B000000007704000000007871007E002C737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E00173F400000000000067708000000080000000271007E001971007E001A71007E001B71007E001C78007073720026636F6D2E6D6163726F2E6465762E636F6E6669672E437573746F6D5573657244657461696C73A96DCAF6E81D65860200034C000B617574686F72697469657371007E00044C000870617373776F726471007E000F4C0008757365726E616D6571007E000F78707371007E000B000000007704000000007874003C2432612431302472376539356C2F514E3135664B2E45473139424F572E306C746C4F4333316F356D4E796633463542624C6549757641424E6450723674000561646D696E);
INSERT INTO `oauth_refresh_token` VALUES ('50c617af85b0eeb876ded013cce2e9a8', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002435343137353965632D623939612D343731612D626663302D6464666365373334336637307372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015E558BD13078, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64);
INSERT INTO `oauth_refresh_token` VALUES ('5be4f615adeeda27519513fb20b5eac2', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002430343831306634352D393664312D346136342D623766662D3664353638633233363937377372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015E55FA8F9478, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64);
INSERT INTO `oauth_refresh_token` VALUES ('cae605c8420002f5172a7ef2f1cb0ceb', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002430653462386164362D306361612D343338662D386564642D6235643133353164396339617372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015E6FF4AAF278, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000007704000000007871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B72656469726563745572697400124C6A6176612F6C616E672F537472696E673B4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0011787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000F4C001172657175657374506172616D657465727371007E000E4C000573636F706571007E00117870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E000E7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D65740002333378737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0020770C000000103F40000000000000787371007E00173F40000000000000770800000010000000007870707371007E0020770C000000103F40000000000000787371007E0020770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B000000007704000000007871007E002C737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E00173F400000000000067708000000080000000271007E001971007E001A71007E001B71007E001C78007073720026636F6D2E6D6163726F2E6465762E636F6E6669672E437573746F6D5573657244657461696C73A96DCAF6E81D65860200034C000B617574686F72697469657371007E00044C000870617373776F726471007E000F4C0008757365726E616D6571007E000F78707371007E000B000000007704000000007874003C24326124313024634B4C79784C424C7A475A6B4A67437574562E5975656B563074553049524550322E4B65322F574F4A5951446535524942435341717400023333);
INSERT INTO `oauth_refresh_token` VALUES ('01737a0fdd78f0032eb4cda2d41e4883', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002430663661323230612D636666362D346162342D393363392D3533633264353366646263627372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015E7A834F8A78, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F53555045527871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D6574000473756C6478737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0023770C000000103F40000000000000787371007E001A3F40000000000000770800000010000000007870707371007E0023770C000000103F40000000000000787371007E0023770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E002F737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E001A3F400000000000067708000000080000000271007E001C71007E001D71007E001E71007E001F780070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0020737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000473756C64);
INSERT INTO `oauth_refresh_token` VALUES ('4d66e491aded2cb0d1a312a34c68d1f6', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002463336162353262622D666633622D343062632D613965652D6663313064333164303130667372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015E852A218178, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A657870000000007704000000007871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B72656469726563745572697400124C6A6176612F6C616E672F537472696E673B4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0011787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000F4C001172657175657374506172616D657465727371007E000E4C000573636F706571007E00117870740013666F6F436C69656E74496450617373776F7264737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E000E7870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F400000000000037708000000040000000274000A6772616E745F7479706574000870617373776F7264740008757365726E616D65740002333378737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F40000000000003740003666F6F74000472656164740005777269746578017371007E0020770C000000103F40000000000000787371007E00173F40000000000000770800000010000000007870707371007E0020770C000000103F40000000000000787371007E0020770C000000103F40000000000000787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B000000007704000000007871007E002C737200176A6176612E7574696C2E4C696E6B6564486173684D617034C04E5C106CC0FB0200015A000B6163636573734F726465727871007E00173F400000000000067708000000080000000271007E001971007E001A71007E001B71007E001C78007073720026636F6D2E6D6163726F2E6465762E636F6E6669672E437573746F6D5573657244657461696C73A96DCAF6E81D65860200034C000B617574686F72697469657371007E00044C000870617373776F726471007E000F4C0008757365726E616D6571007E000F78707371007E000B000000007704000000007874003C24326124313024634B4C79784C424C7A475A6B4A67437574562E5975656B563074553049524550322E4B65322F574F4A5951446535524942435341717400023333);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6v5ifbi4k9585idb5a59hwqng` (`creator_id`),
  CONSTRAINT `FK6v5ifbi4k9585idb5a59hwqng` FOREIGN KEY (`creator_id`) REFERENCES `lut_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for settings_account
-- ----------------------------
DROP TABLE IF EXISTS `settings_account`;
CREATE TABLE `settings_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_g881gnlf3ayrsngr7tya4mpgi` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1085 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings_account
-- ----------------------------
INSERT INTO `settings_account` VALUES ('916', '100', 'Касс дахь мөнгө');
INSERT INTO `settings_account` VALUES ('917', '110', 'Банкин дахь мөнгө');
INSERT INTO `settings_account` VALUES ('918', '111', 'Мөнгөтэй адилтгах хөрөнгө');
INSERT INTO `settings_account` VALUES ('919', '120', 'Дансны авлага');
INSERT INTO `settings_account` VALUES ('920', '121', 'Найдваргүй авлагын хасагдуулга');
INSERT INTO `settings_account` VALUES ('921', '122', 'ААНОАТ-ын авлага');
INSERT INTO `settings_account` VALUES ('922', '123', 'НӨАТ-ын авлага');
INSERT INTO `settings_account` VALUES ('923', '124', 'НДШ–ийн авлага');
INSERT INTO `settings_account` VALUES ('924', '125', 'Бусад татварын авлага');
INSERT INTO `settings_account` VALUES ('925', '126', 'Холбоотой талаас авах авлага');
INSERT INTO `settings_account` VALUES ('926', '127', 'Ажиллагчдаас авах авлага');
INSERT INTO `settings_account` VALUES ('927', '128', 'Ногдол ашгийн авлага');
INSERT INTO `settings_account` VALUES ('928', '129', 'Хүүний авлага');
INSERT INTO `settings_account` VALUES ('929', '130', 'Богино хугацаат авлагын бичиг');
INSERT INTO `settings_account` VALUES ('930', '131', 'Бусад талуудаас авах авлага');
INSERT INTO `settings_account` VALUES ('931', '132', 'Бусад санхүүгийн хөрөнгө');
INSERT INTO `settings_account` VALUES ('932', '140', 'Түүхий эд материал');
INSERT INTO `settings_account` VALUES ('933', '141', 'Дуусаагүй үйлдвэрлэл');
INSERT INTO `settings_account` VALUES ('934', '150', 'Бэлэн бүтээгдэхүүн');
INSERT INTO `settings_account` VALUES ('935', '151', 'Бараа');
INSERT INTO `settings_account` VALUES ('936', '152', 'Хангамжийн материал');
INSERT INTO `settings_account` VALUES ('937', '180', 'Урьдчилж төлсөн зардал');
INSERT INTO `settings_account` VALUES ('938', '181', 'Урьдчилж төлсөн түрээс, даатгал');
INSERT INTO `settings_account` VALUES ('939', '182', 'Бэлтгэн нийлүүлэгчдэд төлсөн урьдчилгаа төлбөр');
INSERT INTO `settings_account` VALUES ('940', '190', 'Бусад эргэлтийн хөрөнгө');
INSERT INTO `settings_account` VALUES ('941', '191', 'Борлуулахаар эзэмшиж буй эргэлтийн бус хөрөнгө');
INSERT INTO `settings_account` VALUES ('942', '201', 'Газрын сайжруулалт');
INSERT INTO `settings_account` VALUES ('943', '202', 'Газрын сайжруулалтын элэгдэл');
INSERT INTO `settings_account` VALUES ('944', '203', 'Барилга, байгууламж');
INSERT INTO `settings_account` VALUES ('945', '204', 'Барилга, байгууламжын элэгдэл');
INSERT INTO `settings_account` VALUES ('946', '205', 'Машин, тоног төхөөрөмж');
INSERT INTO `settings_account` VALUES ('947', '206', 'Машин, тоног төхөөрөмжийн элэгдэл');
INSERT INTO `settings_account` VALUES ('948', '207', 'Тээврийн хэрэгсэл');
INSERT INTO `settings_account` VALUES ('949', '208', 'Тээврийн хэрэгсэлийн элэгдэл');
INSERT INTO `settings_account` VALUES ('950', '209', 'Тавилга эд хогшил');
INSERT INTO `settings_account` VALUES ('951', '210', 'Тавилга эд хогшилийн элэгдэл');
INSERT INTO `settings_account` VALUES ('952', '211', 'Компьютер, бусад хэрэгсэл');
INSERT INTO `settings_account` VALUES ('953', '212', 'Компьютер, бусад хэрэгсэлийн элэгдэл');
INSERT INTO `settings_account` VALUES ('954', '213', 'Бусад үндсэн хөрөнгө');
INSERT INTO `settings_account` VALUES ('955', '214', 'Бусад үндсэн хөрөнгийн элэгдэл');
INSERT INTO `settings_account` VALUES ('956', '221', 'Зохиогчийн эрх');
INSERT INTO `settings_account` VALUES ('957', '222', 'Зохиогчийн эрхийн хорогдол');
INSERT INTO `settings_account` VALUES ('958', '223', 'Компьютерийн программ хангамж');
INSERT INTO `settings_account` VALUES ('959', '224', 'Компьютерийн программ хангамжийн хорогдол');
INSERT INTO `settings_account` VALUES ('960', '225', 'Патент');
INSERT INTO `settings_account` VALUES ('961', '226', 'Патентын хорогдол');
INSERT INTO `settings_account` VALUES ('962', '227', 'Барааны тэмдэг');
INSERT INTO `settings_account` VALUES ('963', '228', 'Барааны тэмдэгийн хорогдол');
INSERT INTO `settings_account` VALUES ('964', '229', 'Тусгай зөвшөөрөл');
INSERT INTO `settings_account` VALUES ('965', '230', 'Тусгай зөвшөөрлийн хорогдол');
INSERT INTO `settings_account` VALUES ('966', '231', 'Газар эзэмших');
INSERT INTO `settings_account` VALUES ('967', '232', 'Газар эзэмшилтийн хорогдол');
INSERT INTO `settings_account` VALUES ('968', '233', 'Бусад биет бус хөрөнгө');
INSERT INTO `settings_account` VALUES ('969', '234', 'Бусад биет бус хөрөнгийн хорогдол');
INSERT INTO `settings_account` VALUES ('970', '240', 'Биологийн хөрөнгө');
INSERT INTO `settings_account` VALUES ('971', '250', 'Урт хугацаат  хөрөнгө оруулалт');
INSERT INTO `settings_account` VALUES ('972', '260', 'Хайгуул ба үнэлгээний хөрөнгө');
INSERT INTO `settings_account` VALUES ('973', '270', 'Хойшлогдсон татварын хөрөнгө');
INSERT INTO `settings_account` VALUES ('974', '280', 'Хөрөнгө оруулалтын үл хөдлөх хөрөнгө');
INSERT INTO `settings_account` VALUES ('975', '290', 'Бусад эргэлтийн бус хөрөнгө');
INSERT INTO `settings_account` VALUES ('976', '310', 'Дансны өглөг');
INSERT INTO `settings_account` VALUES ('977', '311', 'Цалингийн  өглөг');
INSERT INTO `settings_account` VALUES ('978', '321', 'ААНОАТ өр');
INSERT INTO `settings_account` VALUES ('979', '322', 'НӨАТ-ын өр');
INSERT INTO `settings_account` VALUES ('980', '323', 'ХХОАТ-ын өр');
INSERT INTO `settings_account` VALUES ('981', '324', 'ОАТ-ын өр');
INSERT INTO `settings_account` VALUES ('982', '325', 'Бусад татварын өр');
INSERT INTO `settings_account` VALUES ('983', '326', 'НӨАТ-ын өрийн хасагдуулга');
INSERT INTO `settings_account` VALUES ('984', '330', 'НДШ - ийн  өглөг');
INSERT INTO `settings_account` VALUES ('985', '331', 'Богино хугацаат зээл');
INSERT INTO `settings_account` VALUES ('986', '332', 'Хүүний  өглөг');
INSERT INTO `settings_account` VALUES ('987', '333', 'Ногдол ашгийн  өглөг');
INSERT INTO `settings_account` VALUES ('988', '334', 'Урьдчилж орсон орлого');
INSERT INTO `settings_account` VALUES ('989', '335', 'Баталгаат засварын өр');
INSERT INTO `settings_account` VALUES ('990', '336', 'Нөхөн сэргээлтийн өр');
INSERT INTO `settings_account` VALUES ('991', '337', 'Бусад богино хугацаат өр төлбөр');
INSERT INTO `settings_account` VALUES ('992', '338', 'Борлуулах зорилготой өр төлбөр');
INSERT INTO `settings_account` VALUES ('993', '341', 'Урт хугацаат зээл');
INSERT INTO `settings_account` VALUES ('994', '342', 'Урт хугацаат нөөц /өр төлбөр/');
INSERT INTO `settings_account` VALUES ('995', '343', 'Хойшлогдсон татварын өр');
INSERT INTO `settings_account` VALUES ('996', '344', 'Бусад урт хугацаат өр төлбөр');
INSERT INTO `settings_account` VALUES ('997', '401', 'Төрийн өмч');
INSERT INTO `settings_account` VALUES ('998', '402', 'Хувийн өмч');
INSERT INTO `settings_account` VALUES ('999', '403', 'Хувьцаат өмч');
INSERT INTO `settings_account` VALUES ('1000', '404', 'Халаасны хувьцаа');
INSERT INTO `settings_account` VALUES ('1001', '405', 'Нэмж төлөгдсөн капитал');
INSERT INTO `settings_account` VALUES ('1002', '406', 'Хөрөнгийн дахин үнэлгээний нэмэгдэл');
INSERT INTO `settings_account` VALUES ('1003', '407', 'Гадаад валютын хөрвүүлэлтийн нөөц');
INSERT INTO `settings_account` VALUES ('1004', '408', 'Эздийн өмчийн бусад хэсэг');
INSERT INTO `settings_account` VALUES ('1005', '409', 'Тайлант үеийн цэвэр ашиг (алдагдал)');
INSERT INTO `settings_account` VALUES ('1006', '410', 'НББ-ийн өөрчлөлтийн нөлөө, алдааны залруулга');
INSERT INTO `settings_account` VALUES ('1007', '411', 'Зарласан ногдол ашиг');
INSERT INTO `settings_account` VALUES ('1008', '412', 'Дахин үнэлгээний нэмэгдлийн хэрэгжсэн дүн');
INSERT INTO `settings_account` VALUES ('1009', '510', 'Бараа, бүтээгдэхүүн борлуулсны орлого');
INSERT INTO `settings_account` VALUES ('1010', '511', 'Ажил, үйлчилгээ борлуулсны орлого');
INSERT INTO `settings_account` VALUES ('1011', '512', 'Борлуулалтын буцаалт, хөнгөлөлт, үнийн бууралт (-)');
INSERT INTO `settings_account` VALUES ('1012', '513', 'Түрээсийн орлого');
INSERT INTO `settings_account` VALUES ('1013', '514', 'Хүүний орлого');
INSERT INTO `settings_account` VALUES ('1014', '515', 'Ногдол ашгийн орлого');
INSERT INTO `settings_account` VALUES ('1015', '516', 'Эрхийн шимтгэлийн орлого');
INSERT INTO `settings_account` VALUES ('1016', '517', 'Даатгалын нөхөн олговроос авсан орлого');
INSERT INTO `settings_account` VALUES ('1017', '518', 'Буцаан авсан албан татвар');
INSERT INTO `settings_account` VALUES ('1018', '519', 'Татаас, санхүүжилтийн орлого');
INSERT INTO `settings_account` VALUES ('1019', '520', 'Төрөл бүрийн хандив');
INSERT INTO `settings_account` VALUES ('1020', '521', 'Бусад орлого');
INSERT INTO `settings_account` VALUES ('1021', '610', 'Борлуулсан бараа, бүтээгдэхүүний өртөг');
INSERT INTO `settings_account` VALUES ('1022', '611', 'Борлуулсан ажил, үйлчилгээний өртөг');
INSERT INTO `settings_account` VALUES ('1023', '701', 'Ажиллагчдын цалингийн зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1024', '702', 'Аж ахуйн нэгжээс төлсөн НДШ-ийн зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1025', '703', 'Албан татвар, төлбөр, хураамжийн зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1026', '704', 'Томилолтын зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1027', '705', 'Бичиг хэргийн зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1028', '706', 'Шуудан холбооны зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1029', '707', 'Мэргэжлийн үйлчилгээний зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1030', '708', 'Сургалтын  зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1031', '709', 'Сонин сэтгүүл захиалгын  зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1032', '710', 'Даатгалын зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1033', '711', 'Ашиглалтын зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1034', '712', 'Засварын зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1035', '713', 'Элэгдэл, хорогдлын зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1036', '714', 'Түрээсийн зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1037', '715', 'Харуул хамгааллын зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1038', '716', 'Цэвэрлэгээ үйлчилгээний зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1039', '717', 'Тээврийн зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1040', '718', 'Шатахууны зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1041', '719', 'Хүлээн авалтын зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1042', '720', 'Зар сурталчилгааны зардал /БМЗ/');
INSERT INTO `settings_account` VALUES ('1043', '721', 'Ажиллагчдын цалингийн зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1044', '722', 'Аж ахуйн нэгжээс төлсөн НДШ-ийн зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1045', '723', 'Албан татвар, төлбөр, хураамжийн зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1046', '724', 'Томилолтын зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1047', '725', 'Бичиг хэргийн зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1048', '726', 'Шуудан холбооны зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1049', '727', 'Мэргэжлийн үйлчилгээний зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1050', '728', 'Сургалтын  зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1051', '729', 'Сонин сэтгүүл захиалгын  зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1052', '730', 'Даатгалын зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1053', '731', 'Ашиглалтын зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1054', '732', 'Засварын зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1055', '733', 'Элэгдэл, хорогдлын зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1056', '734', 'Түрээсийн зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1057', '735', 'Харуул хамгааллын зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1058', '736', 'Цэвэрлэгээ үйлчилгээний зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1059', '737', 'Тээврийн зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1060', '738', 'Шатахууны зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1061', '739', 'Хүлээн авалтын зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1062', '740', 'Зар сурталчилгааны зардал /ЕУЗ/');
INSERT INTO `settings_account` VALUES ('1063', '750', 'Санхүүгийн зардал');
INSERT INTO `settings_account` VALUES ('1064', '811', 'Алданги, торгуулийн зардал');
INSERT INTO `settings_account` VALUES ('1065', '812', 'Найдваргүй авлагын зардал');
INSERT INTO `settings_account` VALUES ('1066', '813', 'Хандивийн зардал');
INSERT INTO `settings_account` VALUES ('1067', '821', 'Мөнгөн хөрөнгийн үлдэгдэлд хийсэн ханшийн зөрүү');
INSERT INTO `settings_account` VALUES ('1068', '822', 'Эргэлтийн авлага, өр төлбөрөөс  үүссэн ханшийн зөрүү');
INSERT INTO `settings_account` VALUES ('1069', '823', 'Эргэлтийн бус авлага, өр төлбөрөөс  үүссэн ханшийн зөрүү');
INSERT INTO `settings_account` VALUES ('1070', '824', 'Валютын арилжаанаас үүссэн олз/гарз');
INSERT INTO `settings_account` VALUES ('1071', '841', 'Үндсэн хөрөнгө данснаас хассаны олз (гарз)');
INSERT INTO `settings_account` VALUES ('1072', '842', 'Биет бус хөрөнгө данснаас хассаны олз (гарз)');
INSERT INTO `settings_account` VALUES ('1073', '843', 'Хөрөнгө оруулалт борлуулснаас үүссэн  олз (гарз)');
INSERT INTO `settings_account` VALUES ('1074', '871', 'Хөрөнгийн үнэ цэнийн бууралтын гарз');
INSERT INTO `settings_account` VALUES ('1075', '872', 'ХОЗҮХХ -ийн  бодит үнэ цэнийн өөрчлөлтийн олз, гарз');
INSERT INTO `settings_account` VALUES ('1076', '873', 'ХОЗҮХХ данснаас хассаны олз, гарз');
INSERT INTO `settings_account` VALUES ('1077', '874', 'Хөрөнгийн дахин үнэлгээний олз, гарз');
INSERT INTO `settings_account` VALUES ('1078', '875', 'Хөрөнгийн үнэ цэнийн бууралтын гарз (гарзын буцаалт)');
INSERT INTO `settings_account` VALUES ('1079', '910', 'Орлогын татварын зардал');
INSERT INTO `settings_account` VALUES ('1080', '911', 'Зогсоосон үйл ажиллагааны дараах ашиг (алдагдал)');
INSERT INTO `settings_account` VALUES ('1081', '912', 'Хөрөнгийн дахин үнэлгээний нэмэгдлийн зөрүү');
INSERT INTO `settings_account` VALUES ('1082', '913', 'Гадаад валютын хөрвүүлэлтийн зөрүү');
INSERT INTO `settings_account` VALUES ('1083', '914', 'Бусад олз (гарз)');
INSERT INTO `settings_account` VALUES ('1084', '915', 'Орлого зардлын нэгдсэн данс');

-- ----------------------------
-- Table structure for settings_account_detail
-- ----------------------------
DROP TABLE IF EXISTS `settings_account_detail`;
CREATE TABLE `settings_account_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlk712xqcka6b7msorhgahaxka` (`parentcode`),
  CONSTRAINT `FKlk712xqcka6b7msorhgahaxka` FOREIGN KEY (`parentcode`) REFERENCES `settings_account` (`code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings_account_detail
-- ----------------------------
INSERT INTO `settings_account_detail` VALUES ('2', '100100', 'Касс дахь мөнгө', '100');
INSERT INTO `settings_account_detail` VALUES ('3', '100200', 'Касс дахь Доллар', '100');
INSERT INTO `settings_account_detail` VALUES ('4', '110100', 'Банкин дахь мөнгө', '110');
INSERT INTO `settings_account_detail` VALUES ('5', '110101', 'Банкин дахь мөнгө', '110');
INSERT INTO `settings_account_detail` VALUES ('6', '111100', 'Мөнгөтэй адилтгах хөрөнгө', '111');
INSERT INTO `settings_account_detail` VALUES ('7', '120100', 'Дансны авлага', '120');
INSERT INTO `settings_account_detail` VALUES ('8', '120200', 'Авлага', '120');
INSERT INTO `settings_account_detail` VALUES ('9', '121100', 'Найдваргүй авлагын хасагдуулга', '121');
INSERT INTO `settings_account_detail` VALUES ('10', '122100', 'ААНОАТ-ын авлага', '122');
INSERT INTO `settings_account_detail` VALUES ('11', '123100', 'НӨАТ-ын авлага', '123');
INSERT INTO `settings_account_detail` VALUES ('12', '124100', 'НДШ – ийн авлага', '124');
INSERT INTO `settings_account_detail` VALUES ('13', '125100', 'Бусад татварын авлага', '125');
INSERT INTO `settings_account_detail` VALUES ('14', '126100', 'Холбоотой талаас авах авлага', '126');
INSERT INTO `settings_account_detail` VALUES ('15', '127100', 'Ажиллагчдаас авах авлага', '127');
INSERT INTO `settings_account_detail` VALUES ('16', '128100', 'Ногдол ашгийн авлага', '128');
INSERT INTO `settings_account_detail` VALUES ('17', '129100', 'Хүүний авлага', '129');
INSERT INTO `settings_account_detail` VALUES ('18', '130100', 'Богино хугацаат авлагын бичиг', '130');
INSERT INTO `settings_account_detail` VALUES ('19', '131100', 'Бусад талуудаас авах авлага', '131');
INSERT INTO `settings_account_detail` VALUES ('20', '132100', 'Бусад санхүүгийн хөрөнгө', '132');
INSERT INTO `settings_account_detail` VALUES ('21', '140100', 'Түүхий эд материал', '140');
INSERT INTO `settings_account_detail` VALUES ('22', '141100', 'Дуусаагүй үйлдвэрлэл', '141');
INSERT INTO `settings_account_detail` VALUES ('23', '150100', 'Бараа материал', '150');
INSERT INTO `settings_account_detail` VALUES ('24', '151100', 'Бараа', '151');
INSERT INTO `settings_account_detail` VALUES ('25', '152100', 'Хангамжийн материал', '152');
INSERT INTO `settings_account_detail` VALUES ('26', '180100', 'Урьдчилж төлсөн цалин', '180');
INSERT INTO `settings_account_detail` VALUES ('27', '181100', 'Урьдчилж төлсөн түрээс, даатгал', '181');
INSERT INTO `settings_account_detail` VALUES ('28', '182100', 'Бэлтгэн нийлүүлэгчдэд төлсөн урьдчилгаа төлбөр', '182');
INSERT INTO `settings_account_detail` VALUES ('29', '190100', 'Бусад эргэлтийн хөрөнгө', '190');
INSERT INTO `settings_account_detail` VALUES ('30', '191100', 'Борлуулахаар эзэмшиж буй эргэлтийн бус хөрөнгө', '191');
INSERT INTO `settings_account_detail` VALUES ('31', '201100', 'Газрын сайжруулалт', '201');
INSERT INTO `settings_account_detail` VALUES ('32', '202100', 'Газрын сайжруулалтын элэгдэл', '202');
INSERT INTO `settings_account_detail` VALUES ('33', '203100', 'Барилга, байгууламж', '203');
INSERT INTO `settings_account_detail` VALUES ('34', '204100', 'Барилга, байгууламжын элэгдэл', '204');
INSERT INTO `settings_account_detail` VALUES ('35', '205100', 'Машин, тоног төхөөрөмж', '205');
INSERT INTO `settings_account_detail` VALUES ('36', '206100', 'Машин, тоног төхөөрөмжийн элэгдэл', '206');
INSERT INTO `settings_account_detail` VALUES ('37', '207100', 'Тээврийн хэрэгсэл', '207');
INSERT INTO `settings_account_detail` VALUES ('38', '208100', 'Тээврийн хэрэгсэлийн элэгдэл', '208');
INSERT INTO `settings_account_detail` VALUES ('39', '209100', 'Тавилга эд хогшил', '209');
INSERT INTO `settings_account_detail` VALUES ('40', '210100', 'Тавилга эд хогшилийн элэгдэл', '210');
INSERT INTO `settings_account_detail` VALUES ('41', '211100', 'Компьютер, бусад хэрэгсэл', '211');
INSERT INTO `settings_account_detail` VALUES ('42', '212100', 'Компьютер, бусад хэрэгсэлийн элэгдэл', '212');
INSERT INTO `settings_account_detail` VALUES ('43', '213100', 'Бусад үндсэн хөрөнгө', '213');
INSERT INTO `settings_account_detail` VALUES ('44', '214100', 'Бусад үндсэн хөрөнгийн элэгдэл', '214');
INSERT INTO `settings_account_detail` VALUES ('45', '221100', 'Зохиогчийн эрх', '221');
INSERT INTO `settings_account_detail` VALUES ('46', '222100', 'Зохиогчийн эрхийн хорогдол', '222');
INSERT INTO `settings_account_detail` VALUES ('47', '223100', 'Компьютерийн программ хангамж', '223');
INSERT INTO `settings_account_detail` VALUES ('48', '224100', 'Компьютерийн программ хангамжийн хорогдол', '224');
INSERT INTO `settings_account_detail` VALUES ('49', '225100', 'Патент', '225');
INSERT INTO `settings_account_detail` VALUES ('50', '226100', 'Патентын хорогдол', '226');
INSERT INTO `settings_account_detail` VALUES ('51', '227100', 'Барааны тэмдэг', '227');
INSERT INTO `settings_account_detail` VALUES ('52', '228100', 'Барааны тэмдэгийн хорогдол', '228');
INSERT INTO `settings_account_detail` VALUES ('53', '229100', 'Тусгай зөвшөөрөл', '229');
INSERT INTO `settings_account_detail` VALUES ('54', '230100', 'Тусгай зөвшөөрлийн хорогдол', '230');
INSERT INTO `settings_account_detail` VALUES ('55', '231100', 'Газар эзэмших', '231');
INSERT INTO `settings_account_detail` VALUES ('56', '232100', 'Газар эзэмшилтийн хорогдол', '232');
INSERT INTO `settings_account_detail` VALUES ('57', '233100', 'Бусад биет бус хөрөнгө', '233');
INSERT INTO `settings_account_detail` VALUES ('58', '234100', 'Бусад биет бус хөрөнгийн хорогдол', '234');
INSERT INTO `settings_account_detail` VALUES ('59', '240100', 'Биологийн хөрөнгө', '240');
INSERT INTO `settings_account_detail` VALUES ('60', '250100', 'Урт хугацаат  хөрөнгө оруулалт', '250');
INSERT INTO `settings_account_detail` VALUES ('61', '260100', 'Хайгуул ба үнэлгээний хөрөнгө', '260');
INSERT INTO `settings_account_detail` VALUES ('62', '270100', 'Хойшлогдсон татварын хөрөнгө', '270');
INSERT INTO `settings_account_detail` VALUES ('63', '280100', 'Хөрөнгө оруулалтын үл хөдлөх хөрөнгө', '280');
INSERT INTO `settings_account_detail` VALUES ('64', '290100', 'Бусад эргэлтийн бус хөрөнгө', '290');
INSERT INTO `settings_account_detail` VALUES ('65', '310100', 'Дансны өглөг', '310');
INSERT INTO `settings_account_detail` VALUES ('66', '310200', 'Өглөг', '310');
INSERT INTO `settings_account_detail` VALUES ('67', '311100', 'Цалингийн  өглөг', '311');
INSERT INTO `settings_account_detail` VALUES ('68', '321100', 'ААНОАТ өр', '321');
INSERT INTO `settings_account_detail` VALUES ('69', '322100', 'НӨАТ-ын өр', '322');
INSERT INTO `settings_account_detail` VALUES ('70', '323100', 'ХХОАТ-ын өр', '323');
INSERT INTO `settings_account_detail` VALUES ('71', '324100', 'ОАТ-ын өр', '324');
INSERT INTO `settings_account_detail` VALUES ('72', '325100', 'Бусад татварын өр', '325');
INSERT INTO `settings_account_detail` VALUES ('73', '326100', 'НӨАТ-ын өрийн хасагдуулга', '326');
INSERT INTO `settings_account_detail` VALUES ('74', '330100', 'НДШ - ийн  өглөг', '330');
INSERT INTO `settings_account_detail` VALUES ('75', '331100', 'Богино хугацаат зээл', '331');
INSERT INTO `settings_account_detail` VALUES ('76', '332100', 'Хүүний  өглөг', '332');
INSERT INTO `settings_account_detail` VALUES ('77', '333100', 'Ногдол ашгийн  өглөг', '333');
INSERT INTO `settings_account_detail` VALUES ('78', '334100', 'Урьдчилж орсон орлого', '334');
INSERT INTO `settings_account_detail` VALUES ('79', '335100', 'Баталгаат засварын өр', '335');
INSERT INTO `settings_account_detail` VALUES ('80', '336100', 'Нөхөн сэргээлтийн өр', '336');
INSERT INTO `settings_account_detail` VALUES ('81', '337100', 'Бусад богино хугацаат өр төлбөр', '337');
INSERT INTO `settings_account_detail` VALUES ('82', '338100', 'Борлуулах зорилготой өр төлбөр', '338');
INSERT INTO `settings_account_detail` VALUES ('83', '341100', 'Урт хугацаат зээл', '341');
INSERT INTO `settings_account_detail` VALUES ('84', '342100', 'Урт хугацаат нөөц /өр төлбөр/', '342');
INSERT INTO `settings_account_detail` VALUES ('85', '343100', 'Хойшлогдсон татварын өр', '343');
INSERT INTO `settings_account_detail` VALUES ('86', '344100', 'Бусад урт хугацаат өр төлбөр', '344');
INSERT INTO `settings_account_detail` VALUES ('87', '401100', 'Төрийн өмч', '401');
INSERT INTO `settings_account_detail` VALUES ('88', '402100', 'Хувийн өмч', '402');
INSERT INTO `settings_account_detail` VALUES ('89', '403100', 'Хувьцаат өмч', '403');
INSERT INTO `settings_account_detail` VALUES ('90', '404100', 'Халаасны хувьцаа', '404');
INSERT INTO `settings_account_detail` VALUES ('91', '405100', 'Нэмж төлөгдсөн капитал', '405');
INSERT INTO `settings_account_detail` VALUES ('92', '406100', 'Хөрөнгийн дахин үнэлгээний нэмэгдэл', '406');
INSERT INTO `settings_account_detail` VALUES ('93', '407100', 'Гадаад валютын хөрвүүлэлтийн нөөц', '407');
INSERT INTO `settings_account_detail` VALUES ('94', '408100', 'Эздийн өмчийн бусад хэсэг', '408');
INSERT INTO `settings_account_detail` VALUES ('95', '409100', 'Тайлант үеийн цэвэр ашиг (алдагдал)', '409');
INSERT INTO `settings_account_detail` VALUES ('96', '410100', 'НББ-ийн өөрчлөлтийн нөлөө, алдааны залруулга', '410');
INSERT INTO `settings_account_detail` VALUES ('97', '411100', 'Зарласан ногдол ашиг', '411');
INSERT INTO `settings_account_detail` VALUES ('98', '412100', 'Дахин үнэлгээний нэмэгдлийн хэрэгжсэн дүн', '412');
INSERT INTO `settings_account_detail` VALUES ('99', '510100', 'Бараа, бүтээгдэхүүн борлуулсны орлого', '510');
INSERT INTO `settings_account_detail` VALUES ('100', '511100', 'Ажил, үйлчилгээ борлуулсны орлого', '511');
INSERT INTO `settings_account_detail` VALUES ('101', '512100', 'Борлуулалтын буцаалт, хөнгөлөлт, үнийн бууралт (-)', '512');
INSERT INTO `settings_account_detail` VALUES ('102', '513100', 'Түрээсийн орлого', '513');
INSERT INTO `settings_account_detail` VALUES ('103', '514100', 'Хүүний орлого', '514');
INSERT INTO `settings_account_detail` VALUES ('104', '515100', 'Ногдол ашгийн орлого', '515');
INSERT INTO `settings_account_detail` VALUES ('105', '516100', 'Эрхийн шимтгэлийн орлого', '516');
INSERT INTO `settings_account_detail` VALUES ('106', '517100', 'Даатгалын нөхөн олговроос авсан орлого', '517');
INSERT INTO `settings_account_detail` VALUES ('107', '518100', 'Буцаан авсан албан татвар', '518');
INSERT INTO `settings_account_detail` VALUES ('108', '519100', 'Татаас, санхүүжилтийн орлого', '519');
INSERT INTO `settings_account_detail` VALUES ('109', '520100', 'Төрөл бүрийн хандив', '520');
INSERT INTO `settings_account_detail` VALUES ('110', '521100', 'Бусад орлого', '521');
INSERT INTO `settings_account_detail` VALUES ('111', '610100', 'Борлуулсан бараа, бүтээгдэхүүний өртөг', '610');
INSERT INTO `settings_account_detail` VALUES ('112', '611100', 'Борлуулсан ажил, үйлчилгээний өртөг', '611');
INSERT INTO `settings_account_detail` VALUES ('113', '701100', 'Ажиллагчдын цалингийн зардал /БМЗ/', '701');
INSERT INTO `settings_account_detail` VALUES ('114', '702100', 'Аж ахуйн нэгжээс төлсөн НДШ-ийн зардал /БМЗ/', '702');
INSERT INTO `settings_account_detail` VALUES ('115', '703100', 'Албан татвар, төлбөр, хураамжийн зардал /БМЗ/', '703');
INSERT INTO `settings_account_detail` VALUES ('116', '704100', 'Томилолтын зардал /БМЗ/', '704');
INSERT INTO `settings_account_detail` VALUES ('117', '705100', 'Бичиг хэргийн зардал /БМЗ/', '705');
INSERT INTO `settings_account_detail` VALUES ('118', '706100', 'Шуудан холбооны зардал /БМЗ/', '706');
INSERT INTO `settings_account_detail` VALUES ('119', '707100', 'Мэргэжлийн үйлчилгээний зардал /БМЗ/', '707');
INSERT INTO `settings_account_detail` VALUES ('120', '708100', 'Сургалтын  зардал /БМЗ/', '708');
INSERT INTO `settings_account_detail` VALUES ('121', '709100', 'Сонин сэтгүүл захиалгын  зардал /БМЗ/', '709');
INSERT INTO `settings_account_detail` VALUES ('122', '710100', 'Даатгалын зардал /БМЗ/', '710');
INSERT INTO `settings_account_detail` VALUES ('123', '711100', 'Ашиглалтын зардал /БМЗ/', '711');
INSERT INTO `settings_account_detail` VALUES ('124', '712100', 'Засварын зардал /БМЗ/', '712');
INSERT INTO `settings_account_detail` VALUES ('125', '713100', 'Элэгдэл, хорогдлын зардал /БМЗ/', '713');
INSERT INTO `settings_account_detail` VALUES ('126', '714100', 'Түрээсийн зардал /БМЗ/', '714');
INSERT INTO `settings_account_detail` VALUES ('127', '715100', 'Харуул хамгааллын зардал /БМЗ/', '715');
INSERT INTO `settings_account_detail` VALUES ('128', '716100', 'Цэвэрлэгээ үйлчилгээний зардал /БМЗ/', '716');
INSERT INTO `settings_account_detail` VALUES ('129', '717100', 'Тээврийн зардал /БМЗ/', '717');
INSERT INTO `settings_account_detail` VALUES ('130', '718100', 'Шатахууны зардал /БМЗ/', '718');
INSERT INTO `settings_account_detail` VALUES ('131', '719100', 'Хүлээн авалтын зардал /БМЗ/', '719');
INSERT INTO `settings_account_detail` VALUES ('132', '720100', 'Зар сурталчилгааны зардал /БМЗ/', '720');
INSERT INTO `settings_account_detail` VALUES ('133', '721100', 'Ажиллагчдын цалингийн зардал /ЕУЗ/', '721');
INSERT INTO `settings_account_detail` VALUES ('134', '722100', 'Аж ахуйн нэгжээс төлсөн НДШ-ийн зардал /ЕУЗ/', '722');
INSERT INTO `settings_account_detail` VALUES ('135', '723100', 'Албан татвар, төлбөр, хураамжийн зардал /ЕУЗ/', '723');
INSERT INTO `settings_account_detail` VALUES ('136', '724100', 'Томилолтын зардал /ЕУЗ/', '724');
INSERT INTO `settings_account_detail` VALUES ('137', '725100', 'Бичиг хэргийн зардал /ЕУЗ/', '725');
INSERT INTO `settings_account_detail` VALUES ('138', '726100', 'Шуудан холбооны зардал /ЕУЗ/', '726');
INSERT INTO `settings_account_detail` VALUES ('139', '727100', 'Мэргэжлийн үйлчилгээний зардал /ЕУЗ/', '727');
INSERT INTO `settings_account_detail` VALUES ('140', '728100', 'Сургалтын  зардал /ЕУЗ/', '728');
INSERT INTO `settings_account_detail` VALUES ('141', '729100', 'Сонин сэтгүүл захиалгын  зардал /ЕУЗ/', '729');
INSERT INTO `settings_account_detail` VALUES ('142', '730100', 'Даатгалын зардал /ЕУЗ/', '730');
INSERT INTO `settings_account_detail` VALUES ('143', '731100', 'Ашиглалтын зардал /ЕУЗ/', '731');
INSERT INTO `settings_account_detail` VALUES ('144', '732100', 'Засварын зардал /ЕУЗ/', '732');
INSERT INTO `settings_account_detail` VALUES ('145', '733100', 'Элэгдэл, хорогдлын зардал /ЕУЗ/', '733');
INSERT INTO `settings_account_detail` VALUES ('146', '734100', 'Түрээсийн зардал /ЕУЗ/', '734');
INSERT INTO `settings_account_detail` VALUES ('147', '735100', 'Харуул хамгааллын зардал /ЕУЗ/', '735');
INSERT INTO `settings_account_detail` VALUES ('148', '736100', 'Цэвэрлэгээ үйлчилгээний зардал /ЕУЗ/', '736');
INSERT INTO `settings_account_detail` VALUES ('149', '737100', 'Тээврийн зардал /ЕУЗ/', '737');
INSERT INTO `settings_account_detail` VALUES ('150', '738100', 'Шатахууны зардал /ЕУЗ/', '738');
INSERT INTO `settings_account_detail` VALUES ('151', '739100', 'Хүлээн авалтын зардал /ЕУЗ/', '739');
INSERT INTO `settings_account_detail` VALUES ('152', '740100', 'Зар сурталчилгааны зардал /ЕУЗ/', '740');
INSERT INTO `settings_account_detail` VALUES ('153', '750100', 'Санхүүгийн зардал', '750');
INSERT INTO `settings_account_detail` VALUES ('154', '811100', 'Алданги, торгуулийн зардал', '811');
INSERT INTO `settings_account_detail` VALUES ('155', '812100', 'Найдваргүй авлагын зардал', '812');
INSERT INTO `settings_account_detail` VALUES ('156', '813100', 'Хандивийн зардал', '813');
INSERT INTO `settings_account_detail` VALUES ('157', '821100', 'Мөнгөн хөрөнгийн үлдэгдэлд хийсэн ханшийн зөрүү', '821');
INSERT INTO `settings_account_detail` VALUES ('158', '822100', 'Эргэлтийн авлага, өр төлбөрөөс  үүссэн ханшийн зөрүү', '822');
INSERT INTO `settings_account_detail` VALUES ('159', '823100', 'Эргэлтийн бус авлага, өр төлбөрөөс  үүссэн ханшийн зөрүү', '823');
INSERT INTO `settings_account_detail` VALUES ('160', '824100', 'Валютын арилжаанаас үүссэн олз/гарз', '824');
INSERT INTO `settings_account_detail` VALUES ('161', '841100', 'Үндсэн хөрөнгө данснаас хассаны олз (гарз)', '841');
INSERT INTO `settings_account_detail` VALUES ('162', '842100', 'Биет бус хөрөнгө данснаас хассаны олз (гарз)', '842');
INSERT INTO `settings_account_detail` VALUES ('163', '843100', 'Хөрөнгө оруулалт борлуулснаас үүссэн  олз (гарз)', '843');
INSERT INTO `settings_account_detail` VALUES ('164', '871100', 'Хөрөнгийн үнэ цэнийн бууралтын гарз', '871');
INSERT INTO `settings_account_detail` VALUES ('165', '872100', 'ХОЗҮХХ -ийн  бодит үнэ цэнийн өөрчлөлтийн олз, гарз', '872');
INSERT INTO `settings_account_detail` VALUES ('166', '873100', 'ХОЗҮХХ данснаас хассаны олз, гарз', '873');
INSERT INTO `settings_account_detail` VALUES ('167', '874100', 'Хөрөнгийн дахин үнэлгээний олз, гарз', '874');
INSERT INTO `settings_account_detail` VALUES ('168', '875100', 'Хөрөнгийн үнэ цэнийн бууралтын гарз (гарзын буцаалт)', '875');
INSERT INTO `settings_account_detail` VALUES ('169', '910100', 'Орлогын татварын зардал', '910');
INSERT INTO `settings_account_detail` VALUES ('170', '911100', 'Зогсоосон үйл ажиллагааны дараах ашиг (алдагдал)', '911');
INSERT INTO `settings_account_detail` VALUES ('171', '912100', 'Хөрөнгийн дахин үнэлгээний нэмэгдлийн зөрүү', '912');
INSERT INTO `settings_account_detail` VALUES ('172', '913100', 'Гадаад валютын хөрвүүлэлтийн зөрүү', '913');
INSERT INTO `settings_account_detail` VALUES ('173', '914100', 'Бусад олз (гарз)', '914');
INSERT INTO `settings_account_detail` VALUES ('174', '915100', 'Орлого зардлын нэгдсэн данс', '915');
INSERT INTO `settings_account_detail` VALUES ('175', null, null, null);

-- ----------------------------
-- Table structure for settings_egno
-- ----------------------------
DROP TABLE IF EXISTS `settings_egno`;
CREATE TABLE `settings_egno` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `autoinc` bit(1) NOT NULL,
  `egno` int(11) NOT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKho3o9vxeggg1vbt4de30intrj` (`org_id`),
  CONSTRAINT `FKho3o9vxeggg1vbt4de30intrj` FOREIGN KEY (`org_id`) REFERENCES `lut_cmm_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings_egno
-- ----------------------------
INSERT INTO `settings_egno` VALUES ('1', '', '14', '1');

-- ----------------------------
-- Table structure for settings_mean
-- ----------------------------
DROP TABLE IF EXISTS `settings_mean`;
CREATE TABLE `settings_mean` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `mean` varchar(255) DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcq28x4lx7nhvj5f6209ememgl` (`org_id`),
  CONSTRAINT `FKcq28x4lx7nhvj5f6209ememgl` FOREIGN KEY (`org_id`) REFERENCES `lut_cmm_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings_mean
-- ----------------------------
INSERT INTO `settings_mean` VALUES ('1', '233', '234333', '3');
INSERT INTO `settings_mean` VALUES ('2', '234665', '234', '3');

-- ----------------------------
-- Table structure for settings_mgt_base
-- ----------------------------
DROP TABLE IF EXISTS `settings_mgt_base`;
CREATE TABLE `settings_mgt_base` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings_mgt_base
-- ----------------------------
INSERT INTO `settings_mgt_base` VALUES ('1', '510,511,512,120,121', 'Бараа борлуулсан, үйлчилгээ үзүүлсний орлого');
INSERT INTO `settings_mgt_base` VALUES ('2', '516', 'Эрхийн шимтгэл, хураамж, төлбөрийн орлого');
INSERT INTO `settings_mgt_base` VALUES ('3', '517', 'Даатгалын нөхвөрөөс хүлээн авсан мөнгө');
INSERT INTO `settings_mgt_base` VALUES ('4', '518', 'Буцаан авсан албан татвар');
INSERT INTO `settings_mgt_base` VALUES ('5', '519', 'Татаас, санхүүжилтийн орлого');
INSERT INTO `settings_mgt_base` VALUES ('6', '521,513', 'Бусад мөнгөн орлого');
INSERT INTO `settings_mgt_base` VALUES ('7', '701,721,311,180', 'Ажиллагчдад төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('8', '702,722,330,124', 'Нийгмийн даатгалын байгууллагад төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('9', '140,141,150,151,152,310', 'Бараа материал худалдан авахад төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('10', '711,731', 'Ашиглалтын зардалд төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('11', '718,738,717,737', 'Түлш шатахуун, тээврийн хөлс, сэлбэг хэрэгсэлд төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('12', '332', 'Хүүний төлбөрт төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('13', '122,123,125,321,322,323,324,325,703,723,270,343,910', 'Татварын байгууллагад төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('14', '710,730', 'Даатгалын төлбөрт төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('15', '714,724,725.726,727,728,729,732,733,734,735,736,739,740,750,132,190,191,811,812,813,824', 'Бусад мөнгөн зарлага');
INSERT INTO `settings_mgt_base` VALUES ('16', '201,202,203,204,205,206,207,208,209,210,211,212,213,214,841', 'Үндсэн хөрөнгө борлуулсны орлого');
INSERT INTO `settings_mgt_base` VALUES ('17', '221,222,223,224,225,226,227,228,229,230,231,232,233,234,240,842', 'Биет бус хөрөнгө борлуулсны орлого');
INSERT INTO `settings_mgt_base` VALUES ('18', '250,843', 'Хөрөнгө оруулалт борлуулсны орлого');
INSERT INTO `settings_mgt_base` VALUES ('19', '260,280,290', 'Бусад урт хугацаат хөрөнгө борлуулсны орлого');
INSERT INTO `settings_mgt_base` VALUES ('20', '126,127,128,129,130,131,181,182,334', 'Бусдад олгосон зээл, мөнгөн   урьдчилгааны буцаан төлөлт');
INSERT INTO `settings_mgt_base` VALUES ('21', '514', 'Хүлээн авсан хүүний орлого');
INSERT INTO `settings_mgt_base` VALUES ('22', '128,515', 'Хүлээн авсан ногдол ашиг');
INSERT INTO `settings_mgt_base` VALUES ('23', '201,202,203,204,205,206,207,208,209,210,211,212,213,214', 'Үндсэн хөрөнгө олж эзэмшихэд төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('24', '221,222,223,224,225,226,227,228,229,230,231,232,233,234,240', 'Биет бус хөрөнгө олж эзэмшихэд төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('25', '250', 'Хөрөнгө оруулалт олж эзэмшихэд төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('26', '260,280,290', 'Бусад урт хугацаат хөрөнгө олж эзэмшихэд төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('27', '181,182,334', 'Бусдад олгосон зээл болон урьдчилгаа');
INSERT INTO `settings_mgt_base` VALUES ('28', '331,335,336,337,338,341,342,344', 'Зээл авсан, өрийн үнэт цаас гаргаснаас хүлээн авсан');
INSERT INTO `settings_mgt_base` VALUES ('29', '401,402,403,404,405', 'Хувьцаа болон өмчийн бусад үнэт цаас гаргаснаас хүлээн авсан');
INSERT INTO `settings_mgt_base` VALUES ('30', '520', 'Төрөл бүрийн хандив');
INSERT INTO `settings_mgt_base` VALUES ('31', '331,335,336,337,338,341,342,344', 'Зээл, өрийн үнэт цаасны төлбөрт төлсөн мөнгө');
INSERT INTO `settings_mgt_base` VALUES ('32', '0', 'Санхүүгийн түрээсийн өглөгт төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('33', '403,404', 'Хувьцаа буцаан худалдаж авахад төлсөн');
INSERT INTO `settings_mgt_base` VALUES ('34', '333,411', 'Төлсөн ногдол ашиг');

-- ----------------------------
-- Table structure for settings_mgt_company
-- ----------------------------
DROP TABLE IF EXISTS `settings_mgt_company`;
CREATE TABLE `settings_mgt_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `orgid` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4c7dbdh58hmsljx2edqu0j0dr` (`orgid`),
  CONSTRAINT `FK4c7dbdh58hmsljx2edqu0j0dr` FOREIGN KEY (`orgid`) REFERENCES `lut_cmm_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings_mgt_company
-- ----------------------------
INSERT INTO `settings_mgt_company` VALUES ('1', 'fsdf', 'ddd', '3');

-- ----------------------------
-- Table structure for settings_tax
-- ----------------------------
DROP TABLE IF EXISTS `settings_tax`;
CREATE TABLE `settings_tax` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `annoat` int(11) NOT NULL,
  `haoat` int(11) NOT NULL,
  `haoathungulult` int(11) NOT NULL,
  `ndshorg` int(11) NOT NULL,
  `ndshsalary` int(11) NOT NULL,
  `ndshsalarytopercent` int(11) NOT NULL,
  `ndshsalaryuptopercent` int(11) NOT NULL,
  `nuat` int(11) NOT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbisy81itjslbbshmba8gb5abw` (`org_id`),
  CONSTRAINT `FKbisy81itjslbbshmba8gb5abw` FOREIGN KEY (`org_id`) REFERENCES `lut_cmm_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings_tax
-- ----------------------------
INSERT INTO `settings_tax` VALUES ('3', '1', '1', '1', '0', '0', '0', '0', '0', '3');
INSERT INTO `settings_tax` VALUES ('4', '234', '0', '0', '0', '234', '0', '0', '23433', '1');
SET FOREIGN_KEY_CHECKS=1;
