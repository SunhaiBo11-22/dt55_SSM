<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
<title>搜索页面</title>

<!-- 导入外部js，css -->
<link href="<%=basePath %>css/assets-css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath %>css/assets-css/admin.css" rel="stylesheet" type="text/css" />

<link href="<%=basePath %>css/basic-css/demo.css" rel="stylesheet" type="text/css" />

<link href="<%=basePath %>css/seastyle.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="<%= basePath %>js/basic-js/jquery-1.7.min.js"></script>
<script type="text/javascript" src="<%= basePath %>js/script.js"></script>

<script type="text/javascript" src="<%= basePath %>sunhaibo-js/search.js"></script>
</head>
<body>
	<!--悬浮搜索框-->
	<div style="background-color: green">
		<div class="nav white">
			<div class="logo">
				<img src="<%=basePath %>images/logo.png" />
			</div>
			<div class="logoBig">
				<li><img src="<%=basePath%>sunhaibo-images/logo.png" /></li>
			</div>

			<div class="search-bar pr">
				<a name="index_none_header_sysc" href="#"></a>
				<form action="${pageContext.request.contextPath}/HomeController/queryIt.do" method="post">
					<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off" /> 
					<input id="ai-topsearch" class="submit am-btn" value="搜索" type="submit" />
				</form>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<div class="search">
		<div class="search-list">
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
			<div class="am-g am-g-fixed">
				<div class="am-u-sm-12 am-u-md-12">
					<div class="search-content">
						<div class="sort">
							<li class="first"><a title="综合">综合排序</a></li>
							<li><a title="销量">销量排序</a></li>
							<li><a title="价格">价格优先</a></li>
						</div>
						<div class="clear"></div>

						<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
						
							<c:forEach items="${commodities}" var="items">
								<li>
									<div class="i-pic limit">
										<img src="<%= basePath %>images/imgsearch1.jpg" style="CURSOR: hand" onclick="intoCommodity(${items.id})"/>
										<p class="title fl">${items.comname}</p>
										<p class="price fl">
											<b>¥</b> <strong>${items.price}</strong>
										</p>
										<p class="number fl">
											销量<span>${items.salesvolume}</span>
										</p>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="clear"></div>
					<!--分页 -->
					<ul class="am-pagination am-pagination-right">
						<li class="am-disabled"><a href="#">&laquo;</a></li>
						<li class="am-active"><button>1</button></li>
						<li><button>2</button></li>
						<li><button>3</button></li>
						<li><button>4</button></li>
						<li><button>5</button></li>
						<li><a href="#">&raquo;</a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>
	<div class=tip>
		<div id="sidebar">
			<div id="wrap">
				<div id="prof" class="item">
					<a href="#"> <span class="setting"></span>
					</a>
					<div class="ibar_login_box status_login">
						<div class="avatar_box">
							<p class="avatar_imgbox">
								<img src="<%= basePath %>images/no-img_mid_.jpg" />
							</p>
							<ul class="user_info">
								<li>用户名：sl1903</li>
								<li>级&nbsp;别：普通会员</li>
							</ul>
						</div>
						<div class="login_btnbox">
							<a href="#" class="login_order">我的订单</a> <a href="#"
								class="login_favorite">我的收藏</a>
						</div>
						<i class="icon_arrow_white"></i>
					</div>

				</div>
				<div id="shopCart" class="item">
					<a href="#"> <span class="message"></span>
					</a>
					<p>购物车</p>
					<p class="cart_num">100</p>
				</div>
			</div>
		</div>
	</div>
		
	<script>
			window.jQuery || document.write('<script src="basic/js/jquery-1.9.min.js"><\/script>');
		</script>
	<script type="text/javascript" src="<%= basePath %>js/basic-js/quick_links.js"></script>

	<div class="theme-popover-mask"></div>
</body>
</html>