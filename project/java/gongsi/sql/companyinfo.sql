/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : localhost:3306
 Source Schema         : companyinfo

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 30/12/2021 13:19:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `kindID` int(0) NOT NULL,
  `kindname` char(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `description` char(40) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '饮料', '软饮料、咖啡、茶');
INSERT INTO `category` VALUES (2, '计算机耗材', '打印纸、墨盒、光盘等');
INSERT INTO `category` VALUES (3, '日用品', '牙刷等');
INSERT INTO `category` VALUES (4, '谷类/麦类', '面包、饼干、谷类');
INSERT INTO `category` VALUES (5, '肉/家禽', '精制肉');
INSERT INTO `category` VALUES (6, '特制品', '干果、豆乳');
INSERT INTO `category` VALUES (7, '海鲜', '海菜、鱼');
INSERT INTO `category` VALUES (8, '文具', '笔、纸张、笔盒等');
INSERT INTO `category` VALUES (9, '水果', '各种热带、温带水果');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `custID` int(0) NOT NULL,
  `custName` char(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `relaname` char(8) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `phone` char(12) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `address` char(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `zipcode` char(6) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `pwd` char(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `city` char(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, ' 三川实业有限公司', '刘明', '3555477', '大崇明路50号', '46700', '123456', '上海');
INSERT INTO `customer` VALUES (2, '东南实业', '王丽丽', '3214589', '承德西路80号', '23454', '123456', '南京');
INSERT INTO `customer` VALUES (3, '通恒机械', '黄国栋', '2398732', '园林路88号', '46700', '123456', '广州');
INSERT INTO `customer` VALUES (4, '光明杂志', '谢立秋', '4527192', '黄石路66号', '23456', '123456', '北京');
INSERT INTO `customer` VALUES (5, '嘉园实业', '李霞', '3269876', '临江路77号', '23459', '123456', '上海');
INSERT INTO `customer` VALUES (6, '友恒信托', '戴遥', '2183690', '经二路99号', '87643', '123456', '上海');
INSERT INTO `customer` VALUES (7, 'Tim建筑公司', '杨小沐', '2783057', '启明路 77号', '23907', '123456', '广州');
INSERT INTO `customer` VALUES (8, '森通', '张小平', '2788888', '光明路 123号', '23412', '123456', '深圳');
INSERT INTO `customer` VALUES (9, '弘扬实业', '王平', '3285499', '七一路 12号', '45908', '123456', '广州');
INSERT INTO `customer` VALUES (10, '国鼎有限公司', '高强', '2765787', '东湖大街13号', '46700', '123456', '北京');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `empID` int(0) NOT NULL,
  `empname` char(8) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `gender` char(2) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `birthday` datetime(0) NULL DEFAULT NULL,
  `empdate` datetime(0) NULL DEFAULT NULL,
  `specialty` char(40) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `salary` decimal(10, 2) NULL DEFAULT NULL,
  `pwd` char(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `education` char(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '章红明', '男', '1969-10-28 00:00:00', '2005-04-03 00:00:00', '计算机', 3612.00, '123456', '本科');
INSERT INTO `employee` VALUES (2, '李立珊', '女', '1980-05-12 00:00:00', '2006-01-02 00:00:00', '书法', 4022.00, '123456', '本科');
INSERT INTO `employee` VALUES (3, '王孔若', '女', '1974-12-12 00:00:00', '2000-03-23 00:00:00', '音乐', 4068.00, '123456', '大专');
INSERT INTO `employee` VALUES (4, '余杰', '男', '1973-07-11 00:00:00', '2002-06-19 00:00:00', '计算机', 3156.00, '123456', '大专');
INSERT INTO `employee` VALUES (5, '蔡慧敏', '男', '1957-12-07 00:00:00', '2001-07-08 00:00:00', '会计', 4534.00, '123456', '本科');
INSERT INTO `employee` VALUES (6, '孔高铁', '男', '1974-11-17 00:00:00', '2000-09-10 00:00:00', '唱歌', 2889.00, '123456', '大专');
INSERT INTO `employee` VALUES (7, '姚小丽', '女', '1969-09-09 00:00:00', '2001-09-09 00:00:00', '跳舞', 3138.00, '123456', '硕士');
INSERT INTO `employee` VALUES (8, '宋振辉', '男', '1975-06-04 00:00:00', '2002-09-12 00:00:00', '计算机', 3766.00, '123456', '本科');
INSERT INTO `employee` VALUES (9, '刘丽', '女', '1960-06-19 00:00:00', '2002-01-12 00:00:00', '音乐', 4213.00, '123456', '硕士');
INSERT INTO `employee` VALUES (10, '姜玲', '女', '1980-03-23 00:00:00', '2004-09-09 00:00:00', '游泳', 2800.00, '123456', '硕士');

-- ----------------------------
-- Table structure for lattice
-- ----------------------------
DROP TABLE IF EXISTS `lattice`;
CREATE TABLE `lattice`  (
  `latid` int(0) NOT NULL,
  `sheid` int(0) NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  `specification` char(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lattice
-- ----------------------------
INSERT INTO `lattice` VALUES (2, 4, 0, '123');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `manId` int(0) NULL DEFAULT NULL,
  `manName` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (88, 'Jone', '888888');
INSERT INTO `manager` VALUES (99, 'Jone', '999999');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `orderID` int(0) NOT NULL,
  `proID` int(0) NOT NULL,
  `buynum` int(0) NULL DEFAULT NULL,
  `buyprice` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES (3, 9, 100, 1.50);
INSERT INTO `orderitem` VALUES (3, 1, 10, 2.30);
INSERT INTO `orderitem` VALUES (3, 9, 20, 1.50);
INSERT INTO `orderitem` VALUES (4, 1, 10, 2.30);
INSERT INTO `orderitem` VALUES (4, 16, 10, 4.50);
INSERT INTO `orderitem` VALUES (5, 5, 10, 200.00);
INSERT INTO `orderitem` VALUES (5, 6, 10, 50.00);
INSERT INTO `orderitem` VALUES (6, 1, 10, 2.30);
INSERT INTO `orderitem` VALUES (6, 21, 10, 2.50);
INSERT INTO `orderitem` VALUES (7, 1, 20, 2.30);
INSERT INTO `orderitem` VALUES (7, 20, 20, 2.20);
INSERT INTO `orderitem` VALUES (8, 2, 20, 3.50);
INSERT INTO `orderitem` VALUES (8, 9, 20, 1.50);
INSERT INTO `orderitem` VALUES (2, 4, 5, 400.00);
INSERT INTO `orderitem` VALUES (2, 5, 5, 200.00);
INSERT INTO `orderitem` VALUES (2, 8, 10, 120.00);
INSERT INTO `orderitem` VALUES (9, 1, 10, 2.30);
INSERT INTO `orderitem` VALUES (9, 9, 40, 1.50);
INSERT INTO `orderitem` VALUES (1, 1, 10, 2.30);
INSERT INTO `orderitem` VALUES (1, 9, 10, 1.50);
INSERT INTO `orderitem` VALUES (1, 10, 12, 4.00);

-- ----------------------------
-- Table structure for p_order
-- ----------------------------
DROP TABLE IF EXISTS `p_order`;
CREATE TABLE `p_order`  (
  `orderID` int(0) NOT NULL,
  `empID` int(0) NULL DEFAULT NULL,
  `custID` int(0) NULL DEFAULT NULL,
  `orderdate` datetime(0) NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of p_order
-- ----------------------------
INSERT INTO `p_order` VALUES (1, 2, 2, '2014-02-14 00:00:00', 86.00);
INSERT INTO `p_order` VALUES (2, 3, 4, '2014-02-14 00:00:00', 4200.00);
INSERT INTO `p_order` VALUES (4, 8, 1, '2014-02-16 00:00:00', 68.00);
INSERT INTO `p_order` VALUES (5, 6, 6, '2014-02-16 00:00:00', 2500.00);
INSERT INTO `p_order` VALUES (6, 4, 7, '2014-02-16 00:00:00', 48.00);
INSERT INTO `p_order` VALUES (7, 5, 5, '2014-02-16 00:00:00', 90.00);
INSERT INTO `p_order` VALUES (8, 4, 7, '2014-02-16 00:00:00', 100.00);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `proID` int(0) NOT NULL,
  `proname` char(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `kindID` int(0) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `warenum` decimal(10, 2) NULL DEFAULT NULL,
  `proimage` char(80) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `supplierID` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '伊利纯牛奶', 1, 2.30, 200.00, NULL, 1);
INSERT INTO `product` VALUES (2, '伊利巧乐兹冰激凌', 1, 3.50, 360.00, NULL, 1);
INSERT INTO `product` VALUES (4, '打印机', 2, 400.00, 100.00, NULL, NULL);
INSERT INTO `product` VALUES (5, '墨盒', 2, 200.00, 126.00, NULL, NULL);
INSERT INTO `product` VALUES (6, '鼠标', 2, 50.00, 180.00, NULL, NULL);
INSERT INTO `product` VALUES (7, '键盘', 2, 60.00, 120.00, NULL, NULL);
INSERT INTO `product` VALUES (8, '优盘', 2, 120.00, 200.00, NULL, NULL);
INSERT INTO `product` VALUES (9, '冰露矿泉水', 1, 1.60, 299.00, '', 1);
INSERT INTO `product` VALUES (10, '东方树叶', 1, 4.00, 280.00, NULL, 1);
INSERT INTO `product` VALUES (11, '红牛功能饮料', 1, 4.80, 168.00, '', 1);
INSERT INTO `product` VALUES (12, '伊利优酸乳', 1, 2.20, 166.00, NULL, 1);
INSERT INTO `product` VALUES (13, '农夫果园', 1, 3.00, 145.00, NULL, 1);
INSERT INTO `product` VALUES (14, '康师傅茉莉花茶', 1, 2.50, 180.00, NULL, 1);
INSERT INTO `product` VALUES (15, '鱿鱼卷', 7, 8.80, 130.00, NULL, NULL);
INSERT INTO `product` VALUES (16, '壮牛水牛奶', 1, 4.50, 180.00, NULL, 1);
INSERT INTO `product` VALUES (17, '玉米甜筒', 1, 2.00, 120.00, NULL, 1);
INSERT INTO `product` VALUES (18, '伊利冰工厂', 1, 1.00, 99.00, NULL, 1);
INSERT INTO `product` VALUES (19, '香雪冰淇淋', 1, 2.00, 126.00, NULL, 1);
INSERT INTO `product` VALUES (20, '双汇火腿肠', 1, 2.20, 100.00, NULL, 1);
INSERT INTO `product` VALUES (21, '双汇玉米火腿肠', 5, 2.50, 68.00, NULL, NULL);
INSERT INTO `product` VALUES (22, '加多宝', 1, 4.00, 60.00, NULL, 1);
INSERT INTO `product` VALUES (23, '米奇文具盒', 8, 15.80, 10.00, 'E:\\JSP_work\\MISExampleForJSP\\WebContent\\image\\Pencilcase.png', 3);
INSERT INTO `product` VALUES (24, '冰鲜海鲈鱼', 7, 55.00, 40.00, NULL, NULL);
INSERT INTO `product` VALUES (100, '圆规', 8, 15.00, 60.00, 'E:\\JSP_work\\MISExampleForJSP\\WebContent\\image\\Compasses.png', 3);
INSERT INTO `product` VALUES (101, '彩色铅笔', 8, 36.00, 66.00, 'E:\\JSP_work\\MISExampleForJSP\\WebContent\\image\\colorPencil.png', 3);
INSERT INTO `product` VALUES (103, '小龙虾', 7, 35.00, 600.00, NULL, NULL);
INSERT INTO `product` VALUES (105, '三角板', 8, 15.00, 70.00, 'E:\\JSP_work\\MISExampleForJSP\\WebContent\\image\\TriangularPlate.png', 3);
INSERT INTO `product` VALUES (25, '直尺', 8, 10.00, 80.00, 'E:\\JSP_work\\MISExampleForJSP\\WebContent\\image\\Ruler.png', 3);
INSERT INTO `product` VALUES (106, '自动卷笔刀', 8, 160.00, 100.00, 'E:\\JSP_work\\MISExampleForJSP\\WebContent\\image\\AutoPencilSharpener.png', 3);
INSERT INTO `product` VALUES (107, '米奇书包', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (108, '冰雪女王书包', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `product` VALUES (109, '玉灵膏', 6, 260.00, 30.00, '', NULL);
INSERT INTO `product` VALUES (110, '火龙果', 9, 3.50, 60.00, '', 0);

-- ----------------------------
-- Table structure for shelve
-- ----------------------------
DROP TABLE IF EXISTS `shelve`;
CREATE TABLE `shelve`  (
  `sheid` int(0) NOT NULL,
  `lattice` int(0) NULL DEFAULT NULL,
  `whid` int(0) NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  `specification` char(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shelve
-- ----------------------------
INSERT INTO `shelve` VALUES (1, 12, 3, 0, '30*40*50');
INSERT INTO `shelve` VALUES (4, 12, 3, 1, '1234');
INSERT INTO `shelve` VALUES (5, 12, 3, 1, '424');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `supplierID` int(0) NOT NULL,
  `suppliername` char(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `relaname` char(8) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `phone` char(12) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `address` char(30) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `zipcode` char(6) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `pwd` char(10) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `descriptio` char(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `businessLicens` char(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, '乐哈哈食品有限公司', '张超良', '', '', '', '123456', '', '');
INSERT INTO `supplier` VALUES (2, '甜蜜蜜食品有限公司', '马为民', NULL, NULL, NULL, '123456', NULL, NULL);
INSERT INTO `supplier` VALUES (3, '立志文具有限公司', '刘利均', '', '', '543201', '123456', '', '');
INSERT INTO `supplier` VALUES (4, '竣工印刷有限公司', '毛宁贤', '', '', '', '123456', '', '');
INSERT INTO `supplier` VALUES (5, '远航海鲜有限公司', '宁志斌', NULL, NULL, NULL, '123456', NULL, NULL);

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(0) NULL DEFAULT NULL,
  `empname` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for warehose
-- ----------------------------
DROP TABLE IF EXISTS `warehose`;
CREATE TABLE `warehose`  (
  `id` int(0) NOT NULL,
  `name` char(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `position` char(50) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `shelves_total` int(0) NULL DEFAULT NULL,
  `state` int(0) NULL DEFAULT NULL,
  `specification` char(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warehose
-- ----------------------------
INSERT INTO `warehose` VALUES (3, '仓库2', '南京', 121, 1, '100*70*12');
INSERT INTO `warehose` VALUES (4, '仓库1', '广州越秀区', 123, 0, '21*10*7');
INSERT INTO `warehose` VALUES (5, '仓库3', '岑溪市', 12, 0, '12*12*4');

-- ----------------------------
-- Table structure for warenum
-- ----------------------------
DROP TABLE IF EXISTS `warenum`;
CREATE TABLE `warenum`  (
  `proid` int(0) NOT NULL,
  `name` char(20) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `latid` int(0) NULL DEFAULT NULL,
  `warenum` int(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of warenum
-- ----------------------------
INSERT INTO `warenum` VALUES (1, '伊利纯牛奶', 2, 200);
INSERT INTO `warenum` VALUES (5, '墨盒', 2, 126);
INSERT INTO `warenum` VALUES (6, '鼠标', 2, 180);
INSERT INTO `warenum` VALUES (4, '打印机', 2, 100);
INSERT INTO `warenum` VALUES (7, '键盘', 2, 120);

-- ----------------------------
-- View structure for order_employee
-- ----------------------------
DROP VIEW IF EXISTS `order_employee`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `order_employee` AS select `p_order`.`empID` AS `empid`,sum(`p_order`.`total`) AS `emptotal` from `p_order` group by `p_order`.`empID` order by `p_order`.`empID`;

-- ----------------------------
-- Triggers structure for table warenum
-- ----------------------------
DROP TRIGGER IF EXISTS `wnum`;
delimiter ;;
CREATE TRIGGER `wnum` AFTER UPDATE ON `warenum` FOR EACH ROW begin
update product set warenum = new.warenum where proID = new.proid;
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
