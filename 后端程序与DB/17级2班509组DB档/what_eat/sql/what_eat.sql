/*
Navicat MySQL Data Transfer

Source Server         : txmysql
Source Server Version : 50727
Source Host           : 106.52.93.251:3306
Source Database       : what_eat

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-12-13 12:11:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `method` varchar(200) CHARACTER SET gbk COLLATE gbk_bin DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `collected` int(20) DEFAULT '0',
  `deleted` int(20) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '川菜', '鱼香肉丝', '锅内下30克色拉油，大火将油烧至7成热，放入腌好的肉丝，快速翻炒。放入焯好的笋丝和木耳丝、胡萝卜丝、青椒丝后，继续翻炒均', 'https://oss.izumi-sakai.top/img/1.png', '1', '0');
INSERT INTO `menu` VALUES ('2', '川菜', '酸辣土豆丝', '大火将油烧至7成热，下葱姜蒜各10克，泡椒沫10克，煸炒出香味;将青红椒丝放入，炒半分钟。然后下焯好的土豆丝，大火爆炒；', 'https://oss.izumi-sakai.top/img/41.png', '0', '0');
INSERT INTO `menu` VALUES ('3', '川菜', '麻婆豆腐', '锅内下20克色拉油，大火将油烧至7成热，下牛肉沫100克，放老抽5克，放入蒜蓉和豆瓣酱30克。', 'https://oss.izumi-sakai.top/img/61.png', '0', '0');
INSERT INTO `menu` VALUES ('4', '川菜', '酸菜鱼', '在鱼片中加入5克料酒、白胡椒粉、蛋清和适量的盐，轻轻把鱼片抓匀，腌制10分钟。起锅下40克油，加入酸菜和鱼头鱼骨。逐片放入鱼片煮熟。', 'https://oss.izumi-sakai.top/img/11.png', '0', '0');
INSERT INTO `menu` VALUES ('5', '川菜', '回锅肉', '热锅下少许油滑锅，下肉片中火煸炒，至肉片出油。下蒜苗茎（白）、白糖、适量的盐翻炒均匀出锅。', 'https://oss.izumi-sakai.top/img/61.png', '0', '0');
INSERT INTO `menu` VALUES ('6', '川菜', '水煮鱼', '水煮沸后，倒入腌制好的鱼片，轻轻划散，加入植物油（多一些）放入花椒，八角桂皮，干辣椒，小火煸出香味。', 'https://oss.izumi-sakai.top/img/21.png', '0', '0');
INSERT INTO `menu` VALUES ('7', '川菜', '糖醋排骨', '锅内加水烧开，放入排骨，放入葱姜片，待排骨冷却后，裹上淀粉，炸成金黄。放入番茄酱10克，煸出香味，加100克清水，加盐5克，白糖15克。', 'https://oss.izumi-sakai.top/img/31.png', '0', '0');
INSERT INTO `menu` VALUES ('8', '川菜', '水煮肉片', '锅里水烧滚，依次放入白菜，黄豆芽，金针菇绰水。锅烧7成热倒入适量多的油，放入盘子里腌制好的肉片，用锅铲推散开，中火炸5分钟，', 'https://oss.izumi-sakai.top/img/52.png', '0', '0');
INSERT INTO `menu` VALUES ('9', '川菜', '宫保鸡丁', '锅内下20克色拉油，大火将油烧至7成热放入鸡脯肉丁，放入料酒10克，盐1克，醋5克，白糖10克，鸡粉3克，老抽10克，生抽10克，大火翻炒。', 'https://oss.izumi-sakai.top/img/41.png', '0', '0');
INSERT INTO `menu` VALUES ('10', '川菜', '东坡肉', '大火烧开，放入改好的肉块，盖盖改中火炖30分钟后，改大火收汁。装盘，边上码上西兰花即可。', 'https://oss.izumi-sakai.top/img/11.png', '0', '0');
INSERT INTO `menu` VALUES ('11', '苏菜', '蒜泥白肉', '将油浇在碗里后用勺子搅均匀，随后加入2勺酱油，1勺香油，1勺陈醋和适量的盐搅拌均匀备用，将切好的五花肉摆在盘子里，浇上碗汁即可。', 'https://oss.izumi-sakai.top/img/11.png', '0', '0');
INSERT INTO `menu` VALUES ('12', '苏菜', '锅巴肉片', '锅巴掰成小块铺盘垫底。用糖，酱油，香醋调汁备用。热锅凉油，滑炒肉片，炒香葱姜蒜，铺好锅巴的盘子，即可。', 'https://oss.izumi-sakai.top/img/12.png', '0', '0');
INSERT INTO `menu` VALUES ('13', '苏菜', '糖醋脆皮鱼', '炸好的鱼，控油，装盘待用。起锅热油，加入葱姜蒜末爆香，加入红椒青椒，加适量盐，白糖，醋，白胡椒粉，将汤汁，浇在鱼身上面。', 'https://oss.izumi-sakai.top/img/13.png', '0', '0');
INSERT INTO `menu` VALUES ('14', '苏菜', '粉蒸排骨', '将排骨内加10克料酒，两三片姜和蒜，加入腐乳汁10克，腌制15-30分钟。将米碎倒入腌好的排骨中，抓匀。将排骨放入蒸锅内，用中火蒸30分钟。', 'https://oss.izumi-sakai.top/img/14.png', '0', '0');
INSERT INTO `menu` VALUES ('15', '苏菜', '啤酒鸭', '锅中烧水，水中加一片姜和适量料酒，水开将鸭肉入热水焯一下，捞起。起锅烧油，加酱油、盐、蚝油和小许白糖翻炒片刻，再倒入半瓶啤酒，加入鸭肉。', 'https://oss.izumi-sakai.top/img/15.png', '0', '0');
INSERT INTO `menu` VALUES ('16', '苏菜', '川味粉蒸排骨', '入码好料的排骨一起和匀，加入少许花椒面调和。炒制辣椒酱。锅中倒入适量菜油烧开，浇在排骨上，上锅蒸制半小时左右即可。', 'https://oss.izumi-sakai.top/img/16.png', '0', '0');
INSERT INTO `menu` VALUES ('17', '苏菜', '香辣虾', '锅内下10克油，待油烧至7成热，即手放油表面有明显的热度时，下葱姜蒜和豆瓣酱，大火爆香。放入焯好的虾，焖煮10分钟。盛出后撒些香菜段。', 'https://oss.izumi-sakai.top/img/17.png', '0', '0');
INSERT INTO `menu` VALUES ('18', '苏菜', '红烧茄子', '大火加热至7成热，放入肉沫100克，大火翻炒，炒至肉沫变色，放入番茄酱10克，待汤汁大火炒出香味，放入炸好的茄子，下青椒丝。', 'https://oss.izumi-sakai.top/img/18.png', '0', '0');
INSERT INTO `menu` VALUES ('19', '苏菜', '水煮鱼片', '将煮好的鱼片捞出放在烫好的素菜上，将烧开的油淋在上面（淋油之前撒点胡椒粉和花椒粉）。', 'https://oss.izumi-sakai.top/img/19.png', '0', '0');
INSERT INTO `menu` VALUES ('20', '苏菜', '川味凉面', '锅子里水烧开，下面煮至8分熟，捞出过凉水。将凉面盛入盘子里 上面铺些花生碎，切好的黄瓜丝，红椒丝，小葱沫。', 'https://oss.izumi-sakai.top/img/20.png', '0', '0');
INSERT INTO `menu` VALUES ('21', '闽菜', '辣白菜', '把腌制好的白菜挤去所有水分，把煮好的酱料一层一层的涂抹在白菜上。将做好的辣白菜用干净的容器装起来室温发酵一天。', 'https://oss.izumi-sakai.top/img/21.png', '0', '0');
INSERT INTO `menu` VALUES ('22', '闽菜', '溜肉段', '锅中放宽油烧热后，一条一条的下入裹满淀粉糊的肉条，放入蒜末爆出香味。再放入胡萝卜和尖椒翻炒几下。', 'https://oss.izumi-sakai.top/img/22.png', '0', '0');
INSERT INTO `menu` VALUES ('23', '闽菜', '老虎菜', '将切好的黄瓜丝、青椒丝放入碗中，加入盐、味精、白糖、香油、白醋拌匀。再加入香菜和红椒丝，拌一下。', 'https://oss.izumi-sakai.top/img/23.png', '0', '0');
INSERT INTO `menu` VALUES ('24', '闽菜', '牛肉萝卜汤', '锅里放水，水开放牛肉，山楂数个，大料，葱，姜开始炖。把萝卜放进去。加入盐开始炖。炖好后，盛碗里放点香菜。', 'https://oss.izumi-sakai.top/img/24.png', '0', '0');
INSERT INTO `menu` VALUES ('25', '闽菜', '芹菜炒肉丝', '将切好的肉丝放入器皿中，加盐5克，料酒5克，抓匀。继续加淀粉5克，拌匀，腌制10分钟。锅内下15克色拉油，加入焯好的芹菜和肉丝。', 'https://oss.izumi-sakai.top/img/25.png', '0', '0');
INSERT INTO `menu` VALUES ('26', '闽菜', '东北尖椒干豆腐', '锅中油烧热后，下入五花肉煸炒，下葱姜，下入干豆腐，加入花椒粉。加水炖煮一会，让干豆腐入味。', 'https://oss.izumi-sakai.top/img/26.png', '0', '0');
INSERT INTO `menu` VALUES ('27', '闽菜', '猪肉炖粉条', '锅中烧热下5克色拉油，放入白糖水，小火慢慢熬成糖色。下入五花肉翻炒上色。清水大火烧开，加入粉条，炖5分钟，加入肉块。', 'https://oss.izumi-sakai.top/img/27.png', '0', '0');
INSERT INTO `menu` VALUES ('28', '闽菜', '凉拌菜', '放入事先泡发的豆皮、桔梗、胡萝卜、黄瓜和洋葱丝，加入调料，盐、鸡粉、白糖、料酒、蒜末、姜末、麻椒粉、辣椒油、香菜段搅拌钧匀。', 'https://oss.izumi-sakai.top/img/28.png', '0', '0');
INSERT INTO `menu` VALUES ('29', '闽菜', '西红柿鸡蛋饺子', '用西红柿水和面。用保鲜膜盖上饧半个小时。把西红柿鸡蛋馅放入饺子皮里。', 'https://oss.izumi-sakai.top/img/29.png', '0', '0');
INSERT INTO `menu` VALUES ('30', '闽菜', '尖椒炒肥肠', '锅烧油热，放入姜片蒜片爆香倒入青红椒翻炒。再把肥肠洋葱片一起倒入锅里大火翻炒，加入黄酒盐糖爆炒一会。', 'https://oss.izumi-sakai.top/img/30.png', '0', '0');
INSERT INTO `menu` VALUES ('31', '浙菜', '东北乱炖', '给肉均匀上色，肉的油炒出后，放上调料炒香，倒上老抽，少量白酒，肉八成熟，放蔬菜，关火闷2分钟。', 'https://oss.izumi-sakai.top/img/31.png', '1', '0');
INSERT INTO `menu` VALUES ('32', '浙菜', '锅包肉', '锅中多放些油烧至七成热，把肉一片一片的放入锅中，炸至表皮变硬，放入白糖，醋和适量清水翻炒均匀，把炸好的肉放入锅中均匀的裹上汁就可以出锅了。', 'https://oss.izumi-sakai.top/img/32.png', '0', '0');
INSERT INTO `menu` VALUES ('33', '浙菜', '小鸡炖蘑菇', '大火加热炒锅中的油，放入仔鸡块翻炒，至鸡肉变色放入葱段，蒜瓣。放入榛蘑后再炖50分钟，汤汁收浓即可。', 'https://oss.izumi-sakai.top/img/33.png', '0', '0');
INSERT INTO `menu` VALUES ('34', '浙菜', '排骨炖小土豆', '洗干净锅烧热倒入花生油，下白糖小火熬糖色，快速把排骨倒下去使每块排骨裹上糖色，下入土豆翻炒均匀再次盖上盖子继续开小火煮十五分钟即可。', 'https://oss.izumi-sakai.top/img/34.png', '0', '0');
INSERT INTO `menu` VALUES ('35', '浙菜', '木须肉', '锅内下油，待油温烧至7成热时，放入葱姜蒜爆香，先放入胡萝卜片，翻炒半分钟后放入黄瓜片和木耳，加1克盐，1克胡椒粉翻炒。最后放入炒好的肉片和鸡蛋，放入2克鸡粉，翻炒均匀即可关火。', 'https://oss.izumi-sakai.top/img/35.png', '0', '0');
INSERT INTO `menu` VALUES ('36', '浙菜', '酱骨头', '将泡净血水的脊骨冲洗数遍后置高压锅中加啤酒和料酒没过猪骨；再放入两大勺干黄酱。倒入老抽，放入盐和糖，小火慢慢加热。', 'https://oss.izumi-sakai.top/img/36.png', '0', '0');
INSERT INTO `menu` VALUES ('37', '浙菜', '红烧肘子', '放入葱段，姜片和料包，放入冰糖10-20颗，加入盐，生抽和老抽，放5-6片山楂干，放入猪肘，把水加到沒过肘子一指，盖盖开始煮，时间设定半个小时。', 'https://oss.izumi-sakai.top/img/37.png', '0', '0');
INSERT INTO `menu` VALUES ('38', '浙菜', '香煎带鱼', '腌好的带鱼用厨房用纸吸干水份。锅中下底油，下带鱼煎制，调中小火，一面煎至金黄，再翻另一面。', 'https://oss.izumi-sakai.top/img/38.png', '0', '0');
INSERT INTO `menu` VALUES ('39', '浙菜', '香辣肉丝', '底油爆香葱姜，下尖椒和香菜翻炒，炒制断生，加肉丝翻炒均匀，放盐，鸡精调味，最后撒少许蒜末盛出即可。', 'https://oss.izumi-sakai.top/img/39.png', '0', '0');
INSERT INTO `menu` VALUES ('40', '浙菜', '东北锅包肉', '锅加油7成热后，将肉片一片片展开下入锅中，逐一下锅，中火炸至变微黄，捞出。加白糖、醋熬至有稠状，快速下炸好的肉片翻炒，使肉片均匀裹上汁即关火出锅。', 'https://oss.izumi-sakai.top/img/40.png', '0', '0');
INSERT INTO `menu` VALUES ('41', '粤菜', '叉烧肉', '蒜剁蒜蓉，一汤匙叉烧酱，放入叉烧肉，腌制一天。取出，放辣椒和葱，盖好盖子按下煮饭键。', 'https://oss.izumi-sakai.top/img/41.png', '0', '0');
INSERT INTO `menu` VALUES ('42', '粤菜', '菠萝滑鸡片', '起锅，加适量食用油。油温六成热左右，放入处理好的鸡肉片。加入蒜末爆香，放入菠萝块，快速翻炒。', 'https://oss.izumi-sakai.top/img/42.png', '0', '0');
INSERT INTO `menu` VALUES ('43', '粤菜', '糖醋豆腐', '锅中热油，放入豆腐块煎，放入番茄酱炒，加入白糖，白醋，盐，水烧开。', 'https://oss.izumi-sakai.top/img/43.png', '0', '0');
INSERT INTO `menu` VALUES ('44', '粤菜', '肚包鸡', '焯好的鸡和一半的辅料一起装进猪肚，猪肚入煲。煲好的肚包鸡捞出斩件，回汤中再次煮开，加盐和胡椒粉即可食用。', 'https://oss.izumi-sakai.top/img/44.png', '0', '0');
INSERT INTO `menu` VALUES ('45', '粤菜', '脆皮炸鲜奶', '牛奶、白糖、玉米淀粉、奶粉一起倒入锅中，搅拌均匀后，开小火边加热边搅拌。关火倒入慕斯圈中。先裹一层低粉，再裹蛋液，最后再裹一层面包糠。炸至金黄即可。', 'https://oss.izumi-sakai.top/img/45.png', '0', '0');
INSERT INTO `menu` VALUES ('46', '粤菜', '山楂罐头', '烧水放入山楂，倒入白糖，盖上锅盖，等待10多分钟', 'https://oss.izumi-sakai.top/img/46.png', '0', '0');
INSERT INTO `menu` VALUES ('47', '粤菜', '糖醋黄花鱼', '锅中放油，加热至八成热，把还好刀的鱼裹上糊下锅，转小火寖炸。锅中留少许油，加入番茄酱，白唐，白醋，少许盐，打芡，浇在鱼上即可。', 'https://oss.izumi-sakai.top/img/47.png', '0', '0');
INSERT INTO `menu` VALUES ('48', '粤菜', '腊肠炒荷兰豆', '锅中倒入适量的油烧热后倒入腊肠，炒至腊肠变透明，加入荷兰豆，翻炒均匀，加入鸡粉，盐翻炒均匀即可关火。', 'https://oss.izumi-sakai.top/img/48.png', '0', '0');
INSERT INTO `menu` VALUES ('49', '粤菜', '糯米鸡', '热油锅入鸡块煸炒至发白，加料酒，入辣椒，大葱姜片翻炒。鸡块，糯米，干贝，香菇，火腿，胡椒粉等混合均匀，荷叶包裹，倒口蒸笼中，沸水锅大火蒸20分钟。', 'https://oss.izumi-sakai.top/img/49.png', '0', '0');
INSERT INTO `menu` VALUES ('50', '粤菜', '粤式白灼虾', '锅里少量油烧热，下姜片葱段下锅爆香，再加水，烧开后下适量盐和黄酒，将基围虾下锅煮。', 'https://oss.izumi-sakai.top/img/50.png', '0', '0');
INSERT INTO `menu` VALUES ('51', '徽菜', '白灼基围虾', '在锅中加入少许油，放入姜蒜，然后放入基围虾，加入盐，料酒和耗油，翻炒一下，加入适量的水煮片刻。', 'https://oss.izumi-sakai.top/img/51.png', '1', '0');
INSERT INTO `menu` VALUES ('52', '徽菜', '白切鸡', '锅中放入水，放入4勺子料酒，放入葱结，3勺子盐，姜片烧沸，然后放入鸡大火烧开转小火慢煮半个钟。', 'https://oss.izumi-sakai.top/img/52.png', '0', '0');
INSERT INTO `menu` VALUES ('53', '徽菜', '清蒸鲈鱼', '锅中烧开水，放入鱼蒸8至10分钟，关火后再虚蒸个三五分钟。把葱丝撒到鱼身上，再把蒸鱼豉油倒入锅中，少添一点水烧开后淋在鱼身上即可。', 'https://oss.izumi-sakai.top/img/53.png', '0', '0');
INSERT INTO `menu` VALUES ('54', '徽菜', '上汤苋菜', '开火锅热放油蒜蓉爆香再下姜丝，加入猪肉和皮蛋的水大火继续滚上三几分钟，然后放进苋菜。', 'https://oss.izumi-sakai.top/img/54.png', '0', '0');
INSERT INTO `menu` VALUES ('55', '徽菜', '孔雀开屏鱼', '把料酒，生抽，茶油，豆豉蒸鱼油放入一个小碗里，搅拌均匀调成料汁，均匀的淋在整盘鱼上面，盖上锅盖用大火蒸十分钟左右就可以。', 'https://oss.izumi-sakai.top/img/55.png', '0', '0');
INSERT INTO `menu` VALUES ('56', '徽菜', '翡翠虾仁', '锅烧热，加入油，加入蒜头，大火加入青瓜翻炒。加入少量水，改小火，油热后改小的，加入腌好的虾仁，小火煎十分钟。', 'https://oss.izumi-sakai.top/img/56.png', '0', '0');
INSERT INTO `menu` VALUES ('57', '徽菜', '煎酿茄子', '茄子洗干净，切成3厘米厚的段，用勺子挖去中间心的部分，把调好的肉馅用勺子装到茄子段里抹平，盖上盖两面都可以煎出颜色。', 'https://oss.izumi-sakai.top/img/57.png', '0', '0');
INSERT INTO `menu` VALUES ('58', '徽菜', '腊味煲仔饭', '砂锅内的米泡好后，开火，大火烧开，转小火慢煮，放入切好的腊肠，盖好盖子小火继续煮5分钟，等砂锅焖到10分钟，放入油菜，10分钟后即可出锅。', 'https://oss.izumi-sakai.top/img/58.png', '0', '0');
INSERT INTO `menu` VALUES ('59', '徽菜', '清蒸桂鱼', '锅里水开后，放入桂鱼蒸5至6分钟，青椒丝、红椒丝、大葱丝控干水后，铺在鱼身上。锅里烧少许热油，浇在青椒丝、红椒丝、大葱丝上，趁热淋上调料汁。即食。', 'https://oss.izumi-sakai.top/img/59.png', '0', '0');
INSERT INTO `menu` VALUES ('60', '徽菜', '蒜茸炒丝瓜', '起油锅先放红椒过油，使红椒5成熟后下蒜蓉，煸炒出香味，下控干水分的丝瓜，翻炒均匀至丝瓜断生，放味精及过油的红椒菱形片，翻炒均匀即可出锅。', 'https://oss.izumi-sakai.top/img/60.png', '0', '0');
INSERT INTO `menu` VALUES ('61', '湘菜', '鱼香茄子', '猪肉糜中加少许生粉，料酒，腌制片刻。茄条中加入生粉捞匀。锅中放入猪肉糜滑散炒变色，锅中放入沥好油的茄条，中火翻匀。', 'https://oss.izumi-sakai.top/img/61.png', '0', '0');
INSERT INTO `menu` VALUES ('62', '湘菜', '芥兰炒湘西腊肉', '油热放蒜末和姜丝爆香，再放腊肉爆香，放芥兰菜入锅炒均匀。芥兰炒至九成熟放适量米酒和蚝油然后上碟。', 'https://oss.izumi-sakai.top/img/62.png', '0', '0');
INSERT INTO `menu` VALUES ('63', '湘菜', '竹笋烧肉', '小火起锅炒糖色，放入油和黄冰糖慢慢化开，炒至深褐色。放入焯好的五花肉翻炒，使每块五花肉上都裹上糖色。加入煮过的笋块，中火煮15分钟，转大火收至汤汁浓稠。', 'https://oss.izumi-sakai.top/img/63.png', '0', '0');
INSERT INTO `menu` VALUES ('64', '湘菜', '干锅肥肠', '起锅把水煮开，把剪好的肥肠放进开水里，下料酒煮大约25分钟左右。起锅放油，加入蒜苗和肥肠爆炒，老抽上色，生抽提鲜。', 'https://oss.izumi-sakai.top/img/64.png', '0', '0');
INSERT INTO `menu` VALUES ('65', '湘菜', '金钱蛋', '锅中放入炸好的鸡蛋圈，盐，十三香一起翻炒，翻炒时，火要大，动作要快，以免鸡蛋炒糊，快起锅时可以稍微的加点儿水，让盐有个融化的过程', 'https://oss.izumi-sakai.top/img/65.png', '0', '0');
INSERT INTO `menu` VALUES ('66', '湘菜', '竹荪排骨汤', '将山药，猪骨和生姜加入煲中，加适量清水，用大火把汤烧开，转小火慢炖1小时左右.竹荪加入汤中，继续小火慢炖半小时。', 'https://oss.izumi-sakai.top/img/66.png', '0', '0');
INSERT INTO `menu` VALUES ('67', '湘菜', '剁椒蒸金针菇', '锅中放入水把金针菇放下去隔水蒸10分钟，把金针菇蒸出来的水倒掉，然后把剁椒摆上去继续蒸5分钟。', 'https://oss.izumi-sakai.top/img/67.png', '0', '0');
INSERT INTO `menu` VALUES ('68', '湘菜', '酱牛肉', '冲洗干净的肉摸上适量的黄酱和老抽，盐，料酒腌制一个小时。高压锅内倒入所以的食材，中火炖1给小时。炖好的肉在锅里面泡一晚上。自然放凉。', 'https://oss.izumi-sakai.top/img/68.png', '0', '0');
INSERT INTO `menu` VALUES ('69', '湘菜', '酸豆角炒鸡胗', '热锅下油，将干辣椒、葱、姜和青蒜爆香，放入鸡胗和蚝油中火翻炒2分钟。再加入杭椒、小米椒、酸豆角炒几下。', 'https://oss.izumi-sakai.top/img/69.png', '0', '0');
INSERT INTO `menu` VALUES ('70', '湘菜', '家常豆腐', '锅里留油2层热放入豆瓣酱，姜、 蒜、葱白炒香再放肉末这时要添加适量的酱油翻炒。陆续放入豆腐，盖上锅盖烧10分钟左右。', 'https://oss.izumi-sakai.top/img/70.png', '0', '0');
INSERT INTO `menu` VALUES ('71', '鲁菜', '双椒鱼头', '生姜放鱼底，加啤酒，先调蒸鱼豉油，调鸡精，味精，胡椒粉，一边盖野山椒，一边盖剁椒。上蒸笼，蒸6―10分钟，加香菜点缀。', 'https://oss.izumi-sakai.top/img/71.png', '0', '0');
INSERT INTO `menu` VALUES ('72', '鲁菜', '油炸臭豆腐', '臭豆腐洗干净，加入热油中，炸至金黄捞出沥油，摆盘，加入番茄酱葱花即可。', 'https://oss.izumi-sakai.top/img/72.png', '0', '0');
INSERT INTO `menu` VALUES ('73', '鲁菜', '腊味合蒸', '把腊肉和香肠放锅里焯下水，放凉后切片，蒸饭的时候放到上面蒸上，饭熟就可以了。', 'https://oss.izumi-sakai.top/img/73.png', '0', '0');
INSERT INTO `menu` VALUES ('74', '鲁菜', '炸鸡蛋酱', '搅拌好的鸡蛋液倒入锅内，青椒丁，葱花同时倒入锅内一起翻炒，再加入干辣椒面一起翻炒。加入4勺豆瓣酱，继续翻炒，炒出酱香味。', 'https://oss.izumi-sakai.top/img/74.png', '0', '0');
INSERT INTO `menu` VALUES ('75', '鲁菜', '农家小炒肉', '炒锅放油，五层热放肉炒断生，炒肉时里面放一点醋，接着放洋葱，肉一起翻炒，这时火要大一些不停地翻炒。', 'https://oss.izumi-sakai.top/img/75.png', '0', '0');
INSERT INTO `menu` VALUES ('76', '鲁菜', '剁椒鱼头', '鱼头铺上红绿剁椒，加5克白糖，撒些姜末，盖锅盖，大火蒸15分钟后关火。取净锅下油，待油温烧至7成热时将油浇到鱼头上即可。', 'https://oss.izumi-sakai.top/img/76.png', '0', '0');
INSERT INTO `menu` VALUES ('77', '鲁菜', '左宗棠鸡', '将米醋、白糖、生抽、姜末、蒜未和10克生粉加适量清水兑成碗汁。上锅烧热油，此时用20克生粉将腌好的鸡块抓匀，炸熟成形。倒入碗汁烧至粘稠的透明状，鸡块上均匀地裹上酱汁。', 'https://oss.izumi-sakai.top/img/77.png', '0', '0');
INSERT INTO `menu` VALUES ('78', '鲁菜', '家乡豆腐', '将肉，胡萝卜片、红椒片、蒜白倒入锅中，加适量盐翻炒入味。将煎好的豆腐倒入锅中翻炒，烹入少量水，使豆腐更入味。最后加入蒜叶，稍加翻炒。', 'https://oss.izumi-sakai.top/img/78.png', '0', '0');
INSERT INTO `menu` VALUES ('79', '鲁菜', '毛家红烧肉', '热锅冷油，油热加入糖炒融化颜色变深加入五花肉翻炒上色。淋入生抽，酱油，葱姜，八角翻炒均匀加入没过五花肉的黄酒大火烧开转小火慢炖四十分钟。', 'https://oss.izumi-sakai.top/img/79.png', '0', '0');
INSERT INTO `menu` VALUES ('80', '鲁菜', '蒜苗炒腊肉', '锅内倒油油热下葱姜末爆香，下腊肉加少量生抽翻炒至半透明状，下入蒜苗茎翻炒均匀，加少量盐 鸡精出锅即可。', 'https://oss.izumi-sakai.top/img/80.png', '0', '0');

-- ----------------------------
-- Table structure for `suggestion`
-- ----------------------------
DROP TABLE IF EXISTS `suggestion`;
CREATE TABLE `suggestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `method` varchar(200) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `idea` varchar(200) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `reviewed` int(4) DEFAULT '0',
  `passed` int(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of suggestion
-- ----------------------------
INSERT INTO `suggestion` VALUES ('1', '苏菜', '蒜泥白肉', '将油浇在碗里后用勺子搅均匀，随后加入2勺酱油，1勺香油，1勺陈醋和适量的盐搅拌均匀备用，将切好的五花肉摆在盘子里，浇上碗汁即可。', 'https://oss.izumi-sakai.top/img/11.png', 'asdasdasdasd', '2019-12-10  01:54:03', '1', '1');
INSERT INTO `suggestion` VALUES ('2', '粤菜', '叉烧肉', '蒜剁蒜蓉，一汤匙叉烧酱，放入叉烧肉，腌制一天。取出，放辣椒和葱，盖好盖子按下煮饭键。', 'https://oss.izumi-sakai.top/img/41.png', 'asdasdasdasdasdas', '2019-12-10  02:20:40', '1', '0');
INSERT INTO `suggestion` VALUES ('3', '湘菜', '鱼香茄子', '猪肉糜中加少许生粉，料酒，腌制片刻。茄条中加入生粉捞匀。锅中放入猪肉糜滑散炒变色，锅中放入沥好油的茄条，中火翻匀。', 'https://oss.izumi-sakai.top/img/61.png', '966666666666661', '2019-12-10  03:14:12', '1', '0');
INSERT INTO `suggestion` VALUES ('4', '苏菜', '蒜泥白肉', '将油浇在碗里后用勺子搅均匀，随后加入2勺酱油，1勺香油，1勺陈醋和适量的盐搅拌均匀备用，将切好的五花肉摆在盘子里，浇上碗汁即可。', 'https://oss.izumi-sakai.top/img/11.png', 'hayang de ', '2019-12-10  03:15:54', '1', '0');
INSERT INTO `suggestion` VALUES ('5', '湘菜', '鱼香茄子', '猪肉糜中加少许生粉，料酒，腌制片刻。茄条中加入生粉捞匀。锅中放入猪肉糜滑散炒变色，锅中放入沥好油的茄条，中火翻匀。', 'https://oss.izumi-sakai.top/img/61.png', 'asd', '2019-12-10  03:16:02', '1', '1');
INSERT INTO `suggestion` VALUES ('6', '闽菜', '辣白菜', '把腌制好的白菜挤去所有水分，把煮好的酱料一层一层的涂抹在白菜上。将做好的辣白菜用干净的容器装起来室温发酵一天。', 'https://oss.izumi-sakai.top/img/21.png', '96646646441', '2019-12-10  03:18:43', '1', '1');
INSERT INTO `suggestion` VALUES ('7', '浙菜', '东北乱炖', '给肉均匀上色，肉的油炒出后，放上调料炒香，倒上老抽，少量白酒，肉八成熟，放蔬菜，关火闷2分钟。', 'https://oss.izumi-sakai.top/img/31.png', ';lasojdfkafkaf', '2019-12-10  03:29:17', '1', '1');
INSERT INTO `suggestion` VALUES ('8', '徽菜', '白切鸡', '锅中放入水，放入4勺子料酒，放入葱结，3勺子盐，姜片烧沸，然后放入鸡大火烧开转小火慢煮半个钟。', 'https://oss.izumi-sakai.top/img/52.png', '615761761651', '2019-12-10  06:56:19', '1', '0');
INSERT INTO `suggestion` VALUES ('9', '粤菜', '叉烧肉', '蒜剁蒜蓉，一汤匙叉烧酱，放入叉烧肉，腌制一天。取出，放辣椒和葱，盖好盖子按下煮饭键。', 'https://oss.izumi-sakai.top/img/41.png', '\n7683451463454', '2019-12-11  04:15:01', '1', '1');
INSERT INTO `suggestion` VALUES ('10', '苏菜', '蒜泥白肉', '将油浇在碗里后用勺子搅均匀，随后加入2勺酱油，1勺香油，1勺陈醋和适量的盐搅拌均匀备用，将切好的五花肉摆在盘子里，浇上碗汁即可。', 'https://oss.izumi-sakai.top/img/11.png', '非常不错', '2019-12-11  06:07:29', '1', '0');
INSERT INTO `suggestion` VALUES ('11', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-11  06:31:41', '1', '0');
INSERT INTO `suggestion` VALUES ('12', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-11  06:39:08', '1', '0');
INSERT INTO `suggestion` VALUES ('13', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-11  06:43:36', '1', '0');
INSERT INTO `suggestion` VALUES ('14', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-11  07:27:32', '1', '0');
INSERT INTO `suggestion` VALUES ('15', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-11  07:56:25', '1', '0');
INSERT INTO `suggestion` VALUES ('16', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-11  08:05:41', '1', '0');
INSERT INTO `suggestion` VALUES ('17', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-11  08:54:44', '1', '0');
INSERT INTO `suggestion` VALUES ('18', '徽菜', '白灼基围虾', '在锅中加入少许油，放入姜蒜，然后放入基围虾，加入盐，料酒和耗油，翻炒一下，加入适量的水煮片刻。', 'https://oss.izumi-sakai.top/img/51.png', '我觉得OK', '2019-12-11  09:34:47', '1', '1');
INSERT INTO `suggestion` VALUES ('19', '闽菜', '辣白菜', '把腌制好的白菜挤去所有水分，把煮好的酱料一层一层的涂抹在白菜上。将做好的辣白菜用干净的容器装起来室温发酵一天。', 'https://oss.izumi-sakai.top/img/21.png', '奥术大师多', '2019-12-11  09:35:10', '1', '0');
INSERT INTO `suggestion` VALUES ('20', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-11  11:41:41', '1', '0');
INSERT INTO `suggestion` VALUES ('21', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-11  11:46:14', '1', '0');
INSERT INTO `suggestion` VALUES ('22', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  12:05:00', '1', '0');
INSERT INTO `suggestion` VALUES ('23', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  12:09:38', '1', '0');
INSERT INTO `suggestion` VALUES ('24', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  12:22:44', '1', '0');
INSERT INTO `suggestion` VALUES ('25', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  12:40:35', '1', '0');
INSERT INTO `suggestion` VALUES ('26', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  12:43:37', '1', '0');
INSERT INTO `suggestion` VALUES ('27', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  12:46:23', '1', '0');
INSERT INTO `suggestion` VALUES ('28', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  09:24:42', '1', '0');
INSERT INTO `suggestion` VALUES ('29', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  09:27:06', '1', '0');
INSERT INTO `suggestion` VALUES ('30', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  09:57:43', '1', '0');
INSERT INTO `suggestion` VALUES ('31', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  10:18:59', '1', '0');
INSERT INTO `suggestion` VALUES ('32', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  11:27:12', '1', '0');
INSERT INTO `suggestion` VALUES ('33', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  02:15:41', '1', '0');
INSERT INTO `suggestion` VALUES ('34', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  02:23:43', '1', '0');
INSERT INTO `suggestion` VALUES ('35', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  02:28:58', '1', '0');
INSERT INTO `suggestion` VALUES ('36', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  02:37:26', '1', '0');
INSERT INTO `suggestion` VALUES ('37', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  02:44:45', '1', '0');
INSERT INTO `suggestion` VALUES ('38', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  04:59:17', '1', '0');
INSERT INTO `suggestion` VALUES ('39', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  05:04:29', '1', '0');
INSERT INTO `suggestion` VALUES ('40', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  05:43:26', '1', '0');
INSERT INTO `suggestion` VALUES ('41', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  05:56:44', '1', '0');
INSERT INTO `suggestion` VALUES ('42', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  08:17:34', '1', '0');
INSERT INTO `suggestion` VALUES ('43', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  08:18:43', '1', '0');
INSERT INTO `suggestion` VALUES ('44', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  08:19:29', '1', '0');
INSERT INTO `suggestion` VALUES ('45', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  08:21:17', '1', '0');
INSERT INTO `suggestion` VALUES ('46', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  08:31:18', '1', '0');
INSERT INTO `suggestion` VALUES ('47', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  08:33:06', '1', '0');
INSERT INTO `suggestion` VALUES ('48', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  08:45:48', '1', '0');
INSERT INTO `suggestion` VALUES ('49', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  08:51:17', '1', '0');
INSERT INTO `suggestion` VALUES ('50', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  10:48:14', '1', '0');
INSERT INTO `suggestion` VALUES ('51', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  11:14:50', '1', '0');
INSERT INTO `suggestion` VALUES ('52', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  11:16:26', '1', '0');
INSERT INTO `suggestion` VALUES ('53', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  11:18:22', '1', '0');
INSERT INTO `suggestion` VALUES ('54', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  11:35:23', '1', '0');
INSERT INTO `suggestion` VALUES ('55', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  11:40:44', '1', '0');
INSERT INTO `suggestion` VALUES ('56', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-12  11:59:28', '1', '0');
INSERT INTO `suggestion` VALUES ('57', 'good', 'gasdasd', 'ggggg', null, 'sadasd', '2019-12-13  12:09:07', '1', '0');
INSERT INTO `suggestion` VALUES ('58', '川菜', '鱼香肉丝', '锅内下30克色拉油，大火将油烧至7成热，放入腌好的肉丝，快速翻炒。放入焯好的笋丝和木耳丝、胡萝卜丝、青椒丝后，继续翻炒均', 'https://oss.izumi-sakai.top/img/1.png', '把', '2019-12-13  08:10:40', '1', '0');
