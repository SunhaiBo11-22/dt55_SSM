<%@page import="cn.java.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--引入外部的js，css -->

<link href="<%=basePath%>css/assets-css/admin.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>css/assets-css/admin.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>css/assets-css/amazeui.css" rel="stylesheet" type="text/css">

<link href="<%=basePath%>css/personal.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>css/infstyle.css" rel="stylesheet" type="text/css">
<script src="<%=basePath%>js/assets-js/jquery.min.js" type="text/javascript"></script>
<script src="<%=basePath%>js/assets-js/amazeui.js" type="text/javascript"></script>

<script src="<%=basePath%>sunhaibo-js/personal.js"></script>
<title>用户中心</title>
</head>
<body>
	<div style="background-color: green">
		<header>
			<article>
				<div class="mt-logo">
					<!--悬浮搜索框-->
					<div class="nav white">
						<div class="logoBig">
							<li><img src="<%= basePath %>sunhaibo-images/logo.png" /></li>
						</div>

						<div class="search-bar pr">
							<a name="index_none_header_sysc" href="#"></a>
							<form>
								<input id="searchInput" name="index_none_header_sysc"
									type="text" placeholder="搜索" autocomplete="off"> <input
									id="ai-topsearch" class="submit am-btn" value="搜索" index="1"
									type="submit">
							</form>
						</div>
					</div>

					<div class="clear"></div>
				</div>
	</div>
	</article>
	</header>
	<div class="nav-table">
		<div class="long-title">
			<span class="all-goods">全部分类</span>
		</div>
		<div class="nav-cont">
			<ul>
				<li class="index"><a href="PersonalController/backHome.do">首页</a></li>
			</ul>
		</div>
	</div>
	<b class="line"></b>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-info">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small>
						</div>
					</div>
					<hr />

					<!--头像 -->
					<div class="user-infoPic">

						<div class="filePic">
							<img class="am-circle am-img-thumbnail" style="width: 100px;height: 100px" src="/img/${user.phonenumber}.png" alt="未上传头像"/>
						</div>

						<p class="am-form-help">头像</p>

						<div class="info-m">
							<form enctype="multipart/form-data" action="${pageContext.request.contextPath}/PersonalController/updateFile.do" method="post">
								<div>
									<input type="file" id="userfile" name="userfile" accept="image/*">
								</div>
								<div>
									<button type="submit" >确认上传</button>
								</div>
							</form>
						</div>
					</div>

					<!--个人信息 -->
					<div class="info-main">
						<div class="am-form-group">
							<label for="user-name2" class="am-form-label">用户名</label>
							<div class="am-form-content">
								${sessionScope.user.username}
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-name" class="am-form-label">手机号码</label>
							<div class="am-form-content">
								${sessionScope.user.phonenumber}

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<aside class="menu">
			<ul>
				<li class="person">个人中心</li>
				<li class="person">个人资料
					<ul>
						<li class="active"><a href="HomeController/personal.do" >个人信息</a></li>
						<li><a href="PersonalController/address.do">收货地址</a></li>
					</ul>
				</li>
				<li class="person"><a href="#">我的交易</a>
					<ul>
						<li><a href="order.html">订单管理</a></li>
						<li><a href="change.html">退款售后</a></li>
					</ul></li>
			</ul>

		</aside>
	</div>
</body>
</html>