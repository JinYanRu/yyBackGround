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
<form action="${pageContext.request.contextPath}/user/some5.do" method="post" class="definewidth m20" id="edit_user">
<input type="hidden" name="id" value="${id }" />
<input type="hidden" name="pageno" value="${pageno }" id="pageno"/>
   <table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">登录名</td>
        <td><input type="text" name="username" value="${username }"/></td>
    </tr>
    <tr>
        <td class="tableleft">密码</td>
        <td><input type="password" name="password" value="${password }"/></td>
    </tr>
    <tr>
        <td class="tableleft">真实姓名</td>
        <td><input type="text" name="name" value="${name }"/></td>
    </tr>
     <tr>
        <td class="tableleft">所属机构</td>
        <td><select name="nid" onchange="option()" id="nid">
        
         <option value="0">--请选择--</option>
         <c:forEach items="${node }" var="node">
         <option value="${node.id }">${node.name }</option>
         
         </c:forEach>
        </select></td>
    </tr>
    <tr>
        <td class="tableleft">邮箱</td>
        <td><input type="text" name="email" value="${email }"/></td>
    </tr>
    <tr>
        <td class="tableleft">状态</td>
        <td>
            <input type="radio" name="status" value="1" checked/> 启用
           <input type="radio" name="status" value="0"/> 禁用
        </td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button">修改</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="${pageContext.request.contextPath}/user/some3.do";
		 });

    });
    
    function edit(){
    	var pageno=document.getElementById("pageno").value;
    	alert(pageno);
    	document.getElementById("edit_user").action="${pageContext.request.contextPath}/user/some5.do?pageno="+pageno;
    }
    
    function option(){
    	var nid=document.getElementById("nid").value;
    	$.post("${pageContext.request.contextPath }/user/some5.do",{ nid: nid} );
    }
</script>