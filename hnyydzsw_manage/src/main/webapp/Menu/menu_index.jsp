<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
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
<form class="form-inline definewidth m20" action="menu_index.jsp" method="get">  
    姓名：
    <input type="text" name="rolename" id="rolename"class="abc input-default" placeholder="请输入员工姓名进行查询">&nbsp;&nbsp;  
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">添加员工</button>
</form>
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        <th>姓名</th>
        <th>性别</th>
        <th>籍贯</th>
        <th>年龄</th>
        <th>手机</th>
        <th>管理</th>
    </tr>
    </thead>
    <c:forEach items="${page.datas }" var="comm">
	     <tr>
            <td>${comm.name }</td>
            <td>${comm.sex == 1 ? "女" : "男"}</td>
            <td>${comm.place }</td>
            <td>${comm.age }</td>
            <td>${comm.tel }</td>
            <td>
                  <a href="#" onclick="edit(${comm.id},${page.pageno })">修改</a>
                   <a href="#" onclick="del(${comm.id},${page.pageno })">删除</a>
                  
            </td>
        </tr>
        </c:forEach>
        </table>

<div class="inline pull-right page">
<c:choose>
				<c:when test="${page.totalPages == 1}">
				 首页 上一页  下一页  末页 第${page.pageno }/${page.totalPages }页 ${page.totalRows }条记录
				</c:when>
				
				 <c:when test="${page.pageno == 1 }">
				  首页  上一页 <a href="${pageContext.request.contextPath }/comm/some1.do?pageno=${page.pageno + 1}">下一页 </a><a href="${pageContext.request.contextPath }/comm/some1.do?pageno=${page.totalPages}">末页 </a>第${page.pageno }/${page.totalPages }页 ${page.totalRows }条记录
				 </c:when>
				 
				 <c:when test="${page.pageno == page.totalPages }">
				<a href="${pageContext.request.contextPath }/comm/some1.do?pageno=1">首页</a> <a href="${pageContext.request.contextPath }/comm/some1.do?pageno=${page.pageno - 1}">上一页 </a>  下一页  末页 第${page.pageno }/${page.totalPages }页 ${page.totalRows }条记录
				 </c:when>
				 
				 <c:otherwise>
				 <a href="${pageContext.request.contextPath }/comm/some1.do?pageno=1"> 首页</a> <a href="${pageContext.request.contextPath }/comm/some1.do?pageno=${page.pageno - 1}">上一页 </a> <a href="${pageContext.request.contextPath }/comm/some1.do?pageno=${page.pageno + 1}"> 下一页</a> <a href="${pageContext.request.contextPath }/comm/some1.do?pageno=${page.totalPages}">末页 </a>第${page.pageno }/${page.totalPages } 页 ${page.totalRows }条记录
				 </c:otherwise>
				</c:choose>
</div>
</body>
</html>
<script>
    $(function () {
		$('#addnew').click(function(){
				window.location.href="${pageContext.request.contextPath}/Menu/menu_add.jsp";
		 });
    });

	function del(id,pageno)
	{
		if(confirm("确定要删除吗？"))
		{
			location.href="${pageContext.request.contextPath}/comm/some4.do?id="+id+"&pageno="+pageno;
		}
	}
	
	function edit(id,pageno){
		location.href="${pageContext.request.contextPath}/comm/some2.do?id="+id+"&pageno="+pageno;
	}
</script>