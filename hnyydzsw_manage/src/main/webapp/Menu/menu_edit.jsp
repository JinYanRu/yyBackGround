<%@page contentType="text/html; charset=UTF-8" %>
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
<form id="edit_comm" method="post" class="definewidth m20" action="${pageContext.request.contextPath}/comm/some3.do">
<input type="hidden" name="id" value="${id }" />
<input type="hidden" name="pageno" value="${pageno }" />
<table class="table table-bordered table-hover ">
     <tr>
        <td width="10%" class="tableleft">姓名</td>
        <td><input type="text" name="name" value="${name }"/></td>
    </tr>
    <tr>
        <td class="tableleft">性别</td>
        <td><select onchange="option()" name="sex" id="sex">
        
         <option value="0">男</option>
         <option value="1">女</option>
        </select></td>
    </tr>   
      <tr>
        <td width="10%" class="tableleft">籍贯</td>
        <td><input type="text" name="place" value="${place }"/></td>
    </tr>
    <tr>
        <td class="tableleft">年龄</td>
        <td>
           <input type="text" name="age" value="${age }"/>
        </td>
    </tr>
      <tr>
        <td class="tableleft">手机</td>
        <td>
           <input type="text" name="tel" value="${tel }"/>
        </td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button" onclick="edit_comm()">保存</button> &nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
        </td>
    </tr>
</table>
</form>
</body>
</html>
<script>
    $(function () {       
		$('#backid').click(function(){
				window.location.href="index.html";
		 });

    });
    
    function option(){
    	var nid=document.getElementById("sex").value;
    	$.post("${pageContext.request.contextPath }/comm/some.do",{ sex: sex} );
    }
    
    function edit_comm(){
    	var pageno=document.getElementById("pageno").value;
    	document.getElementById("edit_comm").action="${pageContext.request.contextPath}/comm/some3.do?pageno="+pageno;
    }
</script>