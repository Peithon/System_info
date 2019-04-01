<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.grid.css" />
</head>
<body>
<div id="container">
	<div id="hd"></div>
    <div id="bd">
    	<div id="main">
        	<div class="search-box ue-clear">
            	<div class="search-area">
                    <div class="kv-item ue-clear">
                        <label>课程号：</label>
                        <div class="kv-item-content ue-clear">
                            <input type="text" style="width:150px; height:27px;"/>
                        </div>
                    </div>
                    <div class="kv-item ue-clear">
                        <label>选择类型:</label>
                        <div class="kv-item-content">
                            <select>
                                <option>必修</option>
                                <option>选修</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="search-button">
                	<span>&nbsp;&nbsp;&nbsp;</span>
                	<input class="button" type="button" value="搜索一下" />
                </div>
             </div>
             
            <div class="table">
            	
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
				label: '课程号',
				width: 100,
				sortable: 'default',
				name: 'id'	
			},{
				label:'课程名',
				width: 150,
				sortable: 'default',
				name:'name'	
			},{
				label:'学分',
				width:150	
			},{
				label: '院系',
				width: 150	
			},{
				label: '类型',
				width: 120	
			}];
			
	var oper = [
				]
	var tbody = [
					["201301","admin","数据库","06","98","已审核",oper], 
					["201302","uimaker","离散数学","07","99","已审核",oper],
					["201301","admin","数据结构","08","50","已审核",oper],
					["201301","admin","数据库","09","60","已审核",oper]	]
					
					
		$('.grid').Grid({
			thead: head,
			tbody: null,
			height:400,

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