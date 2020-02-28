<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 引入外部的js，css -->
<title>首页</title>

<link href="<%=basePath%>css/assets-css/amazeui.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>css/assets-css/admin.css" rel="stylesheet"
	type="text/css" />

<link href="<%=basePath%>css/basic-css/demo.css" rel="stylesheet"
	type="text/css" />

<link href="<%=basePath%>css/hmstyle.css" rel="stylesheet"
	type="text/css" />
<script src="<%=basePath%>js/assets-js/jquery.min.js"></script>
<script src="<%=basePath%>js/assets-js/amazeui.min.js"></script>

<!-- 引入自己的外部js -->
<script src="<%=basePath%>sunhaibo-js/personal.js"></script>
</head>
<body>
	<div style="background-color: green">
		<div class="hmtop" style="background-color: green">

			<div class="nav white">
				<div class="logo">
					<img src="<%=basePath%>sunhaibo-images/logo.png" />
				</div>
				<div class="logoBig">
					<img src="<%=basePath%>sunhaibo-images/logo.png" />
				</div>

				<div class="search-bar pr">
					<a name="index_none_header_sysc" href="#"></a>
					<form action="${pageContext.request.contextPath}/HomeController/queryIt.do" method="post">
						<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off" /> 
						<input id="ai-topsearch" class="submit am-btn" value="搜索" type="submit" />
					</form>
				</div>
			</div>

			<div class="clear"></div>
		</div>
		<div class="banner">
			<!--轮播 -->
			<div class="am-slider am-slider-default scoll" data-am-flexslider
				id="demo-slider-0">
				<ul class="am-slides">
					<li class="banner1"><a href="introduction.html"><img src="<%=basePath%>images/ad1.jpg" /></a></li>
					<li class="banner2"><a><img src="<%=basePath%>sunhaibo-images/pu2.jpg" /></a></li>
					<li class="banner3"><a><img src="<%=basePath%>images/ad3.jpg" /></a></li>
					<li class="banner4"><a><img src="<%=basePath%>images/ad4.jpg" /></a></li>

				</ul>
			</div>
			<div class="clear"></div>
		</div>
		<div class="shopNav">
			<div class="slideall" style="background-color: green">

				<div class="long-title">
					<span class="all-goods">全部分类</span>
				</div>

				<!--侧边导航 -->
				<div id="nav" class="navfull">
					<div class="area clearfix">
						<div class="category-content" id="guide_2">

							<div class="category">
								<ul class="category-list" id="js_climit_li">
								<c:forEach var="type1" items="${typeList }">
									<li class="appliance js_toggle relative first">
										<div class="category-info">
											<h3 class="category-name b-category-name">
												<i><img src="<%=basePath%>images/cake.png"></i>
												<a class="ml-22" >${type1.typename}</a>
											</h3><em>&gt;</em>
										</div>
										<div class="menu-item menu-in top">
											<div class="area-in">
												<div class="area-bg">
													<div class="menu-srot">
														<div class="sort-side">
															<dl class="dl-sort">
																<dt>
																	<span title="${type1.typename}">${type1.typename}</span>
																</dt>
																<c:forEach items="${type1.list}" var="type2">
																	<dd>
																		<a title="${type2.typename}" href="#"><span>${type2.typename}</span></a>
																	</dd>
																</c:forEach>
															</dl>
														</div>
														<div class="brand-side">
															<dl class="dl-sort">
																<dt>
																	<span>孙海波生鲜超市</span>
																</dt>
																<dd>
																	
																</dd>
																<dd>
																	<a rel="nofollow" target="_blank" ><span class="red">你买的安心我卖的放心</span></a>
																</dd>
																<dd>
																	<a rel="nofollow"  target="_blank" ><span class="red">本超市生鲜绝对新鲜</span></a>
																</dd>
																<dd>
																	<a rel="nofollow"  target="_blank" ><span class="red">拒接一切花里胡哨，拒绝一切无中生有</span></a>
																</dd>
															</dl>
														</div>
													</div>
												</div>
											</div>
										</div> <b class="arrow"></b>
									</li>
								</c:forEach>
								</ul>
							</div>
						</div>

					</div>
				</div>

				<!-- !--轮播 -->
				<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>



				<div class="marqueen">
					<span class="marqueen-title">用户</span>
					<div class="demo">
						<div class="mod-vip">
								<div class="m-baseinfo" id="personalChage">
									<img class="am-circle am-img-thumbnail" src="/img/${sessionScope.user.phonenumber}.png" alt="未上传头像"  style="width: 100px;height: 100px">
									<a>${sessionScope.user.username}</a> 
								</div>
								<div class="member-logout">
									<button class="am-btn-warning btn" onclick="personalMl()">用户中心</button>
									<button class="am-btn-warning btn">注销</button>
								</div>

								<div class="clear"></div>
							</div>
					</div>
					<li class="title-first"><a target="_blank"> <span>[新闻]</span>毕业设计孙海波完成生鲜超市
					</a></li>
					<li class="title-first"><a target="_blank"> <span>[公告]</span>毕业设计坚决自己完成
					</a></li>
					</ul>
					<div class="advTip">
						<img src="<%= basePath %>sunhaibo-images/logo.png" />
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<script type="text/javascript">
					/* if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					} */
				</script>
	</div>

	<!--菜单侧边的菜单 -->
	<div class=tip>
		<div id="sidebar">
			<div id="wrap">
				<div id="shopCart " class="item ">
					<a
						href="${pageContext.request.contextPath}/LoginController/login.do">
						<span class="message "></span>
					</a>
					<p>购物车</p>
					<p class="cart_num ">555</p>
				</div>
			</div>

		</div>
	</div>
</body>
</html>