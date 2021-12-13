/*
Navicat SQL Server Data Transfer

Source Server         : sql server
Source Server Version : 140000
Source Host           : 192.168.182.100:1433
Source Database       : shop
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 140000
File Encoding         : 65001

Date: 2021-12-12 22:03:10
*/


-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE [dbo].[address]
GO
CREATE TABLE [dbo].[address] (
[id] int NOT NULL IDENTITY(1,1) ,
[contact] varchar(32) NOT NULL ,
[mobile] varchar(32) NOT NULL ,
[street] varchar(255) NOT NULL ,
[zipcode] varchar(32) NULL DEFAULT NULL ,
[mbr_id] int NOT NULL ,
[default_value] tinyint NULL DEFAULT ('0') 
)


GO
DBCC CHECKIDENT(N'[dbo].[address]', RESEED, 8)
GO

-- ----------------------------
-- Records of address
-- ----------------------------
SET IDENTITY_INSERT [dbo].[address] ON
GO
INSERT INTO [dbo].[address] ([id], [contact], [mobile], [street], [zipcode], [mbr_id], [default_value]) VALUES (N'1', N'张三', N'13902025678', N'天津·西青区·津静路26号', N'300384', N'1', N'0')
GO
GO
INSERT INTO [dbo].[address] ([id], [contact], [mobile], [street], [zipcode], [mbr_id], [default_value]) VALUES (N'2', N'李四', N'13702204321', N'天津市滨海高新区华苑产业区海泰华科三路1号华鼎智地3号楼4层', N'300384', N'1', N'0')
GO
GO
INSERT INTO [dbo].[address] ([id], [contact], [mobile], [street], [zipcode], [mbr_id], [default_value]) VALUES (N'3', N'王5', N'022-87188666', N'天津市南开区华苑路26号dddddd', N'300384', N'1', N'1')
GO
GO
INSERT INTO [dbo].[address] ([id], [contact], [mobile], [street], [zipcode], [mbr_id], [default_value]) VALUES (N'5', N'钱七', N'777', N'广东东莞', N'200020', N'2', N'1')
GO
GO
INSERT INTO [dbo].[address] ([id], [contact], [mobile], [street], [zipcode], [mbr_id], [default_value]) VALUES (N'7', N'hrs', N'13029827583', N'广东省深圳市', N'123456', N'12', N'1')
GO
GO
SET IDENTITY_INSERT [dbo].[address] OFF
GO

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE [dbo].[category]
GO
CREATE TABLE [dbo].[category] (
[id] int NOT NULL IDENTITY(1,1) ,
[name] varchar(64) NULL DEFAULT NULL ,
[alias] varchar(64) NULL DEFAULT NULL ,
[p_id] int NULL DEFAULT NULL ,
[order_weight] int NULL DEFAULT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[category]', RESEED, 22)
GO

-- ----------------------------
-- Records of category
-- ----------------------------
SET IDENTITY_INSERT [dbo].[category] ON
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'1', N'手    机', N'shouji', null, N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'2', N'电脑办公', N'diannaobangong', null, N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'3', N'影音娱乐', N'yingyinyule', null, N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'4', N'小  家 电', N'xiaojiadian', null, N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'5', N'大  家 电', N'dajiadian', null, N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'6', N'摄影器材', N'sheyingqicai', null, N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'7', N'酷玩潮品', N'yidong', null, N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'8', N'移动手机', N'zhinengji', N'1', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'9', N'联通手机', N'liantong', N'1', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'10', N'电信手机', N'dianxin', N'1', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'11', N'笔记本', N'bijiben', N'2', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'12', N'台式机', N'taishiji', N'2', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'13', N'数码影音', N'shumayingyin', N'3', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'14', N'家庭影院', N'jiatingyingyuan', N'3', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'15', N'个护电器', N'gehudianqi', N'4', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'16', N'健康电器', N'jiankangdianqi', N'4', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'17', N'冰箱', N'bingxiang', N'5', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'18', N'空调', N'kongtiao', N'5', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'19', N'洗衣机', N'xiyiji', N'5', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'20', N'摄影摄像', N'sheyingshexiang', N'6', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'21', N'摄影配件', N'sheyingpeijian', N'6', N'10')
GO
GO
INSERT INTO [dbo].[category] ([id], [name], [alias], [p_id], [order_weight]) VALUES (N'22', N'潮品', N'chaopin', N'7', N'10')
GO
GO
SET IDENTITY_INSERT [dbo].[category] OFF
GO

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE [dbo].[item]
GO
CREATE TABLE [dbo].[item] (
[id] int NOT NULL IDENTITY(1,1) ,
[order_id] int NOT NULL ,
[product_id] int NOT NULL ,
[amount] int NULL DEFAULT NULL ,
[total_price] decimal(9,2) NULL DEFAULT NULL ,
[payment_price] decimal(9,2) NULL DEFAULT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[item]', RESEED, 15)
GO

-- ----------------------------
-- Records of item
-- ----------------------------
SET IDENTITY_INSERT [dbo].[item] ON
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'1', N'1', N'3', N'2', N'1598.00', N'1398.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'2', N'1', N'14', N'1', N'999.00', N'999.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'3', N'2', N'12', N'2', N'6798.00', N'6198.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'4', N'2', N'15', N'2', N'1998.00', N'1998.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'5', N'3', N'6', N'4', N'800.00', N'672.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'6', N'4', N'16', N'3', N'8100.00', N'6000.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'7', N'5', N'22', N'1', N'6999.00', N'6530.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'8', N'6', N'17', N'1', N'1998.00', N'1500.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'9', N'7', N'24', N'1', N'1999.00', N'1500.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'10', N'10', N'26', N'1', N'8999.00', N'8700.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'11', N'11', N'25', N'1', N'6999.00', N'6850.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'12', N'12', N'26', N'1', N'8999.00', N'8700.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'13', N'13', N'17', N'1', N'1998.00', N'1500.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'14', N'13', N'12', N'1', N'3399.00', N'3099.00')
GO
GO
INSERT INTO [dbo].[item] ([id], [order_id], [product_id], [amount], [total_price], [payment_price]) VALUES (N'15', N'13', N'13', N'1', N'3288.00', N'3288.00')
GO
GO
SET IDENTITY_INSERT [dbo].[item] OFF
GO

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE [dbo].[member]
GO
CREATE TABLE [dbo].[member] (
[id] int NOT NULL IDENTITY(1,1) ,
[mobile] varchar(32) NOT NULL ,
[pwd] varchar(32) NOT NULL ,
[nick_name] varchar(32) NULL DEFAULT NULL ,
[real_name] varchar(32) NULL DEFAULT NULL ,
[email] varchar(128) NULL DEFAULT NULL ,
[gender] tinyint NULL DEFAULT ('0') ,
[register_time] datetime NULL DEFAULT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[member]', RESEED, 12)
GO

-- ----------------------------
-- Records of member
-- ----------------------------
SET IDENTITY_INSERT [dbo].[member] ON
GO
INSERT INTO [dbo].[member] ([id], [mobile], [pwd], [nick_name], [real_name], [email], [gender], [register_time]) VALUES (N'1', N'119', N'2016', N'HYC', N'黄运驰', N'119@sina.com', N'1', N'2016-07-01 08:50:22.000')
GO
GO
INSERT INTO [dbo].[member] ([id], [mobile], [pwd], [nick_name], [real_name], [email], [gender], [register_time]) VALUES (N'2', N'122', N'122', N'通哥', N'交通警察', N'122@126.com', N'0', N'2016-07-01 15:12:08.000')
GO
GO
INSERT INTO [dbo].[member] ([id], [mobile], [pwd], [nick_name], [real_name], [email], [gender], [register_time]) VALUES (N'3', N'114', N'114', N'查查查', N'老查', N'411@126.com', N'1', N'2016-07-01 16:53:24.000')
GO
GO
INSERT INTO [dbo].[member] ([id], [mobile], [pwd], [nick_name], [real_name], [email], [gender], [register_time]) VALUES (N'12', N'13029827583', N'123456', N'小梦大半', N'基哥', N'2233547339@qq.com', N'1', N'2021-12-11 00:00:00.000')
GO
GO
SET IDENTITY_INSERT [dbo].[member] OFF
GO

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE [dbo].[news]
GO
CREATE TABLE [dbo].[news] (
[id] int NOT NULL IDENTITY(1,1) ,
[title] varchar(255) NULL DEFAULT NULL ,
[thumbnail] varchar(128) NULL DEFAULT NULL ,
[content] text NULL ,
[top] tinyint NULL DEFAULT ('0') ,
[hits] int NULL DEFAULT ('0') ,
[pub_time] datetime NULL DEFAULT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[news]', RESEED, 9)
GO

-- ----------------------------
-- Records of news
-- ----------------------------
SET IDENTITY_INSERT [dbo].[news] ON
GO
INSERT INTO [dbo].[news] ([id], [title], [thumbnail], [content], [top], [hits], [pub_time]) VALUES (N'1', N'玫瑰金Beats Solo2无线耳机和urBeats耳机开卖', N'sliding-3.jpg', N'苹果今天发布了玫瑰金Beats Solo2无线头戴式耳机和urBeats耳塞式耳机，来搭配iPhone6S阵容和部分Apple Watch机型。这两款耳机在今年早些时候发布的时候，只有金，银，太空灰三种颜色。作为被苹果收购之后第一款产品，Beats Solo2头戴式无线耳机2014年十一月发布，零售价格$299.95。<br><img src=“/shop/img/yingyinyule01.jpg" border=”0“ alt="" />', N'1', N'1', N'2016-06-02 21:38:00.000')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [thumbnail], [content], [top], [hits], [pub_time]) VALUES (N'2', N'大疆精灵4的这十个黑科技，让新手也能轻松驾驶', N'sliding-1.jpg', N'<p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	一个月前的 CES 上，深圳零度和 Yuneec 分别与高通和英特尔合作，完成了 2016 年中国无人机的国际首秀，不过大疆新品的缺席却让 CES 上无人机的争斗还留有可升华的余地。</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	今天凌晨，大疆在美国纽约发布了最新款消费级航拍无人机 Phantom 4，标志着中国消费级航拍无人机的“三国演义”正式进入了一个新的阶段，三家公司终于都拥有了属于 2016 年的消费级新品</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	发布于 2015 年的 Phantom 3 系列 4 款无人机，在接下来的很长一段时间里仍然会凭借其低廉的售价和优异的综合素质在保有量上领跑市场。如果说一年前 Phantom 3 系列彻底地把 Phantom 2 从无人机战场上替换下来，那么 Phantom 4 应该是在 Phantom 3 系列的基础上，通过智能避障，冗余设计、并联电池等更加自动化、安全的技术升级进一步满足中高端消费级用户的需求，在未来的一段时间内与 Phantom 3 一起持续扩展市场，填补 Phantom 3 Professional 6499 元至 Inspire 1 V2.0 19499 元的部分空间。作为消费级绝对旗舰的 Inspire 1 和 Inspire Pro 也会继续维持现有优势，借助可变形机架、360°云台、微型 3/4 航拍相机、双遥控器操作等高端特性紧跟专业级市场。由于中国民航总局《轻小无人机运行规定（试行）》的出台，重量更轻，被划分为 II 类无人机的 Inspire 系列将会被部分摄影师用于替代专业级八轴、六轴无人机，因为相比 Inspire 系列，两者受到法规的管理更加严格</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	这样一款科技感满满的无人机能否成功地在你心里种下一颗小草？不妨等待爱范儿接下来对大疆 Phantom 4 无人机进行的全方位测评后，再做最终的决定。</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><span style=\"color:#666666;font-family:微软雅黑;font-size:14px;line-height:28px;background-color:#FFFFFF;\"></span>', N'1', N'0', N'2016-06-02 21:58:00.000')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [thumbnail], [content], [top], [hits], [pub_time]) VALUES (N'3', N'时尚云笔记本 联想小新Air 12低至2999', N'sliding-2.jpg', N'<p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">尊敬的各位网友：</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	联想小新系列笔记本一直以高性价比著称，在不久前问世的联想小新Air 12云笔记本近日正式登陆京东商城以及联想官方商城，即日起至7月7日9点59分，消费者可前往预约，该机售价2999元起，7月7日10点至7月9日10点正式开启抢购。截止7月17日前，购买小新Air 12笔记本并按要求晒单，最高可获得1年免费延保及领取潮流帆布电脑包，感兴趣的用户千万不要错过。</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<span style=\"color:#666666;font-family:微软雅黑;font-size:14px;line-height:21px;background-color:#FFFFFF;\">卓讯</span>3C购物节也在同期正式开启。7月6日起，在配置方面，该机采用最新的英特尔第六代Skylake酷睿M处理器，相比上一代，CPU性能提升17%，图形处理能力提升35%。联想小新Air 12配备了SSD固态硬盘，迅猛的读写速度，轻松实现快速开机。此外，联想小新Air 12采用了无风扇设计，使机身几乎静音运行，加之更强的续航能力，日常使用更加轻松</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><span style=\"color:#666666;font-family:微软雅黑;font-size:14px;line-height:28px;background-color:#FFFFFF;\">祝您购物愉快！</span>', N'1', N'0', N'2016-06-02 22:00:00.000')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [thumbnail], [content], [top], [hits], [pub_time]) VALUES (N'4', N'一篇很穷的摄影器材攻略 没钱也能玩摄影', null, N'<p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	导语：无论你对摄影有着怎样的理解，总的来说摄影终究是一门(把钱)用光的艺术，所以从理论上来说你的资金预算越是充足当然所能选择的器材也越要出色。</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	首先作为一名理智的摄影爱好者，要明确一点就是切勿迷恋器材并攀比，虽然是有多少钱办多少事但是合理使用手头的设备一样让你事半功倍。　　1.到底是单反还是微单?　　这个问题在微单相机崛起发展后就已经变成了一个老生常谈的话题了，关于到底是微单还是单反?　　从价格角度去看的话其实入门级的机型无论单反还是微单已经差别不大，比如入门级的佳能1300D套机已经不足3000元，同样价位的还有尼康D3300套机，都绝对是入门学习摄影的优先选择。一篇很穷的器材搭配攻略 告诉你没钱也能玩摄影　　微单相机在这个价位内则有更为丰富的选择，首先可以参考索尼的微单，因为但从传感器角度考虑的话这个价位的微单相机只有索尼提供了和单反相机同样尺寸的APS-C画幅。一篇很穷的器材搭配攻略 告诉你没钱也能玩摄影　　比如索尼ILCE-5000L，虽然是上一代机型但是套机仅2000元出头已经相当实惠。其他品牌的机型，功能上来看区别已经并不大了。加载中...　　这里要单独提一下如果是以学习为目的的话不建议选择Pentax的Q系列，它的体积真的非常小，但是对于这个机型来说更适合作为“玩物”来看待。</p>\r\n<p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><span style=\"color:#666666;font-family:微软雅黑;font-size:14px;line-height:28px;background-color:#FFFFFF;\">　想买全画幅相机没钱怎么办?看看现在的索尼A7?第一代A7虽然推出距今已经有3年时间，但是目前全新机身已经不足6000元，二手机身已经只有4000~5000元的价格，想想几年前全画幅相机万元级的时代是不是非常不可思议?！</span>', N'0', N'0', N'2016-06-03 12:11:00.000')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [thumbnail], [content], [top], [hits], [pub_time]) VALUES (N'6', N'小米欲发布6.4英寸平板手机抗衡iPhone7', null, N'<p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	据外媒7月5日报道，小米正在远离低端市场，把注意力转移到设备升级上，今年将发布6.4英寸平板手机，以期赶超苹果公司的iphone7。\r\n\r\n小米公司副总裁雨果·巴拉表示，小米将致力把自身打造成优质品牌。6月份，联想宣布将要发布第一部应用谷歌Tango 技术的智能手机，这款手机支持3D深度相机，可以增强实感，采用6.4英寸大屏，使其成为市场上最大的平板手机。雨果·巴拉当日也宣布小米Max平板会采用6.44英寸屏幕。这样一来，小米和联想将远远超过坚持5.5英寸显示屏的iphone plus，而此前有谣言称2017年发布的iphone plus 屏幕为5.7英寸，这也大大落后于其竞争对手的新标准。当苹果发布iphone 6plus 之后，其销量一发不可收拾，打破了所有智能手机销量的最高纪录。很明显，消费者想要的是大显示屏，联想和小米都想在苹果之前通过大屏幕手机在暑假期间赢得销量。另外，新的小米Max 定价是1799港元(约人民币1552元)，是iPhone 6s Plus售价的1/3。巴拉在香港的一家小米之家体验中心表示，“我们产品的价格有所提升，是因为客户期待的是优质产品，因此我们也正在努力打造优质配件的高质量手机”。除了打造类似于苹果ios的智能手机操作界面以外，小米还想复制苹果专卖店零售模式。一年前开放的体验中心是小米在香港的第一个实体专营店，客户可以在这里试用各种不同的产品。巴拉认为，小米之家是一种很成功的销售模式，并且表示将要在香港开更多的小米之家。(实习编译：李姣姣审稿：李宗泽)</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	选时尚潮流的iPad平板电脑，单反/无人机，智能穿戴产品，各种新奇特产品，特惠疯抢的价格</p>', N'0', N'0', N'2016-06-03 12:20:00.000')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [thumbnail], [content], [top], [hits], [pub_time]) VALUES (N'7', N'从产品到生态，乐视手机为何能够抢眼赛诺数据?', null, N'<p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	智能手机行业的竞争可谓一刻不停歇，各个厂商都竭尽所能，力图有惊艳表现。在整体手机市场高度饱和、增长乏力的情况下，乐视手机却以迅猛的增长态势在赛诺的数据排行中异常抢眼。最新出炉的5月份赛诺整体(线上+线下)智能手机市场品牌份额排行显示，乐视手机以142万台的销量占据EBP市场14.8%的市场份额，位居手机行业线上份额第三，仅次于小米、荣耀，超越华为、苹果、魅族、三星、OPPO等老牌劲旅。线上线下整体市场，乐视手机5月销量超过200万台，份额4.7%排名第八，单月销量超过魅族20多万台。此外，在月度增长最快的手机公司中，乐视也表现抢眼，超过行业第二名两倍之多。6月底，乐视生态的展台亮相上海MWC大会，其间乐视手机更是召开了以“英雄本色”为名的新品发布会。那么，从产品到渠道，再到品牌生态，乐视手机频繁传出捷报，抢眼赛诺数据的背后原因是什么?答案除了乐视拥有不断颠覆和挑战已有行业格局的全新商业模式，更重要的是，乐视生态系统有着强大的生态力以及深入每一个环节的全流程创新。</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	在今年【城宇】自媒体的评论分析文章中，多次提到了“供给侧改革”这一理论。不仅因为这是目前我国重要的改革方法论，更因为这样的理论背后实际上是思想意识的转变。随着时代的变化，用户的需求和思考方式也在改变，手机行业需要改革。简单来说，就是从野蛮粗放的设计生产方式，向追求质量的精细化生产方式转变。在乐视移动总裁冯幸看来，手机行业需要进行“供给侧改革”，手机厂商需要不断依靠提供高价值的“供给”，以用户价值为导向，提供优质内容和服务，才能创造更高的利润空间，为行业发展注入新的活力。乐视超级手机以“平台+内容+终端+应用”的生态模式重新定义手机，以生态创新和颠覆性的商业模式正在使手机行业悄然生变。现在，手机行业正走向精细化和生态化，这不仅验证着“供给侧改革”理论在手机行业的正确性和可行性，更预示着品牌与生态建设才是未来手机行业的大势所趋。冯幸说过：“虽然现在风头刚开始但风头正劲，这和乐视的风格相关，一切都是主动，希望把命运放在自己手里。我想现在这个时代，只要真正抓住用户需求，为他们创造价值，你就是造风者。”只有将产品力、渠道力和生态力有机结合起来，才能在激烈的红海竞争中驶出远航的风帆，才能永葆行业竞争力并在日后的发展中迎来再次大幅增长的契机。<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	祝您购物愉快！</p>', N'0', N'0', N'2016-06-03 12:21:00.000')
GO
GO
INSERT INTO [dbo].[news] ([id], [title], [thumbnail], [content], [top], [hits], [pub_time]) VALUES (N'8', N'徕卡双镜头 华为P9临汾促销价仅2599元', null, N'<p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">华为P9是华为今年最新的旗舰机，3GB运行内存，搭载高端八核的海思 Kirin 955处理器，性能强悍，同时使采用了徕卡SUMMARIT双镜头，更好的亮度，清晰度，为我们带来了更好的体验。现在临汾经销商“临汾爱淘手机网”处参考2599元，有需要的欢迎来电咨询吧。</p><img src=“/shop/img/huawei.jpg”  border="0" alt="" /><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	华为P9配备了5.2英寸2.5D弧面屏幕，分辨率为1920*1080，像素密度为424ppi，3.08mm窄边框设计，金属化的机身，支持指纹识别，支持双卡。背部边缘添加了曲线造型，为用户带来了更为贴合的握持感。</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	性能上，华为P9搭载了海思 Kirin 955 处理器，2.5GHz（大四核），1.8GHz（小四核），3GB运行内存，32GB的存储容量，运行Android OS 6.0系统，3000毫安的电池容量，支持快速充电，采用徕卡认证的1200万像素双镜头，包含双色温补光灯，在拍照时黑白的更显细节，彩色的色彩更加的饱满，及其对应的800万像素前置镜头。</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	编辑点评：华为P9引入了独立的双摄像头深度计算服务的双核图像处理芯片，可专门针对深度信息进行计算，让我们的拍照变的更加的专业，搭载的高端八核海思麒麟955，速度也是非常的快，如果您有需要，联系文末商家吧。</p><p style=\"color:#666666;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;\">	<br /></p><span style=\"color:#666666;font-family:微软雅黑;font-size:14px;line-height:28px;background-color:#FFFFFF;\">祝您购物愉快！</span>', N'0', N'0', N'2016-06-03 12:23:00.000')
GO
GO
SET IDENTITY_INSERT [dbo].[news] OFF
GO

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE [dbo].[orders]
GO
CREATE TABLE [dbo].[orders] (
[id] int NOT NULL IDENTITY(1,1) ,
[number] varchar(64) NULL DEFAULT NULL ,
[buyer_id] int NOT NULL ,
[total_amount] int NULL DEFAULT NULL ,
[total_price] decimal(9,2) NULL DEFAULT NULL ,
[payment_price] decimal(9,2) NULL DEFAULT NULL ,
[remark] varchar(255) NULL DEFAULT NULL ,
[contact] varchar(32) NULL DEFAULT NULL ,
[mobile] varchar(32) NULL DEFAULT NULL ,
[street] varchar(255) NULL DEFAULT NULL ,
[zipcode] varchar(32) NULL DEFAULT NULL ,
[create_time] datetime NULL DEFAULT NULL ,
[payment_time] datetime NULL DEFAULT NULL ,
[delivery_time] datetime NULL DEFAULT NULL ,
[end_time] datetime NULL DEFAULT NULL ,
[status] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[orders]', RESEED, 13)
GO

-- ----------------------------
-- Records of orders
-- ----------------------------
SET IDENTITY_INSERT [dbo].[orders] ON
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'1', N'20160604172439581', N'1', N'3', N'2397.00', N'2397.00', N'送货要快啊', N'李四', N'13702204321', N'天津市滨海高新区华苑产业区海泰华科三路1号华鼎智地3号楼4层', N'300384', N'2016-06-04 17:24:39.000', null, null, null, N'-1')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'2', N'20160604184357731', N'1', N'4', N'8196.00', N'8196.00', N'货好', N'张三', N'13902025678', N'天津·西青区·津静路26号', N'300384', N'2016-06-04 18:43:57.000', null, null, null, N'3')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'3', N'20160705153804703', N'1', N'4', N'800.00', N'672.00', N'', N'王5', N'022-87188666', N'天津市南开区华苑路26号dddddd', N'300384', N'2016-07-05 15:37:55.000', null, null, null, N'2')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'4', N'20160705201949889', N'1', N'3', N'8100.00', N'6000.00', N'送上楼', N'王5', N'022-87188666', N'天津市南开区华苑路26号dddddd', N'300384', N'2016-07-05 20:19:08.000', null, null, null, N'2')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'5', N'20160706141246119', N'1', N'1', N'6999.00', N'6530.00', N'', N'王5', N'022-87188666', N'天津市南开区华苑路26号dddddd', N'300384', N'2016-07-06 14:12:37.000', null, null, null, N'2')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'6', N'20160707103144693', N'1', N'1', N'1998.00', N'1500.00', N'', N'王5', N'022-87188666', N'天津市南开区华苑路26号dddddd', N'300384', N'2016-07-07 10:31:42.000', null, null, null, N'2')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'7', N'20160707103232554', N'1', N'1', N'1999.00', N'1500.00', N'', N'王5', N'022-87188666', N'天津市南开区华苑路26号dddddd', N'300384', N'2016-07-07 10:32:30.000', null, null, null, N'2')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'10', N'20211211121448808', N'12', N'1', N'8999.00', N'8700.00', N'测试', N'hrs', N'13029827583', N'广东省深圳市', N'123456', N'2021-12-11 12:14:48.813', null, null, null, N'2')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'11', N'20211211124047496', N'12', N'1', N'6999.00', N'6850.00', N'测试123', N'hrs', N'13029827583', N'广东省深圳市', N'123456', N'2021-12-11 12:40:47.500', null, null, null, N'2')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'12', N'20211211163825211', N'12', N'1', N'8999.00', N'8700.00', N'测试', N'hrs', N'13029827583', N'广东省深圳市', N'123456', N'2021-12-11 16:38:25.217', null, null, null, N'2')
GO
GO
INSERT INTO [dbo].[orders] ([id], [number], [buyer_id], [total_amount], [total_price], [payment_price], [remark], [contact], [mobile], [street], [zipcode], [create_time], [payment_time], [delivery_time], [end_time], [status]) VALUES (N'13', N'20211212162714430', N'12', N'3', N'8685.00', N'7887.00', N'发顺丰快递', N'hrs', N'13029827583', N'广东省深圳市', N'123456', N'2021-12-12 16:27:14.440', null, null, null, N'2')
GO
GO
SET IDENTITY_INSERT [dbo].[orders] OFF
GO

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE [dbo].[product]
GO
CREATE TABLE [dbo].[product] (
[id] int NOT NULL IDENTITY(1,1) ,
[name] varchar(255) NULL DEFAULT NULL ,
[cate_id] int NOT NULL ,
[thumbnail] varchar(128) NULL DEFAULT NULL ,
[inventory] int NULL DEFAULT ('0') ,
[sales_volume] int NULL DEFAULT ('0') ,
[price] decimal(9,2) NULL DEFAULT ('0.00') ,
[sale_price] decimal(9,2) NULL DEFAULT ('0.00') ,
[detail_description] text NULL ,
[selling_description] varchar(255) NULL DEFAULT NULL ,
[create_time] datetime NULL DEFAULT NULL ,
[sale_time] datetime NULL DEFAULT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[product]', RESEED, 32)
GO

-- ----------------------------
-- Records of product
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product] ON
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'1', N'Nokia 经典通话机（第七代）', N'9', N'nokia.jpg', N'200', N'0', N'280.00', N'120.00', N'<div style= "text-align:center; "> <img src= "./img/n1.jpg " alt= " " /> <img src= "./img/n2.jpg " alt= " " />  <img src= "./img/n3.jpg " alt= " " />  <img src= "./img/n4.jpg " alt= " " />  </div>', N'手机中的战斗机。待机时间15天。', N'2016-06-01 17:37:59.000', N'2016-06-03 18:50:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'2', N'iphone 6s plus (64G)', N'8', N'iphone6s.jpg', N'123', N'0', N'5288.00', N'4880.00', N'<div style= "text-align:center; "> <img src= "./img/detail-1.jpg " alt= " " />\n<img src= "./img/detail-2.jpg " alt= " " />\n<img src= "./img/detail-3.jpg " alt= " " />\n<img src= "./img/detail-4.jpg " alt= " " /> </div>', N'', N'2016-06-01 22:38:11.000', N'2016-06-02 18:28:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'3', N'魅蓝3 礼盒版', N'9', N'meinote3.jpg', N'100', N'0', N'799.00', N'699.00', N'<div style= "text-align:center; "> 	<img src= "./img/me1.jpg " alt= " " />\n<img src= "./img/me2.jpg " alt= " " />\n<img src= "./img/me3.jpg " alt= " " />\n<img src= "./img/me4.jpg " alt= " " /> </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	全网通 4G手机 银白色 标配版(2G RAM+16G ROM)标配 </h1>', N'2016-06-03 09:44:28.000', N'2016-06-05 09:40:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'4', N'小米Max', N'9', N'xiaomi.jpg', N'1000', N'0', N'1699.00', N'1699.00', N'<div style= "text-align:center; "> 	<img src= "./img/mi-1.jpg " alt= " " />\n<img src= "./img/mi-2.jpg " alt= " " />\n<img src= "./img/mi-3.jpg " alt= " " />\n<img src= "./img/mi-4.jpg " alt= " " />\n<img src= "./img/mi-5.jpg " alt= " " />\n<img src= "./img/mi-6.jpg " alt= " " />  </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	4G手机 双卡双待 金色 全网通(3G RAM+32G ROM)标配 </h1>', N'2016-06-03 09:50:25.000', N'2016-06-10 09:00:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'5', N'华为 P9 全网通 3GB+32GB版 流光金 移动联通电信4G手机 双卡双待', N'10', N'huawei.jpg', N'2000', N'0', N'3188.00', N'3188.00', N'<div style= "text-align:center; "> 	<img src= "./img/hw-1.jpg " alt= " " />  </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	全网通 3GB+32GB版 流光金 移动联通电信4G手机 双卡双待 </h1>', N'2016-06-03 09:54:00.000', N'2016-06-10 09:50:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'6', N'优思 US1 移动 联通 三防 老人手机 迷彩', N'8', N'uniscope.jpg', N'500', N'0', N'200.00', N'168.00', N'<div style= "text-align:center; "> <img src= "./img/us-1.jpg " alt= " " /> \n<img src= "./img/us-2.jpg " alt= " " />\n <img src= "./img/us-3.jpg " alt= " " /> \n<img src= "./img/us-4.jpg " alt= " " /> \n<img src= "./img/us-5.jpg " alt= " " />  </div>', N'<span style= "color:#E3393C;font-family:arial,  "microsoft yahei ";font-size:14px;line-height:20px;background-color:#FFFFFF; ">耐磨防摔 户外三防 耐磨防摔 一键手电 充电宝功能</span>', N'2016-06-03 09:58:58.000', N'2016-06-03 09:57:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'7', N'Apple MacBook Pro 13.3英寸笔记本电脑', N'11', N'mbp.jpg', N'300', N'0', N'9288.00', N'9200.00', N'<div style= "text-align:center; "> 	<img src= "./img/mbp-1.jpg " alt= " " />\n<img src= "./img/mbp-2.jpg " alt= " " /> </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	银色(Core i5 处理器/8GB内存/128GB SSD闪存/Retina屏 MF839CH/A) </h1>', N'2016-06-03 10:05:00.000', N'2016-06-03 10:03:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'8', N'ThinkPad X1 Carbon (20FBA00XCD) 14英寸超极笔记本电脑', N'11', N'thinkpad-x1.jpg', N'300', N'0', N'9999.00', N'8999.00', N'<div style= "text-align:center; "> 	<img src= "./img/thinkpad-x1-1.jpg " alt= " " /> </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	i5-6200U 8G 192GB SSD FHD IPS Win10 64位 </h1>', N'2016-06-03 10:10:45.000', N'2016-06-03 10:09:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'9', N'外星人（Alienware）ALW13E-4728S 13.3英寸笔记本电脑', N'11', N'alienware.jpg', N'400', N'0', N'12999.00', N'12999.00', N'<div style= "text-align:center; "> 	<img src= "./img/alienware-1.jpg " alt= " " /> <img src= "./img/alienware-2.jpg " alt= " " /> <img src= "./img/alienware-3.jpg " alt= " " />  </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	（I7-6500U 8G 256GB SSD GTX 960M 4G独显 Win10）银 </h1>', N'2016-06-03 10:31:11.000', N'2016-06-03 10:28:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'10', N'戴尔（DELL）XPS 13-9350-R1708 13.3英寸微边框笔记本电脑', N'11', N'dell.jpg', N'125', N'0', N'8999.00', N'8999.00', N'<div style= "text-align:center; "> <img src= "./img/dell-1.jpg " alt= " " />\n<img src= "./img/dell-2.jpg " alt= " " />\n<img src= "./img/dell-3.jpg " alt= " " /> </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	（ i7-6500U 8G 256GSSD Win10）银 </h1>', N'2016-06-03 10:34:08.000', N'2016-06-03 10:33:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'11', N'戴尔（DELL）Vostro 3800-R6308 台式电脑', N'12', N'dell-desktop.jpg', N'1000', N'0', N'3699.00', N'3199.00', N'<div style= "text-align:center; "> 	<img src= "./img/dell-desktop-1.jpg " alt= " " />\n<img src= "./img/dell-desktop-2.jpg " alt= " " /> </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	（i3-4170 4G 500G DVD 三年上门 三年硬盘保留Win7）黑 </h1>', N'2016-06-03 10:39:46.000', N'2016-06-03 10:38:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'12', N'联想（Lenovo）H3050台式电脑', N'12', N'lenovo.jpg', N'1000', N'0', N'3399.00', N'3099.00', N'<div style= "text-align:center; "> 	<img src= "./img/lenovo-1.jpg " alt= " " />\n<img src= "./img/lenovo-2.jpg " alt= " " /> </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	（i3-4170 4G 500G 集显 DVD 千兆网卡 Win10）20英寸 </h1>', N'2016-06-03 10:43:17.000', N'2016-06-03 10:42:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'13', N'Apple iPad mini 4 平板电脑 7.9英寸', N'11', N'ipad.png', N'600', N'0', N'3288.00', N'3288.00', N'<div style= "text-align:center; "> <img src= "./img/ipad-1.jpg " alt= " " />\n<img src= "./img/ipad-2.jpg " alt= " " />\n<img src= "./img/ipad-3.jpg " alt= " " /> </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	（64G WLAN版/A8芯片/Retina显示屏/Touch ID技术 MK9J2CH）金色 </h1>', N'2016-06-03 10:46:54.000', N'2016-06-03 10:45:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'14', N'小米（XIAOMI）平板电脑2 WIFI版 7.9英寸', N'11', N'mipad.jpg', N'400', N'0', N'999.00', N'999.00', N'<div style= "text-align:center; "> 	<img src= "./img/mipad-1.jpg " alt= " " />\n<img src= "./img/mipad-2.jpg " alt= " " />\n<img src= "./img/mipad-3.jpg " alt= " " />\n<img src= "./img/mipad-4.jpg " alt= " " />\n<img src= "./img/mipad-5.jpg " alt= " " /><br /> </div>', N'<h1 style= "font-size:16px;font-family:arial,  "microsoft yahei ";color:#666666;background-color:#FFFFFF; "> 	（Intel Z8500 2G/16G 500W/800W）香槟金 </h1>', N'2016-06-03 10:52:14.000', N'2016-06-03 10:50:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'15', N'乐视（Letv）乐1S 太子妃版 32GB 银色 移动联通4G手机 双卡双待', N'9', N'letv.jpg', N'666', N'0', N'999.00', N'999.00', N'<div style= "text-align:center; "> <img src= "./img/letv-1.jpg " alt= " " /> <img src= "./img/letv-2.jpg " alt= " " /> <img src= "./img/letv-3.jpg " alt= " " /> </div>', N'<span style= "color:#E3393C;font-family:arial,  "microsoft yahei ";font-size:14px;line-height:20px;background-color:#FFFFFF; ">镜面指纹识别+快速充电+八核处理器+3GB+32GB内存！</span>', N'2016-06-03 11:04:39.000', N'2016-06-03 11:03:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'16', N'创维（Skyworth）55X5 55英寸 六核智能酷开网络平板液晶电视(黑色)', N'14', N'dajiadian01.jpg', N'100', N'100', N'2700.00', N'2000.00', N'<div style= "text-align:center; "> <img src= "./img/dajiadian0101.jpg " alt= " " /> <img src= "./img/dajiadian0102.jpg " alt= " " /> <img src= "./img/dajiadian0103.jpg " alt= " " /> <img src= "./img/dajiadian0104.jpg " alt= " " /> <img src= "./img/dajiadian0105.jpg " alt= " " /> </div>', null, N'2016-07-05 15:59:00.000', N'2016-07-05 15:59:05.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'17', N'Beats Solo2 Wireless蓝牙耳机头戴式 无线耳麦手机耳机', N'13', N'yingyinyule01.jpg', N'100', N'100', N'1998.00', N'1500.00', N'<div style= "text-align:center; "> <img src= "./img/yingyinyule0101.jpg " alt= " " /> <img src= "./img/yingyinyule0102.jpg " alt= " " /> <img src= "./img/yingyinyule0103.jpg " alt= " " /> </div>', null, N'2016-07-06 11:21:38.000', N'2016-07-06 11:21:41.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'18', N'Edifier/漫步者 R101V笔记本电脑音响 多媒体台式小音箱2.1低音炮', N'13', N'yingyinyule02.jpg', N'100', N'100', N'150.00', N'130.00', N'<div style= "text-align:center; "> <img src= "./img/yingyinyule0201.jpg " alt= " " /> <img src= "./img/yingyinyule0202.jpg " alt= " " /> <img src= "./img/yingyinyule0203.jpg " alt= " " /> </div>', null, N'2016-07-06 11:23:25.000', N'2016-07-06 11:23:28.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'19', N'inphic/英菲克 I9 8核网络机顶盒无线高清硬盘播放器八核电视盒子', N'14', N'yingyinyule03.jpg', N'100', N'50', N'399.00', N'350.00', N'<div style= "text-align:center; "> <img src= "./img/yingyinyule0301.jpg " alt= " " /> <img src= "./img/yingyinyule0302.jpg " alt= " " /> <img src= "./img/yingyinyule0303.jpg " alt= " " /> </div>', null, N'2016-07-06 13:47:05.000', N'2016-07-06 13:47:09.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'20', N'飞利浦电动剃须刀S5080充电式全身水洗多功能三刀头S5000系列', N'15', N'xiaojiadian01.jpg', N'500', N'50', N'699.00', N'599.00', N'<div style= "text-align:center; "> <img src= "./img/xiaojiadian0101.jpg " alt= " " /> <img src= "./img/xiaojiadian0102.jpg " alt= " " /> <img src= "./img/xiaojiadian0103.jpg " alt= " " /> </div>', null, N'2016-07-06 13:56:17.000', N'2016-07-06 13:56:20.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'21', N'格力加湿器 家用静音 卧室迷你小型 办公室空气净化大雾量增湿器', N'16', N'xiaojiadian02.jpg', N'500', N'50', N'799.00', N'599.00', N'<div style= "text-align:center; "> <img src= "./img/xiaojiadian0201.jpg " alt= " " /> <img src= "./img/xiaojiadian0202.jpg " alt= " " /> <img src= "./img/xiaojiadian0203.jpg " alt= " " /> </div>', null, N'2016-07-06 13:59:09.000', N'2016-07-06 13:59:11.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'22', N'SIEMENS/西门子 BCD-610W(KA82NV06TI)双开门双门对开门电冰箱', N'17', N'bingxiang01.jpg', N'500', N'50', N'6999.00', N'6530.00', N'<div style= "text-align:center; "> <img src= "./img/bingxiang0101.jpg " alt= " " /> <img src= "./img/bingxiang0102.jpg " alt= " " /> <img src= "./img/bingxiang0103.jpg " alt= " " /> <img src= "./img/bingxiang0104.jpg " alt= " " /> <img src= "./img/bingxiang0105.jpg " alt= " " /> </div>', null, N'2016-07-06 14:09:33.000', N'2016-07-06 14:09:36.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'23', N'省电Kelon/科龙 KFR-35GW/ERQBN3(1L04) 大1.5匹智能冷暖空调挂机', N'18', N'kongtiao01.jpg', N'500', N'100', N'2600.00', N'2300.00', N'<div style= "text-align:center; "> <img src= "./img/kongtiao0101.jpg " alt= " " /> <img src= "./img/kongtiao0102.jpg " alt= " " /> <img src= "./img/kongtiao0103.jpg " alt= " " /> <img src= "./img/kongtiao0104.jpg " alt= " " /> <img src= "./img/kongtiao0105.jpg " alt= " " /> </div>', null, N'2016-07-06 14:33:15.000', N'2016-07-06 14:33:18.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'24', N'SIEMENS/西门子 XQG80-WM12P1681W 8KG变频滚筒 银色全自动洗衣机', N'19', N'xiyiji01.jpg', N'500', N'500', N'1999.00', N'1500.00', N'<div style= "text-align:center; "> <img src= "./img/xiyiji0101.jpg " alt= " " /> <img src= "./img/xiyiji0102.jpg " alt= " " />  <img src= "./img/xiyiji0103.jpg " alt= " " />   </div>', null, N'2016-07-06 14:34:57.000', N'2016-07-06 14:35:00.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'25', N'单反外观Sony/索尼 DSC-H400高清长焦射月数码照相机', N'20', N'sheyingshexiang01.jpg', N'500', N'500', N'6999.00', N'6850.00', N'<div style= "text-align:center; "> <img src= "./img/sheyingshexiang0101.jpg " alt= " " /> <img src= "./img/sheyingshexiang0102.jpg " alt= " " /> <img src= "./img/sheyingshexiang0103.jpg " alt= " " /> <img src= "./img/sheyingshexiang0104.jpg " alt= " " /> </div>', null, N'2016-07-06 14:42:39.000', N'2016-07-06 14:42:41.000')
GO
GO
INSERT INTO [dbo].[product] ([id], [name], [cate_id], [thumbnail], [inventory], [sales_volume], [price], [sale_price], [detail_description], [selling_description], [create_time], [sale_time]) VALUES (N'26', N'【2016新品】DJI大疆精灵Phantom 4新一代一体式智能无人机', N'22', N'chaopin01.jpg', N'500', N'500', N'8999.00', N'8700.00', N'<div style="text-align:center;"><img src="./img/chaopin0101.jpg" alt="" /><img src="./img/chaopin0102.jpg" alt="" /><img src="./img/chaopin0103.jpg" alt="" /><img src="./img/chaopin0104.jpg" alt="" /><img src="./img/chaopin0105.jpg" alt="" /><img src="./img/chaopin0106.jpg" alt="" /></div>', null, N'2016-07-06 15:24:18.000', N'2016-07-06 15:24:20.000')
GO
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO

-- ----------------------------
-- Indexes structure for table address
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table address
-- ----------------------------
ALTER TABLE [dbo].[address] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table category
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table category
-- ----------------------------
ALTER TABLE [dbo].[category] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table category
-- ----------------------------
ALTER TABLE [dbo].[category] ADD UNIQUE ([name] ASC)
GO
ALTER TABLE [dbo].[category] ADD UNIQUE ([alias] ASC)
GO

-- ----------------------------
-- Indexes structure for table item
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table item
-- ----------------------------
ALTER TABLE [dbo].[item] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table member
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table member
-- ----------------------------
ALTER TABLE [dbo].[member] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table member
-- ----------------------------
ALTER TABLE [dbo].[member] ADD UNIQUE ([mobile] ASC)
GO

-- ----------------------------
-- Indexes structure for table news
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table news
-- ----------------------------
ALTER TABLE [dbo].[news] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table orders
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table orders
-- ----------------------------
ALTER TABLE [dbo].[orders] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table orders
-- ----------------------------
ALTER TABLE [dbo].[orders] ADD UNIQUE ([number] ASC)
GO

-- ----------------------------
-- Indexes structure for table product
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE [dbo].[product] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Uniques structure for table product
-- ----------------------------
ALTER TABLE [dbo].[product] ADD UNIQUE ([name] ASC)
GO
