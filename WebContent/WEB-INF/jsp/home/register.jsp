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
	<title>商城注册页面</title>
	
	<!-- 引入外部css文件 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="<%= basePath %>css/assets-css/amazeui.min.css" />
		<link href="<%= basePath %>css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="<%=basePath%>sunhaibo-js/register_login.js"></script>
		<script src="<%=basePath%>sunhaibo-js/jquery-3.3.1.js"></script>
</head>
<body>
	<div style="background-color: green">
		<div class="login-boxtitle">
			<a href="home/demo.html"><img alt=""
				src="<%= basePath %>sunhaibo-images/logo.png" /></a>
		</div>

		<div class="res-banner">
			<div class="res-main">
				<div class="login-banner-bg">
					<span></span><img src="<%= basePath %>images/big.jpg" />
				</div>
				<div class="login-box">

					<div class="am-tabs" id="doc-my-tabs">
						<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
							<li class="am-active"><a href="#">手机号注册</a></li>
						</ul>
						<c:if test="${isType == 1}">
							<div class="" style="font-size:10px;color:red">
								${user.username}已经被注册过了，请重新设置用户名称
							</div>
						</c:if>
						<c:if test="${isType == 2}">
							<div class="" style="font-size:10px;color:red">
								${user.phonenumber}已经被注册过了
							</div>
						</c:if>
						<div class="am-tabs-bd">
							<div class="am-tab-panel am-active">
								
								<form action="${pageContext.request.contextPath}/LoginController/register.do" method="post" enctype="multipart/form-data" >
									<div class="user-pass">
										<label for="password"><i class="am-icon-lock"></i></label> 
										<input type="text" name="username" id="username" placeholder="设置用户名(只允许中文)"  onkeyup="name_check(this)" required="required">
										<b id="err_name"></b>
									</div>
									<div class="user-phone">
										<label for="phone"><i class="am-icon-mobile-phone am-icon-md"></i></label> 
										<input type="tel" name="phonenumber" id="phone" placeholder="请输入手机号"  onkeyup="isDecimal(this)" required="required">
									</div>
										<div class="user-pass">
										<label for="password"><i class="am-icon-lock"></i></label> 
										<input type="password" name="password1" id="password" placeholder="设置密码" required="required">
									</div>
									<div class="user-pass">
										<label for="passwordRepeat"><i class="am-icon-lock"></i></label>
										<input type="password" name="password" id="passwordRepeat" placeholder="确认密码" required="required" onkeyup="password_check()">
									</div>
									<div class="am-cf">
										<input type="submit" name="" value="注册" onclick="return submitform()" class="am-btn am-btn-primary am-btn-sm am-fl">
									</div>
								</form>	
								<div class="login-links">
									<label for="reader-me"> <input id="reader-me" name= "check" type="checkbox"> 点击表示您同意商城《孙氏协议》
									</label>
								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>