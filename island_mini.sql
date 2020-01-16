-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-09-30 15:32:21
-- 服务器版本： 5.6.44-log
-- PHP 版本： 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `island_mini`
--

-- --------------------------------------------------------

--
-- 表的结构 `hh_activity`
--

CREATE TABLE `hh_activity` (
  `id` int(11) NOT NULL,
  `a_title` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '社区通告标题',
  `a_time` datetime DEFAULT NULL COMMENT '发布时间',
  `is_hot` int(1) NOT NULL DEFAULT '0' COMMENT '0不置顶，1置顶',
  `is_hide` int(1) NOT NULL DEFAULT '0' COMMENT '0不隐藏，1隐藏',
  `content` text COLLATE utf8mb4_bin COMMENT '社区通告内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_activity`
--

INSERT INTO `hh_activity` (`id`, `a_title`, `a_time`, `is_hot`, `is_hide`, `content`) VALUES
(27, '守护蔚蓝海洋', '2019-09-19 00:00:00', 0, 0, '<h3 style=\"text-align: center;\">海花岛增殖流放65万粒白蝶贝苗</h3><p style=\"text-align: center;\"><img src=\"../uploads/20190924/f3c553658807e4283eb2fbfd5e786a9c.jpg\" style=\"max-width:100%;\"><br></p>'),
(28, '寻味海花岛IV', '2019-09-19 00:00:00', 0, 0, '<h3 style=\"text-align: center;\">汇聚多样风味，缔造美食王国</h3><p style=\"text-align: center;\"><img src=\"../uploads/20190930/d5e8630829b47381f63729f94f9a8a0a.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/e6e2062f232de53544466331be0d2baf.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/cba392a1ea368d28998f8a3d8cb3901a.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/37710a6e5e72bdf00888b5af88801968.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/6ac437bf9aef2121044cb5f68674deb2.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/9fa7cc9bb53d7abff61441ac2fe259ec.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/cc227f77e7a3efb3b0fc257c5339897d.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/1ccffe71dfe6aae1b9e60a6fe49780eb.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/fa08eaa82d2264708a8592a8102357b7.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/c2c752488c50d5e118e5c945cacbdd3d.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/529c8aace400de541c22a4faaacfbe6a.jpg\" style=\"max-width:100%;\"><br></p><p style=\"text-align: center;\"><img src=\"../uploads/20190930/b6e666ce5c9723f3a35dbd31f208d568.jpg\" style=\"max-width:100%;\"><br></p>');
INSERT INTO `hh_activity` (`id`, `a_title`, `a_time`, `is_hot`, `is_hide`, `content`) VALUES
(38, '“旅居海花岛”小程序上线啦', '2019-09-29 00:00:00', 0, 0, '<p style=\"text-align: center;\">——你想要的旅居，这里全都有&nbsp;&nbsp;&nbsp;&nbsp;<br></p><p style=\"text-align: center;\"><br></p><p>&nbsp;<img src=\"../uploads/20190930/bf19fe6888013e4e4a3d29ca427cc90b.jpg\" style=\"max-width:100%;\"><br><br></p><p><span style=\"font-weight: bold;\">什么是“旅居海花岛”？</span><br>“旅居海花岛”小程序，是一个网罗海花岛上美食、饮品、超市、药店诊所、出行、日常缴费、业主活动、物业服务等资讯及功能于一体的一站式岛居生活服务平台。<span style=\"font-family: Calibri, sans-serif; font-size: 10.5pt; text-align: justify;\">是数</span><span lang=\"EN-US\" style=\"font-family: Calibri, sans-serif; font-size: 10.5pt; text-align: justify;\">10</span><span style=\"font-family: Calibri, sans-serif; font-size: 10.5pt; text-align: justify;\">万海花岛业主“吃、住、行、游、购、娱”的最主要导航平台。</span></p><p><br></p><p><span style=\"font-weight: bold; font-size: large;\">入驻“旅居海花岛”五大优势</span><br>·海花岛唯一官方平台，运行稳定<br>·恒大重点推广应用，流量有保障<br>·覆盖岛上所有人群，用户基数庞大<br>·紧密切合用户需求，精准导流客户<br>·40万+官微粉丝，不定期为商家宣传</p><p><br></p>\n<!--[if gte mso 9]><xml>\n <o:OfficeDocumentSettings>\n  <o:AllowPNG/>\n </o:OfficeDocumentSettings>\n</xml><![endif]-->\n\n\n<!--[if gte mso 9]><xml>\n <w:WordDocument>\n  <w:View>Normal</w:View>\n  <w:Zoom>0</w:Zoom>\n  <w:TrackMoves/>\n  <w:TrackFormatting/>\n  <w:PunctuationKerning/>\n  <w:DrawingGridVerticalSpacing>7.8 磅</w:DrawingGridVerticalSpacing>\n  <w:DisplayHorizontalDrawingGridEvery>0</w:DisplayHorizontalDrawingGridEvery>\n  <w:DisplayVerticalDrawingGridEvery>2</w:DisplayVerticalDrawingGridEvery>\n  <w:ValidateAgainstSchemas/>\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\n  <w:DoNotPromoteQF/>\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\n  <w:LidThemeAsian>ZH-CN</w:LidThemeAsian>\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\n  <w:Compatibility>\n   <w:SpaceForUL/>\n   <w:BalanceSingleByteDoubleByteWidth/>\n   <w:DoNotLeaveBackslashAlone/>\n   <w:ULTrailSpace/>\n   <w:DoNotExpandShiftReturn/>\n   <w:AdjustLineHeightInTable/>\n   <w:BreakWrappedTables/>\n   <w:SnapToGridInCell/>\n   <w:WrapTextWithPunct/>\n   <w:UseAsianBreakRules/>\n   <w:DontGrowAutofit/>\n   <w:SplitPgBreakAndParaMark/>\n   <w:EnableOpenTypeKerning/>\n   <w:DontFlipMirrorIndents/>\n   <w:OverrideTableStyleHps/>\n   <w:UseFELayout/>\n  </w:Compatibility>\n  <m:mathPr>\n   <m:mathFont m:val=\"Cambria Math\"/>\n   <m:brkBin m:val=\"before\"/>\n   <m:brkBinSub m:val=\"&#45;-\"/>\n   <m:smallFrac m:val=\"off\"/>\n   <m:dispDef/>\n   <m:lMargin m:val=\"0\"/>\n   <m:rMargin m:val=\"0\"/>\n   <m:defJc m:val=\"centerGroup\"/>\n   <m:wrapIndent m:val=\"1440\"/>\n   <m:intLim m:val=\"subSup\"/>\n   <m:naryLim m:val=\"undOvr\"/>\n  </m:mathPr></w:WordDocument>\n</xml><![endif]--><!--[if gte mso 9]><xml>\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"false\"\n  DefSemiHidden=\"false\" DefQFormat=\"false\" DefPriority=\"99\"\n  LatentStyleCount=\"371\">\n  <w:LsdException Locked=\"false\" Priority=\"0\" QFormat=\"true\" Name=\"Normal\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"heading 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index 9\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 7\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 8\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"toc 9\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"header\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footer\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"index heading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"35\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"caption\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of figures\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope address\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"envelope return\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"footnote reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"line number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"page number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote reference\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"endnote text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"table of authorities\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"macro\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"toa heading\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Bullet 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Number 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"10\" QFormat=\"true\" Name=\"Title\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Closing\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Signature\"/>\n  <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Default Paragraph Font\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"List Continue 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Message Header\"/>\n  <w:LsdException Locked=\"false\" Priority=\"11\" QFormat=\"true\" Name=\"Subtitle\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Salutation\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Date\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text First Indent 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Note Heading\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Body Text Indent 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Block Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Hyperlink\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"FollowedHyperlink\"/>\n  <w:LsdException Locked=\"false\" Priority=\"22\" QFormat=\"true\" Name=\"Strong\"/>\n  <w:LsdException Locked=\"false\" Priority=\"20\" QFormat=\"true\" Name=\"Emphasis\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Document Map\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Plain Text\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"E-mail Signature\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Top of Form\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Bottom of Form\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal (Web)\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Acronym\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Address\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Cite\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Code\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Definition\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Keyboard\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Preformatted\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Sample\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Typewriter\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"HTML Variable\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Normal Table\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"annotation subject\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"No List\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Outline List 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Simple 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Classic 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Colorful 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Columns 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Grid 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 4\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 5\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 6\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 7\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table List 8\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table 3D effects 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Contemporary\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Elegant\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Professional\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Subtle 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 2\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Web 3\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Balloon Text\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"Table Grid\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" UnhideWhenUsed=\"true\"\n   Name=\"Table Theme\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Placeholder Text\"/>\n  <w:LsdException Locked=\"false\" Priority=\"1\" QFormat=\"true\" Name=\"No Spacing\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 1\"/>\n  <w:LsdException Locked=\"false\" SemiHidden=\"true\" Name=\"Revision\"/>\n  <w:LsdException Locked=\"false\" Priority=\"34\" QFormat=\"true\"\n   Name=\"List Paragraph\"/>\n  <w:LsdException Locked=\"false\" Priority=\"29\" QFormat=\"true\" Name=\"Quote\"/>\n  <w:LsdException Locked=\"false\" Priority=\"30\" QFormat=\"true\"\n   Name=\"Intense Quote\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"60\" Name=\"Light Shading Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"61\" Name=\"Light List Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"62\" Name=\"Light Grid Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"63\" Name=\"Medium Shading 1 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"64\" Name=\"Medium Shading 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"65\" Name=\"Medium List 1 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"66\" Name=\"Medium List 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"67\" Name=\"Medium Grid 1 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"68\" Name=\"Medium Grid 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"69\" Name=\"Medium Grid 3 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"70\" Name=\"Dark List Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"71\" Name=\"Colorful Shading Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"72\" Name=\"Colorful List Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"73\" Name=\"Colorful Grid Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"19\" QFormat=\"true\"\n   Name=\"Subtle Emphasis\"/>\n  <w:LsdException Locked=\"false\" Priority=\"21\" QFormat=\"true\"\n   Name=\"Intense Emphasis\"/>\n  <w:LsdException Locked=\"false\" Priority=\"31\" QFormat=\"true\"\n   Name=\"Subtle Reference\"/>\n  <w:LsdException Locked=\"false\" Priority=\"32\" QFormat=\"true\"\n   Name=\"Intense Reference\"/>\n  <w:LsdException Locked=\"false\" Priority=\"33\" QFormat=\"true\" Name=\"Book Title\"/>\n  <w:LsdException Locked=\"false\" Priority=\"37\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" Name=\"Bibliography\"/>\n  <w:LsdException Locked=\"false\" Priority=\"39\" SemiHidden=\"true\"\n   UnhideWhenUsed=\"true\" QFormat=\"true\" Name=\"TOC Heading\"/>\n  <w:LsdException Locked=\"false\" Priority=\"41\" Name=\"Plain Table 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"42\" Name=\"Plain Table 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"43\" Name=\"Plain Table 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"44\" Name=\"Plain Table 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"45\" Name=\"Plain Table 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"40\" Name=\"Grid Table Light\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"Grid Table 1 Light\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"Grid Table 6 Colorful\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"Grid Table 7 Colorful\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"Grid Table 1 Light Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"Grid Table 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"Grid Table 3 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"Grid Table 4 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"Grid Table 5 Dark Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"Grid Table 6 Colorful Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"Grid Table 7 Colorful Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\" Name=\"List Table 1 Light\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\" Name=\"List Table 6 Colorful\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\" Name=\"List Table 7 Colorful\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 1\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 2\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 3\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 4\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 5\"/>\n  <w:LsdException Locked=\"false\" Priority=\"46\"\n   Name=\"List Table 1 Light Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"47\" Name=\"List Table 2 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"48\" Name=\"List Table 3 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"49\" Name=\"List Table 4 Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"50\" Name=\"List Table 5 Dark Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"51\"\n   Name=\"List Table 6 Colorful Accent 6\"/>\n  <w:LsdException Locked=\"false\" Priority=\"52\"\n   Name=\"List Table 7 Colorful Accent 6\"/>\n </w:LatentStyles>\n</xml><![endif]-->\n<style>\n<!--\n /* Font Definitions */\n @font-face\n	{font-family:宋体;\n	panose-1:2 1 6 0 3 1 1 1 1 1;\n	mso-font-alt:SimSun;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n@font-face\n	{font-family:\"Cambria Math\";\n	panose-1:2 4 5 3 5 4 6 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:roman;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\n@font-face\n	{font-family:Calibri;\n	panose-1:2 15 5 2 2 2 4 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\n@font-face\n	{font-family:微软雅黑;\n	panose-1:2 11 5 3 2 2 4 2 2 4;\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 672087122 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@微软雅黑\";\n	panose-1:2 11 5 3 2 2 4 2 2 4;\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 672087122 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@宋体\";\n	panose-1:2 1 6 0 3 1 1 1 1 1;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n /* Style Definitions */\n p.MsoNormal, li.MsoNormal, div.MsoNormal\n	{mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-parent:\"\";\n	margin:0cm;\n	margin-bottom:.0001pt;\n	text-align:justify;\n	text-justify:inter-ideograph;\n	mso-pagination:none;\n	font-size:10.5pt;\n	mso-bidi-font-size:12.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-fareast-font-family:宋体;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-font-kerning:1.0pt;}\n.MsoChpDefault\n	{mso-style-type:export-only;\n	mso-default-props:yes;\n	font-size:10.0pt;\n	mso-ansi-font-size:10.0pt;\n	mso-bidi-font-size:10.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-ascii-font-family:Calibri;\n	mso-fareast-font-family:宋体;\n	mso-hansi-font-family:Calibri;\n	mso-font-kerning:0pt;}\n /* Page Definitions */\n @page\n	{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}\n@page WordSection1\n	{size:612.0pt 792.0pt;\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\n	mso-header-margin:36.0pt;\n	mso-footer-margin:36.0pt;\n	mso-paper-source:0;}\ndiv.WordSection1\n	{page:WordSection1;}\n-->\n</style>\n<!--[if gte mso 10]>\n<style>\n /* Style Definitions */\n table.MsoNormalTable\n	{mso-style-name:普通表格;\n	mso-tstyle-rowband-size:0;\n	mso-tstyle-colband-size:0;\n	mso-style-noshow:yes;\n	mso-style-priority:99;\n	mso-style-parent:\"\";\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\n	mso-para-margin:0cm;\n	mso-para-margin-bottom:.0001pt;\n	mso-pagination:widow-orphan;\n	font-size:10.0pt;\n	font-family:\"Calibri\",sans-serif;}\n</style>\n<![endif]-->\n\n\n\n<p><img src=\"../uploads/20190930/040430f841fa362c2b099571a62c2ae5.jpg\" style=\"max-width:100%;\"><br></p><p><br></p><p><span style=\"font-weight: bold; font-size: large;\">！！！首批入驻商家，享三重惊喜大礼！</span><br></p><p>！首批商家免费入驻，只此一次<br>！入驻即享专属商家标识<br>！优先曝光商家优惠信息，导流更多精准客户<br>&nbsp;<br>&nbsp;<br><span style=\"font-weight: bold;\">商家入驻热线：</span></p><p>宋娇娇18689858986&nbsp; 段珂琼18789165100</p><p>&nbsp;<br>注：旅居海花岛小程序所提供的商业信息仅供参考，不对商家提供的服务及货品承担法律责任。旅居海花岛有权取消商家在小程序的入驻权及更改商家推广排序。</p><p><br></p><p><br></p><style>\n<!--\n /* Font Definitions */\n @font-face\n	{font-family:宋体;\n	panose-1:2 1 6 0 3 1 1 1 1 1;\n	mso-font-alt:SimSun;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n@font-face\n	{font-family:\"Cambria Math\";\n	panose-1:2 4 5 3 5 4 6 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:roman;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\n@font-face\n	{font-family:Calibri;\n	panose-1:2 15 5 2 2 2 4 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\n@font-face\n	{font-family:微软雅黑;\n	panose-1:2 11 5 3 2 2 4 2 2 4;\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 672087122 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@微软雅黑\";\n	panose-1:2 11 5 3 2 2 4 2 2 4;\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 672087122 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@宋体\";\n	panose-1:2 1 6 0 3 1 1 1 1 1;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n /* Style Definitions */\n p.MsoNormal, li.MsoNormal, div.MsoNormal\n	{mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-parent:\"\";\n	margin:0cm;\n	margin-bottom:.0001pt;\n	text-align:justify;\n	text-justify:inter-ideograph;\n	mso-pagination:none;\n	font-size:10.5pt;\n	mso-bidi-font-size:12.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-fareast-font-family:宋体;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-font-kerning:1.0pt;}\n.MsoChpDefault\n	{mso-style-type:export-only;\n	mso-default-props:yes;\n	font-size:10.0pt;\n	mso-ansi-font-size:10.0pt;\n	mso-bidi-font-size:10.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-ascii-font-family:Calibri;\n	mso-fareast-font-family:宋体;\n	mso-hansi-font-family:Calibri;\n	mso-font-kerning:0pt;}\n /* Page Definitions */\n @page\n	{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}\n@page WordSection1\n	{size:612.0pt 792.0pt;\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\n	mso-header-margin:36.0pt;\n	mso-footer-margin:36.0pt;\n	mso-paper-source:0;}\ndiv.WordSection1\n	{page:WordSection1;}\n-->\n</style><style>\n<!--\n /* Font Definitions */\n @font-face\n	{font-family:宋体;\n	panose-1:2 1 6 0 3 1 1 1 1 1;\n	mso-font-alt:SimSun;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n@font-face\n	{font-family:\"Cambria Math\";\n	panose-1:2 4 5 3 5 4 6 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:roman;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\n@font-face\n	{font-family:Calibri;\n	panose-1:2 15 5 2 2 2 4 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\n@font-face\n	{font-family:微软雅黑;\n	panose-1:2 11 5 3 2 2 4 2 2 4;\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 672087122 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@微软雅黑\";\n	panose-1:2 11 5 3 2 2 4 2 2 4;\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 672087122 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@宋体\";\n	panose-1:2 1 6 0 3 1 1 1 1 1;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n /* Style Definitions */\n p.MsoNormal, li.MsoNormal, div.MsoNormal\n	{mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-parent:\"\";\n	margin:0cm;\n	margin-bottom:.0001pt;\n	text-align:justify;\n	text-justify:inter-ideograph;\n	mso-pagination:none;\n	font-size:10.5pt;\n	mso-bidi-font-size:12.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-fareast-font-family:宋体;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-font-kerning:1.0pt;}\n.MsoChpDefault\n	{mso-style-type:export-only;\n	mso-default-props:yes;\n	font-size:10.0pt;\n	mso-ansi-font-size:10.0pt;\n	mso-bidi-font-size:10.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-ascii-font-family:Calibri;\n	mso-fareast-font-family:宋体;\n	mso-hansi-font-family:Calibri;\n	mso-font-kerning:0pt;}\n /* Page Definitions */\n @page\n	{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}\n@page WordSection1\n	{size:612.0pt 792.0pt;\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\n	mso-header-margin:36.0pt;\n	mso-footer-margin:36.0pt;\n	mso-paper-source:0;}\ndiv.WordSection1\n	{page:WordSection1;}\n-->\n</style><style>\n<!--\n /* Font Definitions */\n @font-face\n	{font-family:宋体;\n	panose-1:2 1 6 0 3 1 1 1 1 1;\n	mso-font-alt:SimSun;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n@font-face\n	{font-family:\"Cambria Math\";\n	panose-1:2 4 5 3 5 4 6 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:roman;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1107305727 0 0 415 0;}\n@font-face\n	{font-family:Calibri;\n	panose-1:2 15 5 2 2 2 4 3 2 4;\n	mso-font-charset:0;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-536870145 1073786111 1 0 415 0;}\n@font-face\n	{font-family:微软雅黑;\n	panose-1:2 11 5 3 2 2 4 2 2 4;\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 672087122 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@微软雅黑\";\n	panose-1:2 11 5 3 2 2 4 2 2 4;\n	mso-font-charset:134;\n	mso-generic-font-family:swiss;\n	mso-font-pitch:variable;\n	mso-font-signature:-2147483001 672087122 22 0 262175 0;}\n@font-face\n	{font-family:\"\\@宋体\";\n	panose-1:2 1 6 0 3 1 1 1 1 1;\n	mso-font-charset:134;\n	mso-generic-font-family:auto;\n	mso-font-pitch:variable;\n	mso-font-signature:3 680460288 22 0 262145 0;}\n /* Style Definitions */\n p.MsoNormal, li.MsoNormal, div.MsoNormal\n	{mso-style-unhide:no;\n	mso-style-qformat:yes;\n	mso-style-parent:\"\";\n	margin:0cm;\n	margin-bottom:.0001pt;\n	text-align:justify;\n	text-justify:inter-ideograph;\n	mso-pagination:none;\n	font-size:10.5pt;\n	mso-bidi-font-size:12.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-fareast-font-family:宋体;\n	mso-bidi-font-family:\"Times New Roman\";\n	mso-font-kerning:1.0pt;}\n.MsoChpDefault\n	{mso-style-type:export-only;\n	mso-default-props:yes;\n	font-size:10.0pt;\n	mso-ansi-font-size:10.0pt;\n	mso-bidi-font-size:10.0pt;\n	font-family:\"Calibri\",sans-serif;\n	mso-ascii-font-family:Calibri;\n	mso-fareast-font-family:宋体;\n	mso-hansi-font-family:Calibri;\n	mso-font-kerning:0pt;}\n /* Page Definitions */\n @page\n	{mso-page-border-surround-header:no;\n	mso-page-border-surround-footer:no;}\n@page WordSection1\n	{size:612.0pt 792.0pt;\n	margin:72.0pt 90.0pt 72.0pt 90.0pt;\n	mso-header-margin:36.0pt;\n	mso-footer-margin:36.0pt;\n	mso-paper-source:0;}\ndiv.WordSection1\n	{page:WordSection1;}\n-->\n</style>');

-- --------------------------------------------------------

--
-- 表的结构 `hh_act_collection`
--

CREATE TABLE `hh_act_collection` (
  `id` int(11) NOT NULL COMMENT '流水号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `act_id` int(11) DEFAULT NULL COMMENT '活动id',
  `time` datetime DEFAULT NULL COMMENT '收藏时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_act_collection`
--

INSERT INTO `hh_act_collection` (`id`, `user_id`, `act_id`, `time`) VALUES
(95, 22, 22, '2019-09-29 20:02:05'),
(94, 20, 22, '2019-09-29 14:00:32'),
(92, 20, 23, '2019-09-29 10:02:55');

-- --------------------------------------------------------

--
-- 表的结构 `hh_act_goods`
--

CREATE TABLE `hh_act_goods` (
  `id` int(11) NOT NULL COMMENT '流水号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `act_id` int(11) DEFAULT NULL COMMENT '商户id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_act_goods`
--

INSERT INTO `hh_act_goods` (`id`, `user_id`, `act_id`) VALUES
(1, 2, 3),
(3, 3, 3),
(7, 1, 2),
(34, 1, 10),
(70, 23, 11),
(13, 4, 4),
(66, 1, 7),
(37, 1, 6),
(65, 1, 9),
(67, 2, 11),
(47, 2, 6),
(46, 2, 5),
(53, 11, 9),
(59, 1, 11),
(60, 1, 4),
(64, 1, 12),
(69, 20, 4),
(77, 22, 12),
(78, 22, 5),
(73, 20, 11),
(76, 22, 7),
(80, 20, 3),
(83, 23, 4),
(85, 23, 5),
(87, 23, 12),
(88, 23, 3),
(89, 25, 3),
(90, 24, 22),
(92, 20, 12),
(93, 22, 23),
(94, 22, 22);

-- --------------------------------------------------------

--
-- 表的结构 `hh_act_notice`
--

CREATE TABLE `hh_act_notice` (
  `id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_bin COMMENT '活动内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_act_notice`
--

INSERT INTO `hh_act_notice` (`id`, `content`) VALUES
(1, '在线提供社区最新的活动资讯、活动报名通道，以及往期活动掠影等内容，方便社区居民了解并参与社区活动，收获丰富多彩的文化生活。'),
(2, '儋州市，多云转小雨,气温23℃~29℃,东北风2级，当前温度28℃。 温馨提示：今天可能要下雨，出门记得带伞（预警信息来源：国家预警信息发布中心）');

-- --------------------------------------------------------

--
-- 表的结构 `hh_act_ueditor_img`
--

CREATE TABLE `hh_act_ueditor_img` (
  `id` int(11) NOT NULL,
  `u_act_id` int(11) NOT NULL DEFAULT '0' COMMENT 'hh_act_ueditor_img',
  `u_img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '商家介绍图'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_act_ueditor_img`
--

INSERT INTO `hh_act_ueditor_img` (`id`, `u_act_id`, `u_img`) VALUES
(13, 27, '../uploads/20190924/f3c553658807e4283eb2fbfd5e786a9c.jpg'),
(15, 0, '../uploads/20190928/a6ec89cdeea7d73ea312a315ea973f95.jpg'),
(16, 0, '../uploads/20190928/a3f61ca7d2b828f47b3efa7c5a614a3e.jpg'),
(17, 0, '../uploads/20190928/cee13a091dede9ddd9894fc7b5728999.jpg'),
(18, 0, '../uploads/20190929/f91b91a2c6ce9f0110a769473e17b63a.jpg'),
(19, 0, '../uploads/20190929/69f1eac22838d610aa65c03cb1519259.jpg'),
(20, 0, '../uploads/20190929/e187f0c09258e03e3322e21070a822f0.jpg'),
(21, 0, '../uploads/20190929/5eb11b00ff2a734e90b17ec3c487b55e.jpg'),
(22, 0, '../uploads/20190929/24f7997269c4b293945217269a5a860b.jpg'),
(23, 0, '../uploads/20190929/78d925e010d9213494ef902460866b38.jpg'),
(24, 0, '../uploads/20190929/61822b9d2c4c108d92d7bc868cab523f.jpg'),
(25, 0, '../uploads/20190929/6a24b23b8135fdb88e924441658dbf11.jpg'),
(26, 0, '../uploads/20190929/d10d847201ff553e90628f523d6d1045.jpg'),
(30, 28, '../uploads/20190930/d5e8630829b47381f63729f94f9a8a0a.jpg'),
(31, 28, '../uploads/20190930/e6e2062f232de53544466331be0d2baf.jpg'),
(32, 28, '../uploads/20190930/cba392a1ea368d28998f8a3d8cb3901a.jpg'),
(33, 28, '../uploads/20190930/37710a6e5e72bdf00888b5af88801968.jpg'),
(34, 28, '../uploads/20190930/6ac437bf9aef2121044cb5f68674deb2.jpg'),
(35, 28, '../uploads/20190930/9fa7cc9bb53d7abff61441ac2fe259ec.jpg'),
(36, 28, '../uploads/20190930/cc227f77e7a3efb3b0fc257c5339897d.jpg'),
(37, 28, '../uploads/20190930/1ccffe71dfe6aae1b9e60a6fe49780eb.jpg'),
(38, 28, '../uploads/20190930/fa08eaa82d2264708a8592a8102357b7.jpg'),
(39, 28, '../uploads/20190930/c2c752488c50d5e118e5c945cacbdd3d.jpg'),
(40, 28, '../uploads/20190930/529c8aace400de541c22a4faaacfbe6a.jpg'),
(41, 28, '../uploads/20190930/b6e666ce5c9723f3a35dbd31f208d568.jpg'),
(42, 38, '../uploads/20190930/bf19fe6888013e4e4a3d29ca427cc90b.jpg'),
(43, 38, '../uploads/20190930/040430f841fa362c2b099571a62c2ae5.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `hh_admin`
--

CREATE TABLE `hh_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '昵称',
  `password` char(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '密码',
  `login_time` int(11) DEFAULT NULL COMMENT '最后登录时间',
  `login_ip` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '最后登录ip'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_admin`
--

INSERT INTO `hh_admin` (`id`, `name`, `password`, `login_time`, `login_ip`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1569824308, '119.98.27.211'),
(2, '111', '698d51a19d8a121ce581499d7b701668', 1568272457, '119.98.24.220'),
(6, '15103613653', 'a39614964ca458bf90bdacb7af1f6ad4', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `hh_admin_role`
--

CREATE TABLE `hh_admin_role` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_admin_role`
--

INSERT INTO `hh_admin_role` (`id`, `admin_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(6, 6, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hh_banner`
--

CREATE TABLE `hh_banner` (
  `id` int(11) NOT NULL COMMENT 'banner_id',
  `banner_img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'banner图片',
  `url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_banner`
--

INSERT INTO `hh_banner` (`id`, `banner_img`, `url`) VALUES
(15, 'uploads/20190918\\a462bbf2f938893568b6b0c67360d7d2.jpg', 'N28'),
(14, 'uploads/20190918\\a0156cfbea186c8a69eccfbaae0e2292.jpg', 'N28'),
(13, 'uploads/20190918\\219d8101cff3020f0fd435fb7b75a649.jpg', 'N27'),
(12, 'uploads/20190918\\c49c6ae8742a122aa1a3df8badb2998e.jpg', 'N27'),
(24, 'uploads/20190930\\7eb221fa2907299887819473a3055cc2.jpg', 'N38');

-- --------------------------------------------------------

--
-- 表的结构 `hh_cart`
--

CREATE TABLE `hh_cart` (
  `id` int(11) NOT NULL,
  `cart_name` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '分类名称',
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '图片',
  `sort` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_cart`
--

INSERT INTO `hh_cart` (`id`, `cart_name`, `parent_id`, `img`, `sort`) VALUES
(1, '美食', 0, 'uploads/shouye/c_icon1.png', NULL),
(2, '甜点饮品', 0, 'uploads/shouye/c_icon2.png', NULL),
(3, '超市便利', 0, 'uploads/shouye/c_icon3.png', NULL),
(4, '银行', 0, 'uploads/shouye/c_icon4.png', NULL),
(5, '生活服务', 0, 'uploads/shouye/c_icon5.png', NULL),
(6, '药店诊所', 0, 'uploads/shouye/c_icon6.png', NULL),
(7, '西餐', 1, '', 6),
(8, '川湘菜', 1, '', 7),
(10, '烧烤烤肉', 1, '', 2),
(11, '小吃快餐', 1, '', 3),
(12, '米粉面馆', 1, '', 4),
(13, '江河海鲜', 1, '', 5),
(14, '饮品店', 2, '', NULL),
(15, '咖啡茗茶', 2, '', NULL),
(16, '面包甜点', 2, '', NULL),
(17, '超市', 3, '', NULL),
(18, '便利店', 3, '', NULL),
(19, '果蔬', 3, '', NULL),
(20, '鲜花', 3, '', NULL),
(21, '特产', 3, '', NULL),
(22, '银行服务', 4, '', NULL),
(23, 'ATM机', 4, '', NULL),
(24, '通讯', 5, '', NULL),
(25, '五金', 5, '', NULL),
(26, '宠物', 5, '', NULL),
(27, '娱乐', 5, '', NULL),
(28, '日用百货', 5, '', NULL),
(29, '旅游/工艺', 5, '', NULL),
(30, '美发美容', 5, '', NULL),
(31, '洗衣', 5, '', NULL),
(32, '快递', 5, '', NULL),
(33, '书店', 5, '', NULL),
(34, '药店', 6, '', NULL),
(35, '诊所', 6, '', NULL),
(36, '保健品', 6, '', NULL),
(37, '其他美食', 1, '', 7),
(9, '火锅串串', 1, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `hh_cart_area`
--

CREATE TABLE `hh_cart_area` (
  `id` int(11) NOT NULL,
  `cart_name` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '分类名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_cart_area`
--

INSERT INTO `hh_cart_area` (`id`, `cart_name`) VALUES
(1, '一号岛'),
(2, '二号岛'),
(3, '三号岛');

-- --------------------------------------------------------

--
-- 表的结构 `hh_category`
--

CREATE TABLE `hh_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `cname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parent_id` smallint(6) NOT NULL DEFAULT '0',
  `c_url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `order` smallint(3) NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` smallint(1) NOT NULL DEFAULT '0' COMMENT '0表示显示 1表示隐藏',
  `img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '图片',
  `appid` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `param_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_category`
--

INSERT INTO `hh_category` (`id`, `cname`, `parent_id`, `c_url`, `order`, `is_show`, `img`, `appid`, `param_id`) VALUES
(1, '岛居生活', 0, '', 0, 0, 'uploads/shouye/icon1.png', '', 0),
(2, '社区活动', 0, '', 0, 0, 'uploads/shouye/icon2.png', '', 1),
(3, '物业服务', 0, '', 0, 0, 'uploads/shouye/icon3.png', '', 2),
(4, '便民通讯录', 0, '', 0, 0, 'uploads/shouye/icon4.png', '', 3),
(5, '恒房通', 0, 'pages/index/index', 0, 0, 'uploads/shouye/icon5.png', 'wxe1fd4e23329d63fd', 4),
(6, '位置导航', 0, '', 0, 0, 'uploads/shouye/icon6.png', 'wx7643d5f831302ab0', 5),
(7, '社区商业', 1, '', 0, 0, 'uploads/shouye/life_icon1.png', '', 0),
(8, '快递查询', 1, '', 0, 0, 'uploads/shouye/life_icon2.png', 'wx6885acbedba59c14', 1),
(9, '医疗健康', 1, '', 0, 0, 'uploads/shouye/life_icon3.png', '', 2),
(10, '违章查询', 1, '', 0, 0, 'uploads/shouye/life_icon4.png', 'wx2f18026562adf6bc', 3),
(11, '滴滴出行', 1, '', 0, 0, 'uploads/shouye/life_icon5.png', 'wxaf35009675aa0b2a', 4),
(12, '生活缴费', 1, '', 0, 0, 'uploads/shouye/life_icon6.png', 'wxd2ade0f25a874ee2', 5),
(13, '房屋报修', 3, '', 0, 0, 'uploads/shouye/propertyIcon1.png', '', 0),
(14, '物业缴费', 3, '', 0, 0, 'uploads/shouye/propertyIcon2.png', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hh_collection`
--

CREATE TABLE `hh_collection` (
  `id` int(11) NOT NULL COMMENT '流水号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `bus_id` int(11) DEFAULT NULL COMMENT '商户id',
  `time` datetime DEFAULT NULL COMMENT '收藏时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_collection`
--

INSERT INTO `hh_collection` (`id`, `user_id`, `bus_id`, `time`) VALUES
(10, 3, 4, '2019-08-29 17:31:49'),
(23, 4, 10, '2019-08-30 16:30:59'),
(66, 26, 6, '2019-09-11 11:29:40'),
(47, 6, 1, '2019-09-05 10:37:28'),
(249, 22, 10, '2019-09-17 16:56:02'),
(48, 7, 1, '2019-09-05 11:00:08'),
(49, 7, 6, '2019-09-05 11:00:09'),
(50, 7, 9, '2019-09-05 11:00:11'),
(51, 7, 12, '2019-09-05 11:00:13'),
(52, 7, 14, '2019-09-05 11:00:14'),
(53, 2, 6, '2019-09-05 11:04:17'),
(56, 11, 10, '2019-09-05 12:40:56'),
(57, 11, 22, '2019-09-05 12:41:01'),
(59, 12, 19, '2019-09-05 15:14:21'),
(60, 14, 1, '2019-09-06 12:04:35'),
(61, 14, 6, '2019-09-06 12:04:37'),
(250, 22, 22, '2019-09-17 16:56:08'),
(69, 26, 36, '2019-09-11 11:37:38'),
(286, 24, 6, '2019-09-26 22:01:23'),
(230, 27, 9, '2019-09-12 16:50:14'),
(228, 22, 1, '2019-09-12 16:45:35'),
(91, 20, 27, '2019-09-12 09:26:40'),
(293, 20, 18, '2019-09-30 14:46:13'),
(292, 29, 6, '2019-09-29 17:55:54'),
(287, 20, 40, '2019-09-27 09:29:41'),
(267, 25, 1, '2019-09-24 17:15:21'),
(268, 23, 30, '2019-09-24 17:30:07'),
(269, 23, 10, '2019-09-24 17:49:15'),
(271, 23, 20, '2019-09-24 17:49:23'),
(272, 23, 21, '2019-09-24 17:49:35'),
(273, 23, 22, '2019-09-24 17:49:36'),
(274, 23, 41, '2019-09-24 17:49:37'),
(275, 23, 42, '2019-09-24 17:49:38'),
(276, 23, 2, '2019-09-24 17:49:43'),
(277, 23, 4, '2019-09-24 17:49:44'),
(278, 23, 7, '2019-09-24 17:49:45'),
(279, 23, 13, '2019-09-24 17:49:46'),
(280, 23, 15, '2019-09-24 17:49:46'),
(288, 20, 12, '2019-09-29 13:40:19'),
(285, 20, 49, '2019-09-24 20:18:49');

-- --------------------------------------------------------

--
-- 表的结构 `hh_feedback`
--

CREATE TABLE `hh_feedback` (
  `id` int(11) NOT NULL COMMENT '流水号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `feedback` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '意见反馈',
  `phone` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '手机号',
  `time` datetime DEFAULT NULL COMMENT '反馈时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_feedback`
--

INSERT INTO `hh_feedback` (`id`, `user_id`, `feedback`, `phone`, `time`) VALUES
(17, 20, '测试反馈内容', '', '2019-09-29 13:45:55'),
(14, 23, '测试', '18789278981', '2019-09-24 17:34:36');

-- --------------------------------------------------------

--
-- 表的结构 `hh_glimpse`
--

CREATE TABLE `hh_glimpse` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '掠影主题',
  `glimpse_time` datetime DEFAULT NULL COMMENT '发布时间',
  `s_title` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '掠影二级主题',
  `glimpse_img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '活动图片',
  `content` text COLLATE utf8mb4_bin COMMENT '活动内容',
  `goods_num` int(1) NOT NULL DEFAULT '0' COMMENT '点赞数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_glimpse`
--

INSERT INTO `hh_glimpse` (`id`, `title`, `glimpse_time`, `s_title`, `glimpse_img`, `content`, `goods_num`) VALUES
(15, '金碧物业“八一”军事技能大比武', '2019-08-02 00:00:00', '——金碧物业保安风采', 'uploads/20190927\\9e47e84276cd3615718e4cf878d4aedb.jpg', '<p>展现军事素养<br>锤炼安保技能<br>台风“韦帕”过后<br>恒大金碧物业海花岛分公司<br>秩序八一大比武为您呈现！</p><p><br></p><p><img src=\"../uploads/20190927/f041def086c6ba594588e0eeaef5ea37.jpg\" style=\"max-width:100%;\"><br></p><p><br></p><p><img src=\"../uploads/20190927/707b967a48d40cd483b9e8cb6054649d.jpg\" style=\"max-width:100%;\"><br></p><p><br></p><p><img src=\"../uploads/20190927/9226efd518fe385662e65b8639f80602.jpg\" style=\"max-width:100%;\"><br></p><p><br></p><p><img src=\"../uploads/20190927/490025c0faa55e051e3f5f5e7d56bb02.jpg\" style=\"max-width:100%;\"><br></p><p><br></p><p><img src=\"../uploads/20190927/026248cd63e5136d4f93e1b971ca2a07.jpg\" style=\"max-width:100%;\"><br></p><p><br></p><p><img src=\"../uploads/20190927/4afcea168d4a28af6fa4c6436280ca9f.jpg\" style=\"max-width:100%;\"><br></p><p><br></p><p><img src=\"../uploads/20190927/bf4375ab9f0429f01d7927899a79b589.jpg\" style=\"max-width:100%;\"><br></p>', 0),
(14, '恒大金碧物业海花岛庆中秋', '2019-09-27 17:59:00', '——又是一年月圆时，又是一年中秋月', 'uploads/20190927\\8babf38a77262e80a603d0d19f041300.jpg', '<p>弘扬尊老敬老传统文化，<br>营造幸福和谐恒大社区！<br><br></p><p><img src=\"../uploads/20190927/f6bdd6105576a0667449e25f9d508133.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"../uploads/20190927/daa7930d52efcf64a66dd32e244ffd14.jpg\" style=\"max-width:100%;\"><br></p><p><br></p><p>亲手制作中秋团圆饼，<br>与亲朋友邻共庆佳节！<br></p><p><br></p><p><img src=\"../uploads/20190927/360ddceb7b44b44ab8642a0de8bdf45c.jpg\" style=\"max-width:100%;\"><br></p><p><img src=\"../uploads/20190927/20138d8dc452eea078750ae138bf7790.jpg\" style=\"max-width:100%;\"><br></p>', 0);

-- --------------------------------------------------------

--
-- 表的结构 `hh_glimpse_goods`
--

CREATE TABLE `hh_glimpse_goods` (
  `id` int(11) NOT NULL COMMENT '流水号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `glimpse_id` int(11) DEFAULT NULL COMMENT '商户id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_glimpse_goods`
--

INSERT INTO `hh_glimpse_goods` (`id`, `user_id`, `glimpse_id`) VALUES
(4, 3, 5),
(29, 20, 5),
(19, 1, 5),
(26, 22, 5);

-- --------------------------------------------------------

--
-- 表的结构 `hh_glimpse_img`
--

CREATE TABLE `hh_glimpse_img` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '活动图片'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- 表的结构 `hh_mail_img`
--

CREATE TABLE `hh_mail_img` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '通讯录照片',
  `mail_img_thumb` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '缩略图'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- 表的结构 `hh_mail_list`
--

CREATE TABLE `hh_mail_list` (
  `id` int(11) NOT NULL,
  `m_cart` int(1) NOT NULL DEFAULT '0' COMMENT '0表示物业通讯,1表示政府办事,2表示医疗健康',
  `title` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '主题',
  `address` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '地址',
  `phone` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '电话',
  `mail_img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '活动图片',
  `hos_cart` int(1) NOT NULL,
  `mail_img_thumb` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '缩略图'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_mail_list`
--

INSERT INTO `hh_mail_list` (`id`, `m_cart`, `title`, `address`, `phone`, `mail_img`, `hos_cart`, `mail_img_thumb`) VALUES
(39, 0, '2号岛第一物业服务中心', '恒大海花岛2号岛晓港湾商业街', '0898-32661688', 'uploads/20190924\\ec42f46b6d90aaa36f07e4596e9ee678.jpg', 0, 'uploads/20190924/thumb180_ec42f46b6d90aaa36f07e4596e9ee678.jpg'),
(40, 0, '2号岛第二物业服务中心', '恒大海花岛2号岛232栋/253栋首层', '0898-32661388', 'uploads/20190924\\3667986b411df35bf3f16184fec4e870.jpg', 0, 'uploads/20190924/thumb180_3667986b411df35bf3f16184fec4e870.jpg'),
(41, 0, '2号岛第三物业服务中心', '恒大海花岛2号岛269栋首层', '0898-32661988', 'uploads/20190924\\54714c9a0d17ba6ab5a7f3fda32d53d9.jpg', 0, 'uploads/20190924/thumb180_54714c9a0d17ba6ab5a7f3fda32d53d9.jpg'),
(42, 0, '3号岛第一物业服务中心', '恒大海花岛3号岛牡丹园牡丹路商业街首层', '0898-23555688', 'uploads/20190924\\392fcc12a2e4c94a17d67b05d21ada57.jpg', 0, 'uploads/20190924/thumb180_392fcc12a2e4c94a17d67b05d21ada57.jpg'),
(43, 2, '儋州市第一人民医院（二甲）', '海南省儋州市那大镇人民大道东49号', '0898-23322459', 'uploads/20190924\\0af30afdb171d74a40be307b30f5b0ea.png', 4, 'uploads/20190924/thumb180_0af30afdb171d74a40be307b30f5b0ea.png'),
(44, 2, '儋州市第三人民医院', '海南省儋州市解放北路181号', '0898-36931758', 'uploads/20190924\\3cd4955b5ec192eee454f93b463ec52e.png', 4, 'uploads/20190924/thumb180_3cd4955b5ec192eee454f93b463ec52e.png'),
(45, 2, '儋州市西部中心医院（二甲）', '海南省儋州市人民西路475号', '0898-23835001', 'uploads/20190924\\14bdd33a09faed579b815e057a52a98e.jpg', 4, 'uploads/20190924/thumb180_14bdd33a09faed579b815e057a52a98e.jpg'),
(46, 2, '洋浦中心医院', '海南省儋州市洋浦', '0898-28824377', 'uploads/20190924\\04ca334591aa0a3faaf59aeb435ce09d.png', 4, 'uploads/20190924/thumb180_04ca334591aa0a3faaf59aeb435ce09d.png'),
(47, 2, '白马井镇中心卫生院', '海南省儋州市白马井镇中心卫生院', '0898-23651133', 'uploads/20190924\\5f03f3e1293f56f130bbfcf468a82c77.png', 4, 'uploads/20190924/thumb180_5f03f3e1293f56f130bbfcf468a82c77.png'),
(48, 2, '排浦镇中心卫生院', '海南省儋州市排浦镇', '18601912216', 'uploads/20190924\\f01f75377aefda8a93ae5e42dc3f0776.png', 4, 'uploads/20190924/thumb180_f01f75377aefda8a93ae5e42dc3f0776.png'),
(49, 2, '海南省人民医院', '海口市秀英区秀华路19号', '0898-68642668', 'uploads/20190924\\22a03e0d022f6d2d31834e4c2bb14989.jpeg', 1, 'uploads/20190924/thumb180_22a03e0d022f6d2d31834e4c2bb14989.jpeg'),
(50, 2, '海口市人民医院', '海口市海甸岛人民大道43号', '0898-66189688', 'uploads/20190924\\4214b8b08e85838f40eb1743d0daf429.jpg', 2, 'uploads/20190924/thumb180_4214b8b08e85838f40eb1743d0daf429.jpg'),
(51, 2, '解放军187医院', '海口市龙昆南路100号', '0898-65884569', 'uploads/20190924\\12a88b4600cb35d3b4742934ca11fecd.jpg', 2, 'uploads/20190924/thumb180_12a88b4600cb35d3b4742934ca11fecd.jpg'),
(52, 2, '三亚301医院', '海南省三亚市海棠湾林旺镇江林路', '0898-38866666', 'uploads/20190924\\8378cf15cb531c983892864f45c33ce6.png', 3, 'uploads/20190924/thumb180_8378cf15cb531c983892864f45c33ce6.png'),
(53, 2, '三亚市人民医院', '海南省三亚市解放路558号', '0898-88557733', 'uploads/20190924\\1a13b376dddf5cfdd4a71b0192e45c7c.jpg', 3, 'uploads/20190924/thumb180_1a13b376dddf5cfdd4a71b0192e45c7c.jpg'),
(54, 1, '排浦镇人民政府', '海南省儋州市排浦镇委（文豪街南）', '0898-23652781', 'uploads/20190924\\4cd918a055c4e4b2be55b4b35210eeba.png', 0, 'uploads/20190924/thumb180_4cd918a055c4e4b2be55b4b35210eeba.png'),
(55, 1, '儋州市不动产登记中心', '儋州市那大镇国盛路与紫薇路交汇处附近西南', '18619565007', 'uploads/20190924\\272778df119c8ef5974edf188f73f6c8.png', 0, 'uploads/20190924/thumb180_272778df119c8ef5974edf188f73f6c8.png'),
(56, 1, '白马井镇派出所（二号岛）', '儋州市公安局白马井镇边防派出所（中心大道）', '0898-23655388', 'uploads/20190924\\930e3ecc07a6a47b8f60c813c2b8f51f.jpg', 0, 'uploads/20190924/thumb180_930e3ecc07a6a47b8f60c813c2b8f51f.jpg'),
(57, 1, '排浦镇边防派出所（三号岛）', '儋州市排浦文豪街财政所附近', '0898-23601061', 'uploads/20190924\\9a14839a7f8ed05cdb6c21567bd15c27.png', 0, 'uploads/20190924/thumb180_9a14839a7f8ed05cdb6c21567bd15c27.png'),
(58, 1, '白马井镇人民政府', '儋州市白马井镇中七路', '0898-23652781', 'uploads/20190924\\2cfa1c00d102e1c612a232fa7a56a1a1.jpg', 0, 'uploads/20190924/thumb180_2cfa1c00d102e1c612a232fa7a56a1a1.jpg'),
(59, 1, '白马井镇税务局', '儋州市白马井镇人民路与开源大道交叉口东南100米', '0898-12366', 'uploads/20190924\\63a35861dc0c0d97cf9470ae7ef03132.jpg', 0, 'uploads/20190924/thumb180_63a35861dc0c0d97cf9470ae7ef03132.jpg'),
(60, 1, '儋州市税务局', '儋州市地税局中心大街北', '0898-23885157', 'uploads/20190924\\45a125d475ce45424d33f70b4245f832.png', 0, 'uploads/20190924/thumb180_45a125d475ce45424d33f70b4245f832.png'),
(61, 1, '海南省儋州市人民法院', '儋州市中兴大道', '0898-23881232', 'uploads/20190924\\f592b86f6fcd17b3af85c34a37e0be86.jpg', 0, 'uploads/20190924/thumb180_f592b86f6fcd17b3af85c34a37e0be86.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `hh_my_act`
--

CREATE TABLE `hh_my_act` (
  `id` int(11) NOT NULL COMMENT '流水号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `act_id` int(11) DEFAULT NULL COMMENT '商户id',
  `name` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '电话',
  `time` datetime DEFAULT NULL COMMENT '报名时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_my_act`
--

INSERT INTO `hh_my_act` (`id`, `user_id`, `act_id`, `name`, `phone`, `time`) VALUES
(37, 21, 22, '张嘉逸', '18627748929', '2019-09-30 09:49:37'),
(36, 22, 22, '孙小姐', '18789266827', '2019-09-29 20:02:06');

-- --------------------------------------------------------

--
-- 表的结构 `hh_navigation`
--

CREATE TABLE `hh_navigation` (
  `id` int(11) NOT NULL,
  `sort` int(10) DEFAULT '0' COMMENT '排序',
  `b_cart` int(1) NOT NULL DEFAULT '0' COMMENT '0表示美食推荐，1表示酒店名宿',
  `b_type` int(1) NOT NULL DEFAULT '0' COMMENT '0表示美食推荐，1表示酒店名宿',
  `area` int(1) NOT NULL DEFAULT '0' COMMENT '0表示美食推荐，1表示酒店名宿',
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '商家名称',
  `address` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '地址',
  `phone` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '电话',
  `hours` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '营业时间',
  `introduce` text COLLATE utf8mb4_bin COMMENT '商家介绍',
  `remarks` text COLLATE utf8mb4_bin COMMENT '商家备注',
  `longitude` decimal(10,7) NOT NULL COMMENT '经度',
  `latitude` decimal(10,7) NOT NULL COMMENT '纬度',
  `is_hot` int(1) NOT NULL DEFAULT '0' COMMENT '0不置顶，1置顶',
  `is_hide` int(1) NOT NULL DEFAULT '0' COMMENT '0不隐藏，1隐藏',
  `is_out` int(1) NOT NULL DEFAULT '0' COMMENT '0不隐藏，1隐藏',
  `navigation_img_id` varchar(1000) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '连表navigation_img_id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_navigation`
--

INSERT INTO `hh_navigation` (`id`, `sort`, `b_cart`, `b_type`, `area`, `name`, `address`, `phone`, `hours`, `introduce`, `remarks`, `longitude`, `latitude`, `is_hot`, `is_hide`, `is_out`, `navigation_img_id`) VALUES
(1, 0, 1, 8, 3, '海世盛楼酒楼', '儋州市中国海南海花岛3岛首期社区商业街二楼', '15248902468', '11:00-21:00', '', '人均消费:70元', '109.1666690', '19.6500140', 0, 0, 0, '272,275,276'),
(2, 0, 3, 17, 3, '联华优购便利店', '儋州市中国海南海花岛3号岛首期社区商业街一层14/15铺', '16620033033', '9:00-22:00', '', '', '109.1666690', '19.6500140', 0, 0, 0, '263,210'),
(3, 0, 6, 34, 3, '龙芝林药品超市', '儋州市中国海南海花岛3号岛首期社区商业街一层11/12铺', '15308910777', '9:00-21:00', '', '', '109.1666690', '19.6500140', 0, 0, 0, '264,213'),
(4, 0, 3, 17, 3, '臻品家连锁超市（3号岛店）', '儋州市中国海南海花岛3号岛首期社区商业街一层1-5铺', '13647521157', '8:00-21:00', '臻品家是一家专门做楼盘配套出来的连锁集团超市，有着10多年的市场积淀。以诚信为本，为顾客提供诚信的服务跟舒适的购物环境', '人均消费:15元', '109.1666690', '19.6500140', 0, 0, 0, '292,293,294,221,224,226'),
(5, 0, 4, 23, 3, '建行自助银行', '儋州市中国海南海花岛3号岛首期社区商业街一层10铺', '-', '24小时（装修中）', '', '', '109.1666690', '19.6500140', 0, 0, 0, '157'),
(6, 5, 1, 12, 3, '猫婆小面（3号岛店）', '儋州市中国海南海花岛3号岛首期社区商业街一层6/7铺', '17788411078', '7:30-21:30', '全国连锁600家品牌店，舌尖上的中国特别推荐美食小吃', '人均消费:22元，打包盒1元，配送时长平均15分钟', '109.1666690', '19.6500140', 0, 0, 1, '265,266,267,268,215,216,217,310'),
(7, 0, 3, 17, 2, '福站便利店', '儋州市中国海南海花岛257栋底商8-10铺', '18389828997', '7:30-22:30', '', '消费满68元可免费送货，配送时长平均30分钟', '109.1945310', '19.6766160', 0, 0, 1, '257,258,234,235'),
(8, 0, 5, 24, 2, '中国电信营业店', '儋州市中国海南海花岛257栋底商2铺', '17789779993', '9:00-19:00', '短期宽带电视\n即插即用，停机不收费', '免费上门 即时送上门', '109.1945310', '19.6766160', 0, 0, 1, '298,250'),
(9, 0, 1, 12, 2, '山水重庆小面馆', '儋州市中国海南海花岛257栋底商4铺', '13648374300', '7:30-20:30', '主要经营川渝风味面食，川渝糖水，海南特色糖水，饭菜类。店里的食材，制作工艺，食品制作团队均来自重庆。地道食材，特色工艺，还原重庆味道', '人均消费:15元，3元起步（根据距离增加），配送时长平均10分钟', '109.1945310', '19.6766160', 0, 0, 1, '276,277,245,246'),
(10, 0, 2, 14, 2, '柠檬达人', '儋州市中国海南海花岛257栋底商11铺', '15145650870', '7:00-22:00', '主营奶茶果茶，及各类炸鸡小吃', '人均消费:15元，外卖费:5元，配送时长平均20分钟', '109.1945310', '19.6766160', 0, 0, 1, '269,270,237,301'),
(11, 0, 6, 35, 2, '黄建国专科门诊', '儋州市中国海南海花岛257栋底商1/16/17铺', '13876311212', '8:00-20:00', '', '', '109.1945310', '19.6766160', 0, 0, 0, '290,291,292'),
(12, 0, 1, 9, 2, '张亮麻辣烫', '儋州市中国海南海花岛257栋底商5铺', '19943315158', '8:00-21:00', '张亮麻辣烫是中国知名麻辣烫连锁加盟品牌。公司成立于创建于2008年，始建于黑龙江省。多年以来，公司总部对产品的质量尤为看重，每一款原料都是经过总部产品制作部门层层筛选的，以确保消费者在张亮麻辣烫店里能够吃的安心放心。产品以多位名贵中草药熬制，用料考究，汤底味道鲜美，配合上各种蔬菜豆制品﹑菌类﹑藻类等绿色食品，让进店的小芬者爱不释手，回味绵长。', '人均消费:20元，25元起送不收取外卖费，配送时长平均30分钟', '109.1945310', '19.6766160', 0, 0, 1, '286,287,288,286,297,306'),
(13, 0, 3, 19, 2, '派拉蒙鲜果园', '儋州市中国海南海花岛257栋底商7铺', '13976442529', '8:30-22:30', '主营岛内、岛外各种新鲜水果，可帮忙邮寄。并有饮料，矿泉水出售。', '人均消费:10元，2号岛内/30元以上免费配送，配送时长平均30分钟', '109.1945310', '19.6766160', 0, 0, 1, '271,272,240,241,242'),
(14, 0, 1, 11, 2, '沙县小吃', '儋州市中国海南海花岛257栋底商3铺', '13656903413', '7:00-21:00', '沙县小吃制作工艺独特，以其精湛的烹调手艺，做成同时具备中式快餐，新鲜味美，品种繁多，经济实恵，方便快捷的四大因素，促成开遍世界的小吃店。', '人均消费:13元，根据打包盒数量收费，配送时长平均25分钟', '109.1945310', '19.6766160', 0, 0, 1, '274,275,243,244'),
(15, 0, 3, 17, 2, '臻品家连锁超市（2号岛店）', '儋州市中国海南海花岛2号岛首期社区商业街2-18至19号铺面', '13647521157', '8:00-21:00', '臻品家是一家专门做楼盘配套出来的连锁集团超市，有着10多年的市场积淀。以诚信为本，为顾客提供诚信的服务跟舒适的购物环境', '人均消费:15元', '109.1917420', '19.6688470', 0, 0, 0, '289,290,291,201,202'),
(16, 0, 3, 18, 2, '海沃全球24h便利店', '儋州市中国海南海花岛2号岛首期社区商业街1-12至13号铺面', '18389829959', '8:00-20:00', '', '免费上门，外送时间依据实际情况而定', '109.1917420', '19.6688470', 0, 0, 1, '259,260,177,178'),
(17, 0, 6, 34, 2, '养天和大药房', '儋州市中国海南海花岛2号岛首期社区商业街1-14至17号铺面', '18910337033', '8:00-21:00', '养天和大药房股份有限公司成立于2002年8月,从7家门店、几十名员工起步,经过十多年的发展,成为全国具有极高影响力的大型药品零售连锁企业,也是国内首家药店加盟一体化服务平台企业。', '', '109.1917420', '19.6688470', 0, 0, 0, '321,322,323,198,199,200'),
(18, 0, 1, 10, 2, '陈记碳烤肉', '儋州市中国海南海花岛2号岛首期社区商业街2-13至14号铺面', '18771796578/13972042287/17762300602', '11:00-12:30\n 14:30-22:00', '本店主营环保碳烤各种肉类、海鲜、素菜类，配备各种炒菜、凉菜，推崇菜品无色素、无添加、无味精、无辣叔精、无麻椒精、放心油、品牌调料，实行以根据个人口味调配料', '人均消费:38元，岛内达到78元免费配送', '109.1917420', '19.6688470', 0, 0, 1, '249,250,251,171,172,173'),
(19, 0, 1, 12, 2, '猫婆小面（2号岛店）', '儋州市中国海南海花岛2号岛首期社区商业街2-15至16号铺面', '17788411078', '7:30-21:30', '全国连锁600家品牌店，舌尖上的中国特别推荐美食小吃', '人均消费:22元，打包盒1元，配送时长平均15分钟', '109.1917420', '19.6688470', 0, 0, 1, '307,308,309,181'),
(20, 0, 2, 16, 2, '巴黎天使烘焙', '儋州市中国海南海花岛2号岛首期社区商业街1-11号铺面', '13907505625', '8:00-22:00', '主营面包、，牛奶酸奶鲜奶、生日蛋糕、甜点蛋卷，饼干', '人均消费:30元，生日蛋糕免费送货、满88元送货上门', '109.1917420', '19.6688470', 0, 0, 1, '246,247,248,168,170'),
(21, 0, 2, 15, 2, 'SEVENNOTES7咖啡', '儋州市中国海南海花岛2号岛首期社区商业街2-17号铺面', '15120989105', '10:00-22:00', '美食、饮品应有尽有', '人均消费:15-38元，免费上门，配送时长平均2分钟', '109.1917420', '19.6688470', 0, 0, 1, '238,239,240,159,160,161'),
(22, 0, 2, 14, 2, '小雀茶', '儋州市中国海南海花岛2号岛首期社区商业街2-10号铺面', '18578333182', '10:30-22:00', '小店主营手摇奶茶，清凉水果茶，还有解暑沙冰，手冲咖啡等', '人均消费:30元，2号岛内30元起送 配送费3元，配送时长平均40分钟', '109.1917420', '19.6688470', 0, 0, 1, '315,316,317,189,190,191'),
(23, 0, 5, 26, 2, '派多格宠物家园', '儋州市中国海南海花岛2号岛首期社区商业街2-08号铺面', '17798421216/17604623754', '9:30-21:00', '致力服务宠物 让每一个宠物干净健康的陪伴主人 主要服务有宠物洗澡美容 猫粮狗粮 \n宠物玩具 宠物用品', '人均消费:150元，岛上宠物接送洗澡美容 时长:30分钟', '109.1917420', '19.6688470', 0, 0, 1, '310,311,312,185,186,302'),
(24, 0, 5, 24, 2, '中国联通海花岛直营店', '儋州市中国海南海花岛2号岛首期社区商业街2-05至06号铺面', '13006007188', '9:00-18:00', '海花岛联通营业厅秉承着诚信待客、热情服务的经营理念，为岛上业主提供专业、快捷的通讯行业服务。包含：管带安装、套餐办理、话费充值、话费查询和电子产品及配件的购买等一系列相关服务。', '可上门下单办理宽带', '109.1917420', '19.6688470', 0, 0, 0, '158'),
(25, 0, 3, 21, 2, '春光海南特产专营店', '儋州市中国海南海花岛2号岛首期社区商业街1-18至19号铺面', '13976380818', '9:00-21:00', '主打绿色、自然、原生态的海南特色产品。为确保产品品质和服务质量，所有网络、实体店铺均以直营方式经营，产品保留海南本土特色，为消费者提供放心、优质、特色、健康的伴手礼。', '人均消费:39元，外卖费:2-3元，时长:30-40分钟', '109.1917420', '19.6688470', 0, 0, 1, '252,253,254,174,175,176'),
(26, 0, 1, 11, 2, '蒸膳美茶餐厅', '儋州市中国海南海花岛2号岛首期社区商业街1-8至9号铺面', '13945757320', '8:00-22:00', '蒸膳美是一家以蒸菜为主的全国联盟快餐行业，主要经营：蒸菜套餐，早餐，东北炒菜、东北烧烤、海鲜加工，蒸的营养真的美味', '人均消费:20元，餐盒费套餐两元、单品一元，50元以上免费送餐，时长:40分钟内', '109.1917420', '19.6688470', 0, 0, 1, '324,325,326,205,206,208'),
(27, 0, 1, 11, 2, '阿宝味道中餐厅', '儋州市中国海南海花岛2号岛首期社区商业街1-2至7号铺面', '17389873799/133 7771 9577', '10：00－－14：00，16：00－－22：00', '在中国，吃永远都是一个朝阳行业。“好吃”是对阿宝味道的最高评价。“东西一定要好吃”这是阿宝先生一直坚持的。“好吃”的标准是没有尽头的，只有将每一个步骤做到极致，才能接近“最好吃”。阿宝味道------台湾美食融合菜餐厅的创始人阿宝先生把菜品研发当成一种信仰来做，抛开杂念，不忘初心去追求纯粹的味道，还原生活本真的面目，方得始终。如阿宝味道·台湾美食一道道倾注匠心制作的精致菜品，保留了食材天然不添加任何修饰的原味，让你的味蕾沉醉不知归路。在这里，你可以随时领略烹饪文明的广博与深厚，还有无穷乐趣。这里所有的美味，都是来自阿宝先生经过多年的实践经验，精心挑选各品类无添加食材作为阿宝味道好食材系列高品质的天然食材及纯古法酿造零添加的调味料，阿宝先生主张对食物不过多加工，只为呈现原汁原味，用温度改变食物的味道，并希望所有到来的贵客，心生一种到朋友家里做客的温馨用餐体验。\n        每种食物都有属于自己独一无二的味道，它原始的味道总会在任何形式的烹制下得以保留，我们靠着对食物的感觉来辨别，去寻找我们自己无法被取代的专属阿宝味道。', '人均消费:50元，外卖费:5元，配送时长平均30分钟', '109.1917420', '19.6688470', 0, 0, 1, '241,242,243,288,289,318'),
(28, 0, 1, 11, 2, '许鲜包子', '儋州市中国海南海花岛2号岛首期社区商业街2-11至12号铺面', '15015564712', '6:00-19:30', '', '', '109.1917420', '19.6688470', 0, 0, 0, '318,319,320,195,196,197'),
(29, 0, 5, 28, 2, '熙美诚品', '儋州市中国海南海花岛2号岛首期社区商业街2-2至4号铺面', '18028622289/18665691700', '9:00-21:00', '生活用品 百货零售 （装饰品、厨具、用品、用具、钟表、清洁用品、收纳等等）', '', '109.1917420', '19.6688470', 0, 0, 0, '313,314,187,188'),
(30, 0, 3, 18, 2, '自由自在便利店', '儋州市中国海南海花岛272栋1、2、20号铺面', '17733128853', '7:30-22:00', '经营日本，韩国，泰国，香港，澳门，越南，印度，整个东南亚进口食品及生活用品，多种会员特价，澳洲原装进口奶粉，脱脂牛奶，意大利原装面……更多商品进店选购', '岛内免费送货，平均配送时长15分钟', '109.1967200', '19.6755960', 0, 0, 1, '303,304,305,270,271'),
(31, 0, 5, 24, 2, '中国移动营业厅', '儋州市中国海南海花岛272栋14号铺面', '13976293667', '8:30-17:00', '本营业部专营中国移动业务。电话卡销售，宽带入户(免费安装调试).续费，固话销售，智能手机销售，智能监控摄像头安装调试', '', '109.1967200', '19.6755960', 0, 0, 0, '301,302,322,323'),
(32, 0, 5, 29, 2, '中国国旅', '儋州市中国海南海花岛272栋15号铺面', '13807685990', '7:00-21:30', '岛内旅游、出境旅游、国内旅游、西沙旅游', '人均消费:500元', '109.1967200', '19.6755960', 0, 0, 0, '300,152'),
(33, 0, 1, 12, 2, '后安粉汤', '儋州市中国海南海花岛272栋6号铺面', '17334100062/18708906700', '6：30至21：30', '据《万宁志》记载，早在宋代，勤劳的后安人就已经制作出后安粉了。可以说后安粉已经拥有百年的历史，但却在近几年才闻名海南岛，相传后安物产丰富，有个闯荡江湖的恶徒到后安无恶不作，老百姓深受其害。后来，后安镇上一名武功超群的青年挺身而出，带领大伙把这恶徒赶跑了，有位年方16岁的姑娘，爱上了这位青年，就精心挑选了特产猪骨、粉肠、大肠、猪内脏等熬制了粉汤，答谢这位青年，以示爱意。由于味道鲜美、独特，便流传至今。', '人均消费:8元，外卖打包盒收费一元/1个，根据距离不定', '109.1967200', '19.6755960', 0, 0, 1, '261,262,256,303'),
(34, 0, 1, 12, 2, '张抄手', '儋州市中国海南海花岛272栋7、11号铺面', '15301111886', '08：30–14：00\n        17：00–21：00', '.主营川菜，面食，小炒，盖饭快餐。', '人均消费:30元', '109.1967200', '19.6755960', 0, 0, 0, '284,285,299,307'),
(35, 0, 1, 11, 2, '杨传老厨', '儋州市中国海南海花岛272栋8、9、10号铺面', '15002773369', '6:30-21:30', '本店每一份小吃都是在特制的瓦罐中加入独家秘制调料用心煨制出来的，特色鲜明，独一无二。', '人均消费:30-50元，淡季免费送货上门', '109.1967200', '19.6755960', 0, 0, 1, '278,279,280,258,259,304'),
(36, 0, 1, 11, 2, '西安袁师傅腊汁肉夹馍', '儋州市中国海南海花岛272栋12号铺面', '15364845966/18835933588', '09：00–14：30\n        17：00–21：30', '本店经营特色陕西小吃，特色菜品有：（1）正宗陕西袁师傅品牌腊汁肉夹馍（肥瘦、纯瘦）\n（2）陕西凉皮（秘制面皮、麻酱面皮）（3）排骨砂锅、鸡块砂锅、素菜砂锅、砂锅米线\n（4）米线、酸辣粉、馄饨\n（5）油泼面、担担面、炸酱面、臊子面\n（6）八宝粥、绿豆粥、醪糟、紫菜蛋花汤', '人均消费:10-30元，消费满20元岛内免费送餐（仅2#岛内送餐）.外卖费五月一日至十月一日免费，其他时段加收3元/次外卖费，平均配送时长30分钟内', '109.1967200', '19.6755960', 0, 0, 1, '282,283,282,283,309'),
(37, 0, 1, 12, 2, '爱斯蓝湖南常德米粉', '儋州市中国海南海花岛272栋21号铺面', '', '6:30-21:00', '全天供应湖南常德津市米粉，牛肉为主料，也有猪肉类口味，工艺讲究，加之秘料，乃湘楚一绝，是舌尖上的中国、中华名小吃。\n另外午、晚餐还有精美小炒，菜品单价16—25元之间，经济实惠味道美！', '早餐16元，正餐25元，平均配送时长30分钟，地址：海花岛二号岛272栋一楼21号铺（面向园区，两大堂中间）', '109.1967200', '19.6755960', 0, 0, 1, '244,245,252,300'),
(38, 0, 5, 29, 2, '海南臻品文化体验馆', '儋州市中国海南海花岛272栋3、18、19号铺面', '1860896135', '7:30至12:30，16:00至22:00', '本店经营海南黄花梨、沉香、降真香、金丝楠手串摆件等工艺品.   茶酒和本地海干货、随手礼等海南特产.  儋州粽子和各色糕点.', '', '109.1967200', '19.6755960', 0, 0, 0, '295,296,297,267,316,317'),
(39, 0, 6, 36, 2, '东阿阿胶专卖店', '儋州市中国海南海花岛272栋16号铺面', '15376868858', '8:00-20:00', '滋补国宝，东阿阿胶：传承三千年滋补良方，选用地道药材，古法和现代工艺相结合，中国非物质文化遗产。东阿阿胶具有调节免疫，滋阴润燥，益气补血，强身健体的多重功效，是您进补的最佳选择！', '2号岛内免费送货上门', '109.1967200', '19.6755960', 0, 0, 1, '255,256,294,295'),
(40, 0, 1, 11, 2, '柏记水饺', '儋州市中国海南海花岛277栋底商2/3/24/25铺', '19943316158', '8:00-22:00', '柏记水饺，色香味俱全，口味多元，色彩丰富，彩色饺子，映入眼帘，掀起消费热潮！皮：特色面皮，纯手工捶打而成，爽滑弹牙。馅：既有青菜、韭菜、白菜等大众水饺，也有三鲜、虾仁等中精心打造品种。形：皮薄馅嫩，味道鲜美，形状个性，精致味美', '人均消费:15元，满25元免费送货，配送时长平均40分钟', '109.1973960', '19.6744540', 0, 0, 1, '207,208,209,312,313,314'),
(41, 0, 2, 14, 2, '悠享时光奶茶店', '儋州市中国海南海花岛277栋22号铺', '13697525856', '10:00-21:00', '本店经营可口奶茶、鲜味果汁、醇香咖啡、海南清补凉等饮品，椰蓉面包、烤香肠、卤味鸭脖等特色小吃。\n欢迎广大客户光顾！', '人均消费:10元，免费送货，配送时长平均20分钟', '109.1973960', '19.6744540', 0, 0, 1, '231,232,183,315'),
(42, 0, 2, 14, 2, '臻泰芒', '儋州市中国海南海花岛277栋18号铺', '15908490309', '9:00-21:00', '', '人均消费:16元，2元配送费，配送时长平均30分钟', '109.1973960', '19.6744540', 0, 0, 1, '233,234,235,192,193,194'),
(43, 0, 3, 17, 2, '京东超市便利店', '儋州市中国海南海花岛278栋3、4、5、6、14、15、16、20、21号铺', '13681051055/18289332708', '8:00-22:00', '京东超市线下实体店，以传统销售为主，内陆商品和地方商品相互结合，商品及时更新。\n1、经营理念：客户为先，诚信经营。\n2、经营目标：品种齐全、保质保鲜、亲切待客、清洁卫生，品牌低价。\n3、超市定位：1）、经营定位：酒水饮料、副食品、休闲食品、日化产品、家杂纺织、果蔬冷链产品、家用小家电等系列生活用品。\n2）、商品定位：品牌低价，保质保量，定期促销，平价销售薄利多销。', '大件、大量物品可免费送货', '109.1980500', '19.6739490', 0, 0, 1, '221,222,223,203,204,207'),
(44, 0, 1, 9, 2, '老城一锅', '儋州市中国海南海花岛278栋1、2、17、18、19号铺', '13681051055/15120831282', '6:00-22:00', '羊蝎子就是羊脊骨，因其形状酷似蝎子，故而俗称羊蝎子。羊蝎子常可用来做火锅，味道鲜美。羊蝎子低脂肪；低胆固醇；低血糖；高蛋白；富含钙质。易于吸收，有滋阴补肾，养颜壮阳功效。要说羊蝎子的由来，那得追溯到康熙年间。蒙古王爷奈曼王，有次打猎回来路过后院闻见香气扑鼻。跟下人打听才知道是新来的厨子给下人们炖羊脊骨吃呢。王爷一尝，美味呀。然后看脊骨那形状酷似一只蝎子，就起名为『羊蝎子』并且作为府上的食谱。结果后来就传到民间了。', '早餐：5元\n中餐、晚餐:15元;羊蝎子人均60元   配送费3元（订餐38元以上免费），配送时长平均30分钟', '109.1980500', '19.6739490', 1, 0, 1, '224,225,226,277,278,279'),
(45, 0, 3, 18, 2, '如邻便利店', '儋州市中国海南海花岛279栋1、26、27号铺', '13608610021', '7:00-24:00', '', '', '109.1987260', '19.6741210', 0, 0, 0, '227,228,229,230,231,232'),
(46, 0, 5, 27, 2, '中国体育福利彩票', '儋州市中国海南海花岛279栋5号铺', '18907651012', '7:30-2:00', '经营各类彩票', '', '109.1987260', '19.6741210', 0, 0, 0, '236,237,239,308'),
(47, 0, 3, 19, 2, '菓香四海', '儋州市中国海南海花岛279栋6、20号铺', '13898164243', '7:00-21:00', '菓香四海是一个集水果源头采购、采后保鲜、物流仓储、品质分级、营销拓展、品牌运营、门店零售于一体的连锁品牌。菓香四海公司的主旨是向越来越多的人提供更好吃、更新鲜、更健康且性价比更高的水果，致力于水果产业链、水果专营连锁业态的发展以及日常生活中膳食水果和真、善、美文化的创造与传播。', '人均消费20元，仅收取包装材料费', '109.1987260', '19.6741210', 0, 0, 1, '219,220,227,228'),
(48, 0, 5, 28, 2, '世昌渔具', '儋州市中国海南海花岛279栋21号铺', '13903265855', '8:00-22:00', '本店经营渔具销售、体育用品及器材等', '', '109.1987260', '19.6741210', 0, 0, 0, '230,233'),
(49, 0, 5, 25, 2, '诚品五金日杂店', '儋州市中国海南海花岛279栋22号铺', '15289748088', '7:00-20:00', '主营家用五金、工程类五金，与零售商和代理商建立了长期稳定的合作关系，品种齐全、价格合理，企业实力雄厚，重信用、守合同、保证产品质量，以多品种经营特色和薄利多销的原则，赢得了广大客户的信任', '总金额超过100元以上,可免费送货', '109.1987260', '19.6741210', 0, 0, 1, '210,211,212,218,219,220'),
(50, 0, 5, 27, 2, '海南古盐田高尔夫俱乐部', '儋州市中国海南海花岛279栋7、8、17、18、19号铺', '18089772180', '9:00-12:00；\n14:00-17:30', '古盐田高尔夫接待中心系海南古盐田高尔夫球场俱乐部所设，距球场约20公里车程。球场由澳大利亚籍著名球场设计大师Graham Marsh主持，以国际18洞标准杆72杆高尔夫球场为标准，建造纯正林克斯风格的高尔夫球场。球场周边约5公里海岸线，以自然裸露强风化玄武岩结合球场自然景观置石，伴以红树林自然风光。球道总长7461码，有9洞球道环海，全程海风吹拂。\n接待中心内设有高尔夫3D挥杆模拟器、练习果岭、高尔夫各类用品专卖及球位预订。', '', '109.1987260', '19.6741210', 0, 0, 0, '216,217,218,222,223,225');

-- --------------------------------------------------------

--
-- 表的结构 `hh_navigation_img`
--

CREATE TABLE `hh_navigation_img` (
  `id` int(11) NOT NULL,
  `n_id` int(11) NOT NULL DEFAULT '0' COMMENT 'hh_navigation表的id',
  `n_img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '商家介绍图',
  `n_thumb_big` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '商家介绍图',
  `n_thumb_lit` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '商家介绍图'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_navigation_img`
--

INSERT INTO `hh_navigation_img` (`id`, `n_id`, `n_img`, `n_thumb_big`, `n_thumb_lit`) VALUES
(220, 49, 'uploads/20190918\\8b4e219d0da55b93ff463b74c3cfa8e9.jpg', 'uploads/20190918/thumb750_8b4e219d0da55b93ff463b74c3cfa8e9.jpg', 'uploads/20190918/thumb170_8b4e219d0da55b93ff463b74c3cfa8e9.jpg'),
(219, 49, 'uploads/20190918\\467ccf3bc9b37e57b67db478d05080eb.jpg', 'uploads/20190918/thumb750_467ccf3bc9b37e57b67db478d05080eb.jpg', 'uploads/20190918/thumb170_467ccf3bc9b37e57b67db478d05080eb.jpg'),
(215, 6, 'uploads/20190918\\f364566ac8deba0bf134249984270a74.jpg', 'uploads/20190918/thumb750_f364566ac8deba0bf134249984270a74.jpg', 'uploads/20190918/thumb170_f364566ac8deba0bf134249984270a74.jpg'),
(170, 20, 'uploads/20190918\\222dd462228d78dafeec6199ef9ff038.jpg', 'uploads/20190918/thumb750_222dd462228d78dafeec6199ef9ff038.jpg', 'uploads/20190918/thumb170_222dd462228d78dafeec6199ef9ff038.jpg'),
(168, 20, 'uploads/20190918\\87e43b8a2378abd6de2b05b4b7f3fd39.jpg', 'uploads/20190918/thumb750_87e43b8a2378abd6de2b05b4b7f3fd39.jpg', 'uploads/20190918/thumb170_87e43b8a2378abd6de2b05b4b7f3fd39.jpg'),
(161, 21, 'uploads/20190918\\9040b26d77c0678c7a33f7983d7eebce.jpg', 'uploads/20190918/thumb750_9040b26d77c0678c7a33f7983d7eebce.jpg', 'uploads/20190918/thumb170_9040b26d77c0678c7a33f7983d7eebce.jpg'),
(160, 21, 'uploads/20190918\\d56dc833f6098476d46a08e174fc3c69.jpg', 'uploads/20190918/thumb750_d56dc833f6098476d46a08e174fc3c69.jpg', 'uploads/20190918/thumb170_d56dc833f6098476d46a08e174fc3c69.jpg'),
(159, 21, 'uploads/20190918\\1fb793d229e956bf0f45f943d0ad4fd9.jpg', 'uploads/20190918/thumb750_1fb793d229e956bf0f45f943d0ad4fd9.jpg', 'uploads/20190918/thumb170_1fb793d229e956bf0f45f943d0ad4fd9.jpg'),
(289, 27, 'uploads/20190918\\98e4f3af4f0435195542e8f1b583e71b.jpg', 'uploads/20190918/thumb750_98e4f3af4f0435195542e8f1b583e71b.jpg', 'uploads/20190918/thumb170_98e4f3af4f0435195542e8f1b583e71b.jpg'),
(288, 27, 'uploads/20190918\\0978fc50e5b0d1780545903498a84609.jpg', 'uploads/20190918/thumb750_0978fc50e5b0d1780545903498a84609.jpg', 'uploads/20190918/thumb170_0978fc50e5b0d1780545903498a84609.jpg'),
(318, 27, 'uploads/20190918\\2f5449303977bdf2d0339b90e7d83017.jpg', 'uploads/20190918/thumb750_2f5449303977bdf2d0339b90e7d83017.jpg', 'uploads/20190918/thumb170_2f5449303977bdf2d0339b90e7d83017.jpg'),
(312, 40, 'uploads/20190918\\fbd5c99c842d908867f265e0d940f87d.jpg', 'uploads/20190918/thumb750_fbd5c99c842d908867f265e0d940f87d.jpg', 'uploads/20190918/thumb170_fbd5c99c842d908867f265e0d940f87d.jpg'),
(313, 40, 'uploads/20190918\\86fa884608b313c0abbe9314bca91fea.jpg', 'uploads/20190918/thumb750_86fa884608b313c0abbe9314bca91fea.jpg', 'uploads/20190918/thumb170_86fa884608b313c0abbe9314bca91fea.jpg'),
(314, 40, 'uploads/20190918\\9eca797fb93eb649898afdb22dea097f.jpg', 'uploads/20190918/thumb750_9eca797fb93eb649898afdb22dea097f.jpg', 'uploads/20190918/thumb170_9eca797fb93eb649898afdb22dea097f.jpg'),
(173, 18, 'uploads/20190918\\0c5930c9a0871358b962cc842b485ecc.jpg', 'uploads/20190918/thumb750_0c5930c9a0871358b962cc842b485ecc.jpg', 'uploads/20190918/thumb170_0c5930c9a0871358b962cc842b485ecc.jpg'),
(172, 18, 'uploads/20190918\\29ef5410d1affde9a88c8006f7042c4a.jpg', 'uploads/20190918/thumb750_29ef5410d1affde9a88c8006f7042c4a.jpg', 'uploads/20190918/thumb170_29ef5410d1affde9a88c8006f7042c4a.jpg'),
(171, 18, 'uploads/20190918\\62a5761429e5768f396e039b5d7c1607.jpg', 'uploads/20190918/thumb750_62a5761429e5768f396e039b5d7c1607.jpg', 'uploads/20190918/thumb170_62a5761429e5768f396e039b5d7c1607.jpg'),
(176, 25, 'uploads/20190918\\da0d337f37cfdb895c7efcadfc1a675d.jpg', 'uploads/20190918/thumb750_da0d337f37cfdb895c7efcadfc1a675d.jpg', 'uploads/20190918/thumb170_da0d337f37cfdb895c7efcadfc1a675d.jpg'),
(175, 25, 'uploads/20190918\\85fde273da00632368c8b660c62f3e37.jpg', 'uploads/20190918/thumb750_85fde273da00632368c8b660c62f3e37.jpg', 'uploads/20190918/thumb170_85fde273da00632368c8b660c62f3e37.jpg'),
(174, 25, 'uploads/20190918\\9706f98c7fe9a24725989641f5d81fa6.jpg', 'uploads/20190918/thumb750_9706f98c7fe9a24725989641f5d81fa6.jpg', 'uploads/20190918/thumb170_9706f98c7fe9a24725989641f5d81fa6.jpg'),
(178, 16, 'uploads/20190918\\a0cce27e46dd38ef6fad0044ad4af1c0.jpg', 'uploads/20190918/thumb750_a0cce27e46dd38ef6fad0044ad4af1c0.jpg', 'uploads/20190918/thumb170_a0cce27e46dd38ef6fad0044ad4af1c0.jpg'),
(177, 16, 'uploads/20190918\\c5fbfcbaf124d43475bcfe449c4d9edf.jpg', 'uploads/20190918/thumb750_c5fbfcbaf124d43475bcfe449c4d9edf.jpg', 'uploads/20190918/thumb170_c5fbfcbaf124d43475bcfe449c4d9edf.jpg'),
(181, 19, 'uploads/20190918\\8daf82bcd76024262b82834fd036294c.jpg', 'uploads/20190918/thumb750_8daf82bcd76024262b82834fd036294c.jpg', 'uploads/20190918/thumb170_8daf82bcd76024262b82834fd036294c.jpg'),
(290, 11, 'uploads/20190918\\39c55217bddc2e3992bf3f25f87ae304.jpg', 'uploads/20190918/thumb750_39c55217bddc2e3992bf3f25f87ae304.jpg', 'uploads/20190918/thumb170_39c55217bddc2e3992bf3f25f87ae304.jpg'),
(186, 23, 'uploads/20190918\\9dc5b44efda0a9c87ec3110bb97c5519.jpg', 'uploads/20190918/thumb750_9dc5b44efda0a9c87ec3110bb97c5519.jpg', 'uploads/20190918/thumb170_9dc5b44efda0a9c87ec3110bb97c5519.jpg'),
(185, 23, 'uploads/20190918\\f2261de1d75c2c09a53881f2239b7020.jpg', 'uploads/20190918/thumb750_f2261de1d75c2c09a53881f2239b7020.jpg', 'uploads/20190918/thumb170_f2261de1d75c2c09a53881f2239b7020.jpg'),
(302, 23, 'uploads/20190918\\d799d0e32683a01c969a3b10c47cb9c4.jpg', 'uploads/20190918/thumb750_d799d0e32683a01c969a3b10c47cb9c4.jpg', 'uploads/20190918/thumb170_d799d0e32683a01c969a3b10c47cb9c4.jpg'),
(194, 42, 'uploads/20190918\\68b7c76931951ce8bc9b214f87e63777.jpg', 'uploads/20190918/thumb750_68b7c76931951ce8bc9b214f87e63777.jpg', 'uploads/20190918/thumb170_68b7c76931951ce8bc9b214f87e63777.jpg'),
(188, 29, 'uploads/20190918\\e627db6286de058f9ee60757f17cb3de.jpg', 'uploads/20190918/thumb750_e627db6286de058f9ee60757f17cb3de.jpg', 'uploads/20190918/thumb170_e627db6286de058f9ee60757f17cb3de.jpg'),
(187, 29, 'uploads/20190918\\1447b6af025d4e8311237c8fd74b1bb6.jpg', 'uploads/20190918/thumb750_1447b6af025d4e8311237c8fd74b1bb6.jpg', 'uploads/20190918/thumb170_1447b6af025d4e8311237c8fd74b1bb6.jpg'),
(190, 22, 'uploads/20190918\\a1c7065ed606da573134f2a9748a84c1.jpg', 'uploads/20190918/thumb750_a1c7065ed606da573134f2a9748a84c1.jpg', 'uploads/20190918/thumb170_a1c7065ed606da573134f2a9748a84c1.jpg'),
(189, 22, 'uploads/20190918\\5bc854d8410707e6578971aaa1b518c8.jpg', 'uploads/20190918/thumb750_5bc854d8410707e6578971aaa1b518c8.jpg', 'uploads/20190918/thumb170_5bc854d8410707e6578971aaa1b518c8.jpg'),
(191, 22, 'uploads/20190918\\b2ab08d86eae140c590ba05bc18534af.jpg', 'uploads/20190918/thumb750_b2ab08d86eae140c590ba05bc18534af.jpg', 'uploads/20190918/thumb170_b2ab08d86eae140c590ba05bc18534af.jpg'),
(192, 42, 'uploads/20190918\\15989475f50d666000c41be0b513c086.jpg', 'uploads/20190918/thumb750_15989475f50d666000c41be0b513c086.jpg', 'uploads/20190918/thumb170_15989475f50d666000c41be0b513c086.jpg'),
(193, 42, 'uploads/20190918\\6a13354a97d5d5753e8bedc568bf42a4.jpg', 'uploads/20190918/thumb750_6a13354a97d5d5753e8bedc568bf42a4.jpg', 'uploads/20190918/thumb170_6a13354a97d5d5753e8bedc568bf42a4.jpg'),
(197, 28, 'uploads/20190918\\1568d22382461a4304dd390a6538d93d.jpg', 'uploads/20190918/thumb750_1568d22382461a4304dd390a6538d93d.jpg', 'uploads/20190918/thumb170_1568d22382461a4304dd390a6538d93d.jpg'),
(196, 28, 'uploads/20190918\\4d780f4ba89cefe3ee9465fd346e5ae5.jpg', 'uploads/20190918/thumb750_4d780f4ba89cefe3ee9465fd346e5ae5.jpg', 'uploads/20190918/thumb170_4d780f4ba89cefe3ee9465fd346e5ae5.jpg'),
(195, 28, 'uploads/20190918\\fa7a8d845c0f96e5ae36b6d358c59d7a.jpg', 'uploads/20190918/thumb750_fa7a8d845c0f96e5ae36b6d358c59d7a.jpg', 'uploads/20190918/thumb170_fa7a8d845c0f96e5ae36b6d358c59d7a.jpg'),
(208, 26, 'uploads/20190918\\2032fe305063ae6a95fe74762c706b85.jpg', 'uploads/20190918/thumb750_2032fe305063ae6a95fe74762c706b85.jpg', 'uploads/20190918/thumb170_2032fe305063ae6a95fe74762c706b85.jpg'),
(200, 17, 'uploads/20190918\\fa798eecbada920a719f5d092f94c3de.jpg', 'uploads/20190918/thumb750_fa798eecbada920a719f5d092f94c3de.jpg', 'uploads/20190918/thumb170_fa798eecbada920a719f5d092f94c3de.jpg'),
(199, 17, 'uploads/20190918\\517a85ba66f89bb25e04f27343128c72.jpg', 'uploads/20190918/thumb750_517a85ba66f89bb25e04f27343128c72.jpg', 'uploads/20190918/thumb170_517a85ba66f89bb25e04f27343128c72.jpg'),
(198, 17, 'uploads/20190918\\3934ea67f4722425ac295250aff237c0.jpg', 'uploads/20190918/thumb750_3934ea67f4722425ac295250aff237c0.jpg', 'uploads/20190918/thumb170_3934ea67f4722425ac295250aff237c0.jpg'),
(201, 15, 'uploads/20190918\\6c9d4ab4f28b23d0834fd3671223848c.jpg', 'uploads/20190918/thumb750_6c9d4ab4f28b23d0834fd3671223848c.jpg', 'uploads/20190918/thumb170_6c9d4ab4f28b23d0834fd3671223848c.jpg'),
(202, 15, 'uploads/20190918\\e2ce68f9505e07cb6d76b8b6b284aee5.jpg', 'uploads/20190918/thumb750_e2ce68f9505e07cb6d76b8b6b284aee5.jpg', 'uploads/20190918/thumb170_e2ce68f9505e07cb6d76b8b6b284aee5.jpg'),
(206, 26, 'uploads/20190918\\c34241e55752405ef8d383de7ebdcbe2.jpg', 'uploads/20190918/thumb750_c34241e55752405ef8d383de7ebdcbe2.jpg', 'uploads/20190918/thumb170_c34241e55752405ef8d383de7ebdcbe2.jpg'),
(207, 43, 'uploads/20190918\\e094d9124649d962f839b69a92e957ce.jpg', 'uploads/20190918/thumb750_e094d9124649d962f839b69a92e957ce.jpg', 'uploads/20190918/thumb170_e094d9124649d962f839b69a92e957ce.jpg'),
(279, 44, 'uploads/20190918\\409842f4e9d74914957594c481bad5b0.jpg', 'uploads/20190918/thumb750_409842f4e9d74914957594c481bad5b0.jpg', 'uploads/20190918/thumb170_409842f4e9d74914957594c481bad5b0.jpg'),
(210, 2, 'uploads/20190918\\fef18f47b8ee3d6702754bd90a2a19c9.jpg', 'uploads/20190918/thumb750_fef18f47b8ee3d6702754bd90a2a19c9.jpg', 'uploads/20190918/thumb170_fef18f47b8ee3d6702754bd90a2a19c9.jpg'),
(277, 44, 'uploads/20190918\\5559fca9cda582098377b0f199898946.jpg', 'uploads/20190918/thumb750_5559fca9cda582098377b0f199898946.jpg', 'uploads/20190918/thumb170_5559fca9cda582098377b0f199898946.jpg'),
(205, 26, 'uploads/20190918\\9941074dea7ec28d606eb201a12408ea.jpg', 'uploads/20190918/thumb750_9941074dea7ec28d606eb201a12408ea.jpg', 'uploads/20190918/thumb170_9941074dea7ec28d606eb201a12408ea.jpg'),
(203, 43, 'uploads/20190918\\cd1668c153a9989dfcc6fb671d10fb87.jpg', 'uploads/20190918/thumb750_cd1668c153a9989dfcc6fb671d10fb87.jpg', 'uploads/20190918/thumb170_cd1668c153a9989dfcc6fb671d10fb87.jpg'),
(204, 43, 'uploads/20190918\\2a8e0ac3e4ba3cc838375beadda80a4e.jpg', 'uploads/20190918/thumb750_2a8e0ac3e4ba3cc838375beadda80a4e.jpg', 'uploads/20190918/thumb170_2a8e0ac3e4ba3cc838375beadda80a4e.jpg'),
(218, 49, 'uploads/20190918\\f60720dc560d6216afac91bbbea05818.jpg', 'uploads/20190918/thumb750_f60720dc560d6216afac91bbbea05818.jpg', 'uploads/20190918/thumb170_f60720dc560d6216afac91bbbea05818.jpg'),
(216, 6, 'uploads/20190918\\521374e833484be9c75d4e95af161437.jpg', 'uploads/20190918/thumb750_521374e833484be9c75d4e95af161437.jpg', 'uploads/20190918/thumb170_521374e833484be9c75d4e95af161437.jpg'),
(217, 6, 'uploads/20190918\\b57f2483d14365dbda65c99dfb3dd5f9.jpg', 'uploads/20190918/thumb750_b57f2483d14365dbda65c99dfb3dd5f9.jpg', 'uploads/20190918/thumb170_b57f2483d14365dbda65c99dfb3dd5f9.jpg'),
(278, 44, 'uploads/20190918\\3170edc826bc460970263efcf6c4a2f6.jpg', 'uploads/20190918/thumb750_3170edc826bc460970263efcf6c4a2f6.jpg', 'uploads/20190918/thumb170_3170edc826bc460970263efcf6c4a2f6.jpg'),
(213, 3, 'uploads/20190918\\7944c6381833e44e32c6b088670e708c.jpg', 'uploads/20190918/thumb750_7944c6381833e44e32c6b088670e708c.jpg', 'uploads/20190918/thumb170_7944c6381833e44e32c6b088670e708c.jpg'),
(223, 50, 'uploads/20190918\\71f25e0e35b605dc6435ece90765fbb6.jpg', 'uploads/20190918/thumb750_71f25e0e35b605dc6435ece90765fbb6.jpg', 'uploads/20190918/thumb170_71f25e0e35b605dc6435ece90765fbb6.jpg'),
(222, 50, 'uploads/20190918\\1995376b98e83b828eb3f4eb4a2dc460.jpg', 'uploads/20190918/thumb750_1995376b98e83b828eb3f4eb4a2dc460.jpg', 'uploads/20190918/thumb170_1995376b98e83b828eb3f4eb4a2dc460.jpg'),
(221, 4, 'uploads/20190918\\b9252ba5c410910ba5d8297a9af9fe35.jpg', 'uploads/20190918/thumb750_b9252ba5c410910ba5d8297a9af9fe35.jpg', 'uploads/20190918/thumb170_b9252ba5c410910ba5d8297a9af9fe35.jpg'),
(310, 6, 'uploads/20190918\\75c291cdb172b374e2a1511e255a5cb7.jpg', 'uploads/20190918/thumb750_75c291cdb172b374e2a1511e255a5cb7.jpg', 'uploads/20190918/thumb170_75c291cdb172b374e2a1511e255a5cb7.jpg'),
(227, 47, 'uploads/20190918\\fbb1564ef47d167b8fd80c4d047577b4.jpg', 'uploads/20190918/thumb750_fbb1564ef47d167b8fd80c4d047577b4.jpg', 'uploads/20190918/thumb170_fbb1564ef47d167b8fd80c4d047577b4.jpg'),
(228, 47, 'uploads/20190918\\213a4ba29ec480ab628a3f31857b2554.jpg', 'uploads/20190918/thumb750_213a4ba29ec480ab628a3f31857b2554.jpg', 'uploads/20190918/thumb170_213a4ba29ec480ab628a3f31857b2554.jpg'),
(232, 45, 'uploads/20190918\\77bf46838883f77dcc321f7af62622c0.jpg', 'uploads/20190918/thumb750_77bf46838883f77dcc321f7af62622c0.jpg', 'uploads/20190918/thumb170_77bf46838883f77dcc321f7af62622c0.jpg'),
(231, 45, 'uploads/20190918\\b2d9319fd86b157ed0167c8c71cb9f60.jpg', 'uploads/20190918/thumb750_b2d9319fd86b157ed0167c8c71cb9f60.jpg', 'uploads/20190918/thumb170_b2d9319fd86b157ed0167c8c71cb9f60.jpg'),
(230, 45, 'uploads/20190918\\38eb6ffddde40b705f3d66992ca90459.jpg', 'uploads/20190918/thumb750_38eb6ffddde40b705f3d66992ca90459.jpg', 'uploads/20190918/thumb170_38eb6ffddde40b705f3d66992ca90459.jpg'),
(233, 48, 'uploads/20190918\\d5886569714aaeaecea13516cf8f39b8.jpg', 'uploads/20190918/thumb750_d5886569714aaeaecea13516cf8f39b8.jpg', 'uploads/20190918/thumb170_d5886569714aaeaecea13516cf8f39b8.jpg'),
(237, 10, 'uploads/20190918\\2f07376e5f29eda29029f860bc0d30cd.jpg', 'uploads/20190918/thumb750_2f07376e5f29eda29029f860bc0d30cd.jpg', 'uploads/20190918/thumb170_2f07376e5f29eda29029f860bc0d30cd.jpg'),
(301, 10, 'uploads/20190918\\6b777193f7bd03f5da5237887c3e54f7.jpg', 'uploads/20190918/thumb750_6b777193f7bd03f5da5237887c3e54f7.jpg', 'uploads/20190918/thumb170_6b777193f7bd03f5da5237887c3e54f7.jpg'),
(226, 4, 'uploads/20190918\\7679b733cfab6356865a8eaed901c276.jpg', 'uploads/20190918/thumb750_7679b733cfab6356865a8eaed901c276.jpg', 'uploads/20190918/thumb170_7679b733cfab6356865a8eaed901c276.jpg'),
(225, 50, 'uploads/20190918\\7469db2f74037413d78018fecec4a596.jpg', 'uploads/20190918/thumb750_7469db2f74037413d78018fecec4a596.jpg', 'uploads/20190918/thumb170_7469db2f74037413d78018fecec4a596.jpg'),
(224, 4, 'uploads/20190918\\da5e3af1063dcfeac745a1c87b29a4eb.jpg', 'uploads/20190918/thumb750_da5e3af1063dcfeac745a1c87b29a4eb.jpg', 'uploads/20190918/thumb170_da5e3af1063dcfeac745a1c87b29a4eb.jpg'),
(183, 41, 'uploads/20190918\\471099889be83c1fd3ed6aaac309623d.jpg', 'uploads/20190918/thumb750_471099889be83c1fd3ed6aaac309623d.jpg', 'uploads/20190918/thumb170_471099889be83c1fd3ed6aaac309623d.jpg'),
(315, 41, 'uploads/20190918\\dd09951d2ff9d31d9d003eaed6981c3f.jpg', 'uploads/20190918/thumb750_dd09951d2ff9d31d9d003eaed6981c3f.jpg', 'uploads/20190918/thumb170_dd09951d2ff9d31d9d003eaed6981c3f.jpg'),
(235, 7, 'uploads/20190918\\7fc50c51300f2bcd367da91b0e7cacf6.jpg', 'uploads/20190918/thumb750_7fc50c51300f2bcd367da91b0e7cacf6.jpg', 'uploads/20190918/thumb170_7fc50c51300f2bcd367da91b0e7cacf6.jpg'),
(234, 7, 'uploads/20190918\\5da328140c5e91bffe6bf5282480157c.jpg', 'uploads/20190918/thumb750_5da328140c5e91bffe6bf5282480157c.jpg', 'uploads/20190918/thumb170_5da328140c5e91bffe6bf5282480157c.jpg'),
(239, 46, 'uploads/20190918\\3d0d65cbaa96a2a86e77398ec429cb3f.jpg', 'uploads/20190918/thumb750_3d0d65cbaa96a2a86e77398ec429cb3f.jpg', 'uploads/20190918/thumb170_3d0d65cbaa96a2a86e77398ec429cb3f.jpg'),
(308, 46, 'uploads/20190918\\7719fb58eb44eb53a9ca733b0b2357ee.jpg', 'uploads/20190918/thumb750_7719fb58eb44eb53a9ca733b0b2357ee.jpg', 'uploads/20190918/thumb170_7719fb58eb44eb53a9ca733b0b2357ee.jpg'),
(242, 13, 'uploads/20190918\\e1cf1a6624343770d0204efcd036b4ba.jpg', 'uploads/20190918/thumb750_e1cf1a6624343770d0204efcd036b4ba.jpg', 'uploads/20190918/thumb170_e1cf1a6624343770d0204efcd036b4ba.jpg'),
(241, 13, 'uploads/20190918\\feaa5d23c7953230b871e762ad5a4017.jpg', 'uploads/20190918/thumb750_feaa5d23c7953230b871e762ad5a4017.jpg', 'uploads/20190918/thumb170_feaa5d23c7953230b871e762ad5a4017.jpg'),
(240, 13, 'uploads/20190918\\931bf0c1bf89b996a2f286e27e5d0ffb.jpg', 'uploads/20190918/thumb750_931bf0c1bf89b996a2f286e27e5d0ffb.jpg', 'uploads/20190918/thumb170_931bf0c1bf89b996a2f286e27e5d0ffb.jpg'),
(244, 14, 'uploads/20190918\\ae8577094596ab06371906f4be19a6cc.jpg', 'uploads/20190918/thumb750_ae8577094596ab06371906f4be19a6cc.jpg', 'uploads/20190918/thumb170_ae8577094596ab06371906f4be19a6cc.jpg'),
(243, 14, 'uploads/20190918\\37db9d15306a7b74ff7e160a82b2774a.jpg', 'uploads/20190918/thumb750_37db9d15306a7b74ff7e160a82b2774a.jpg', 'uploads/20190918/thumb170_37db9d15306a7b74ff7e160a82b2774a.jpg'),
(246, 9, 'uploads/20190918\\eba931f97160e0f2aec822bd15cc9966.jpg', 'uploads/20190918/thumb750_eba931f97160e0f2aec822bd15cc9966.jpg', 'uploads/20190918/thumb170_eba931f97160e0f2aec822bd15cc9966.jpg'),
(245, 9, 'uploads/20190918\\6b83d67faa7cd79f82e1665cb919726a.jpg', 'uploads/20190918/thumb750_6b83d67faa7cd79f82e1665cb919726a.jpg', 'uploads/20190918/thumb170_6b83d67faa7cd79f82e1665cb919726a.jpg'),
(286, 12, 'uploads/20190918\\1ac1c68c21e53b6b187b52b6e692c002.jpg', 'uploads/20190918/thumb750_1ac1c68c21e53b6b187b52b6e692c002.jpg', 'uploads/20190918/thumb170_1ac1c68c21e53b6b187b52b6e692c002.jpg'),
(306, 12, 'uploads/20190918\\5f4b037a8afe62dfb345c32423c183bf.jpg', 'uploads/20190918/thumb750_5f4b037a8afe62dfb345c32423c183bf.jpg', 'uploads/20190918/thumb170_5f4b037a8afe62dfb345c32423c183bf.jpg'),
(297, 12, 'uploads/20190918\\11668a60331de3f3fe963023e5eced6c.jpg', 'uploads/20190918/thumb750_11668a60331de3f3fe963023e5eced6c.jpg', 'uploads/20190918/thumb170_11668a60331de3f3fe963023e5eced6c.jpg'),
(250, 8, 'uploads/20190918\\3ad82e98e1636f8d5e238138b0691490.jpg', 'uploads/20190918/thumb750_3ad82e98e1636f8d5e238138b0691490.jpg', 'uploads/20190918/thumb170_3ad82e98e1636f8d5e238138b0691490.jpg'),
(252, 37, 'uploads/20190918\\085b1e305140d41b335b9231cc9e97e4.jpg', 'uploads/20190918/thumb750_085b1e305140d41b335b9231cc9e97e4.jpg', 'uploads/20190918/thumb170_085b1e305140d41b335b9231cc9e97e4.jpg'),
(300, 37, 'uploads/20190918\\28ada490445f5aaffda4706fef1ad6c7.jpg', 'uploads/20190918/thumb750_28ada490445f5aaffda4706fef1ad6c7.jpg', 'uploads/20190918/thumb170_28ada490445f5aaffda4706fef1ad6c7.jpg'),
(295, 39, 'uploads/20190918\\fba111498d28655c4c71c0fbc3e64c28.jpg', 'uploads/20190918/thumb750_fba111498d28655c4c71c0fbc3e64c28.jpg', 'uploads/20190918/thumb170_fba111498d28655c4c71c0fbc3e64c28.jpg'),
(294, 39, 'uploads/20190918\\4656dee1f74534fe82c04ea5e55dc342.jpg', 'uploads/20190918/thumb750_4656dee1f74534fe82c04ea5e55dc342.jpg', 'uploads/20190918/thumb170_4656dee1f74534fe82c04ea5e55dc342.jpg'),
(256, 33, 'uploads/20190918\\9fe52bf88f64bc2f76f9d949f3bad3c0.jpg', 'uploads/20190918/thumb750_9fe52bf88f64bc2f76f9d949f3bad3c0.jpg', 'uploads/20190918/thumb170_9fe52bf88f64bc2f76f9d949f3bad3c0.jpg'),
(303, 33, 'uploads/20190918\\47e7a620b4a32e1bd7842eaf2bd642e3.jpg', 'uploads/20190918/thumb750_47e7a620b4a32e1bd7842eaf2bd642e3.jpg', 'uploads/20190918/thumb170_47e7a620b4a32e1bd7842eaf2bd642e3.jpg'),
(259, 35, 'uploads/20190918\\d49b78ba676012354e872d80f56aa5a9.jpg', 'uploads/20190918/thumb750_d49b78ba676012354e872d80f56aa5a9.jpg', 'uploads/20190918/thumb170_d49b78ba676012354e872d80f56aa5a9.jpg'),
(258, 35, 'uploads/20190918\\df76d9cea514c17c633e0c2478e7ee87.jpg', 'uploads/20190918/thumb750_df76d9cea514c17c633e0c2478e7ee87.jpg', 'uploads/20190918/thumb170_df76d9cea514c17c633e0c2478e7ee87.jpg'),
(304, 35, 'uploads/20190918\\f4d0dc8971c5b6df883a431e93a40fe0.jpg', 'uploads/20190918/thumb750_f4d0dc8971c5b6df883a431e93a40fe0.jpg', 'uploads/20190918/thumb170_f4d0dc8971c5b6df883a431e93a40fe0.jpg'),
(283, 36, 'uploads/20190918\\1b1983ffe352762456b74ba615ce3bcb.jpg', 'uploads/20190918/thumb750_1b1983ffe352762456b74ba615ce3bcb.jpg', 'uploads/20190918/thumb170_1b1983ffe352762456b74ba615ce3bcb.jpg'),
(309, 36, 'uploads/20190918\\014e44496afa21a077a9dd3ed6254c4e.jpg', 'uploads/20190918/thumb750_014e44496afa21a077a9dd3ed6254c4e.jpg', 'uploads/20190918/thumb170_014e44496afa21a077a9dd3ed6254c4e.jpg'),
(282, 36, 'uploads/20190918\\aa351cb932703266a34a1c2a6b79e780.jpg', 'uploads/20190918/thumb750_aa351cb932703266a34a1c2a6b79e780.jpg', 'uploads/20190918/thumb170_aa351cb932703266a34a1c2a6b79e780.jpg'),
(299, 34, 'uploads/20190918\\18bf612c0e5d007d0cabf98ff58f2a68.jpg', 'uploads/20190918/thumb750_18bf612c0e5d007d0cabf98ff58f2a68.jpg', 'uploads/20190918/thumb170_18bf612c0e5d007d0cabf98ff58f2a68.jpg'),
(307, 34, 'uploads/20190918\\bc466135bdfcc16f6f342ed0d6713e8a.jpg', 'uploads/20190918/thumb750_bc466135bdfcc16f6f342ed0d6713e8a.jpg', 'uploads/20190918/thumb170_bc466135bdfcc16f6f342ed0d6713e8a.jpg'),
(267, 38, 'uploads/20190918\\3e8c7a0e6cd48729809b60c4b9d75ea0.jpg', 'uploads/20190918/thumb750_3e8c7a0e6cd48729809b60c4b9d75ea0.jpg', 'uploads/20190918/thumb170_3e8c7a0e6cd48729809b60c4b9d75ea0.jpg'),
(316, 38, 'uploads/20190918\\5b5b55f9a729b309ac2034cbc69064d0.jpg', 'uploads/20190918/thumb750_5b5b55f9a729b309ac2034cbc69064d0.jpg', 'uploads/20190918/thumb170_5b5b55f9a729b309ac2034cbc69064d0.jpg'),
(317, 38, 'uploads/20190918\\fa85bb4b6eedd483b19dcf1a8cd0f4a8.jpg', 'uploads/20190918/thumb750_fa85bb4b6eedd483b19dcf1a8cd0f4a8.jpg', 'uploads/20190918/thumb170_fa85bb4b6eedd483b19dcf1a8cd0f4a8.jpg'),
(152, 32, 'uploads/20190906\\0db92c3fd881555c634386a143f4e941.jpg', 'uploads/20190906/thumb750_0db92c3fd881555c634386a143f4e941.jpg', 'uploads/20190906/thumb170_0db92c3fd881555c634386a143f4e941.jpg'),
(323, 31, 'uploads/20190918\\e6c2fa94bdc8c20480ce4ffa3fb7294c.jpg', 'uploads/20190918/thumb750_e6c2fa94bdc8c20480ce4ffa3fb7294c.jpg', 'uploads/20190918/thumb170_e6c2fa94bdc8c20480ce4ffa3fb7294c.jpg'),
(322, 31, 'uploads/20190918\\425e98504d4d64a0d7c081cf22deb0d1.jpg', 'uploads/20190918/thumb750_425e98504d4d64a0d7c081cf22deb0d1.jpg', 'uploads/20190918/thumb170_425e98504d4d64a0d7c081cf22deb0d1.jpg'),
(271, 30, 'uploads/20190918\\8f98bbe8f41ffa99475fa3a0eee7ce4a.jpg', 'uploads/20190918/thumb750_8f98bbe8f41ffa99475fa3a0eee7ce4a.jpg', 'uploads/20190918/thumb170_8f98bbe8f41ffa99475fa3a0eee7ce4a.jpg'),
(270, 30, 'uploads/20190918\\5692089f5780057cea0e95f0cbda7d58.jpg', 'uploads/20190918/thumb750_5692089f5780057cea0e95f0cbda7d58.jpg', 'uploads/20190918/thumb170_5692089f5780057cea0e95f0cbda7d58.jpg'),
(157, 5, 'uploads/20190912\\f5f174864567001fbc97f2f7d87120ce.jpg', 'uploads/20190912/thumb750_f5f174864567001fbc97f2f7d87120ce.jpg', 'uploads/20190912/thumb170_f5f174864567001fbc97f2f7d87120ce.jpg'),
(158, 24, 'uploads/20190912\\dcec7a2e3b2b9cb787de1403bc7829af.jpg', 'uploads/20190912/thumb750_dcec7a2e3b2b9cb787de1403bc7829af.jpg', 'uploads/20190912/thumb170_dcec7a2e3b2b9cb787de1403bc7829af.jpg'),
(272, 1, 'uploads/20190918\\0848ff0232dd5f17ed710374a6c572a2.jpg', 'uploads/20190918/thumb750_0848ff0232dd5f17ed710374a6c572a2.jpg', 'uploads/20190918/thumb170_0848ff0232dd5f17ed710374a6c572a2.jpg'),
(291, 11, 'uploads/20190918\\1315679630f265b9f9290753805d09d1.jpg', 'uploads/20190918/thumb750_1315679630f265b9f9290753805d09d1.jpg', 'uploads/20190918/thumb170_1315679630f265b9f9290753805d09d1.jpg'),
(292, 11, 'uploads/20190918\\8e589b9e04b8e34ba0cb7d9bf81e80f7.jpg', 'uploads/20190918/thumb750_8e589b9e04b8e34ba0cb7d9bf81e80f7.jpg', 'uploads/20190918/thumb170_8e589b9e04b8e34ba0cb7d9bf81e80f7.jpg'),
(275, 1, 'uploads/20190918\\53c322cc770680121a8734f3eb1aaed6.jpg', 'uploads/20190918/thumb750_53c322cc770680121a8734f3eb1aaed6.jpg', 'uploads/20190918/thumb170_53c322cc770680121a8734f3eb1aaed6.jpg'),
(276, 1, 'uploads/20190918\\fdacc44fd9fdd8d54d317b4d4d663d2b.jpg', 'uploads/20190918/thumb750_fdacc44fd9fdd8d54d317b4d4d663d2b.jpg', 'uploads/20190918/thumb170_fdacc44fd9fdd8d54d317b4d4d663d2b.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `hh_publish_act`
--

CREATE TABLE `hh_publish_act` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '商家名称',
  `publish_time` datetime DEFAULT NULL COMMENT '发布时间',
  `start_time` datetime DEFAULT NULL COMMENT '活动开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '报名结束时间',
  `address` varchar(100) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '地址',
  `phone` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '电话',
  `p_number` int(5) NOT NULL DEFAULT '100' COMMENT '活动人数',
  `content` text COLLATE utf8mb4_bin COMMENT '活动内容',
  `remarks` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '活动备注',
  `state` int(1) NOT NULL DEFAULT '1' COMMENT '1标识活动正在进行中 0标识活动已结束',
  `is_hot` int(1) NOT NULL DEFAULT '0' COMMENT '0不置顶，1置顶',
  `is_hide` int(1) NOT NULL DEFAULT '0' COMMENT '0不隐藏，1隐藏',
  `pa_img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '活动图片',
  `Good_num` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_publish_act`
--

INSERT INTO `hh_publish_act` (`id`, `title`, `publish_time`, `start_time`, `end_time`, `address`, `phone`, `p_number`, `content`, `remarks`, `state`, `is_hot`, `is_hide`, `pa_img`, `Good_num`) VALUES
(23, '观看70周年阅兵', '2019-09-27 17:37:25', '2019-10-01 09:00:00', '2019-10-01 10:00:00', '2号岛、3号岛恒大会所', ' 089832661688', 100, '为隆重庆祝祖国成立70周年，恒大金碧物业海花岛公司于10月1日上午9：00分在恒大会所组织观看国庆大阅兵。\n让业主们与左邻右舍共同见证这振奋人心的时刻，感受祖国的强大 。', '', 1, 1, 0, 'uploads/20190927\\e96e0a32636f1d78bc06479ef1342c34.jpg', 1),
(22, '尊老敬老·最美夕阳红活动通知', '2019-09-27 00:00:00', '2019-10-05 10:00:00', '2019-10-03 00:00:00', '一号岛婚礼庄园', '089832661688', 100, '为弘扬尊老敬老的中国传统文化，恒大金碧物业海花岛公司组织园区60岁以上老年业主通过婚纱摄影活动让老年人重温美好时光。', '报名方式：请园区在住业主携带身份证到物业服务中心前台登记。（以下物业服务中心均可报名）\n海花岛2号岛第一物业服务中心    0898-32661688\n海花岛2号岛第二物业服务中心    0898-32661388\n海花岛2号岛第三物业服务中心    0898-32661988\n海花岛2号岛第四物业服务中心    0898-36983188\n海花岛3号岛第一物业服务中心    0898-23555688', 1, 0, 0, 'uploads/20190927\\6e2617dbacd4f1f9d9e721d865a9ee9c.jpg', 2);

-- --------------------------------------------------------

--
-- 表的结构 `hh_publish_img`
--

CREATE TABLE `hh_publish_img` (
  `id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '活动图片'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_publish_img`
--

INSERT INTO `hh_publish_img` (`id`, `img`) VALUES
(1, 'uploads/20190828\\fc974fc2e6f5896cf478581582027bea.jpg'),
(12, 'uploads/20190904\\1d59b245611cce3aca897490d31d5660.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `hh_role`
--

CREATE TABLE `hh_role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '角色名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_role`
--

INSERT INTO `hh_role` (`id`, `role_name`) VALUES
(1, '超级管理员'),
(2, '前台管理员');

-- --------------------------------------------------------

--
-- 表的结构 `hh_role_rule`
--

CREATE TABLE `hh_role_rule` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID',
  `rule_id` int(11) NOT NULL DEFAULT '0' COMMENT '权限ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_role_rule`
--

INSERT INTO `hh_role_rule` (`id`, `role_id`, `rule_id`) VALUES
(84, 2, 82),
(83, 2, 32),
(82, 2, 24),
(81, 2, 23),
(80, 2, 21),
(79, 2, 20),
(78, 2, 19),
(77, 2, 18),
(76, 2, 17),
(75, 2, 16),
(74, 2, 15),
(73, 2, 14),
(72, 2, 13),
(71, 2, 12),
(70, 2, 11),
(69, 2, 10),
(68, 2, 8),
(67, 2, 7),
(66, 2, 6),
(65, 2, 5),
(64, 2, 4),
(63, 2, 3),
(62, 2, 2),
(61, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `hh_rule`
--

CREATE TABLE `hh_rule` (
  `id` int(11) NOT NULL,
  `rule_name` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '权限名称',
  `module` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '模型名称',
  `controller` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '控制器名称',
  `action` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '方法名称',
  `param` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '参数',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '上级权限ID 0表示顶级权限',
  `is_show` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否导航菜单显示1  显示 0 不显示',
  `attr` tinyint(1) NOT NULL DEFAULT '0' COMMENT '栏目属性',
  `url` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT '外链地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_rule`
--

INSERT INTO `hh_rule` (`id`, `rule_name`, `module`, `controller`, `action`, `param`, `parent_id`, `is_show`, `attr`, `url`) VALUES
(1, '系统', '', '', '', '', 0, 1, 0, ''),
(2, '菜单', '', '', '', '', 1, 1, 0, ''),
(3, '系统菜单', 'admin', 'menu', 'index', '', 2, 1, 0, ''),
(4, '修改菜单', 'admin', 'menu', 'edit', '', 2, 0, 0, ''),
(5, '删除菜单', 'admin', 'menu', 'delete', '', 2, 0, 0, ''),
(6, '新增菜单', 'admin', 'menu', 'add', '', 2, 0, 0, ''),
(7, '个人', '', '', '', '', 1, 0, 0, ''),
(8, '修改个人密码', 'admin', 'admin', 'personal', '', 7, 0, 0, ''),
(74, '发布活动', 'admin', 'publish', 'index', '', 56, 1, 0, ''),
(10, '用户', '', '', '', '', 0, 1, 0, ''),
(11, '修改管理员', 'admin', 'admin', 'edit', '', 10, 0, 0, ''),
(12, '删除管理员', 'admin', 'admin', 'delete', '', 10, 0, 0, ''),
(13, '权限组', 'admin', 'admin', 'adminRoleIndex', '', 10, 1, 0, ''),
(14, '修改权限', 'admin', 'admin', 'adminRoleEdit', '', 10, 0, 0, ''),
(15, '删除权限', 'admin', 'admin', 'adminRoleDelete', '', 10, 0, 0, ''),
(16, '用户管理', 'admin', 'admin', 'index', '', 10, 1, 0, ''),
(17, '新增用户', 'admin', 'admin', 'add', '', 10, 0, 0, ''),
(18, '添加权限', 'admin', 'admin', 'adminRoleAdd', '', 10, 0, 0, ''),
(19, '前台内容管理', '', '', '', '', 0, 1, 0, ''),
(20, '显示导航栏', 'admin', 'category', 'index', '', 19, 1, 0, ''),
(21, '新增导航', 'admin', 'category', 'add', '', 19, 0, 0, ''),
(22, '修改导航', 'admin', 'category', 'edit', '', 19, 0, 0, ''),
(23, '删除导航栏', 'admin', 'category', 'delete', '', 19, 0, 0, ''),
(24, '首页banner图片', '', '', '', '', 0, 1, 0, ''),
(32, '添加与删除banner图片', 'admin', 'banner', 'add', '', 24, 0, 0, ''),
(86, '发送系统消息', 'admin', 'msg', 'index', '', 84, 1, 0, ''),
(82, 'banner图片列表', 'admin', 'banner', 'index', '', 24, 1, 0, ''),
(84, '系统消息', '', '', '', '', 0, 1, 0, ''),
(54, '社区商业', '', '', '', '', 0, 1, 0, ''),
(55, '商户信息', 'admin', 'navigation', 'index', '', 54, 1, 0, ''),
(56, '社区活动/资讯', '', '', '', '', 0, 1, 0, ''),
(57, '社区资讯', 'admin', 'activity', 'index', '', 56, 1, 0, ''),
(76, '通告栏', 'admin', 'activity', 'notice', '', 56, 1, 0, ''),
(77, '活动掠影', 'admin', 'glimpse', 'index', '', 56, 1, 0, ''),
(78, '便民通讯录', '', '', '', '', 0, 1, 0, ''),
(79, '通讯录列表', 'admin', 'mail', 'index', '', 78, 1, 0, ''),
(80, '反馈信息', '', '', '', '', 0, 1, 0, ''),
(81, '反馈列表', 'admin', 'feedback', 'index', '', 80, 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `hh_user`
--

CREATE TABLE `hh_user` (
  `id` int(11) NOT NULL COMMENT '流水号',
  `openid` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'openid',
  `userinfo` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '微信用户基本信息',
  `phone` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户电话号码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_user`
--

INSERT INTO `hh_user` (`id`, `openid`, `userinfo`, `phone`) VALUES
(1, 'oww4w5QNODqw8RT1xxuwoEmY_yGw', NULL, NULL),
(2, 'oww4w5a-mDB4li_9FsXlzJ3cyBcE', NULL, NULL),
(3, 'oww4w5Q6bojAsXvjeSzYiuwgF2l0', NULL, NULL),
(4, 'oww4w5XJrUire07gu3MeX6U7H-1I', NULL, NULL),
(5, 'oww4w5XRvIxWzKEN8CPEFCv61no8', NULL, NULL),
(6, 'oww4w5dePEH1PFs15r2KvZgaftIo', NULL, NULL),
(7, 'oww4w5T7kWvGAbZnl2s3AFQAglko', NULL, NULL),
(8, 'oww4w5dTUpzLq8_2VSuU1xDB8U2k', NULL, NULL),
(9, 'oww4w5ZhogCqF8gAzNHRjm9AMaZk', NULL, NULL),
(10, 'oww4w5d_jF3F5-w6xZZWeVIfJG1c', NULL, NULL),
(11, 'oww4w5btzc0Q6KTuANnqxS_tAxwc', NULL, NULL),
(12, 'oww4w5QReu15POHTCa7YzRUe-_pQ', NULL, NULL),
(13, 'oww4w5XgzOWBAEioIqV3AEv7OJ9k', NULL, NULL),
(14, 'oww4w5XAW7Ro1VBQsjIyg0Bgq3Jo', NULL, NULL),
(15, 'oww4w5fwxZn0S2QEpVFd-Jh6CD0o', NULL, NULL),
(16, 'oww4w5V9j5u4XpXOvYYa1mBzBe2M', NULL, NULL),
(17, 'oww4w5fKaqlvSPrpHtieFpNg0huw', NULL, NULL),
(18, 'oww4w5cebLgUYRl1SSpNlck99gpQ', NULL, NULL),
(19, 'oww4w5ZROlmTocNuXpAZUDGcD1gM', NULL, NULL),
(20, 'o2LkK4zoE-zkiUA6CWBYURztpIwI', NULL, NULL),
(21, 'o2LkK43hxdxxJTDo2juoiH88_5Xw', NULL, NULL),
(22, 'o2LkK47eoiDq_adIeiNEoxuRF4KU', NULL, NULL),
(23, 'o2LkK4_8x7tOA5ShPyOITpODPY9A', NULL, NULL),
(24, 'o2LkK49ucgfndwcRPUcZHerjXJE0', NULL, NULL),
(25, 'o2LkK4wkF3HJOCgh8TKTY60Wf50I', NULL, NULL),
(26, 'o2LkK48xlju5eaNYpq5ar-kvlVjw', NULL, NULL),
(27, 'o2LkK42HGy5tqKb6Qj8-zA-ZvcRQ', NULL, NULL),
(28, 'o2LkK45b1aglQ3rIZRa4Fr8WW0lw', NULL, NULL),
(29, 'o2LkK48VrkSrAkJ_bpQw-kW6U4-c', NULL, NULL),
(30, 'o2LkK43g6_oxwMgvOqxlZGSz1K90', NULL, NULL),
(31, 'o2LkK443Ncw1b7_Bge1FT35ZJq-k', NULL, NULL),
(32, 'o2LkK41HG_3Aypt7pUsmtf2wbc74', NULL, NULL),
(33, 'o2LkK4zc7-_gMwHsCKmc5T-mwm2c', NULL, NULL),
(34, 'o2LkK48ociaBP7NVsuMFIgTA4zw4', NULL, NULL),
(35, 'o2LkK45ea54G9Sx-7ob_j_REEm9k', NULL, NULL),
(36, 'o2LkK40U01hrgwpdt6FkM-9h2Ieo', NULL, NULL),
(37, 'o2LkK4-B2_fwgNWHJcPp_jK6d5-w', NULL, NULL),
(38, 'o2LkK45hSVN9mMyEiYL48wQ4R520', NULL, NULL),
(39, 'o2LkK4znmsyYs8nBGqppU3tNBB44', NULL, NULL),
(40, 'o2LkK4xDKCmDrJ9GMtUhj4lEBvDk', NULL, NULL),
(41, 'o2LkK48omAH20d-v02i7U07umcIs', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `hh_user_msg`
--

CREATE TABLE `hh_user_msg` (
  `id` int(11) NOT NULL COMMENT '流水号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `msg` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '发送的消息',
  `time` datetime DEFAULT NULL COMMENT '发布时间',
  `state` int(1) NOT NULL DEFAULT '0' COMMENT '0表示未读，1表示已读'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- 转存表中的数据 `hh_user_msg`
--

INSERT INTO `hh_user_msg` (`id`, `user_id`, `msg`, `time`, `state`) VALUES
(101, 3, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(6, 2, '1awgerg', '2019-08-30 10:03:00', 1),
(69, 5, '系统消息', '2019-09-05 14:19:00', 0),
(9, 2, 'sdfdsf', '2019-08-30 15:55:00', 1),
(70, 6, '系统消息', '2019-09-05 14:19:00', 0),
(66, 2, '系统消息', '2019-09-05 14:19:00', 0),
(67, 3, '系统消息', '2019-09-05 14:19:00', 0),
(68, 4, '系统消息', '2019-09-05 14:19:00', 0),
(110, 12, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(57, 2, '消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布', '2019-09-05 11:04:00', 1),
(14, 4, '系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知。', '2019-09-02 16:26:00', 1),
(15, 5, '系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知。', '2019-09-02 16:26:00', 0),
(107, 9, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(32, 2, '系统消息，系统消息，系统消息', '2019-09-04 16:22:00', 1),
(34, 4, '系统消息，系统消息，系统消息', '2019-09-04 16:22:00', 1),
(35, 5, '系统消息，系统消息，系统消息', '2019-09-04 16:22:00', 0),
(103, 5, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(104, 6, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(105, 7, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(106, 8, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(19, 4, '系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知。', '2019-09-02 16:27:00', 1),
(20, 5, '系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知，系统消息通知。', '2019-09-02 16:27:00', 0),
(102, 4, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(37, 2, '系统消息，系统消息，系统消息，系统消息，系统消息，系统消息，系统消息，系统消息，', '2019-09-04 16:23:00', 1),
(24, 4, '系统消息通知，系统消息通知，系统消息通知，系统消息通知。', '2019-09-02 16:27:00', 1),
(25, 5, '系统消息通知，系统消息通知，系统消息通知，系统消息通知。', '2019-09-02 16:27:00', 0),
(71, 7, '系统消息', '2019-09-05 14:19:00', 0),
(72, 8, '系统消息', '2019-09-05 14:19:00', 0),
(73, 9, '系统消息', '2019-09-05 14:19:00', 0),
(29, 4, '系统消息通知，系统消息通知。', '2019-09-02 16:28:00', 1),
(30, 5, '系统消息通知，系统消息通知。', '2019-09-02 16:28:00', 0),
(58, 3, '消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布', '2019-09-05 11:04:00', 1),
(39, 4, '系统消息，系统消息，系统消息，系统消息，系统消息，系统消息，系统消息，系统消息，', '2019-09-04 16:23:00', 1),
(40, 5, '系统消息，系统消息，系统消息，系统消息，系统消息，系统消息，系统消息，系统消息，', '2019-09-04 16:23:00', 0),
(75, 11, '系统消息', '2019-09-05 14:19:00', 0),
(276, 16, '系统消息内容', '2019-09-19 16:50:00', 0),
(277, 17, '系统消息内容', '2019-09-19 16:50:00', 0),
(77, 2, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(78, 3, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(79, 4, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(80, 5, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(81, 6, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(82, 7, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(83, 8, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(84, 9, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(85, 10, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(86, 11, '系统消息系统消息系统消息系统消息系统消息', '2019-09-05 14:23:00', 0),
(88, 2, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(89, 3, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(42, 2, '超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，', '2019-09-04 16:32:00', 1),
(59, 4, '消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布', '2019-09-05 11:04:00', 0),
(60, 5, '消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布', '2019-09-05 11:04:00', 0),
(61, 6, '消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布', '2019-09-05 11:04:00', 0),
(62, 7, '消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布', '2019-09-05 11:04:00', 0),
(44, 4, '超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，', '2019-09-04 16:32:00', 1),
(45, 5, '超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，超长的系统消息，', '2019-09-04 16:32:00', 0),
(74, 10, '系统消息', '2019-09-05 14:19:00', 0),
(92, 6, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(93, 7, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(94, 8, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(95, 9, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(96, 10, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(97, 11, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(98, 12, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(100, 2, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(47, 2, '系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。', '2019-09-04 17:13:00', 1),
(63, 8, '消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布', '2019-09-05 11:04:00', 0),
(64, 9, '消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布消息发布', '2019-09-05 11:04:00', 0),
(248, 16, '消息内容', '2019-09-19 16:49:00', 0),
(112, 2, '系统消息', '2019-09-06 09:21:00', 0),
(113, 3, '系统消息', '2019-09-06 09:21:00', 0),
(114, 4, '系统消息', '2019-09-06 09:21:00', 0),
(115, 5, '系统消息', '2019-09-06 09:21:00', 0),
(116, 6, '系统消息', '2019-09-06 09:21:00', 0),
(117, 7, '系统消息', '2019-09-06 09:21:00', 0),
(118, 8, '系统消息', '2019-09-06 09:21:00', 0),
(119, 9, '系统消息', '2019-09-06 09:21:00', 0),
(120, 10, '系统消息', '2019-09-06 09:21:00', 0),
(121, 11, '系统消息', '2019-09-06 09:21:00', 0),
(122, 12, '系统消息', '2019-09-06 09:21:00', 0),
(247, 15, '消息内容', '2019-09-19 16:49:00', 0),
(124, 2, '系统消息', '2019-09-06 09:21:00', 0),
(49, 4, '系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。', '2019-09-04 17:13:00', 1),
(50, 5, '系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。', '2019-09-04 17:13:00', 0),
(90, 4, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(91, 5, '推送消息内容，推送消息内容推送消息内容推送消息内容推送消息内容推送消息内容。', '2019-09-05 15:24:00', 0),
(52, 2, '系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。', '2019-09-04 17:14:00', 1),
(126, 4, '系统消息', '2019-09-06 09:21:00', 0),
(127, 5, '系统消息', '2019-09-06 09:21:00', 0),
(128, 6, '系统消息', '2019-09-06 09:21:00', 0),
(129, 7, '系统消息', '2019-09-06 09:21:00', 0),
(130, 8, '系统消息', '2019-09-06 09:21:00', 0),
(54, 4, '系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。', '2019-09-04 17:14:00', 1),
(55, 5, '系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。系统消息。', '2019-09-04 17:14:00', 0),
(108, 10, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(125, 3, '系统消息', '2019-09-06 09:21:00', 0),
(109, 11, '系统消息，测试蒙层滚动', '2019-09-06 09:18:00', 0),
(131, 9, '系统消息', '2019-09-06 09:21:00', 0),
(132, 10, '系统消息', '2019-09-06 09:21:00', 0),
(133, 11, '系统消息', '2019-09-06 09:21:00', 0),
(134, 12, '系统消息', '2019-09-06 09:21:00', 0),
(246, 14, '消息内容', '2019-09-19 16:49:00', 0),
(136, 2, '系统消息', '2019-09-06 09:21:00', 0),
(137, 3, '系统消息', '2019-09-06 09:21:00', 0),
(138, 4, '系统消息', '2019-09-06 09:21:00', 0),
(139, 5, '系统消息', '2019-09-06 09:21:00', 0),
(140, 6, '系统消息', '2019-09-06 09:21:00', 0),
(141, 7, '系统消息', '2019-09-06 09:21:00', 0),
(142, 8, '系统消息', '2019-09-06 09:21:00', 0),
(143, 9, '系统消息', '2019-09-06 09:21:00', 0),
(144, 10, '系统消息', '2019-09-06 09:21:00', 0),
(145, 11, '系统消息', '2019-09-06 09:21:00', 0),
(146, 12, '系统消息', '2019-09-06 09:21:00', 0),
(245, 13, '消息内容', '2019-09-19 16:49:00', 0),
(148, 2, '系统消息', '2019-09-06 09:21:00', 0),
(149, 3, '系统消息', '2019-09-06 09:21:00', 0),
(150, 4, '系统消息', '2019-09-06 09:21:00', 0),
(151, 5, '系统消息', '2019-09-06 09:21:00', 0),
(152, 6, '系统消息', '2019-09-06 09:21:00', 0),
(153, 7, '系统消息', '2019-09-06 09:21:00', 0),
(154, 8, '系统消息', '2019-09-06 09:21:00', 0),
(155, 9, '系统消息', '2019-09-06 09:21:00', 0),
(156, 10, '系统消息', '2019-09-06 09:21:00', 0),
(157, 11, '系统消息', '2019-09-06 09:21:00', 0),
(158, 12, '系统消息', '2019-09-06 09:21:00', 0),
(243, 11, '消息内容', '2019-09-19 16:49:00', 0),
(160, 2, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(161, 3, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(162, 4, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(163, 5, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(164, 6, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(165, 7, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(166, 8, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(167, 9, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(168, 10, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(169, 11, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(170, 12, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(240, 8, '消息内容', '2019-09-19 16:49:00', 0),
(172, 2, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(173, 3, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(174, 4, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(175, 5, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(176, 6, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(177, 7, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(178, 8, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(179, 9, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(180, 10, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(181, 11, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(182, 12, '系统消息系统消息', '2019-09-06 09:21:00', 0),
(244, 12, '消息内容', '2019-09-19 16:49:00', 0),
(234, 2, '消息内容', '2019-09-19 16:49:00', 0),
(235, 3, '消息内容', '2019-09-19 16:49:00', 0),
(236, 4, '消息内容', '2019-09-19 16:49:00', 0),
(237, 5, '消息内容', '2019-09-19 16:49:00', 0),
(238, 6, '消息内容', '2019-09-19 16:49:00', 0),
(239, 7, '消息内容', '2019-09-19 16:49:00', 0),
(184, 2, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(185, 3, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(186, 4, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(187, 5, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(188, 6, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(189, 7, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(190, 8, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(191, 9, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(192, 10, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(193, 11, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(194, 12, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(275, 15, '系统消息内容', '2019-09-19 16:50:00', 0),
(250, 18, '消息内容', '2019-09-19 16:49:00', 0),
(251, 19, '消息内容', '2019-09-19 16:49:00', 0),
(252, 20, '消息内容', '2019-09-19 16:49:00', 0),
(254, 22, '消息内容', '2019-09-19 16:49:00', 0),
(255, 23, '消息内容', '2019-09-19 16:49:00', 0),
(257, 25, '消息内容', '2019-09-19 16:49:00', 0),
(258, 26, '消息内容', '2019-09-19 16:49:00', 0),
(259, 27, '消息内容', '2019-09-19 16:49:00', 0),
(260, 28, '消息内容', '2019-09-19 16:49:00', 0),
(262, 2, '系统消息内容', '2019-09-19 16:50:00', 0),
(263, 3, '系统消息内容', '2019-09-19 16:50:00', 0),
(264, 4, '系统消息内容', '2019-09-19 16:50:00', 0),
(265, 5, '系统消息内容', '2019-09-19 16:50:00', 0),
(266, 6, '系统消息内容', '2019-09-19 16:50:00', 0),
(267, 7, '系统消息内容', '2019-09-19 16:50:00', 0),
(268, 8, '系统消息内容', '2019-09-19 16:50:00', 0),
(269, 9, '系统消息内容', '2019-09-19 16:50:00', 0),
(270, 10, '系统消息内容', '2019-09-19 16:50:00', 0),
(271, 11, '系统消息内容', '2019-09-19 16:50:00', 0),
(272, 12, '系统消息内容', '2019-09-19 16:50:00', 0),
(273, 13, '系统消息内容', '2019-09-19 16:50:00', 0),
(274, 14, '系统消息内容', '2019-09-19 16:50:00', 0),
(196, 2, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(197, 3, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(198, 4, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(199, 5, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(200, 6, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(201, 7, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(202, 8, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(203, 9, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(204, 10, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(205, 11, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(206, 12, '系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息系统消息', '2019-09-06 09:22:00', 0),
(249, 17, '消息内容', '2019-09-19 16:49:00', 0),
(241, 9, '消息内容', '2019-09-19 16:49:00', 0),
(242, 10, '消息内容', '2019-09-19 16:49:00', 0),
(208, 2, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(209, 3, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(210, 4, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(211, 5, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(212, 6, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(213, 7, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(214, 8, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(215, 9, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(216, 10, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(217, 11, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(218, 12, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(219, 13, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(220, 14, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(221, 15, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(222, 16, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(223, 17, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(224, 18, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(225, 19, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(226, 20, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(228, 22, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(229, 23, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(231, 25, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(232, 26, '欢迎您，来到海花旅居小程序！', '2019-09-12 11:32:00', 0),
(278, 18, '系统消息内容', '2019-09-19 16:50:00', 0),
(279, 19, '系统消息内容', '2019-09-19 16:50:00', 0),
(280, 20, '系统消息内容', '2019-09-19 16:50:00', 0),
(282, 22, '系统消息内容', '2019-09-19 16:50:00', 0),
(283, 23, '系统消息内容', '2019-09-19 16:50:00', 0),
(285, 25, '系统消息内容', '2019-09-19 16:50:00', 0),
(286, 26, '系统消息内容', '2019-09-19 16:50:00', 0),
(287, 27, '系统消息内容', '2019-09-19 16:50:00', 0),
(288, 28, '系统消息内容', '2019-09-19 16:50:00', 0),
(290, 2, '系统消息内容', '2019-09-26 17:00:00', 0),
(291, 3, '系统消息内容', '2019-09-26 17:00:00', 0),
(292, 4, '系统消息内容', '2019-09-26 17:00:00', 0),
(293, 5, '系统消息内容', '2019-09-26 17:00:00', 0),
(294, 6, '系统消息内容', '2019-09-26 17:00:00', 0),
(295, 7, '系统消息内容', '2019-09-26 17:00:00', 0),
(296, 8, '系统消息内容', '2019-09-26 17:00:00', 0),
(297, 9, '系统消息内容', '2019-09-26 17:00:00', 0),
(298, 10, '系统消息内容', '2019-09-26 17:00:00', 0),
(299, 11, '系统消息内容', '2019-09-26 17:00:00', 0),
(300, 12, '系统消息内容', '2019-09-26 17:00:00', 0),
(301, 13, '系统消息内容', '2019-09-26 17:00:00', 0),
(302, 14, '系统消息内容', '2019-09-26 17:00:00', 0),
(303, 15, '系统消息内容', '2019-09-26 17:00:00', 0),
(304, 16, '系统消息内容', '2019-09-26 17:00:00', 0),
(305, 17, '系统消息内容', '2019-09-26 17:00:00', 0),
(306, 18, '系统消息内容', '2019-09-26 17:00:00', 0),
(307, 19, '系统消息内容', '2019-09-26 17:00:00', 0),
(308, 20, '系统消息内容', '2019-09-26 17:00:00', 0),
(309, 21, '系统消息内容', '2019-09-26 17:00:00', 1),
(310, 22, '系统消息内容', '2019-09-26 17:00:00', 0),
(311, 23, '系统消息内容', '2019-09-26 17:00:00', 0),
(312, 24, '系统消息内容', '2019-09-26 17:00:00', 0),
(313, 25, '系统消息内容', '2019-09-26 17:00:00', 0),
(314, 26, '系统消息内容', '2019-09-26 17:00:00', 0),
(315, 27, '系统消息内容', '2019-09-26 17:00:00', 0),
(316, 28, '系统消息内容', '2019-09-26 17:00:00', 0),
(317, 29, '系统消息内容', '2019-09-26 17:00:00', 0),
(318, 30, '系统消息内容', '2019-09-26 17:00:00', 0),
(319, 31, '系统消息内容', '2019-09-26 17:00:00', 0),
(320, 32, '系统消息内容', '2019-09-26 17:00:00', 0),
(321, 33, '系统消息内容', '2019-09-26 17:00:00', 0),
(322, 34, '系统消息内容', '2019-09-26 17:00:00', 0),
(323, 35, '系统消息内容', '2019-09-26 17:00:00', 0),
(324, 36, '系统消息内容', '2019-09-26 17:00:00', 0),
(325, 37, '系统消息内容', '2019-09-26 17:00:00', 0),
(326, 38, '系统消息内容', '2019-09-26 17:00:00', 0),
(327, 39, '系统消息内容', '2019-09-26 17:00:00', 0),
(328, 40, '系统消息内容', '2019-09-26 17:00:00', 0);

--
-- 转储表的索引
--

--
-- 表的索引 `hh_activity`
--
ALTER TABLE `hh_activity`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_act_collection`
--
ALTER TABLE `hh_act_collection`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_act_goods`
--
ALTER TABLE `hh_act_goods`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_act_notice`
--
ALTER TABLE `hh_act_notice`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_act_ueditor_img`
--
ALTER TABLE `hh_act_ueditor_img`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_admin`
--
ALTER TABLE `hh_admin`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_admin_role`
--
ALTER TABLE `hh_admin_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_banner`
--
ALTER TABLE `hh_banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_cart`
--
ALTER TABLE `hh_cart`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_cart_area`
--
ALTER TABLE `hh_cart_area`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_category`
--
ALTER TABLE `hh_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_collection`
--
ALTER TABLE `hh_collection`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_feedback`
--
ALTER TABLE `hh_feedback`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_glimpse`
--
ALTER TABLE `hh_glimpse`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_glimpse_goods`
--
ALTER TABLE `hh_glimpse_goods`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_glimpse_img`
--
ALTER TABLE `hh_glimpse_img`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_mail_img`
--
ALTER TABLE `hh_mail_img`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_mail_list`
--
ALTER TABLE `hh_mail_list`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_my_act`
--
ALTER TABLE `hh_my_act`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_navigation`
--
ALTER TABLE `hh_navigation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_navigation_img`
--
ALTER TABLE `hh_navigation_img`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_publish_act`
--
ALTER TABLE `hh_publish_act`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_publish_img`
--
ALTER TABLE `hh_publish_img`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_role`
--
ALTER TABLE `hh_role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_role_rule`
--
ALTER TABLE `hh_role_rule`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_rule`
--
ALTER TABLE `hh_rule`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_user`
--
ALTER TABLE `hh_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `hh_user_msg`
--
ALTER TABLE `hh_user_msg`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `hh_activity`
--
ALTER TABLE `hh_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `hh_act_collection`
--
ALTER TABLE `hh_act_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号', AUTO_INCREMENT=96;

--
-- 使用表AUTO_INCREMENT `hh_act_goods`
--
ALTER TABLE `hh_act_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号', AUTO_INCREMENT=101;

--
-- 使用表AUTO_INCREMENT `hh_act_notice`
--
ALTER TABLE `hh_act_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `hh_act_ueditor_img`
--
ALTER TABLE `hh_act_ueditor_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- 使用表AUTO_INCREMENT `hh_admin`
--
ALTER TABLE `hh_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `hh_admin_role`
--
ALTER TABLE `hh_admin_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `hh_banner`
--
ALTER TABLE `hh_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'banner_id', AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `hh_cart`
--
ALTER TABLE `hh_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- 使用表AUTO_INCREMENT `hh_cart_area`
--
ALTER TABLE `hh_cart_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `hh_category`
--
ALTER TABLE `hh_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `hh_collection`
--
ALTER TABLE `hh_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号', AUTO_INCREMENT=294;

--
-- 使用表AUTO_INCREMENT `hh_feedback`
--
ALTER TABLE `hh_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号', AUTO_INCREMENT=18;

--
-- 使用表AUTO_INCREMENT `hh_glimpse`
--
ALTER TABLE `hh_glimpse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `hh_glimpse_goods`
--
ALTER TABLE `hh_glimpse_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号', AUTO_INCREMENT=30;

--
-- 使用表AUTO_INCREMENT `hh_glimpse_img`
--
ALTER TABLE `hh_glimpse_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `hh_mail_img`
--
ALTER TABLE `hh_mail_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `hh_mail_list`
--
ALTER TABLE `hh_mail_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- 使用表AUTO_INCREMENT `hh_my_act`
--
ALTER TABLE `hh_my_act`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号', AUTO_INCREMENT=38;

--
-- 使用表AUTO_INCREMENT `hh_navigation`
--
ALTER TABLE `hh_navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- 使用表AUTO_INCREMENT `hh_navigation_img`
--
ALTER TABLE `hh_navigation_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- 使用表AUTO_INCREMENT `hh_publish_act`
--
ALTER TABLE `hh_publish_act`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 使用表AUTO_INCREMENT `hh_publish_img`
--
ALTER TABLE `hh_publish_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 使用表AUTO_INCREMENT `hh_role`
--
ALTER TABLE `hh_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `hh_role_rule`
--
ALTER TABLE `hh_role_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- 使用表AUTO_INCREMENT `hh_rule`
--
ALTER TABLE `hh_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- 使用表AUTO_INCREMENT `hh_user`
--
ALTER TABLE `hh_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号', AUTO_INCREMENT=42;

--
-- 使用表AUTO_INCREMENT `hh_user_msg`
--
ALTER TABLE `hh_user_msg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号', AUTO_INCREMENT=329;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
