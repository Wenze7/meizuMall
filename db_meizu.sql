/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : db_meizu

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 14/07/2020 21:15:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `addres_detail` varchar(255) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_address
-- ----------------------------
BEGIN;
INSERT INTO `tb_address` VALUES (18, 3, '1', '1', '1', '1', '1', '1');
INSERT INTO `tb_address` VALUES (20, 5, 'ewq1111', 'ewqe', 'wqe', 'ewq', 'ewq', 'ewqe');
INSERT INTO `tb_address` VALUES (21, 5, 'ewqe', 'ewqe', 'ewq', 'ewq', 'ewq', 'ewq');
INSERT INTO `tb_address` VALUES (22, 5, 'ewqe', 'ewq', 'eqw', 'ewq', 'ewq', 'ewq');
COMMIT;

-- ----------------------------
-- Table structure for tb_collection
-- ----------------------------
DROP TABLE IF EXISTS `tb_collection`;
CREATE TABLE `tb_collection` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_collection
-- ----------------------------
BEGIN;
INSERT INTO `tb_collection` VALUES (9, 5, 5);
COMMIT;

-- ----------------------------
-- Table structure for tb_color
-- ----------------------------
DROP TABLE IF EXISTS `tb_color`;
CREATE TABLE `tb_color` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `colorname` varchar(255) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_color
-- ----------------------------
BEGIN;
INSERT INTO `tb_color` VALUES (1, '松深入墨', 1);
INSERT INTO `tb_color` VALUES (2, '十七度灰', 1);
INSERT INTO `tb_color` VALUES (3, 'AG梦幻独角兽', 1);
INSERT INTO `tb_color` VALUES (4, '乌金', 2);
INSERT INTO `tb_color` VALUES (5, '定白', 2);
INSERT INTO `tb_color` VALUES (6, '天青', 2);
INSERT INTO `tb_color` VALUES (7, '鲸跃蓝', 3);
INSERT INTO `tb_color` VALUES (8, '湖广绿', 3);
INSERT INTO `tb_color` VALUES (9, '日光橙', 3);
INSERT INTO `tb_color` VALUES (10, '舰灰', 4);
INSERT INTO `tb_color` VALUES (11, '天青', 5);
INSERT INTO `tb_color` VALUES (12, '骑士黑', 6);
INSERT INTO `tb_color` VALUES (13, '亚特兰蒂斯', 6);
INSERT INTO `tb_color` VALUES (14, '珊瑚橙', 6);
INSERT INTO `tb_color` VALUES (15, '黑之谧镜', 7);
INSERT INTO `tb_color` VALUES (16, '梦幻独角兽', 7);
INSERT INTO `tb_color` VALUES (17, '暮光森林', 7);
INSERT INTO `tb_color` VALUES (18, '亮黑', 8);
INSERT INTO `tb_color` VALUES (19, '玉白', 8);
INSERT INTO `tb_color` VALUES (20, '幻蓝', 8);
INSERT INTO `tb_color` VALUES (21, '松深入墨', 9);
INSERT INTO `tb_color` VALUES (22, '十七度灰', 9);
INSERT INTO `tb_color` VALUES (23, 'AG梦幻独角兽', 9);
INSERT INTO `tb_color` VALUES (24, '乌金', 10);
INSERT INTO `tb_color` VALUES (25, '定白', 10);
INSERT INTO `tb_color` VALUES (26, '天青', 10);
INSERT INTO `tb_color` VALUES (27, '鲸跃蓝', 11);
INSERT INTO `tb_color` VALUES (28, '湖广绿', 11);
INSERT INTO `tb_color` VALUES (29, '日光橙', 11);
INSERT INTO `tb_color` VALUES (30, '舰灰', 12);
INSERT INTO `tb_color` VALUES (31, '天青', 13);
INSERT INTO `tb_color` VALUES (32, '骑士黑', 14);
INSERT INTO `tb_color` VALUES (33, '亚特兰蒂斯', 14);
INSERT INTO `tb_color` VALUES (34, '珊瑚橙', 14);
INSERT INTO `tb_color` VALUES (35, '黑之谧镜', 15);
INSERT INTO `tb_color` VALUES (36, '梦幻独角兽', 15);
INSERT INTO `tb_color` VALUES (37, '暮光森林', 15);
INSERT INTO `tb_color` VALUES (38, '亮黑', 16);
INSERT INTO `tb_color` VALUES (39, '玉白', 16);
INSERT INTO `tb_color` VALUES (40, '幻蓝', 16);
COMMIT;

-- ----------------------------
-- Table structure for tb_image
-- ----------------------------
DROP TABLE IF EXISTS `tb_image`;
CREATE TABLE `tb_image` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_image
-- ----------------------------
BEGIN;
INSERT INTO `tb_image` VALUES (1, 1, '//openfile.meizu.com/group1/M00/08/0C/Cgbj0V7gsj-AY4bcAAleFw4c8xs116.png680x680.jpg');
INSERT INTO `tb_image` VALUES (2, 1, '//openfile.meizu.com/group1/M00/07/DA/Cgbj0V6zwNmAet3dAAPfo-HRaiE646.png680x680.jpg');
INSERT INTO `tb_image` VALUES (3, 1, '//openfile.meizu.com/group1/M00/07/DA/Cgbj0V6zwOCAMY5FAAal_UKuLx4852.png680x680.jpg');
INSERT INTO `tb_image` VALUES (4, 1, '//openfile.meizu.com/group1/M00/07/C4/Cgbj0F6zwNuANk6cAALV6RMZRk0324.png680x680.jpg');
INSERT INTO `tb_image` VALUES (5, 2, '//openfile.meizu.com/group1/M00/08/0B/Cgbj0V7gsjWAPF5rAAsOWBHfhMc030.png680x680.jpg');
INSERT INTO `tb_image` VALUES (6, 2, '//openfile.meizu.com/group1/M00/07/F3/Cgbj0F7eH2SAdKD5AAHWtl1T9Ws790.jpg680x680.jpg');
INSERT INTO `tb_image` VALUES (7, 2, '//openfile.meizu.com/group1/M00/08/09/Cgbj0V7gLWKAKFcnAAFyldULfZ0173.jpg680x680.jpg');
INSERT INTO `tb_image` VALUES (8, 2, '//openfile.meizu.com/group1/M00/07/C4/Cgbj0F6zwM6AdEXLAALMpD5v_iE443.png680x680.jpg');
INSERT INTO `tb_image` VALUES (9, 3, '//openfile.meizu.com/group1/M00/08/0B/Cgbj0V7gsjWAfxBJAAlp3c1WdI4793.png680x680.jpg');
INSERT INTO `tb_image` VALUES (10, 3, '//openfile.meizu.com/group1/M00/07/D9/Cgbj0V6zwMWANhNKAAVfQwmOan4751.png680x680.jpg');
INSERT INTO `tb_image` VALUES (11, 3, '//openfile.meizu.com/group1/M00/07/C3/Cgbj0F6zwMWAbCieAAZp0FbICJA179.png680x680.jpg');
INSERT INTO `tb_image` VALUES (12, 3, '//openfile.meizu.com/group1/M00/07/D9/Cgbj0V6zwMWASoKjAAKhvZAJDTU118.png680x680.jpg');
INSERT INTO `tb_image` VALUES (13, 4, '//openfile.meizu.com/group1/M00/07/F5/Cgbj0F7gskGAT8SdAAi5TCCOE2Y178.png680x680.jpg');
INSERT INTO `tb_image` VALUES (14, 4, '//openfile.meizu.com/group1/M00/07/DB/Cgbj0V6zwU2ABpNtAAKi3BlPF4A270.png680x680.jpg');
INSERT INTO `tb_image` VALUES (15, 4, '//openfile.meizu.com/group1/M00/07/DB/Cgbj0V6zwVOAYv3TAAYSY_fifOs397.png680x680.jpg');
INSERT INTO `tb_image` VALUES (16, 4, '//openfile.meizu.com/group1/M00/07/C5/Cgbj0F6zwU-AE3JwAAJ3w5UUqH4853.png680x680.jpg');
INSERT INTO `tb_image` VALUES (17, 5, '//openfile.meizu.com/group1/M00/07/F5/Cgbj0F7gsjWARDOAAAmxMlGl-4w854.png680x680.jpg');
INSERT INTO `tb_image` VALUES (18, 5, '//openfile.meizu.com/group1/M00/07/DA/Cgbj0V6zwTmAPwtyAAQ_qsF3bCA001.png680x680.jpg');
INSERT INTO `tb_image` VALUES (19, 5, '//openfile.meizu.com/group1/M00/07/C5/Cgbj0F6zwTmARxAyAAYq4XcsnGk824.png680x680.jpg');
INSERT INTO `tb_image` VALUES (20, 5, '//openfile.meizu.com/group1/M00/07/DA/Cgbj0V6zwTmAI0JaAAKLVXwYXgA321.png680x680.jpg');
INSERT INTO `tb_image` VALUES (21, 6, '//openfile.meizu.com/group1/M00/07/F5/Cgbj0F7gsj-AVId0AAlijs1xSzg392.png680x680.jpg');
INSERT INTO `tb_image` VALUES (22, 6, '//openfile.meizu.com/group1/M00/07/DB/Cgbj0V6zwUGADdDwAAT5skEF4T8624.png680x680.jpg');
INSERT INTO `tb_image` VALUES (23, 6, '//openfile.meizu.com/group1/M00/07/DB/Cgbj0V6zwUeAI-ILAAZB-PVLrto860.png680x680.jpg');
INSERT INTO `tb_image` VALUES (24, 6, '//openfile.meizu.com/group1/M00/07/C5/Cgbj0F6zwUGADLiyAAKpUJfaPFA649.png680x680.jpg');
INSERT INTO `tb_image` VALUES (25, 7, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upxqANyVFAAjApUYA58w668.png680x680.jpg');
INSERT INTO `tb_image` VALUES (26, 7, '//openfile.meizu.com/group1/M00/07/63/Cgbj0F2upxaAGJTEAAUpA94wOg8239.png120x120.jpg');
INSERT INTO `tb_image` VALUES (27, 7, '//openfile.meizu.com/group1/M00/07/63/Cgbj0F2upx2Ae-1iAASadQ1SChs478.png680x680.jpg');
INSERT INTO `tb_image` VALUES (28, 7, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upxaAcIXFAAIFhI8RTEs782.png680x680.jpg');
INSERT INTO `tb_image` VALUES (29, 8, '//openfile.meizu.com/group1/M00/07/62/Cgbj0F2upwyAKqQSAAlGpvLiEdc809.png680x680.jpg');
INSERT INTO `tb_image` VALUES (30, 8, '//openfile.meizu.com/group1/M00/07/79/Cgbj0V2upwSADNIKAARgMoI_8RE573.png680x680.jpg');
INSERT INTO `tb_image` VALUES (31, 8, '//openfile.meizu.com/group1/M00/07/79/Cgbj0V2upwyAIIJ-AASZO3NO3vM840.png680x680.jpg');
INSERT INTO `tb_image` VALUES (32, 8, '//openfile.meizu.com/group1/M00/07/79/Cgbj0V2upwOAdQlDAAH-WJXwf5U402.png680x680.jpg');
INSERT INTO `tb_image` VALUES (33, 9, '//openfile.meizu.com/group1/M00/07/87/Cgbj0V3U7gOAPBz7AAi2bv3GS9Q690.png680x680.jpg');
INSERT INTO `tb_image` VALUES (34, 9, '//openfile.meizu.com/group1/M00/07/86/Cgbj0V3U5-GAZ8OiAAR7AHDl4qY695.png680x680.jpg');
INSERT INTO `tb_image` VALUES (35, 9, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upy-AHO-iAASbAcADm5w480.png680x680.jpg');
INSERT INTO `tb_image` VALUES (36, 9, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upyeAP-XCAAIGW8_W4LU613.png680x680.jpg');
INSERT INTO `tb_image` VALUES (37, 10, '//openfile.meizu.com/group1/M00/08/00/Cgbj0F7xzpyAa8HVAA4vgUaoAFA933.png680x680.jpg');
INSERT INTO `tb_image` VALUES (38, 10, '//openfile.meizu.com/group1/M00/07/D0/Cgbj0F61DiaAUrFgAAlOBN9oVeY163.png680x680.jpg');
INSERT INTO `tb_image` VALUES (39, 10, '//openfile.meizu.com/group1/M00/07/E5/Cgbj0V61DiOAceiCAAiPlsr4fe0156.png680x680.jpg');
INSERT INTO `tb_image` VALUES (40, 10, '//openfile.meizu.com/group1/M00/07/D0/Cgbj0F61DiKAeCu2AAYSOruTEfs661.png680x680.jpg');
INSERT INTO `tb_image` VALUES (41, 11, '//openfile.meizu.com/group1/M00/07/CF/Cgbj0F61BXaARxdvAAqWtjjyY08964.png680x680.jpg');
INSERT INTO `tb_image` VALUES (42, 11, '//openfile.meizu.com/group1/M00/07/E4/Cgbj0V61BX2AFUy6AAbcP9Z9e6w628.png680x680.jpg');
INSERT INTO `tb_image` VALUES (43, 11, '//openfile.meizu.com/group1/M00/07/CF/Cgbj0F61BXWAcImFAASZwzEVyAE591.png680x680.jpg');
INSERT INTO `tb_image` VALUES (44, 11, '//openfile.meizu.com/group1/M00/07/E4/Cgbj0V61BXaAIziBAANqTXuAtuM977.png680x680.jpg');
INSERT INTO `tb_image` VALUES (45, 12, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRJ-AWr44AAiGUPbS22w583.png680x680.jpg');
INSERT INTO `tb_image` VALUES (46, 12, '//openfile.meizu.com/group1/M00/07/2C/Cgbj0FzvRJOAH5vQAAP_QK7Ul4k243.png680x680.jpg');
INSERT INTO `tb_image` VALUES (47, 12, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRJmAOgyGAAPipjypbO0910.png680x680.jpg');
INSERT INTO `tb_image` VALUES (48, 12, '//openfile.meizu.com/group1/M00/07/2C/Cgbj0FzvRJqAExiOAAInDU9H8k8923.png680x680.jpg');
INSERT INTO `tb_image` VALUES (49, 13, '//openfile.meizu.com/group1/M00/07/2D/Cgbj0FzvRKyAcTmAAAiLh3fsE44680.png680x680.jpg');
INSERT INTO `tb_image` VALUES (50, 13, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRKCAXSJLAARoOndnvEw009.png680x680.jpg');
INSERT INTO `tb_image` VALUES (51, 13, '//openfile.meizu.com/group1/M00/07/2D/Cgbj0FzvRKiAQQx1AAQFYhNPyWI857.png680x680.jpg');
INSERT INTO `tb_image` VALUES (52, 13, '//openfile.meizu.com/group1/M00/07/45/Cgbj0VzvRKqAAXexAAIhQ4yPYyo579.png680x680.jpg');
INSERT INTO `tb_image` VALUES (53, 14, '//openfile.meizu.com/group1/M00/07/2C/Cgbj0FzvRI6AWu1jAAxIbnS8M5Q295.png680x680.jpg');
INSERT INTO `tb_image` VALUES (54, 14, '//openfile.meizu.com/group1/M00/07/43/Cgbj0VzvRIWAEoSVAAl1zk0bqho456.png680x680.jpg');
INSERT INTO `tb_image` VALUES (55, 14, '//openfile.meizu.com/group1/M00/07/2C/Cgbj0FzvRI2ARqQvAAQnVJv9w8c665.png680x680.jpg');
INSERT INTO `tb_image` VALUES (56, 14, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRI2AazXaAAIsQmL2NZM716.png680x680.jpg');
INSERT INTO `tb_image` VALUES (57, 15, '//openfile.meizu.com/group1/M00/07/5F/Cgbj0V1jhtuAa71pAAd3EPLUA9Q862.png680x680.jpg');
INSERT INTO `tb_image` VALUES (58, 15, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhtKAcMb1AAKhnngaAZQ850.png680x680.jpg');
INSERT INTO `tb_image` VALUES (59, 15, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhtmAXJUeAAQ7Y9jDbao501.png680x680.jpg');
INSERT INTO `tb_image` VALUES (60, 15, '//openfile.meizu.com/group1/M00/07/5F/Cgbj0V1jhtWALpddAAImIpdb8sg331.png680x680.jpg');
INSERT INTO `tb_image` VALUES (61, 16, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhu-AaV4AAAlk4z4lkt0463.png680x680.jpg');
INSERT INTO `tb_image` VALUES (62, 16, '//openfile.meizu.com/group1/M00/07/60/Cgbj0V1jhuaAFVB2AAMaoEiBCLI976.png680x680.jpg');
INSERT INTO `tb_image` VALUES (63, 16, '//openfile.meizu.com/group1/M00/07/60/Cgbj0V1jhvGAOhfAAAUTBeBVm10081.png680x680.jpg');
INSERT INTO `tb_image` VALUES (64, 16, '//openfile.meizu.com/group1/M00/07/60/Cgbj0V1jhuuAZ9AXAAJuNWIpA_U972.png680x680.jpg');
INSERT INTO `tb_image` VALUES (65, 17, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhuqADaMyAAlvEHNfjUE482.png680x680.jpg');
INSERT INTO `tb_image` VALUES (66, 17, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jht2AQ8pwAAMgtAqoM4E365.png680x680.jpg');
INSERT INTO `tb_image` VALUES (67, 17, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhuWATWiEAAU9adhvEJs606.png680x680.jpg');
INSERT INTO `tb_image` VALUES (68, 17, '//openfile.meizu.com/group1/M00/07/5F/Cgbj0V1jhuCAAGfqAAKANIM7ChM406.png680x680.jpg');
INSERT INTO `tb_image` VALUES (69, 18, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSK2AQZgiAAlFKHoO-co889.png680x680.jpg');
INSERT INTO `tb_image` VALUES (70, 18, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSLGAE44DAAeLveNy2X4743.png680x680.jpg');
INSERT INTO `tb_image` VALUES (71, 18, '//openfile.meizu.com/group1/M00/06/B7/Cgbj0VusSKmAGC6DAAaMxdXOpAY680.png680x680.jpg');
INSERT INTO `tb_image` VALUES (72, 18, '//openfile.meizu.com/group1/M00/06/A8/Cgbj0FusSKiAW4z7AALHc8pivJY472.png680x680.jpg');
INSERT INTO `tb_image` VALUES (73, 19, '//openfile.meizu.com/group1/M00/06/A8/Cgbj0FusSJyACGwcAAg0epdui5o951.png680x680.jpg');
INSERT INTO `tb_image` VALUES (74, 19, '//openfile.meizu.com/group1/M00/06/A8/Cgbj0FusSJ-AGjX5AAeYgVZv2Ic125.png680x680.jpg');
INSERT INTO `tb_image` VALUES (75, 19, '//openfile.meizu.com/group1/M00/06/B6/Cgbj0VusSJeAVPgvAAaYP_FCAkM778.png120x120.jpg');
INSERT INTO `tb_image` VALUES (76, 19, '//openfile.meizu.com/group1/M00/06/B6/Cgbj0VusSJeAVPgvAAaYP_FCAkM778.png120x120.jpg');
INSERT INTO `tb_image` VALUES (77, 20, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSL6AS8w5AAhRPgc1bQE955.png680x680.jpg');
INSERT INTO `tb_image` VALUES (78, 20, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSMSAcoXWAAeTUKNXwM8613.png680x680.jpg');
INSERT INTO `tb_image` VALUES (79, 20, '//openfile.meizu.com/group1/M00/06/B8/Cgbj0VusSLuAB_vMAAaa_UqAUCY515.png680x680.jpg');
INSERT INTO `tb_image` VALUES (80, 20, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSLuAL43wAALEvh3vw_w196.png680x680.jpg');
INSERT INTO `tb_image` VALUES (81, 21, '//openfile.meizu.com/group1/M00/08/0C/Cgbj0V7gsj-AY4bcAAleFw4c8xs116.png680x680.jpg');
INSERT INTO `tb_image` VALUES (82, 21, '//openfile.meizu.com/group1/M00/07/DA/Cgbj0V6zwNmAet3dAAPfo-HRaiE646.png680x680.jpg');
INSERT INTO `tb_image` VALUES (83, 21, '//openfile.meizu.com/group1/M00/07/DA/Cgbj0V6zwOCAMY5FAAal_UKuLx4852.png680x680.jpg');
INSERT INTO `tb_image` VALUES (84, 21, '//openfile.meizu.com/group1/M00/07/C4/Cgbj0F6zwNuANk6cAALV6RMZRk0324.png680x680.jpg');
INSERT INTO `tb_image` VALUES (85, 22, '//openfile.meizu.com/group1/M00/08/0B/Cgbj0V7gsjWAPF5rAAsOWBHfhMc030.png680x680.jpg');
INSERT INTO `tb_image` VALUES (86, 22, '//openfile.meizu.com/group1/M00/07/F3/Cgbj0F7eH2SAdKD5AAHWtl1T9Ws790.jpg680x680.jpg');
INSERT INTO `tb_image` VALUES (87, 22, '//openfile.meizu.com/group1/M00/08/09/Cgbj0V7gLWKAKFcnAAFyldULfZ0173.jpg680x680.jpg');
INSERT INTO `tb_image` VALUES (88, 22, '//openfile.meizu.com/group1/M00/07/C4/Cgbj0F6zwM6AdEXLAALMpD5v_iE443.png680x680.jpg');
INSERT INTO `tb_image` VALUES (89, 23, '//openfile.meizu.com/group1/M00/08/0B/Cgbj0V7gsjWAfxBJAAlp3c1WdI4793.png680x680.jpg');
INSERT INTO `tb_image` VALUES (90, 23, '//openfile.meizu.com/group1/M00/07/D9/Cgbj0V6zwMWANhNKAAVfQwmOan4751.png680x680.jpg');
INSERT INTO `tb_image` VALUES (91, 23, '//openfile.meizu.com/group1/M00/07/C3/Cgbj0F6zwMWAbCieAAZp0FbICJA179.png680x680.jpg');
INSERT INTO `tb_image` VALUES (92, 23, '//openfile.meizu.com/group1/M00/07/D9/Cgbj0V6zwMWASoKjAAKhvZAJDTU118.png680x680.jpg');
INSERT INTO `tb_image` VALUES (93, 24, '//openfile.meizu.com/group1/M00/07/F5/Cgbj0F7gskGAT8SdAAi5TCCOE2Y178.png680x680.jpg');
INSERT INTO `tb_image` VALUES (94, 24, '//openfile.meizu.com/group1/M00/07/DB/Cgbj0V6zwU2ABpNtAAKi3BlPF4A270.png680x680.jpg');
INSERT INTO `tb_image` VALUES (95, 24, '//openfile.meizu.com/group1/M00/07/DB/Cgbj0V6zwVOAYv3TAAYSY_fifOs397.png680x680.jpg');
INSERT INTO `tb_image` VALUES (96, 24, '//openfile.meizu.com/group1/M00/07/C5/Cgbj0F6zwU-AE3JwAAJ3w5UUqH4853.png680x680.jpg');
INSERT INTO `tb_image` VALUES (97, 25, '//openfile.meizu.com/group1/M00/07/F5/Cgbj0F7gsjWARDOAAAmxMlGl-4w854.png680x680.jpg');
INSERT INTO `tb_image` VALUES (98, 25, '//openfile.meizu.com/group1/M00/07/DA/Cgbj0V6zwTmAPwtyAAQ_qsF3bCA001.png680x680.jpg');
INSERT INTO `tb_image` VALUES (99, 25, '//openfile.meizu.com/group1/M00/07/C5/Cgbj0F6zwTmARxAyAAYq4XcsnGk824.png680x680.jpg');
INSERT INTO `tb_image` VALUES (100, 25, '//openfile.meizu.com/group1/M00/07/DA/Cgbj0V6zwTmAI0JaAAKLVXwYXgA321.png680x680.jpg');
INSERT INTO `tb_image` VALUES (101, 26, '//openfile.meizu.com/group1/M00/07/F5/Cgbj0F7gsj-AVId0AAlijs1xSzg392.png680x680.jpg');
INSERT INTO `tb_image` VALUES (102, 26, '//openfile.meizu.com/group1/M00/07/DB/Cgbj0V6zwUGADdDwAAT5skEF4T8624.png680x680.jpg');
INSERT INTO `tb_image` VALUES (103, 26, '//openfile.meizu.com/group1/M00/07/DB/Cgbj0V6zwUeAI-ILAAZB-PVLrto860.png680x680.jpg');
INSERT INTO `tb_image` VALUES (104, 26, '//openfile.meizu.com/group1/M00/07/C5/Cgbj0F6zwUGADLiyAAKpUJfaPFA649.png680x680.jpg');
INSERT INTO `tb_image` VALUES (105, 27, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upxqANyVFAAjApUYA58w668.png680x680.jpg');
INSERT INTO `tb_image` VALUES (106, 27, '//openfile.meizu.com/group1/M00/07/63/Cgbj0F2upxaAGJTEAAUpA94wOg8239.png120x120.jpg');
INSERT INTO `tb_image` VALUES (107, 27, '//openfile.meizu.com/group1/M00/07/63/Cgbj0F2upx2Ae-1iAASadQ1SChs478.png680x680.jpg');
INSERT INTO `tb_image` VALUES (108, 27, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upxaAcIXFAAIFhI8RTEs782.png680x680.jpg');
INSERT INTO `tb_image` VALUES (109, 28, '//openfile.meizu.com/group1/M00/07/62/Cgbj0F2upwyAKqQSAAlGpvLiEdc809.png680x680.jpg');
INSERT INTO `tb_image` VALUES (110, 28, '//openfile.meizu.com/group1/M00/07/79/Cgbj0V2upwSADNIKAARgMoI_8RE573.png680x680.jpg');
INSERT INTO `tb_image` VALUES (111, 28, '//openfile.meizu.com/group1/M00/07/79/Cgbj0V2upwyAIIJ-AASZO3NO3vM840.png680x680.jpg');
INSERT INTO `tb_image` VALUES (112, 28, '//openfile.meizu.com/group1/M00/07/79/Cgbj0V2upwOAdQlDAAH-WJXwf5U402.png680x680.jpg');
INSERT INTO `tb_image` VALUES (113, 29, '//openfile.meizu.com/group1/M00/07/87/Cgbj0V3U7gOAPBz7AAi2bv3GS9Q690.png680x680.jpg');
INSERT INTO `tb_image` VALUES (114, 29, '//openfile.meizu.com/group1/M00/07/86/Cgbj0V3U5-GAZ8OiAAR7AHDl4qY695.png680x680.jpg');
INSERT INTO `tb_image` VALUES (115, 29, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upy-AHO-iAASbAcADm5w480.png680x680.jpg');
INSERT INTO `tb_image` VALUES (116, 29, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upyeAP-XCAAIGW8_W4LU613.png680x680.jpg');
INSERT INTO `tb_image` VALUES (117, 30, '//openfile.meizu.com/group1/M00/08/00/Cgbj0F7xzpyAa8HVAA4vgUaoAFA933.png680x680.jpg');
INSERT INTO `tb_image` VALUES (118, 30, '//openfile.meizu.com/group1/M00/07/D0/Cgbj0F61DiaAUrFgAAlOBN9oVeY163.png680x680.jpg');
INSERT INTO `tb_image` VALUES (119, 30, '//openfile.meizu.com/group1/M00/07/E5/Cgbj0V61DiOAceiCAAiPlsr4fe0156.png680x680.jpg');
INSERT INTO `tb_image` VALUES (120, 30, '//openfile.meizu.com/group1/M00/07/D0/Cgbj0F61DiKAeCu2AAYSOruTEfs661.png680x680.jpg');
INSERT INTO `tb_image` VALUES (121, 31, '//openfile.meizu.com/group1/M00/07/CF/Cgbj0F61BXaARxdvAAqWtjjyY08964.png680x680.jpg');
INSERT INTO `tb_image` VALUES (122, 31, '//openfile.meizu.com/group1/M00/07/E4/Cgbj0V61BX2AFUy6AAbcP9Z9e6w628.png680x680.jpg');
INSERT INTO `tb_image` VALUES (123, 31, '//openfile.meizu.com/group1/M00/07/CF/Cgbj0F61BXWAcImFAASZwzEVyAE591.png680x680.jpg');
INSERT INTO `tb_image` VALUES (124, 31, '//openfile.meizu.com/group1/M00/07/E4/Cgbj0V61BXaAIziBAANqTXuAtuM977.png680x680.jpg');
INSERT INTO `tb_image` VALUES (125, 32, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRJ-AWr44AAiGUPbS22w583.png680x680.jpg');
INSERT INTO `tb_image` VALUES (126, 32, '//openfile.meizu.com/group1/M00/07/2C/Cgbj0FzvRJOAH5vQAAP_QK7Ul4k243.png680x680.jpg');
INSERT INTO `tb_image` VALUES (127, 32, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRJmAOgyGAAPipjypbO0910.png680x680.jpg');
INSERT INTO `tb_image` VALUES (128, 32, '//openfile.meizu.com/group1/M00/07/2C/Cgbj0FzvRJqAExiOAAInDU9H8k8923.png680x680.jpg');
INSERT INTO `tb_image` VALUES (129, 33, '//openfile.meizu.com/group1/M00/07/2D/Cgbj0FzvRKyAcTmAAAiLh3fsE44680.png680x680.jpg');
INSERT INTO `tb_image` VALUES (130, 33, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRKCAXSJLAARoOndnvEw009.png680x680.jpg');
INSERT INTO `tb_image` VALUES (131, 33, '//openfile.meizu.com/group1/M00/07/2D/Cgbj0FzvRKiAQQx1AAQFYhNPyWI857.png680x680.jpg');
INSERT INTO `tb_image` VALUES (132, 33, '//openfile.meizu.com/group1/M00/07/45/Cgbj0VzvRKqAAXexAAIhQ4yPYyo579.png680x680.jpg');
INSERT INTO `tb_image` VALUES (133, 34, '//openfile.meizu.com/group1/M00/07/2C/Cgbj0FzvRI6AWu1jAAxIbnS8M5Q295.png680x680.jpg');
INSERT INTO `tb_image` VALUES (134, 34, '//openfile.meizu.com/group1/M00/07/43/Cgbj0VzvRIWAEoSVAAl1zk0bqho456.png680x680.jpg');
INSERT INTO `tb_image` VALUES (135, 34, '//openfile.meizu.com/group1/M00/07/2C/Cgbj0FzvRI2ARqQvAAQnVJv9w8c665.png680x680.jpg');
INSERT INTO `tb_image` VALUES (136, 34, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRI2AazXaAAIsQmL2NZM716.png680x680.jpg');
INSERT INTO `tb_image` VALUES (137, 35, '//openfile.meizu.com/group1/M00/07/5F/Cgbj0V1jhtuAa71pAAd3EPLUA9Q862.png680x680.jpg');
INSERT INTO `tb_image` VALUES (138, 35, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhtKAcMb1AAKhnngaAZQ850.png680x680.jpg');
INSERT INTO `tb_image` VALUES (139, 35, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhtmAXJUeAAQ7Y9jDbao501.png680x680.jpg');
INSERT INTO `tb_image` VALUES (140, 35, '//openfile.meizu.com/group1/M00/07/5F/Cgbj0V1jhtWALpddAAImIpdb8sg331.png680x680.jpg');
INSERT INTO `tb_image` VALUES (141, 36, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhu-AaV4AAAlk4z4lkt0463.png680x680.jpg');
INSERT INTO `tb_image` VALUES (142, 36, '//openfile.meizu.com/group1/M00/07/60/Cgbj0V1jhuaAFVB2AAMaoEiBCLI976.png680x680.jpg');
INSERT INTO `tb_image` VALUES (143, 36, '//openfile.meizu.com/group1/M00/07/60/Cgbj0V1jhvGAOhfAAAUTBeBVm10081.png680x680.jpg');
INSERT INTO `tb_image` VALUES (144, 36, '//openfile.meizu.com/group1/M00/07/60/Cgbj0V1jhuuAZ9AXAAJuNWIpA_U972.png680x680.jpg');
INSERT INTO `tb_image` VALUES (145, 37, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhuqADaMyAAlvEHNfjUE482.png680x680.jpg');
INSERT INTO `tb_image` VALUES (146, 37, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jht2AQ8pwAAMgtAqoM4E365.png680x680.jpg');
INSERT INTO `tb_image` VALUES (147, 37, '//openfile.meizu.com/group1/M00/07/48/Cgbj0F1jhuWATWiEAAU9adhvEJs606.png680x680.jpg');
INSERT INTO `tb_image` VALUES (148, 37, '//openfile.meizu.com/group1/M00/07/5F/Cgbj0V1jhuCAAGfqAAKANIM7ChM406.png680x680.jpg');
INSERT INTO `tb_image` VALUES (149, 38, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSK2AQZgiAAlFKHoO-co889.png680x680.jpg');
INSERT INTO `tb_image` VALUES (150, 38, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSLGAE44DAAeLveNy2X4743.png680x680.jpg');
INSERT INTO `tb_image` VALUES (151, 38, '//openfile.meizu.com/group1/M00/06/B7/Cgbj0VusSKmAGC6DAAaMxdXOpAY680.png680x680.jpg');
INSERT INTO `tb_image` VALUES (152, 38, '//openfile.meizu.com/group1/M00/06/A8/Cgbj0FusSKiAW4z7AALHc8pivJY472.png680x680.jpg');
INSERT INTO `tb_image` VALUES (153, 39, '//openfile.meizu.com/group1/M00/06/A8/Cgbj0FusSJyACGwcAAg0epdui5o951.png680x680.jpg');
INSERT INTO `tb_image` VALUES (154, 39, '//openfile.meizu.com/group1/M00/06/A8/Cgbj0FusSJ-AGjX5AAeYgVZv2Ic125.png680x680.jpg');
INSERT INTO `tb_image` VALUES (155, 39, '//openfile.meizu.com/group1/M00/06/B6/Cgbj0VusSJeAVPgvAAaYP_FCAkM778.png120x120.jpg');
INSERT INTO `tb_image` VALUES (156, 39, '//openfile.meizu.com/group1/M00/06/B6/Cgbj0VusSJeAVPgvAAaYP_FCAkM778.png120x120.jpg');
INSERT INTO `tb_image` VALUES (157, 40, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSL6AS8w5AAhRPgc1bQE955.png680x680.jpg');
INSERT INTO `tb_image` VALUES (158, 40, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSMSAcoXWAAeTUKNXwM8613.png680x680.jpg');
INSERT INTO `tb_image` VALUES (159, 40, '//openfile.meizu.com/group1/M00/06/B8/Cgbj0VusSLuAB_vMAAaa_UqAUCY515.png680x680.jpg');
INSERT INTO `tb_image` VALUES (160, 40, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSLuAL43wAALEvh3vw_w196.png680x680.jpg');
COMMIT;

-- ----------------------------
-- Table structure for tb_memory
-- ----------------------------
DROP TABLE IF EXISTS `tb_memory`;
CREATE TABLE `tb_memory` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `memoryname` varchar(255) NOT NULL,
  `addprice` int(11) NOT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_memory
-- ----------------------------
BEGIN;
INSERT INTO `tb_memory` VALUES (1, '8+128GB', 0);
INSERT INTO `tb_memory` VALUES (2, '8+256GB', 300);
INSERT INTO `tb_memory` VALUES (3, '12+256GB', 400);
COMMIT;

-- ----------------------------
-- Table structure for tb_orders
-- ----------------------------
DROP TABLE IF EXISTS `tb_orders`;
CREATE TABLE `tb_orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `createtime` datetime NOT NULL,
  `totalprice` double NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_orders
-- ----------------------------
BEGIN;
INSERT INTO `tb_orders` VALUES (69, 5, '2020-07-14 06:25:23', 16896);
COMMIT;

-- ----------------------------
-- Table structure for tb_orders_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_orders_detail`;
CREATE TABLE `tb_orders_detail` (
  `odid` int(11) NOT NULL AUTO_INCREMENT,
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`odid`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_orders_detail
-- ----------------------------
BEGIN;
INSERT INTO `tb_orders_detail` VALUES (126, 69, 3, 3, NULL);
INSERT INTO `tb_orders_detail` VALUES (127, 69, 5, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tb_phones
-- ----------------------------
DROP TABLE IF EXISTS `tb_phones`;
CREATE TABLE `tb_phones` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `phonename` varchar(255) NOT NULL,
  `baseprice` double NOT NULL,
  `mid` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_phones
-- ----------------------------
BEGIN;
INSERT INTO `tb_phones` VALUES (1, '魅族 17', 3699, 1, '//openfile.meizu.com/group1/M00/08/0C/Cgbj0V7gsj-AY4bcAAleFw4c8xs116.png680x680.jpg', '【MY+ 10周年 限时赠HIFI】【老用户专享18个月超长保修】【学生专享12期免息+学生礼包】5G旗舰 | 高通骁龙 865 + UFS 3.1 高速闪存 | 6400W 全场景影像系统');
INSERT INTO `tb_phones` VALUES (2, '魅族 17 Pro', 4299, 1, '//openfile.meizu.com/group1/M00/07/F5/Cgbj0F7gskGAT8SdAAi5TCCOE2Y178.png680x680.jpg', '【MY+ 10周年 限时赠HIFI】【老用户专享18个月超长保修】【学生专享12期免息+学生礼包】5G旗舰 | 高通骁龙 865 + UFS 3.1 + LPDDR5 | 6400W 全场景 AR 专业影像系统');
INSERT INTO `tb_phones` VALUES (3, '魅族 16T', 2299, 1, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upxqANyVFAAjApUYA58w668.png680x680.jpg', '【限时领券立省50元】6.5英寸极边全面屏 | 骁龙855旗舰处理器 | 4500mAh续航怪兽 | UFS 3.0 高速闪存 | 「双」·立体声扬声器 | 超广角 AI 三摄 | 线性振动马达 | 全球频段');
INSERT INTO `tb_phones` VALUES (4, '魅族 17 航母限定版', 4299, 1, '//openfile.meizu.com/group1/M00/08/00/Cgbj0F7xzpyAa8HVAA4vgUaoAFA933.png680x680.jpg', '高通骁龙 865 + UFS 3.1 高速闪存 | 6400W 全场景影像系统 | 定制三星 Super AMOLED 90 帧直屏 | 4500mAh 超大电池 + 30W 快充 | 智能全功能 NFC');
INSERT INTO `tb_phones` VALUES (5, '魅族 17 Pro 晓芳窑艺术典藏版', 9999, 1, '//openfile.meizu.com/group1/M00/07/CF/Cgbj0F61BXaARxdvAAqWtjjyY08964.png680x680.jpg', '这艺术 科技极了');
INSERT INTO `tb_phones` VALUES (6, '魅族 16Xs', 1699, 1, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRJ-AWr44AAiGUPbS22w583.png680x680.jpg', '极边全面屏 | 4800W AI三摄 | 疾速屏下指纹 | 4000mAh大电池 | 高通骁龙675 | Onemind 3.0 | 绚丽多彩新色系');
INSERT INTO `tb_phones` VALUES (7, '魅族 16s Pro', 2699, 1, '//openfile.meizu.com/group1/M00/07/5F/Cgbj0V1jhtuAa71pAAd3EPLUA9Q862.png680x680.jpg', '高通骁龙 855 Plus | 索尼 4800W 像素超广角 AI 三摄 | 极边全面屏 | Flyme8 尝鲜体验 | 极速屏下指纹 | 全功能NFC');
INSERT INTO `tb_phones` VALUES (8, '魅族 X8', 1098, 1, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSK2AQZgiAAlFKHoO-co889.png680x680.jpg', '骁龙710 | 6.2寸定制浅刘海屏 | 89.6%屏占比 | 旗舰双摄 | 人脸+指纹双解锁');
INSERT INTO `tb_phones` VALUES (9, '魅族 17', 3699, 2, '//openfile.meizu.com/group1/M00/08/0C/Cgbj0V7gsj-AY4bcAAleFw4c8xs116.png680x680.jpg', '【MY+ 10周年 限时赠HIFI】【老用户专享18个月超长保修】【学生专享12期免息+学生礼包】5G旗舰 | 高通骁龙 865 + UFS 3.1 高速闪存 | 6400W 全场景影像系统');
INSERT INTO `tb_phones` VALUES (10, '魅族 17 Pro', 4299, 2, '//openfile.meizu.com/group1/M00/07/F5/Cgbj0F7gskGAT8SdAAi5TCCOE2Y178.png680x680.jpg', '【MY+ 10周年 限时赠HIFI】【老用户专享18个月超长保修】【学生专享12期免息+学生礼包】5G旗舰 | 高通骁龙 865 + UFS 3.1 + LPDDR5 | 6400W 全场景 AR 专业影像系统');
INSERT INTO `tb_phones` VALUES (11, '魅族 16T', 2299, 3, '//openfile.meizu.com/group1/M00/07/7A/Cgbj0V2upxqANyVFAAjApUYA58w668.png680x680.jpg', '【限时领券立省50元】6.5英寸极边全面屏 | 骁龙855旗舰处理器 | 4500mAh续航怪兽 | UFS 3.0 高速闪存 | 「双」·立体声扬声器 | 超广角 AI 三摄 | 线性振动马达 | 全球频段');
INSERT INTO `tb_phones` VALUES (12, '魅族 17 航母限定版', 4299, 2, '//openfile.meizu.com/group1/M00/08/00/Cgbj0F7xzpyAa8HVAA4vgUaoAFA933.png680x680.jpg', '高通骁龙 865 + UFS 3.1 高速闪存 | 6400W 全场景影像系统 | 定制三星 Super AMOLED 90 帧直屏 | 4500mAh 超大电池 + 30W 快充 | 智能全功能 NFC');
INSERT INTO `tb_phones` VALUES (13, '魅族 17 Pro 晓芳窑艺术典藏版', 9999, 2, '//openfile.meizu.com/group1/M00/07/CF/Cgbj0F61BXaARxdvAAqWtjjyY08964.png680x680.jpg', '这艺术 科技极了');
INSERT INTO `tb_phones` VALUES (14, '魅族 16Xs', 1699, 3, '//openfile.meizu.com/group1/M00/07/44/Cgbj0VzvRJ-AWr44AAiGUPbS22w583.png680x680.jpg', '极边全面屏 | 4800W AI三摄 | 疾速屏下指纹 | 4000mAh大电池 | 高通骁龙675 | Onemind 3.0 | 绚丽多彩新色系');
INSERT INTO `tb_phones` VALUES (15, '魅族 16s Pro', 2699, 2, '//openfile.meizu.com/group1/M00/07/5F/Cgbj0V1jhtuAa71pAAd3EPLUA9Q862.png680x680.jpg', '高通骁龙 855 Plus | 索尼 4800W 像素超广角 AI 三摄 | 极边全面屏 | Flyme8 尝鲜体验 | 极速屏下指纹 | 全功能NFC');
INSERT INTO `tb_phones` VALUES (16, '魅族 X8', 1098, 3, '//openfile.meizu.com/group1/M00/06/A9/Cgbj0FusSK2AQZgiAAlFKHoO-co889.png680x680.jpg', '');
COMMIT;

-- ----------------------------
-- Table structure for tb_shopping
-- ----------------------------
DROP TABLE IF EXISTS `tb_shopping`;
CREATE TABLE `tb_shopping` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tb_shopping
-- ----------------------------
BEGIN;
INSERT INTO `tb_shopping` VALUES (31, 5, 3, 3, NULL);
INSERT INTO `tb_shopping` VALUES (32, 5, 5, 1, NULL);
INSERT INTO `tb_shopping` VALUES (33, 5, 4, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `uid` int(16) NOT NULL AUTO_INCREMENT,
  `username` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
BEGIN;
INSERT INTO `tb_user` VALUES (3, '15621437520', '73f288f1902bf16725cfb0aed3bdd829');
INSERT INTO `tb_user` VALUES (5, '17806283937', '73f288f1902bf16725cfb0aed3bdd829');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
