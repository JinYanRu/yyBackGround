<%@page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/style.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/ckform.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Js/common.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<body>
<form class="form-inline definewidth m20" action="index.jsp" method="get">  
    外部标题：
    <input type="text" name="rolename" id="rolename"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增</button>
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>外部标题</th>
        <th>外部内容</th>
        <th>内部标题</th>
		<th>内部内容</th>
		<th>图片</th>
        <th>操作</th>
    </tr>
    </thead>
	     <tr>
            <td>工作日历</td>
            <td>管理员</td>
            <td>2017.01.02</td>
			<td>2017.01.02</td>
			<td width="100px"><img src="C:\Users\ZH\Desktop\highlight_bg.jpg"/></td>
            <td>
                  <a href="#">删除</a>
                  
                  
            </td>
        </tr></table>
		</body>
		</html>

<script>
    $(function () {
        
		$('#addnew').click(function(){

				window.location.href="add.jsp";
		 });


    });

	function del(id)
	{
		
		
		if(confirm("确定要删除吗？"))
		{
		
			var url = "index.jsp";
			
			window.location.href=url;		
		
		}
	
	
	
	
	}
</script>