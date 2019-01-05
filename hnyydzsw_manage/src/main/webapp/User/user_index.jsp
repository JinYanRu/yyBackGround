<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>河南引越电子商务——客户意向管理系统</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../Css/style.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>

 

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
<hr>
<h1 align="center">河南引越电子商务——客户意向管理系统</h1>
<hr>
<form class="form-inline definewidth m20" action="${pageContext.request.contextPath }/manage/findAll.do?pageno=1" method="get">    
    用户名称：
    <input type="text" name="name" id="username"class="abc input-default" placeholder="" value="${name }">&nbsp;&nbsp;  
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; 
</form>

<table class="table table-bordered table-hover definewidth m10">
    <thead>
    <tr>
        <th><p align="center">客户姓名</p></th>
        <th><p align="center">客户电话</p></th>
        <th><p align="center">合作意向</p></th>
        <th>操作</th>
    </tr>
    </thead>
    <c:forEach items="${page.datas }" var="manage">
    
	     <tr>
            <td width="90px" ><p style="width: 100%;height: 45px;display: block;line-height: 45px;text-align: center;">${manage.name }</td>
            <td><p style="width: 100%;height: 45px;display: block;line-height: 45px;text-align: center;">${manage.phone }</td>
            <td>${manage.mesage }</td>
            <td>
                             
                <a href="${pageContext.request.contextPath }/manage/remove.do?id=${manage.id }">删除</a>                
            </td>
        </tr>	
    </c:forEach>
</table>
<div class="inline pull-right page">
<c:choose>
				<c:when test="${page.totalPages } == 1">
				 首页 上一页  下一页  末页 第${page.pageno }/${page.totalPages }页 ${page.totalRows }条记录
				</c:when>
				 <c:when test="${page.pageno == 1 }">
				  首页  上一页 <a href="${pageContext.request.contextPath }/manage/findAll.do?pageno=${page.pageno + 1}">下一页 </a><a href="${pageContext.request.contextPath }/manage/findAll.do?pageno=${page.totalPages}">末页 </a>第${page.pageno }/${page.totalPages }页 ${page.totalRows }条记录
				 </c:when>
				 <c:when test="${page.pageno == page.totalPages }">
				<a href="${pageContext.request.contextPath }/manage/findAll.do?pageno=1">首页</a> <a href="${pageContext.request.contextPath }/manage/findAll.do?pageno=${page.pageno - 1}">上一页 </a>  下一页  末页 第${page.pageno }/${page.totalPages }页 ${page.totalRows }条记录
				 </c:when>
				 <c:otherwise>
				 <a href="${pageContext.request.contextPath }/manage/findAll.do?pageno=1"> 首页</a> <a href="${pageContext.request.contextPath }/manage/findAll.do?pageno=${page.pageno - 1}">上一页 </a> <a href="${pageContext.request.contextPath }/manage/findAll.do?pageno=${page.pageno + 1}"> 下一页</a> <a href="${pageContext.request.contextPath }/manage/findAll.do?pageno=${page.totalPages}">末页 </a>第${page.pageno }/${page.totalPages } 页 ${page.totalRows }条记录
				 </c:otherwise>
				</c:choose>
</div>
<style type="text/css">
#newDiv{
text-align:center; /*设置水平居中*/
vertical-align:middle;/*设置垂直居中*/
}
</style>
</body>
</html>

<script>
    $(function () {
        

		$('#addnew').click(function(){

				window.location.href="add.html";
		 });


    });

	function del(id)
	{
		
		
		if(confirm("确定要删除吗？"))
		{
		
			var url = "index.html";
			
			window.location.href=url;		
		
		}
	
	
	
	
	}
</script>