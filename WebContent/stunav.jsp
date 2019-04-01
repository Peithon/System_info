<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/skin_/nav.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<title></title>
</head>
<body>
<div id="container">
	<div id="bd">
    	<div class="sidebar">
        	<div class="sidebar-bg"></div>
            <i class="sidebar-hide"></i>
            <h2><a href="javascript:;"><i class="h2-icon" title="切换到树型结构"></i><span>学生首页</span></a></h2>
            <ul class="nav">
                <li class="nav-li current">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">学生管理</span></a>
                	<ul class="subnav">
                    	<li class="subnav-li current" href="homepage.jsp" data-id="1"></li>
                        <li class="subnav-li" href="examination.jsp" data-id="2"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">考试报名</span></a></li>
                        <li class="subnav-li" href="courseselection.jsp" data-id="3"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">网上选课</span></a></li>
                    </ul>
                </li>
                <li class="nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">查询管理</span></a>
                    <ul class="subnav">
                       <li class="subnav-li" href="sourse.jsp" data-id="4"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">成绩查询</span></a></li>
                        <li class="subnav-li" href="graduation.jsp" data-id="5"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">毕业查询</span></a></li>
                    </ul>
                </li>
            </ul>
            <div class="tree-list outwindow">
            	<div class="tree ztree"></div>
            </div>
        </div>
        <div class="main">
        	<div class="title">
                <i class="sidebar-show"></i>
                <ul class="tab ue-clear">
                   
                </ul>
                <i class="tab-more"></i>
                <i class="tab-close"></i>
            </div>
            <div class="content">
            </div>
        </div>
    </div>
</div>

<div class="more-bab-list">
	<ul></ul>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
    <div class="opt-panel-bl"></div>
</div>
</body>
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/Menu.js"></script>
<script type="text/javascript" src="js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript">
	var menu = new Menu({
		defaultSelect: $('.nav').find('li[data-id="1"]')	
	});
	
	// 左侧树结构加载
	var setting = {};

		var zNodes =[
			{ name:"教师首页",
			   children: [
				 { name:"教学计划",icon:'img/skin_/leftlist.png'},
			]},
			{ name:"录入信息", open:true,
			   children: [
				 { name:"首页", checked:true,icon:'img/skin_/leftlist.png'},
				 { name:"录入成绩",icon:'img/skin_/leftlist.png'},
				 { name:"查询成绩",icon:'img/skin_/leftlist.png'},
			]},
		];

	$.fn.zTree.init($(".tree"), setting, zNodes);
	
	
	$('.sidebar h2').click(function(e) {
        $('.tree-list').toggleClass('outwindow');
		$('.nav').toggleClass('outwindow');
    });
	
	$(document).click(function(e) {
		if(!$(e.target).is('.tab-more')){
			 $('.tab-more').removeClass('active');
			 $('.more-bab-list').hide();
		}
    });
</script>
</html>