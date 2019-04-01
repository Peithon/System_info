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
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('01','01','1001','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('02','001','1001','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('03','0001','1001','2','计算机','必修');
insert into courses(courseId,courseName,userId,credit,departmentName,courseType) values('04','00001','1001','2','计算机','必修');

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
insert into grade(userId,courseId,grade) values('20162201','01','87');
insert into grade(userId,courseId,grade) values('20162201','02','83');
insert into grade(userId,courseId,grade) values('20162201','03','60');
insert into grade(userId,courseId,grade) values('20162202','01','87');
insert into grade(userId,courseId,grade) values('20162202','02','83');
insert into grade(userId,courseId,grade) values('20162202','03','60');
insert into grade(userId,courseId,grade) values('20162203','01','87');
insert into grade(userId,courseId,grade) values('20162203','02','83');
insert into grade(userId,courseId,grade) values('20162203','03','60');
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
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("2016001111","1","优秀",1,1);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("20162201","0","良好",1,0);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("20162202","0","较差",0,0);
insert into graduation_information(userId,creditAll,performance,isSubmit,graduation) values("20162203","1","良好",1,1);
--
-- 表的结构 `position` 辅导员
--

CREATE TABLE IF NOT EXISTS `instruction` (
  `num` int(10) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `positionId` varchar(20) NOT NULL COMMENT '辅导员ID',
  `year1` varchar(20) NOT NULL COMMENT '年份',
  `deptName` varchar(20) NOT NULL COMMENT '所属学院',
  `positionName` varchar(20) NOT NULL COMMENT '辅导员姓名',
  PRIMARY KEY (`num`),
  UNIQUE KEY `positionId` (`positionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
insert into instruction(positionId,year1,deptName,positionName) values("001","2016","计算机学院","谢金风");
insert into instruction(positionId,year1,deptName,positionName) values("002","2016","生命科学学院","邢永亮");
insert into instruction(positionId,year1,deptName,positionName) values("003","2017","计算机学院","周长春");
insert into instruction(positionId,year1,deptName,positionName) values("004","2017","经济管理学院","张颖");
insert into instruction(positionId,year1,deptName,positionName) values("005","2018","计算机学院","白霜");
insert into instruction(positionId,year1,deptName,positionName) values("006","2018","经济管理学院","王永祥");
insert into instruction(positionId,year1,deptName,positionName) values("007","2015","计算机学院","陈平");
insert into instruction(positionId,year1,deptName,positionName) values("008","2015","经济管理学院","邓学义");
insert into instruction(positionId,year1,deptName,positionName) values("009","2019","计算机学院","李强");
insert into instruction(positionId,year1,deptName,positionName) values("010","2019","国际商务学院","林风");
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
  PRIMARY KEY (`num`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公告信息表';

-- --------------------------------------------------------
insert into text(title,message,time,section,author) values("18年校级大型招聘会","明天上午在开发区校区体育馆有学校组织的大型招聘会，有时间的同学建议大家过去
看看，了解下行业现状。没班车哈，自行前往即可","2018/10/26 11:25:37","讲座安排","管理员");
insert into text(title,message,time,section,author) values("形势与政策课程","本周六9、10节的形势政策课调整至第13周周六9、10节上课，地点不变，均为大学生活动
中心","2018/10/30 11:43:27","讲座安排","管理员");
insert into text(title,message,time,section,author) values("英语视听说","考试通知：本周四（11月8日）18:00~19:50进行《英语视听说》考试，考试地点A317，请相关
同学做好考试准备","2018/11/05 10:36:25","考试安排","管理员");
insert into text(title,message,time,section,author) values("第十三届乒乓球个人公开赛","这是一条重要的通知：为强健学生体魄，丰富学生的课余生活，增进新同学之间
的感情，学校将于11月10日和11月11日承办“大连民族大学第十三届乒乓球个人公开赛”，欢迎对乒乓球感兴趣的同学加入我们的最强战队！报名的同学男女不限哦，并且将会在11月7日
12:00在体育馆二楼乒乓球馆内进行选拔，选拔后将留下八男八女代表学院参加比赛，比赛不仅可以为学院争光，也可以得到丰厚的操评哦。本次比赛包括男子单打和女子单打，比赛在体
育馆二楼的乒乓球馆举行，并且本次开发区的八个学院也将来到我们校区进行比赛哦！希望同学们积极踊跃的报名参加，加入我们的最强战队，为我院争光！想要参加比赛的同学请注意啦，
本次比赛不需要缴纳任何费用，所有的花销由乒协自己承担。参赛选手自己带球拍，比赛用球也将由乒协提供。
有意向报名的同学请将班级、姓名、性别发给体育部干事吕妍凝和李喻双，希望大家踊跃报名参加，为我院争光
","2018/12/06 17:25:40","运动事项安排","管理员");
insert into text(title,message,time,section,author) values("129长跑比赛","通知一年一度的“129” 长跑比赛即将来临我们希望通过这次长跑比赛，来展示中国青年的意志力
和爱国情怀，展现学生的独特风采，激发大家对体育、对国事的关注。同时，也丰富同学们的课余生活，加强各集体联系与合作，从而和谐风气，建立友谊，发扬爱国主义精神，活跃校园文
化生活希望各位同学都能积极参加，踊跃报名，请于周四晚十点前将姓名班级报给体育部干事李喻双（qq：1932527879）请于周五中午十二点半在主席台前参加选拔（400m）选拔成功同学
也将会获得丰富的操评奖励","2018/12/20 9:14:25","运动事项安排","管理员");


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
