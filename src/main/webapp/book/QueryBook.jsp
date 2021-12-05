<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询图书</title>
</head>
<body>
<a>请输入需要查找书籍的标题的关键字</a>
<form method="post" action="ManageTitlesAction!findTitles.action">
	<input type="text" name="book.title" id="context" value="">
	<input type="submit" name="submit" value="查询图书">
</form>

</body>
</html>