<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户详情</title>
    <link href="css/zTreeStyle/tail.css" rel="stylesheet" type="text/css" />
    <link href="css/zTreeStyle/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/another/jquery.js"></script>
    <script>
        function change() {
            var height01 = $(window).height();
            $(".top").css('height', height01 - 35+"px");
        }
    </script>
</head>

<body style="border-radius: 8px" onload="change()">
<!--<div class="title"><h2>通知详情</h2></div>-->
<form id="form_demo" >
<div class="top">
    <div>
        <div class="top_out">
            <table class="table" >
                <tbody>

                <tr>
                    <td style="border-top: none" >学院代码：<i class="i_start"></i></td>
                    <td   style="text-align: left;border-top: none"><input type="text"  name ="collegeid" minlength="2"  required id="recodeTit"></td>
                    <td>学院名称：</td>
                    <td colspan = "3" style="text-align: left"><input name="collegename" type="text" class="long_text" id="userName"></td>
                </tr>
                <tr>
                    <td style="border-top: none" >专业代码：<i class="i_start"></i></td>
                    <td   style="text-align: left;border-top: none"><input type="text"  name ="deptid" minlength="2"  required id="recodeTit"></td>
                    <td>专业名称：</td>
                    <td colspan = "3" style="text-align: left"><input type="text" class="long_text" id="userName" name="deptname" ></td>
                </tr>
                <tr>
                    <td style="border-top: none" >班级：<i class="i_start"></i></td>
                    <td   style="text-align: left;border-top: none"><input type="text"  name ="classandgrade" minlength="2"  required id="recodeTit"></td>
                </tr>
                
                </tbody>
            </table>
        </div>
    </div>
    <div class="bot_btn">
        <input class="btn" type="submit" value="保存" onclick="RecodeSave()"/>
        <button class="btn btn1"><a href="adminnav.jsp" target="right">返回</a></button>
    </div>
</div>
</form>
</body>
<script type="text/javascript" src="js/another/jquery.js"></script>
<script >
    $.validator.setDefaults({
        submitHandler: function() {
            alert("修改成功");
        }
    });
    $().ready(function() {
        $("#form_demo").validate();
    });
</script>
<script src="js/another/laydate.js"></script>
<script>
    var PROJECTID, TASKTYPE, TASKPHASE,  PERSONID
    !function () {
        laydate.skin('danlan');//切换皮肤，请查看skins下面皮肤库
        laydate({ elem: '#demo' });//绑定元素
        laydate({ elem: '#demo1' });
        laydate({ elem: '#demo2' });//绑定元素
    }();
    function init() {
        if (parent.getCurrentID() != "") {
            $.ajax({
                url: '../TaskRecord/SearchTaskById?taskId=' + parent.getCurrentID(),
                type: 'POST',
                dataType: 'json',
                success: function (result) {
                    var data = result.data;
                    if (data) {
                        PROJECTID = data.PROJECTID
                        PERSONID =data.PERSONID
                        TASKPHASE = data.TASKPHASE;
                        TASKTYPE = data.TASKTYPE;
                        $("#tit").val(data.PROJECTNAME);
                        $("#person").val(data.TASKPHASENAME);


                        $("#demo").val(getFormatTime(data.STARTTIME.substring(6,19)));


                        $("#NOTE").val(data.NOTE);



                    }
                    else {
                        alert("获取失败！");
                    }
                },
                error: function (err) {
                }
            })

        }

    }
    function RecodeSave() {
        $.ajax({
            type: "POST",
            url: "../TaskRecord/UpdateTask",
            data: {
                TASKID: parent.getCurrentID(),
                PROJECTID: PROJECTID,
                STATE: $("#tit").val(),
                STARTTIME: $("#demo").val(),

                PERSONID: PERSONID,
                NOTE: $("#NOTE").val(),
                TASKTYPE: $("#part").val(),
                TASKPHASE: $("#person").val(),

            },
            dataType: "json",
            success: function (result) {
                if (result.data) {
                    alert("保存成功！！！");
                    parent.getRecodeTableData();
                    TaskCancel();
                } else {
                    alert("保存失败！！！")
                }
            }
        })
    }
    function TaskCancel() {
        var index = parent.layer.getFrameIndex(window.name)
        parent.layer.close(index);
    }



    //时间格式化函数
    function getFormatTime(time) {
        var time = new Date(parseInt(time));
        var y = time.getFullYear();
        var m = time.getMonth() + 1;
        var d = time.getDate();
        var h = time.getHours();
        var mm = time.getMinutes();
        var s = time.getSeconds();
        return y + '-' + add0(m) + '-' + add0(d) + ' ' + add0(h) + ':' + add0(mm) + ':' + add0(s);
    }
    function add0(m) { return m < 10 ? '0' + m : m }
</script>


</html>
