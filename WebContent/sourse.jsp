<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/form.css" />
<link href="umeditor/themes/default/_css/umeditor.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery.select.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript">

</script>
<script type="text/javascript" src="js/umeditor.config.js"></script>
<script type="text/javascript" src="js/editor_api.js"></script>
<script type="text/javascript" src="umeditor/lang/zh-cn/zh-cn.js"></script>

<title>成绩查询</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="网页特效,特效代码,jQuery,css特效,Js代码,广告幻灯,图片切换" name="keywords" />
<meta content="jQuery弹出层效果，有关闭按钮，代码简单易懂，你可以随意修改弹出层的参数。" name="description" />
<script src="/uploads/common/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<style>
.black_overlay{
display: none;
position: absolute;
top: 0%;
left: 0%;
width: 100%;
height: 100%;
background-color: black;
z-index:1001;
-moz-opacity: 0.8;
opacity:.80;
filter: alpha(opacity=80);
}
.white_content {
display: none;
position: absolute;
top: 10%;
left: 10%;
width: 40%;
height: 35%;
border: 16px solid lightblue;
background-color: white;
z-index:1002;
overflow: auto;
}
.white_content_small {
display: none;
position: absolute;
top: 20%;
left: 30%;
width: 20%;
height: 30%;
border: 16px solid lightblue;
background-color: white;
z-index:1002;
overflow: auto;
}
</style>
<script type="text/javascript">
//弹出隐藏层
function ShowDiv(show_div,bg_div){
document.getElementById(show_div).style.display='block';
document.getElementById(bg_div).style.display='block' ;
var bgdiv = document.getElementById(bg_div);
bgdiv.style.width = document.body.scrollWidth;
// bgdiv.style.height = $(document).height();
$("#"+bg_div).height($(document).height());
};
//关闭弹出层
function CloseDiv(show_div,bg_div)
{
document.getElementById(show_div).style.display='none';
document.getElementById(bg_div).style.display='none';
};
</script>


</head>
<body>

    <div id="container">
    <div id="hd">
    </div>
    <div id="bd">
        <div id="main">
            <h2 class="subfild">
                <span>成绩查询</span>
            </h2>
            <div class="subfild-content base-info">

                </br>

                <div class="kv-item ue-clear">
                    <label><span class="impInfo">*</span>学号</label>
                    <div class="kv-item-content">
                        <input type="text" placeholder="请输入学号进行查询" onblur="checkIdNumber(this.value);">
                    <span id="checkIdNumberResult" style="color: red;"></span>
                    </div>
                </div>

                </br>
            </div>


            </br>
            <!--
            <div class="buttons">
                <input class="button" type="button" value="查询" onclick="window.open('score.html')" />
            </div>
            -->


        </div>


    </div>


</div>
<!--
<input id="Button1" type="button" value="点击弹出层" onclick="ShowDiv('MyDiv','fade')" />
-->
<div class="buttons">
    <input class="button" type="button" value="查询" onclick="ShowDiv('MyDiv','fade')" />
</div>
<!--弹出层时背景层DIV-->

<div id="fade" class="black_overlay">

</div>

<div id="MyDiv" class="white_content">
<div style="text-align: right; cursor: default; height: 6px;">
<span style="font-size: 16px;" onclick="CloseDiv('MyDiv','fade')">关闭</span>
</div>

<style type="text/css">


table{
    margin:0px auto;
}

table.hovertable {
    align-content: center;

    font-family: verdana,arial,sans-serif;

    font-size:11px;

    color:#333333;

    border-width: 1px;

    border-color: #999999;

    border-collapse: collapse;



}

table.hovertable th {
    align-content: center;

    background-color:#c3dde0;

    border-width: 1px;

    padding: 8px;

    border-style: solid;

    border-color: #a9c6c9;

}

table.hovertable tr {
    align-content: center;

    background-color:#d4e3e5;

}

table.hovertable td {
    align-content: center;

    border-width: 1px;

    padding: 8px;

    border-style: solid;

    border-color: #a9c6c9;

}

</style>



<!-- Table goes in the document BODY -->

<table class="hovertable">

<tr>

    <th>学科</th><th>成绩</th>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>高等数学</td><td>1234567890</td>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>线性代数</td><td>    </td>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>离散数学</td><td>    </td>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>数据库</td><td>    </td>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>数字逻辑</td><td>    </td>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>计算机组成原理</td><td>    </td>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>计算机网络</td><td>    </td>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>web开发</td><td>    </td>

</tr>


</table>

</div>


</body>
<script type="text/javascript">
    $('select').select();
    showRemind('input[type=text],textarea','color5');
    UM.getEditor('content');
</script>
</body>
</html>