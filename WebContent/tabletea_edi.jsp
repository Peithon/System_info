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
<!-- <script type="text/javascript" src="umeditor/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript" src="form.js "></script> -->

<title>修改信息</title>
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
width: 50%;
height: 45%;
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
                <span>修改信息</span>
            </h2>
            <div class="subfild-content base-info">

                </br>

                <div class="kv-item ue-clear">
                    <label><span class="impInfo">*</span>教职工号</label>
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

    <th>教职工号</th>
    <th>       </th>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>姓名</td>
    <td><input type="text" class="long_text" id="userName"></td>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>性别：</td>
    <td  style="text-align: left"><select>
    <option>男</option>
    <option>女</option>
    </select></td>
</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

    <td>年龄：</td>
    <td colspan = "3" style="text-align: left"><input type="text" class="long_text" id="userAge"></td>
</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
<td>民族：</td>
<td  style="text-align: left"><select id="nation">
   <script>
    var nations = ["汉族", "蒙古族", "回族", "藏族", "维吾尔族", "苗族", "彝族", "壮族", "布依族", "朝鲜族", "满族", "侗族", "瑶族", "白族",
    "土家族", "哈尼族", "哈萨克族", "傣族", "黎族", "傈僳族", "佤族", "畲族", "高山族", "拉祜族", "水族", "东乡族", "纳西族", "景颇族", "柯尔克孜族", "土族", 
    "达斡尔族", "仫佬族", "羌族", "布朗族", "撒拉族", "毛南族", "仡佬族", "锡伯族", "阿昌族", "普米族", "塔吉克族", "怒族", "乌孜别克族", "俄罗斯族", "鄂温克族", 
    "德昂族", "保安族", "裕固族", "京族", "塔塔尔族", "独龙族", "鄂伦春族", "赫哲族", "门巴族", "珞巴族", "基诺族"];
    var option = "";
    for(var i = 0; i <
        nations.length; i++) {
        option += '<option value="' + (i + 1) + '">' + nations[i] + '</option>';
         }
       $(option).appendTo("#nation");
     </script>
 </select></td>  
</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

 <td>职称：</td>
<td  style="text-align: left"><select id="position">
<script>
    var position = ["教授", "副教授", "讲师", "助教"];
    var option = "";
    for(var i = 0; i <
        position.length; i++) {
        option += '<option value="' + (i + 1) + '">' + position[i] + '</option>';
    }
    $(option).appendTo("#position");
</script>
</select></td>

</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">
<td>教师类型：</td>
<td  style="text-align: left"><select id="type">
<script>
    var type = ["高数", "计算机", "临床医学", "法律", "英语"];
    var option = "";
    for(var i = 0; i <
    type.length; i++) {
    option += '<option value="' + (i + 1) + '">' + type[i] + '</option>';
    }
    $(option).appendTo("#type");
</script>
</select></td>
</tr>

<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';">

     <td>手机号：</td>
    <td   style="text-align: left;border-top: none"><input type="text"  name ="userphone" minlength="2" >
</tr>


</table>
    <div class="bot_btn" style="text-align:center;">
        <!-- <input class="btn" type="submit" value="保存" onclick="RecodeSave()"/>
        <button class="btn btn1"><a href="adminnav.jsp" target="right">返回</a></button> -->
        <input type="button" value="保存 " onclick="javascript:location.href='  '"> 
       
    </div>
</div>


</body>
<script type="text/javascript">
    $('select').select();
    showRemind('input[type=text],textarea','color5');
    UM.getEditor('content');
</script>
</html>