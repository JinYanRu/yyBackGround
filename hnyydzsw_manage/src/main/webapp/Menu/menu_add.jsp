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
<form method="post" id="comm_add">
<table class="table table-bordered table-hover definewidth m10">
    <tr>
        <td width="10%" class="tableleft">姓名</td>
        <td><input type="text" name="name"/></td>
    </tr>
    <tr>
        <td class="tableleft">性别</td>
        <td><select id="sex" onchange="option()" name="sex">
        
         <option value="0">男</option>
         <option value="1">女</option>
        </select></td>
    </tr>   
      <tr>
        <td width="10%" class="tableleft">籍贯</td>
        <td><input type="text" name="place"/></td>
    </tr>
    <tr>
        <td class="tableleft">年龄</td>
        <td>
           <input type="text" name="age"/>
        </td>
    </tr>
      <tr>
        <td class="tableleft">手机</td>
        <td>
           <input type="text" name="tel"/>
        </td>
    </tr>
    <tr>
        <td class="tableleft"></td>
        <td>
            <button type="submit" class="btn btn-primary" type="button" onclick="add_comm()">保存</button>&nbsp;&nbsp;<button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>
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
    
    function add_comm(){
    	document.getElementById("comm_add").action="${pageContext.request.contextPath}/comm/some.do"
    }
    
    function option(){
    	var nid=document.getElementById("sex").value;
    	$.post("${pageContext.request.contextPath }/comm/some.do",{ sex: sex} );
    }
</script>