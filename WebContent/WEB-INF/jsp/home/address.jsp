<%@page import="org.springframework.ui.Model"%>
<%@page import="java.util.List"%>
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
<link href="<%=basePath%>css/assets-css/amazeui.css" rel="stylesheet" type="text/css">

<link href="<%=basePath%>css/personal.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>css/addstyle.css" rel="stylesheet" type="text/css">

<script src="<%=basePath%>js/assets-js/jquery.min.js" type="text/javascript"></script>
<script src="<%=basePath%>js/assets-js/amazeui.js" type="text/javascript"></script>

<script src="<%=basePath%>sunhaibo-js/address.js"></script>
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
		</article>
	</header>
</div>
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
				<div class="user-address">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small></div>
						</div>
						<hr/>
						<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
							<c:forEach var="address" items="${sessionScope.addresses}">
								<li class="user-addresslist">
									<p class="new-tit new-p-re">
										<span class="new-txt">${address.userName }</span>
										<span class="new-txt-rd2">${address.userPhone}</span>
									</p>
									<div class="new-mu_l2a new-p-re">
										<p class="new-mu_l2cw">
											<span class="title">地址：</span>
											<span class="province">${address.province}</span>省
											<span class="city">${address.city}</span>市
											<span class="dist">${address.dist}</span>区
											<span class="street">${address.street}</span></p>
									</div>
									<div class="">
										<button type="button" onclick="deleteAddress(${address.id})">删除</button>
									</div>
								</li>
							</c:forEach>
							
						</ul>
						<div class="clear"></div>
						<a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
						<!--例子-->
						<div class="am-modal am-modal-no-btn" id="doc-modal-1">

							<div class="add-dress">

								<!--标题 -->
								<div class="am-cf am-padding">
									<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
								</div>
								<hr/>

								<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
									<form class="am-form am-form-horizontal" action="${pageContext.request.contextPath}/PersonalController/addtheAddress.do" method="post">

										<div class="am-form-group">
											<label for="user-name" class="am-form-label">收货人</label>
											<div class="am-form-content">
												<input type="text" id="user-name" name="userName" placeholder="收货人">
											</div>
										</div>

										<div class="am-form-group">
											<label for="user-phone" class="am-form-label">手机号码</label>
											<div class="am-form-content">
												<input type="text" id="user-name" name="userPhone" placeholder="电话号">
											</div>
										</div>
										<div class="am-form-group">
											<label for="user-address" class="am-form-label">所在地</label>
											<div class="am-form-content address">
											
												<select id="s_province" name="province"></select>  
												
												<select id="s_city" name="city" ></select>  
												
												<select id="s_county" name="dist"></select>
																		
											</div>
										</div>
										<div class="am-form-group">
											<label for="user-intro" class="am-form-label">详细地址</label>
											<div class="am-form-content">
												<input type="text" id="user-name" name="street" placeholder="详细地址">
											</div>
										</div>

										<div class="am-form-group">
											<button class="am-btn am-btn-danger" type="submit" >保存</button>
										</div>
									</form>
									<script type="text/javascript">_init_area();</script>	
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript">
						$(document).ready(function() {							
							$(".new-option-r").click(function() {
								$(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
							});
							
							var $ww = $(window).width();
							if($ww>640) {
								$("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
							}
							
						})
					</script>
			</div>
		</div>

		<aside class="menu">
			<ul>
				<li class="person">个人中心</li>
				<li class="person">个人资料
					<ul>
						<li><a href="HomeController/personal.do" >个人信息</a></li>
						<li class="active"><a href="PersonalController/address.do">收货地址</a></li>
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