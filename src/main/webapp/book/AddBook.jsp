<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加图书</title>
	<!--<script>
		// 获取当前页面的url
		var url=document.location.href;
		// 判断是否是第一次访问，若是第一次访问执行里面内容，不是就不执行，防止一直重新刷新页面
		if (url.indexOf("T==") == -1) {
			// 重新加载页面并在url后面加一个事件戳，区别是否第一次访问
			window.location.href="<%=request.getContextPath()%>/url?T="+t.getTime();
			// 执行id为all的onclick()点击事件
			window.onload = function () {
				$("#all").trigger("onclick")
			}
		}
	</script>-->
</head>

<body>
<s:action name="ManageTitlesAction!findBookType"/>
${requestScope.successmessage}
<form method="post" action="ManageTitlesAction!addTitle.action">

	<label>
		图书类别：
		<select name="book.typeid">
			<c:forEach items="${requestScope.alltypelist}" var="booktype" varStatus="status">
				<option value="${booktype.codeId}">${booktype.codeName}</option>
			</c:forEach>
		</select>
	</label><br>
	<label>
		书名：
		<input type="text" name="book.title">
	</label>
<br>
<input type="submit" name = "sumbit" value = "增加图书">


</form>
</body>
</html>