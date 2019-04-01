<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.grid.css" />


<title>院系信息</title>
</head>

<body>
<div id="container">
	<div id="hd"></div>
    <div id="bd">
    	<div id="main">
        	<div class="search-box ue-clear">
            	<div class="search-area">
                    
               
               
             
            <div class="table">
            	<div class="opt ue-clear">
                	
                	<span class="optarea">
                        <a href="tabledep_tail.jsp" class="add">
                            <i class="icon"></i>
                            <span class="text">添加</span>
                        </a>
                        <a href=" " class="delete" id="ajaxBtndelete">
                            <i class="icon"></i>
                            <span class="text">删除</span>
                        </a>
               

                    </span>
                </div>
                
                <div class="grid"></div>
                
                <div class="pagination"></div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/jquery.select.js"></script>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript" src="js/jquery.grid.js"></script>
<script type="text/javascript" src="js/WdatePicker.js"></script>
<script type="text/javascript">
	$(function(){
		$('#ajaxBtndelete').on('click',function(){
			/* 发起一个ajax的异步请求 */
			$.post('AjaxAction',{
				'm':'depetmentdelete'				
			},function(data){
				alert(data);
			},'text');
		});
	});
</script>
<script type="text/javascript">
	$('select').select();
	var head = [{
				label: '班级',
				width: 200,
				sortable: 'default',
				name: 'classandgrade'	
			},{
				label:'学院代码',
				width: 200,
				sortable: 'default',
				name:'collegeid'	
			},{
				label:'学院名称',
				width:200,
				name: 'collegename'
			},{
				label: '专业代码',
				width: 200,
				name: 'cdeptid'
			},{
				label: '专业名称',
				minWidth: 200,
				name: 'deptname'
			}
            ];
	var tbody = [];	
	$.post("AjaxAction",{
		'm':'depetmentselect'
	},function(data){			
		$.each(data,function(index,element){
			var a = [];
		$.each(element,function(key,value){		
			a.push(value);
		});
		tbody.push(a);
	});	
	},'json');
	
	/*	$(document).ready(function(){
		 		$.ajax({ 
		 		  type:"POST", 
		 		  url:"AjaxAction?m=select", 
			      success:function(response){			
			          alert(response)
			     },
			      error : function(e) {
			          alert('Failed!: ' + e);
			      }
		 		}); 
		});*/		
		$('.grid').Grid({
			thead: head,
			tbody: null,
			height:400,
			checkbox: {
				single:true	
			},
			operator: {
				type : "normal",
				width : 100	
			},
			sortCallBack : function(name,index,type){
				alert(name+","+index+','+type);
			}
			
		});
	
	$('.grid').Grid('addLoading');
	
	/// 模拟异步
	setTimeout(function(){
		$('.grid').Grid('setData',tbody, head);
	},2000)
	
	
	$('.pagination').pagination(100,{
		callback: function(page){
			alert(page);	
		},
		display_msg: false
	});
	
	$('.search-box input[type=radio]').click(function(e) {
        if($(this).prop('checked')){
			if($(this).attr('data-define') === 'define'){
				$('.define-input').show();
			}else{
				$('.define-input').hide();
			}
		}
    });
</script>

</html>
