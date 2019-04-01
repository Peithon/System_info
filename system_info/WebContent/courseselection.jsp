<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/WdatePicker.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/table.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.grid.css" />


<title>网上选课</title>
</head>

<body>
<div id="container">
	<div id="hd"></div>
    <div id="bd">
    	<div id="main">
        	<div class="search-box ue-clear">
            	<div class="search-area">
                    <div class="kv-item ue-clear">
                        <label>选择时间：</label>
                        <div class="kv-item-content ue-clear">
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">全部</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近3天</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一周</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一月</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" data-define="define" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">自定义</span>
                            </span>
                            <span class="define-input">
                            	<input type="text" placeholder="开始时间" />
                                <span class="division"></span>
                                <input type="text" placeholder="结束时间" />
                            </span>
                        </div>
                    </div>
                    <div class="kv-item ue-clear">
                        <label>所在院系:</label>
                        <div class="kv-item-content">
                            <select>
                                <option>计算机科学与技术</option>
                                <option>软件专业</option>
                                <option>网络专业</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="search-button">
                	<input class="button" type="button" value="搜索一下" />
                </div>
             </div>
             
            <div class="table">     
                </div>
                
                <div class="grid"></div>
                
                <div class="pagination"></div>
            </div>


        </div>
    </div>
</div>
<div class="buttons">
                <input class="button" type="button" value="确认" />
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
				label:'任课教师',
				width:150	
			},{
				label: '考试类型',
				width: 150	
			},{
				label: '课程属性',
				minWidth: 200	
			},{
				label: '学分',
				width: 120	
			}];
			
	var oper = [{label:'删除',onclick:function(){
						alert('删除');
				}}]
	var tbody = [
					["01","高等数学","张文正","考试","必修","5",oper], 
					["02","线性代数","李白","考试","必修","4",oper],
					["03","离散数学","李小牛","考试","必修","3.5",oper],
					["04","数据库","王玉","考试","必修","4",oper], 
					["05","数字逻辑","李玲华","考试","必修","3",oper],
					["06","计算机组成原理","李玲华","考试","必修","2.5",oper],
					["07","计算机网络","云建","考试","必修","3",oper], 
					["08","web开发","代启国","考查","任选","3.5",oper],
					["09","人工智能原理","代启国","考试","任选","3",oper],
					["10","游戏入门","王伟","考试","任选","4",oper], 
					["11","物联网技术概论","崔永瑞","考试","任选","3",oper],
					["12","jsp&servlet","郑海旭","考试","任选","4",oper],
					["13","java","郑海旭","考查","必修","4.5",oper], 
					["14","c语言","崔永瑞","考试","必修","3.5",oper],
					["15","数据结构","孟佳娜","考试","必修","4",oper]]
					
					
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
