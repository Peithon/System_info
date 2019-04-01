<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<script type="text/javascript" src="form.js "></script>

<title>学生报名信息</title>
</head>
<body>

    <div id="container">
    <div id="hd">
    </div>
    <div id="bd">
        <div id="main">
            <h2 class="subfild">
                <span>报名情况</span>
            </h2>
            <div class="subfild-content base-info">

                </br>

                <div class="kv-item ue-clear">
                    <label><span class="impInfo">*</span>学号</label>
                    <div class="kv-item-content">
                        <input type="text" placeholder="请输入学号查询考试报名情况" onblur="checkIdNumber(this.value);">
                    <span id="checkIdNumberResult" style="color: red;"></span>
                    </div>
                </div>

                </br>
            </div>


            </br>

                <!--<input class="button" type="button" value="查询" onclick="window.open('biye.html')" />-->
                <!--  
                <a href='examination2.jsp'>
                <div class="buttons">      
                <input class="button" type="button" value="查询">
                </div>
                </a> 
               -->
				
				<div class="buttons">
				<input class="button" type="button" value="查询" onclick="javascript:location.href='examination2.jsp'"> 					
				</div>



        </div>


    </div>


</div>
</body>
</html>