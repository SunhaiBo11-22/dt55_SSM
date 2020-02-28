<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册成功</title>
		<script>
			setTimeout('window.location="/dt55_SSM/Login.jsp"',3000);
		</script>

</head>
<body>
	你已经注册成功，三秒钟够自动跳转到登录页面>>如果没有跳转<a href="${pageContext.request.contextPath}/LoginController/login.do">点击</a>此处跳转
</body>
</html>