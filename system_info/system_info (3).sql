-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 
-- 服务器版本: 5.5.53
-- PHP 版本: 7.2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `system_info`
--

-- --------------------------------------------------------

--
-- 表的结构 `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `courseId` varchar(20) NOT NULL COMMENT '课程号',
  `courseName` varchar(20) NOT NULL COMMENT '课程名',
  `userId` varchar(20) NOT NULL COMMENT '教师ID',
  `credit` int(10) NOT NULL COMMENT '学分',
  `departmentName` varchar(20) NOT NULL COMMENT '所属学院',
  `courseType` varchar(10) NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`num`),
  UNIQUE KEY `courseId` (`courseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('01','数据库','1001','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('02','数据结构','1002','2.5','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('03','离散数学','1003','3','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('04','操作系统','1004','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('05','高等数学A','1005','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('06','高等数学B','1006','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('07','C语言','1007','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('08','大学语文','1008','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('09','英语视听说1','1009','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('10','英语视听说2','1010','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('11','英语读写1','1011','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('12','英语读写2','1012','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('13','英语视听说3','1013','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('14','英语视听说4','1014','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('15','英语读写3','1015','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('16','英语读写4','1016','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('17','大学物理1','1017','1.5','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('18','大学物理2','1018','1.5','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('19','马克思原理','1019','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('20','思修','1020','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('21','中国近代史','1021','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('22','线性代数','1022','3.5','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('23','统计与概率','1023','3','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('24','数学建模','1024','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('25','商务英语','1025','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('26','基础日本语','1026','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('27','生物制药','1027','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('28','JSP&Servlet网络编程','1028','3.5','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('29','JavaScript','1029','3','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('30','物联网概论','1030','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('31','Web应用技术','1031','2.5','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('32','Linux','1032','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('33','音乐鉴赏','1033','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('34','未来网络漫谈','1034','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('35','C++面向对象','1035','3','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('36','大学体育1','1036','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('37','大学体育2','1037','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('38','数据库','1040','3.5','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('39','研究性学习A','1041','2.5','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('40','研究性学习B','1041','2.5','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('41','研究性学习C','1041','2.5','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('42','摄影艺术与欣赏','1042','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('43','人工智能','1043','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('44','软件工程','1044','3.5','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('45','计算机网络','1045','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('46','JAVA','1041','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('61','操作系统','1046','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('47','戏剧鉴赏','1047','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('48','书法鉴赏','1048','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('49','大学物理实验1','1049','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('50','大学物理实验2','1050','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('51','多媒体应用与技术','1051','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('52','数字逻辑','1052','4','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('53','计算机组成原理','1053','3.5','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('54','计算机图形学','1054','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('56','网络安全','1055','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('57','嵌入式编程','1056','2.5','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('58','基础韩国语','1057','2','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('59','动漫娱乐游戏基础','1058','2.5','计算机','选修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('60','算法与程序设计','1059','2','计算机','选修');


-- 表的结构 `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `collegeId` varchar(20) NOT NULL COMMENT '学院代码',
  `collegeName` varchar(20) NOT NULL COMMENT '学院名称',
  `deptId` varchar(20) NOT NULL COMMENT '专业代码',
  `deptName` varchar(20) NOT NULL COMMENT '专业名称',
  `classAndGrade` varchar(20) NOT NULL COMMENT '班级',
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","181");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","182");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","183");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","184");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","185");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","186");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","171");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","172");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","173");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","174");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","08","计算机科学与技术专业","175");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","181");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","182");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","183");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","184");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","185");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","186");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","171");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","172");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","173");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","174");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","09","软件工程专业","175");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","181");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","182");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","183");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","184");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","185");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","186");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","171");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","172");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","173");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","174");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10120","计算机学院","10","网络工程专业","175");

insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","181");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","182");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","183");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","184");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","185");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","186");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","187");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","171");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","172");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","173");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","174");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","175");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","176");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","167");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","166");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","165");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","164");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","163");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","162");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","行政管理","161");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","151");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","152");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","153");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","154");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","155");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","156");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","157");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","142");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","144");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10130","经济管理学院","33","旅游管理","143");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10140","国际商务学院","10","会计","121");
insert into departments(collegeid,collegename,deptid,deptname,classandgrade) values("10150","生命科学学院","22","生物制药","123");
-- 表的结构 `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `userId` varchar(20) NOT NULL COMMENT '学号',
  `userName` varchar(20) NOT NULL COMMENT '学生姓名',
  `examType` varchar(20) NOT NULL COMMENT '考试类型',
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='校外考试报名表';

-- --------------------------------------------------------
insert into exam(userId,userName,examType) values("201620080101","田晓松","四级");
insert into exam(userId,userName,examType) values("201620080118","朱晓丽","四级");
insert into exam(userId,userName,examType) values("201620080117","王立新","四级");
insert into exam(userId,userName,examType) values("201620080116","李思雨","四级");
insert into exam(userId,userName,examType) values("201620080115","黄雅莉","四级");
insert into exam(userId,userName,examType) values("201620080114","李易峰","四级");
insert into exam(userId,userName,examType) values("201620080113","周杰伦","四级");
insert into exam(userId,userName,examType) values("201620080112","胡先煦","四级");
insert into exam(userId,userName,examType) values("201620080131","李东海","四级");
insert into exam(userId,userName,examType) values("201620080121","金在中","四级");
insert into exam(userId,userName,examType) values("201630330121","林俊杰","四级");
insert into exam(userId,userName,examType) values("201620100112","吴亦凡","四级");
insert into exam(userId,userName,examType) values("201630330212","唐嫣","四级");
insert into exam(userId,userName,examType) values("201630330313","迪丽热巴","四级");
insert into exam(userId,userName,examType) values("201630330314","古力娜扎","四级");
insert into exam(userId,userName,examType) values("201630330315","范冰冰","六级");
insert into exam(userId,userName,examType) values("201630330316","韩红","六级");
insert into exam(userId,userName,examType) values("201630330317","那英","六级");
insert into exam(userId,userName,examType) values("201620100118","刘欢","六级");
insert into exam(userId,userName,examType) values("201620100101","蔡依林","六级");
insert into exam(userId,userName,examType) values("201620100102","林宥嘉","六级");
insert into exam(userId,userName,examType) values("201620100103","薛之谦","六级");
insert into exam(userId,userName,examType) values("201620100104","蔡卓妍","六级");
insert into exam(userId,userName,examType) values("201620100105","田馥甄","六级");
insert into exam(userId,userName,examType) values("201620100106","许嵩","六级");
insert into exam(userId,userName,examType) values("201620100107","汪苏泷","六级");
insert into exam(userId,userName,examType) values("201620100108","王源","六级");
insert into exam(userId,userName,examType) values("201620100109","苏醒","六级");
insert into exam(userId,userName,examType) values("201620100110","张杰","六级");
insert into exam(userId,userName,examType) values("201620100111","谢娜","六级");


--
-- 表的结构 `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `userId` varchar(20) NOT NULL COMMENT '学号',
  `courseId` varchar(20) NOT NULL COMMENT '课程号',
  `grade` varchar(20) NOT NULL COMMENT '成绩',
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
insert into grade(userId,courseId,grade) values('201620100101','1001','87');
insert into grade(userId,courseId,grade) values('201620100102','1001','88');
insert into grade(userId,courseId,grade) values('201620100106','1001','89');
insert into grade(userId,courseId,grade) values('201620100107','1001','90');
insert into grade(userId,courseId,grade) values('201620100108','1001','55');
insert into grade(userId,courseId,grade) values('201620100109','1001','54');
insert into grade(userId,courseId,grade) values('201620100110','1001','66');
insert into grade(userId,courseId,grade) values('201620100112','1001','69');
insert into grade(userId,courseId,grade) values('201620100113','1001','71');
insert into grade(userId,courseId,grade) values('201620100114','1001','70');
insert into grade(userId,courseId,grade) values('201620100115','1001','72');
insert into grade(userId,courseId,grade) values('201620100116','1001','73');
insert into grade(userId,courseId,grade) values('201620100117','1001','74');
insert into grade(userId,courseId,grade) values('201620100118','1001','80');
insert into grade(userId,courseId,grade) values('201620100119','1001','81');
insert into grade(userId,courseId,grade) values('201620100120','1001','82');
insert into grade(userId,courseId,grade) values('201620100121','1001','83');
insert into grade(userId,courseId,grade) values('201620100122','1001','84');
insert into grade(userId,courseId,grade) values('201620100123','1001','85');
insert into grade(userId,courseId,grade) values('201620100124','1001','86');
insert into grade(userId,courseId,grade) values('201620100125','1001','88');
insert into grade(userId,courseId,grade) values('201620100126','1001','87');
insert into grade(userId,courseId,grade) values('201620100127','1001','88');
insert into grade(userId,courseId,grade) values('201620100128','1001','89');
insert into grade(userId,courseId,grade) values('201620100129','1001','90');
insert into grade(userId,courseId,grade) values('201620080201','1002','87');
insert into grade(userId,courseId,grade) values('201620080202','1002','87');
insert into grade(userId,courseId,grade) values('201620080203','1002','84');
insert into grade(userId,courseId,grade) values('201620080204','1002','82');
insert into grade(userId,courseId,grade) values('201620080205','1002','83');
insert into grade(userId,courseId,grade) values('201620080206','1002','84');
insert into grade(userId,courseId,grade) values('201620080207','1002','74');
insert into grade(userId,courseId,grade) values('201620080208','1002','75');
insert into grade(userId,courseId,grade) values('201620080209','1002','76');
insert into grade(userId,courseId,grade) values('201620080211','1002','77');
insert into grade(userId,courseId,grade) values('201620080212','1002','78');
insert into grade(userId,courseId,grade) values('201620080213','1002','79');
insert into grade(userId,courseId,grade) values('201620080214','1002','56');
insert into grade(userId,courseId,grade) values('201620080215','1002','66');
insert into grade(userId,courseId,grade) values('201620080216','1002','67');
insert into grade(userId,courseId,grade) values('201620080217','1002','68');
insert into grade(userId,courseId,grade) values('201620080218','1002','69');



--
-- 表的结构 `graduation_information`
--

CREATE TABLE IF NOT EXISTS `graduation_information` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `userId` varchar(20) NOT NULL COMMENT '学号',
  `creditAll` varchar(20) NOT NULL COMMENT '学分审核',
  `performance` varchar(20) NOT NULL COMMENT '在校表现',
  `isSubmit` int(1) NOT NULL COMMENT '是否提交论文',
  `graduation` int(1) NOT NULL COMMENT '是否毕业',
  PRIMARY KEY (`num`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='毕业管理表';

-- --------------------------------------------------------
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100101","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100102","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100103","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100104","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100105","0","较差",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100106","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100107","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100108","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100109","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100110","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100111","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100112","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100113","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100114","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100115","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100116","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100117","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100118","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201620100119","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330301","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330302","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330303","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330304","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330305","0","良好",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330306","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330307","0","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330308","0","较差",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330309","0","较差",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330310","0","较差",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330311","0","较差",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("201630330312","0","较差",1,1);
--
-- 表的结构 `position` 辅导员
--

CREATE TABLE IF NOT EXISTS `position` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `positionId` varchar(20) NOT NULL COMMENT '辅导员ID',
  `year1` varchar(20) NOT NULL COMMENT '年份',
  `deptName` varchar(20) NOT NULL COMMENT '所属学院',
  `positionName` varchar(20) NOT NULL COMMENT '辅导员姓名',
  PRIMARY KEY (`num`),
  UNIQUE KEY `positionId` (`positionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `selectioncourse`
--

CREATE TABLE IF NOT EXISTS `selectioncourse` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `userId` varchar(20) NOT NULL COMMENT '学号',
  `courseId` varchar(20) NOT NULL COMMENT '课程号',
  PRIMARY KEY (`num`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
insert into selectioncourse(userId,courseId) values('201620100101','1001');
insert into selectioncourse(userId,courseId) values('201620100102','1001');
insert into selectioncourse(userId,courseId) values('201620100106','1001');
insert into selectioncourse(userId,courseId) values('201620100107','1001');
insert into selectioncourse(userId,courseId) values('201620100108','1001');
insert into selectioncourse(userId,courseId) values('201620100109','1001');
insert into selectioncourse(userId,courseId) values('201620100110','1001');
insert into selectioncourse(userId,courseId) values('201620100112','1001');
insert into selectioncourse(userId,courseId) values('201620100113','1001');
insert into selectioncourse(userId,courseId) values('201620100114','1001');
insert into selectioncourse(userId,courseId) values('201620100115','1001');
insert into selectioncourse(userId,courseId) values('201620100116','1001');
insert into selectioncourse(userId,courseId) values('201620100117','1001');
insert into selectioncourse(userId,courseId) values('201620100118','1001');
insert into selectioncourse(userId,courseId) values('201620100119','1001');
insert into selectioncourse(userId,courseId) values('201620100120','1001');
insert into selectioncourse(userId,courseId) values('201620100121','1001');
insert into selectioncourse(userId,courseId) values('201620100122','1001');
insert into selectioncourse(userId,courseId) values('201620100123','1001');
insert into selectioncourse(userId,courseId) values('201620100124','1001');
insert into selectioncourse(userId,courseId) values('201620100125','1001');
insert into selectioncourse(userId,courseId) values('201620100126','1001');
insert into selectioncourse(userId,courseId) values('201620100127','1001');
insert into selectioncourse(userId,courseId) values('201620100128','1001');
insert into selectioncourse(userId,courseId) values('201620100129','1001');
insert into selectioncourse(userId,courseId) values('201620080201','1002');
insert into selectioncourse(userId,courseId) values('201620080202','1002');
insert into selectioncourse(userId,courseId) values('201620080203','1002');
insert into selectioncourse(userId,courseId) values('201620080204','1002');
insert into selectioncourse(userId,courseId) values('201620080205','1002');
insert into selectioncourse(userId,courseId) values('201620080206','1002');
insert into selectioncourse(userId,courseId) values('201620080207','1002');
insert into selectioncourse(userId,courseId) values('201620080208','1002');
insert into selectioncourse(userId,courseId) values('201620080209','1002');
insert into selectioncourse(userId,courseId) values('201620080211','1002');
insert into selectioncourse(userId,courseId) values('201620080212','1002');
insert into selectioncourse(userId,courseId) values('201620080213','1002');
insert into selectioncourse(userId,courseId) values('201620080214','1002');
insert into selectioncourse(userId,courseId) values('201620080215','1002');
insert into selectioncourse(userId,courseId) values('201620080216','1002');
insert into selectioncourse(userId,courseId) values('201620080217','1002');
insert into selectioncourse(userId,courseId) values('201620080218','1002');
--
-- 表的结构 `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `userID` varchar(20) NOT NULL COMMENT '学号',
  `userName` varchar(20) NOT NULL COMMENT '姓名',
  `userSex` varchar(5) NOT NULL COMMENT '性别',
  `userAge` varchar(20) NOT NULL COMMENT '年龄',
  `userNational` varchar(20) NOT NULL COMMENT '民族',
  `collegeName` varchar(20) NOT NULL COMMENT '院名',
  `deptName` varchar(20) NOT NULL COMMENT '专业名',
  `classAndGrade` varchar(20) NOT NULL COMMENT '班级',
  `telephone` varchar(20) NOT NULL COMMENT '手机号',
  PRIMARY KEY (`num`),
  UNIQUE KEY `userID` (`userID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080101','田晓松','男','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080118','朱晓丽','女','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080117','王立新','男','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080116','李思雨','女','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080115','黄雅莉','女','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080114','李易峰','男','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080113','周杰伦','男','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080112','胡先煦','男','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080131','李东海','男','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620080121','金在中','男','18','汉族','计算机学院','计算机科学与技术专业','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100101','蔡依林','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100102','林宥嘉','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100103','薛之谦','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100104','蔡卓妍','女','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100105','田馥甄','女','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100106','许嵩','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100107','汪苏泷','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100108','王源','女','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100109','苏醒','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100110','张杰','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100111','谢娜','女','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100112','吴亦凡','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100113','张天宇','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100114','马小草','女','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100115','马青青','女','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100116','陈子旭','女','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100117','陈黎明','女','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100118','刘欢','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100119','孙梦雪','女','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100120','王小平','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100128','李平安','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100122','李远东','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100123','西门庆','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100124','东方红','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100125','高晓松','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100126','慕容云海','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100127','上官瑞签','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100129','易烊千玺','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100130','林虎','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201620100131','李东海','男','18','汉族','计算机学院','网络工程','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330101','张磊','男','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330102','张大伟','男','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330103','王磊','男','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330104','王晓伟','男','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330105','王文静','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330106','李俊良','男','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330107','张海勇','男','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330108','张杰出','男','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330109','李丽丽','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330110','刘敏','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330111','李霞','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330112','李桂英','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330116','王芳','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330117','刘娟','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330118','王彩霞','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330119','王丽丽','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330120','杨丽萍','女','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330121','林俊杰','男','18','汉族','经济管理学院','行政管理','161','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330301','吕尚','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330302','宁晓宇','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330303','林佳丽','女','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330304','李二义','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330305','王献之','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330306','安庆西','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330307','郭冬临','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330308','郭祥瑞','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330309','郭庆与','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330310','张梓琳','女','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330311','张清宇','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330312','张歆艺','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330313','迪丽热巴','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330314','古力娜扎','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330315','范冰冰','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330316','韩红','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330317','那英','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330318','刘而欢','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330319','苏瑾','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330320','苏芮','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330321','苏庆于','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330322','苏庆杰','男','18','汉族','经济管理学院','行政管理','163','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330201','唐金义','男','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330202','李嫣然','女','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330203','王欣然','女','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330204','王乐乐','女','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330205','杨子旭','男','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330206','杨丽琳','女','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330207','杨庆雨','女','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330208','杨凤玲','女','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330209','王鹏宇','男','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330210','王黎明','男','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330211','王振','男','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330212','王腾飞','男','18','汉族','经济管理学院','行政管理','162','15584094356');
insert into students(userId,userName,userSex,userAge,userNational,collegeName,deptName,classAndGrade,telephone) values('201630330213','张棱','男','18','汉族','经济管理学院','行政管理','162','15584094356');
--
-- 表的结构 `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `userId` varchar(20) NOT NULL COMMENT '教职工号',
  `userName` varchar(20) NOT NULL COMMENT '姓名',
  `userSex` varchar(5) NOT NULL COMMENT '性别',
  `userAge` varchar(20) NOT NULL COMMENT '年龄',
  `userNational` varchar(20) NOT NULL COMMENT '民族',
  `positionName` varchar(20) NOT NULL COMMENT '职称',
  `telephone` varchar(20) NOT NULL COMMENT '手机号',
  `teacherType` varchar(20) NOT NULL COMMENT '教师类型',
  PRIMARY KEY (`num`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `text`
--

CREATE TABLE IF NOT EXISTS `text` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(20) NOT NULL COMMENT '标题',
  `message` varchar(500) NOT NULL COMMENT '内容',
  `time` varchar(20) NOT NULL COMMENT '发布时间',
  `section` varchar(20) NOT NULL COMMENT '所在栏目',
  `author` varchar(20) NOT NULL COMMENT '发布者',
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公告信息表';

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(20) NOT NULL COMMENT '密码',
  `permission` varchar(20) NOT NULL COMMENT '权限',
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户登录表';

insert into user(username,password,permission) values("admin666","passwordyyy","a");
insert into user(username,password,permission) values("admin1","123456","a");
insert into user(username,password,permission) values("student","123456","s");
insert into user(username,password,permission) values("teacher","123456","t");

CREATE TABLE IF NOT EXISTS `demo` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `user` varchar(20) NOT NULL COMMENT '用户名',
  `passwd` varchar(20) NOT NULL COMMENT '密码',
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='测试表';
insert into demo(user,passwd) values("admin","password");
insert into demo(user,passwd) values("admin","password");
insert into demo(user,passwd) values("admin","password");
insert into demo(user,passwd) values("admin","password");
insert into demo(user,passwd) values("admin","password");
insert into demo(user,passwd) values("admin","password");
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
