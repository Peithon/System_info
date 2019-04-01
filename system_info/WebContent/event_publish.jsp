<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/form.css" />
<link href="umeditor/themes/default/_css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery.select.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript">
window.UMEDITOR_HOME_URL = 'umeditor/';  // 请换成绝对路径
</script>
<script type="text/javascript" src="js/umeditor.config.js"></script>
<script type="text/javascript" src="js/editor_api.js"></script>
<script type="text/javascript" src="umeditor/lang/zh-cn/zh-cn.js"></script>
<title>基础信息</title>
</head>

<body>
<form action="TextAction?method=addinfo" method="POST">
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
            <h2 class="subfild">
            	<span>基本信息</span>
            </h2>
            <div class="subfild-content base-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>内容标题</label>
                	<div class="kv-item-content">
                    	<input name="title" type="text" placeholder="内容标题" />
                    </div>
                    <span class="kv-item-tip">标题字数限制在35个字符</span>
                </div>
                <div class="kv-item ue-clear time">
                	<label><span class="impInfo">*</span>发布时间</label>
                	<div class="kv-item-content">
                    	<input name="time" type="text" placeholder="定义发布时间" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})" />
                        <i class="time-icon"></i>
                    </div>
                </div>
                
                <div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>所在栏目</label>
                	<div class="kv-item-content">
                    	<select name="section">
                        	<option value="讲座安排">讲座安排</option>
                            <option value="运动事项安排">运动事项安排</option>
                            <option value="考试安排">考试安排</option>
                        </select>
                    </div>
                </div>
            <div class="subfild-content remarkes-info">
            	<div class="kv-item ue-clear">
                	<label><span class="impInfo">*</span>发布内容</label>
                	<div class="kv-item-content">
                    	<textarea name="message" placeholder="内容" id="content" style="width:800px;height:240px;"></textarea>
                    </div>
                </div>
            </div>
            
            <div class="buttons">
                <input class="button" type="submit" value="点击发布" />
            </div>
        </div>
    </div>
</div>
</div>
</form>
</body>

<script type="text/javascript">
	$('select').select();
	showRemind('input[type=text],textarea','color5');
	UM.getEditor('content');
</script>
</html>
