<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort() +request.getContextPath()+"/";
%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath %>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>商城登录页面</title>
	
	<!-- 登录页面引入的外部css -->
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="<%= basePath %>css/assets-css/amazeui.css" />
		<link href="<%= basePath %>css/dlstyle.css" rel="stylesheet" type="text/css">
		
		<script src="<%=basePath%>sunhaibo-js/register_login.js"></script>
		<script src="<%=basePath%>sunhaibo-js/jquery-3.3.1.js"></script>
</head>
<body>
<div style="background-color: green">
	<div class="login-boxtitle">
			<a href="home.html"><img alt="logo" src="<%= basePath %>sunhaibo-images/logo.png" /></a>
		</div>

		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg">
					<span></span><img src="<%=basePath%>images/big.jpg" />
				</div>
				<div class="login-box">
					<h3 class="title">登录商城</h3>
					<div class="clear"></div>
					<div class="login-form">
						<form action="${pageContext.request.contextPath}/LoginController/login.do" method="post">
							<div class="user-name">
								<label for="user"><i class="am-icon-user"></i></label> 
								<input type="text" name="username" id="user" onkeyup="return isDecimal(this)" placeholder="输入注册手机号码" >
							</div>
							<div class="user-pass">
								<label for="password"><i class="am-icon-lock"></i></label> 
								<input type="password" name="password" id="password" placeholder="请输入密码">
							</div>
								<p style="color: red;font-size: 8">${errorname}</p>
							
							<div class="am-cf">
								<input type="submit" name="" value="登 录" onclick="return loginCheck()" class="am-btn am-btn-primary am-btn-sm">
							</div>
						</form>
					</div>

					<div class="login-links">
						<label for="remember-me"></label> <a href="#" class="am-fr">忘记密码</a> 
						<a href="LoginController/toRegister.do" class="zcnext am-fr am-btn-default">注册</a> <br/>
					</div>

				</div>
			</div>
		</div>


		<!-- <div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="# ">孙海波科技</a>
								<b>|</b>
								<a href="# ">商城首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
·					</div>	 -->
	</div>
</body>
</html>