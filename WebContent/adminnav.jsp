<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/skin_/nav.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<title>管理员首页</title>
</head>

<body>
<div id="container">
	<div id="bd">
    	<div class="sidebar">
        	<div class="sidebar-bg"></div>
            <i class="sidebar-hide"></i>
            <h2><a href="javascript:;"><i class="h2-icon" title="切换到树型结构"></i><span>管理员首页</span></a></h2>
            <ul class="nav">
                <li class="nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">院系管理</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li" href="tabledep.jsp" data-id="8"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">院系信息</span></a></li>
                        <li class="subnav-li" href="tableass.jsp" data-id="9"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">辅导员信息</span></a></li>
                       
                    </ul>
                </li>
                <li class="nav-li current">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">信息管理</span></a>
                	<ul class="subnav">
                    	<li class="subnav-li current" href="TextAction?method=showinfo" data-id="1"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">活动公示</span></a></li>
                        <li class="subnav-li" href="event_publish.jsp" data-id="2"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">信息发布</span></a></li>
                       
                    </ul>
                </li>
                <li class="nav-li">
                	<a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">基本信息</span></a>
                    <ul class="subnav">
                    	<li class="subnav-li" href="tabletea.jsp" data-id="5"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">教师信息</span></a></li>
                        <li class="subnav-li" href="tablestu.jsp" data-id="6"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">学生信息</span></a></li>=
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
			{ name:"院系管理",
			   children: [
				 { name:"院系信息",icon:'img/skin_/leftlist.png'},
				 { name:"辅导员信息",icon:'img/skin_/leftlist.png'}			
			]},
			{ name:"信息公布", open:true,
			   children: [
				 { name:"活动通知", checked:true,icon:'img/skin_/leftlist.png'},
				 { name:"考试安排",icon:'img/skin_/leftlist.png'}
		
			]},
			{ name:"基本信息",
			   children: [
				 { name:"教师信息",icon:'img/skin_/leftlist.png'},
				 { name:"学生信息",icon:'img/skin_/leftlist.png'}
			]}
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
