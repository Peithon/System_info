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

</script>
<script type="text/javascript" src="js/umeditor.config.js"></script>
<script type="text/javascript" src="js/editor_api.js"></script>
<script type="text/javascript" src="umeditor/lang/zh-cn/zh-cn.js"></script>


<title>考试报名</title>

<script type="text/javascript">  
   function   checkForm1(){  
       if(!confirm("确认提交?")){   
             return   false;  
       }  
       else
             return   true;  
   }  
  </script>
<script type="text/javascript">
    function checkUserName(obj){
    var username=obj;
    if(username.trim().length==0){
        var checkUserNameResult=document.getElementById("checkUserNameResult");
        checkUserNameResult.innerHTML="姓名不能为空";
        obj.FOCUS();
    }
    else{
        checkUserNameResult.innerHTML="";
    }
}

function checkIdNumber(obj){
    var idnumber=obj;
    if(idnumber.trim().length==0){
        var checkIdNumberResult=document.getElementById("checkIdNumberResult");
        checkIdNumberResult.innerHTML="学号不能为空";
        obj.FOCUS();
    }
    else{
        checkIdNumberResult.innerHTML="";
    }
}


</script>
</head>

<body>


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
                	<label><span class="impInfo">*</span>姓名</label>
                	<div class="kv-item-content">
    

                    <input type="text" placeholder="姓名" onblur="checkUserName(this.value);">
                    <span id="checkUserNameResult" style="color: red;"></span>
                    </div>
                    <span id="checkUserNameResult" style="color: red;"></span>
                </div>

                </br>

                <div class="kv-item ue-clear">
                    <label><span class="impInfo">*</span>学号</label>
                    <div class="kv-item-content">
                        <input type="text" placeholder="学号" onblur="checkIdNumber(this.value);">
                    <span id="checkIdNumberResult" style="color: red;"></span>
                    </div>
                </div>

                </br>


                
                <div class="kv-item ue-clear">
                	<label>考试科目</label>
                	<div class="kv-item-content">
                    	<select>
                        	<option>英语四级</option>
                            <option>英语六级</option>
                            <option>普通话</option>
                            <option>计算机二级</option>
                        </select>
                    </div>
                </div>

                </br>
                
                <div class="kv-item ue-clear">
                	<label>信息是否确认</label>
                	<div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" checked="checked"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">是</span>
                        </span>
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need" />
                                <span class="radio"></span>
                            </span>
                            <span class="text">否</span>
                        </span>
                        
                    </div>
                </div>

            </div>

            </br>


            <form name = "form1111"   onsubmit = "return checkForm1()">   
                <div class="buttons">
                <input class="button" type="submit" value="提交" />
                </div>
            </form>


        </div>


    </div>


</div>
</body>

</html>
