<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link title="style1" rel="stylesheet" href="css/style5.css" type="text/css" />
<script type="text/javascript" src="js/jquery-2.1.4.js"></script>
<script type="text/javascript">
	$(function(){
		$('#field4').on('blur',function(){
			$('#container').empty();
			var reg=/^\d{6,18}$/;
			var info="学号输入有误"
			if(!reg.test($('#field4').val())){
				$('<span></span>').append(info).appendTo('#container');
//				$('#field4').focus();
				$('#field4').val('');
				 
				return false;
			}
		
		});
		
		$('#field4').on('focus',function(){
			$('#container').empty();
		});
		
		
	});
</script>
</head>
<body>
    <div class="style_changer">
    	<div class="style_changer_text"></div>

    </div>

	<div class="form_content">
    <form id="test" action="InputGradeAction" method="get">
    
    <fieldset>
        <legend>录入成绩信息</legend>
        
        <div class="form-row">
            <div class="field-label"><label for="field4">学号</label>:</div>
            <div class="field-widget"><input name="field4" id="field4" class="required" title="Enter your name" /></div><span id="container"></span>
        </div>
        
        <div class="form-row">
            <div class="field-label"><label for="field5">姓名</label>:</div>
            <div class="field-widget"><input name="field5" id="field5" class="required validate-email" title="Enter your name" /></div>
        </div> 
        
        <div class="form-row">
            <div class="field-label"><label for="field6">选择科目</label>:</div>
            <div class="field-widget">
                <select id="field6" name="field6" class="validate-selection" title="Choose your department">
                    <option>数据库</option>
                    <option>数据结构</option>
                    <option>离散数学</option>
                    <option>C语言</option>
                </select>
            </div>
        </div>
           
        <div class="form-row">
            <div class="field-label"><label for="field7">课程号</label>:</div>
            <div class="field-widget"><input type="text" name="field7" id="field7" class="required validate-password" /></div>
        </div>
          
        <div class="form-row">
            <div class="field-label"><label for="field9">成绩</label>:</div>
            <div class="field-widget"><input type="text" name="field8" id="field8" class="required validate-password-confirm"/></div>
        </div> 
      
      
    </fieldset>  
    <fieldset>
        <legend class="optional">详细信息</legend>
      
        
        <div class="form-row">
            
        </div>

        
        <div class="form-row-select">


        </div>
        <div class="form-row">
            <div class="field-label"><label for="field12">备注</label>:</div>
            <div class="field-widget"><textarea class="optional"></textarea></div>
        </div>
        
    </fieldset>
    <input type="submit" class="submit" value="Submit" /> <input class="reset" type="button" value="Reset" onclick="valid.reset(); return false" />
    <input type="hidden" name="method" value=""> 
    </form>
   </div>
</body>
</html>