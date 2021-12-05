<%@ page contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 新 Bootstrap5 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/css/bootstrap.min.css">
<!--  popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/2.9.3/umd/popper.min.js" type=""></script>
<!-- 最新的 Bootstrap5 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/5.1.1/js/bootstrap.min.js" type=""></script>
<html>
  <head>
    <title>小型图书资料管理系统登录页面</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	  <style>
		  .bd-placeholder-img {
			  font-size: 1.125rem;
			  text-anchor: middle;
			  -webkit-user-select: none;
			  -moz-user-select: none;
			  user-select: none;
		  }
		  body {
			  height: 100%;
		  }

		  body {
			  display: flex;
			  align-items: center;
			  padding-top: 40px;
			  padding-bottom: 40px;
			  background-color: #f5f5f5;
		  }

		  .form-signin {
			  width: 100%;
			  max-width: 330px;
			  padding: 15px;
			  margin: auto;
		  }

		  .form-signin .checkbox {
			  font-weight: 400;
		  }

		  .form-signin .form-floating:focus-within {
			  z-index: 2;
		  }

		  .form-signin input[type="text"] {
			  margin-bottom: -1px;
			  border-bottom-right-radius: 0;
			  border-bottom-left-radius: 0;
		  }

		  .form-signin input[type="password"] {
			  margin-bottom: 10px;
			  border-top-left-radius: 0;
			  border-top-right-radius: 0;
		  }

		  @media (min-width: 768px) {
			  .bd-placeholder-img-lg {
				  font-size: 3.5rem;
			  }
		  }
	  </style>
  </head>
  <body class="text-center">

  <main class="form-signin">
	  <form method="post" action="LoginAction" name="frm">
		  <img class="mb-4" src="../assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
		  <h1 class="h3 mb-3 fw-normal">请登录</h1>

		  <div class="form-floating">
			  <input type="text" class="form-control" id="floatingInput" name="username" placeholder="name@example.com">
			  <label for="floatingInput">账号</label>
		  </div>
		  <div class="form-floating">
			  <input type="password" class="form-control" id="floatingPassword" name="userpass" placeholder="name@example.com">
			  <label for="floatingPassword">密码</label>
		  </div>

		  <div class="checkbox mb-3">
			  <label>
				  <input type="checkbox" value="remember-me"> Remember me
			  </label>
		  </div>
		  <button class="w-100 btn btn-lg btn-primary" type="submit" name="login">登录</button>
		  <a href="register.jsp">
		  <button class="w-100 btn btn-lg btn-info" type="button">注册</button>
		  </a>
		  <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
	  </form>
  </main>



  </body>
</html>
