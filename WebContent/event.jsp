<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/index.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
<title>首页</title>
</head>
<body>
<div id="container">
	<div id="hd">
    </div>
    <div id="bd">
    	<div id="main">
           <iframe width="214" scrolling="no" height="54" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=42&icon=1&num=3"></iframe>
            
            <ul class="content-list">
            	<c:forEach items="${info }" var="text1">
					    <li class="content-item system">
	                	<h2 class="content-hd">
	                    	<span class="opt">
	                            <ul class="nav navbar-nav navbar-right"> 
	                                <li><a href="TextAction?method=deleteinfo&title=${text1.title }"><span class="glyphicon glyphicon-log-in"></span> 删除</a></li> 
	                            </ul>
	                        </span>
	                    	<span class="title">${text1.title }</span>
	                    </h2>
	                    <div class="content-bd">
	                        <span>${text1.message }</span>
	                    </div>
	                </li> 
			    </c:forEach>           	                                  
            </ul>
        </div>
    </div>
</div>
</body>

<script type="text/javascript">
	var minwidth = 282;
	resizeWidth();
	$(top.window).resize(function(e) {
       resizeWidth();
    });
	$(function() {
		$( ".content-list" ).sortable({
		  revert: true,
		  handle:'h2'
		});
		
	});
	
function resizeWidth (){
	if($('#main').width() / 3 < minwidth){
		$('.content-item').width(($('#main').width() / 2) - 15);
	}else{
		$('.content-item').width(($('#main').width() / 3) - 15);	
	}
		
}
</script>
</html>
