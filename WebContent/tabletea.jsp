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


<title>教师信息</title>
</head>

<body>
<div id="container">
	<div id="hd"></div>
    <div id="bd">
    	<div id="main">
        	<div class="search-box ue-clear">
            	<div class="search-area">
                    <div class="kv-item ue-clear">
                        <label>教职工号：</label>
                        <div class="kv-item-content ue-clear">
                           <input type="text" name="userid">
                        </div>
                    </div>
                  
                </div>
                <div class="search-button">
                	<input class="button" type="button" value="搜索一下" />
                </div>
             </div>
             
            <div class="table">
            	<div class="opt ue-clear">
                	
                	<span class="optarea">
                        <a href="tabletea_tail.jsp" class="add">
                            <i class="icon"></i>
                            <span class="text">添加</span>
                        </a>
                        <a href="javascript:;" class="delete">
                            <i class="icon"></i>
                            <span class="text">删除</span>
                        </a>
                         <a href="tabletea_edi.jsp" class="statistics">
                            <i class="icon"></i>
                            <span class="text">编辑</span>
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
	$('select').select();
	var head = [{
				label: '职称',
				width: 100,
				sortable: 'default',
				name: 'positionname'	
			},{
				label:'教师类型',
				width: 100,
				sortable: 'default',
				name:'teachertype'	
			},{
				label:'手机号',
				width:100,
				name: 'telephone'
			},{
				label: '年龄',
				width: 70,
				name: 'userage'
			},{
				label: '教师工号',
				Width: 100,
				name: 'userid'
			},{
				label: '姓名',
				width: 120,
				name: 'username'
			},{
				label: '民族',
				width:100,
				name: 'national'
			},{
                label: '性别',
                width:100,
                name: 'usersex'
            }
            ];
			
	var tbody = [];	
	$.post("InstructorAjaxAction",{
		'm':'teacherselect'
	},function(data){	
		$.each(data,function(index,element){
			var a = [];
		$.each(element,function(key,value){		
			a.push(value);
		});
		tbody.push(a);
	});	
	},'json');	
					
					
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
