<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html><head><title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script language="JavaScript" type="text/JavaScript">
  	function showMenu(id){
  		var menu = "menu_" + id;
  		var item=document.getElementById(menu);
  		for(i=1;i<=6;i++){
  			document.getElementById("menu_0" + i).style.display="none";
  		}
  		item.style.display = "block";
  	}
  </script>
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css">
  <!--  popper.min.js 用于弹窗、提示、下拉菜单 -->
  <script src="https://cdn.staticfile.org/popper.js/2.9.3/umd/popper.min.js" type=""></script>
  <!-- 最新的 Bootstrap5 核心 JavaScript 文件 -->
  <script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.min.js" type=""></script>
</head>

<body>
<div class="container list-group">
<table border="1" bgcolor="#a0a0a0" width="100%"><tr>
  <td onClick="showMenu('01');" align="center" >图书管理</td>
</tr></table>
<table border="1" id="menu_01" style="display:block;" bgcolor="#f0f0f0" width="100%">
  <tr><td align="center"><a href="../book/QueryBook.jsp" target="main" title="查询图书" class="list-group-item list-group-item-action">查询图书</a></td></tr>
  <tr><td  align="center"><a href="../book/AddBook.jsp" target="main" title="增加图书" class="list-group-item list-group-item-action">增加图书</a></td></tr>
  <tr><td  align="center"><a href="../book/DeleteBook.jsp" target="main" title="删除图书" class="list-group-item list-group-item-action">删除图书</a></td></tr>
</table>

<!-- -->
<table border="1" bgcolor="#a0a0a0" width="100%"><tr>
  <td  onClick="showMenu('02');" align="center">书目管理</td>
</tr></table>
<table border="1" id="menu_02" style="display:none;" bgcolor="#f0f0f0" width="100%">
  <tr><td align="center"><a href="../code/AddPress.jsp" target="main" title="增加出版社" class="list-group-item list-group-item-action">增加出版社</a></td></tr>
  <tr><td align="center"><a href="../code/QueryPress.jsp" target="main" title="查询出版社" class="list-group-item list-group-item-action">查询出版社</a></td></tr>
  <tr><td align="center"><a href="../code/AddType.jsp" target="main" title="增加图书分类" class="list-group-item list-group-item-action">增加图书分类</a></td></tr>
  <tr><td align="center"><a href="../code/QueryType.jsp" target="main" title="查询图书分类" class="list-group-item list-group-item-action">查询图书分类</a></td></tr>
  <tr><td align="center"><a href="../code/AddUserType.jsp" target="main" title="增加用户类型" class="list-group-item list-group-item-action">增加图书分类</a></td></tr>
  <tr><td align="center"><a href="../code/QueryUserType.jsp" target="main" title="查询用户类型" class="list-group-item list-group-item-action">查询图书分类</a></td></tr>
</table>


<!--  -->
<table border="1" bgcolor="#a0a0a0" width="100%"><tr>
  <td onClick="showMenu('03');" align="center">借阅管理</td>
</tr></table>
<table border="1" id="menu_03" style="display:none;" bgcolor="#f0f0f0" width="100%">
  <tr><td align="center"><a href="../core/AddBorrow.jsp" target="main" title="添加借书" class="list-group-item list-group-item-action">添加借书</a></td></tr>
  <tr><td align="center"><a href="../core/QueryBorrow.jsp" target="main" title="查询借书" class="list-group-item list-group-item-action">查询借书</a></td></tr>
</table>

<!-- -->
<table border="1" bgcolor="#a0a0a0" width="100%"><tr>
  <td  onClick="showMenu('04');" align="center">领导功能</td>
</tr></table>
<table border="1" id="menu_04" style="display:none;" bgcolor="#f0f0f0" width="100%">
  <tr><td align="center"><a href="#" target="main" title="#" class="list-group-item list-group-item-action">#</a></td></tr>
</table>


<!-- -->
<table border="1" bgcolor="#a0a0a0" width="100%"><tr>
  <td onClick="showMenu('05');" align="center">读者功能</td>
</tr></table>
<table border="1" id="menu_05" style="display:none;" bgcolor="#f0f0f0" width="100%">
  <tr><td align="center"><a href="#" target="main" title="#" class="list-group-item list-group-item-action">#</a></td></tr>
</table>

<!-- -->
<table border="1" bgcolor="#a0a0a0" width="100%"><tr>
  <td  onClick="showMenu('06');" align="center">用户管理</td>
</tr></table>
<table border="1" id="menu_06" style="display:none;" bgcolor="#f0f0f0" width="100%">
  <tr><td align="center"><a href="../user/AddUser.jsp" target="main" title="增加用户" class="list-group-item list-group-item-action">增加用户</a></td></tr>
  <tr><td align="center"><a href="../user/QueryUser.jsp" target="main" title="查询用户" class="list-group-item list-group-item-action">查询用户</a></td></tr>
</table>
</div>


</body>
</html>
