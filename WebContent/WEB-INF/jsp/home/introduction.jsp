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

<!-- 导入外部的js，css -->
<link href="<%= basePath %>css/assets-css/admin.css" rel="stylesheet" type="text/css" />
<link href="<%= basePath %>css/assets-css/amazeui.css" rel="stylesheet" type="text/css" />
<link href="<%= basePath %>css/basic-css/demo.css" rel="stylesheet" type="text/css" />
<link type="text/css" href="<%= basePath %>css/optstyle.css" rel="stylesheet" />
<link type="text/css" href="<%= basePath %>css/style.css" rel="stylesheet" />

<script type="text/javascript" src="<%= basePath %>js/basic-js/jquery-1.7.min.js"></script>
<script type="text/javascript" src="<%= basePath %>js/basic-js/quick_links.js"></script>

<script type="text/javascript" src="<%= basePath %>js/assets-js/amazeui.js"></script>
<script type="text/javascript" src="<%= basePath %>js/jquery.imagezoom.min.js"></script>
<script type="text/javascript" src="<%= basePath %>js/jquery.flexslider.js"></script>
<script type="text/javascript" src="<%= basePath %>js/list.js"></script>
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
	<b class="line"></b>
	<div class="listMain">

		<!--分类-->
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
		</div>
		<ol class="am-breadcrumb am-breadcrumb-slash">
			
		</ol>
		<script type="text/javascript">
					$(function() {});
					$(window).load(function() {
						$('.flexslider').flexslider({
							animation: "slide",
							start: function(slider) {
								$('body').removeClass('loading');
							}
						});
					});
				</script>
		<div class="scoll">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li><img src="<%= basePath %>/images/01.jpg" title="pic" /></li>
					</ul>
				</div>
			</section>
		</div>

		<!--放大镜-->

		<div class="item-inform">
			<div class="clearfixLeft" id="clearcontent">

				<div class="box">
					<div class="tb-booth tb-pic tb-s310">
						<img src="<%= basePath %>/images/01_mid.jpg" alt="细节展示放大镜特效" rel="../images/01.jpg" class="jqzoom" />
					</div>
				</div>

				<div class="clear"></div>
			</div>

			<div class="clearfixRight">

				<!--规格属性-->
				<!--名称-->
				<div class="tb-detail-hd">
					<h1>${commodity.comname}</h1>
				</div>
				<div class="tb-detail-list">
					<!--价格-->
					<div class="tb-detail-price">
						<li class="price iteminfo_price">
							<dt>促销价</dt>
							<dd>
								<em>¥</em><b class="sys_item_price">${commodity.price}</b>
							</dd>
						</li>
						<li class="price iteminfo_mktprice">
							<dt>原价</dt>
							<dd>
								<em>¥</em><b class="sys_item_mktprice">${commodity.original}</b>
							</dd>
						</li>
						<div class="clear"></div>
					</div>

					<div class="clear"></div>

					<!--销量-->
					<ul class="tm-ind-panel">
						<li class="tm-ind-item tm-ind-sumCount canClick">
							<div class="tm-indcon">
								<span class="tm-label">累计销量</span><span class="tm-count">${commodity.salesvolume}</span>
							</div>
						</li>
						<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
							<div class="tm-indcon">
								<span class="tm-label">累计评价</span><span class="tm-count">${commodity.stock}</span>
							</div>
						</li>
					</ul>
					<div class="clear"></div>

					<!--各种规格-->
					<dl class="iteminfo_parameter sys_item_specpara">
						<dd>
							<!--操作页面-->

							<div class="theme-popover-mask"></div>

							<div class="theme-popover">
								<div class="theme-span"></div>
								<div class="theme-poptit">
									<a href="javascript:;" title="关闭" class="close">×</a>
								</div>
								<div class="theme-popbod dform">
									<form class="theme-signin" action=""
										method="post">

										<div class="theme-signin-left">
											<br />
											<!-- <div class="theme-options">
												<div class="cart-title">口味</div>
												<input type="radio">香草味 
												<input type="radio">绿茶味
											</div> -->
											<br />
											<div class="theme-options">
												<div class="cart-title number">数量</div>
												<dd>
													<input id="min" class="am-btn am-btn-default" name="" type="button" value="-" /> 
													<input id="text_box" name="" type="text" value="1" max="${commodity.stock}" style="width: 30px;" /> 
													<input id="add" class="am-btn am-btn-default" name="" type="button" value="+" /> 
													<span id="Stock" class="tb-hidden">
														库存<span class="stock">${commodity.stock}</span>件
													</span>
												</dd>

											</div>
											<div class="clear"></div>
										</div>
									</form>
								</div>
							</div>

						</dd>
					</dl>
					<div class="clear"></div>
				</div>

				<div class="pay">
					<div class="pay-opt">
						<a href="home.html"><span class="am-icon-home am-icon-fw">首页</span></a>
						<a><span class="am-icon-heart am-icon-fw">收藏</span></a>

					</div>
					<li>
						<div class="clearfix tb-btn tb-btn-buy theme-login">
							<button class="am-btn-warning btn" id="LikBuy" type="submit">立即购买</button>
						</div>
					</li>
					<li>
						<div class="clearfix tb-btn tb-btn-basket theme-login">
							<button class="am-btn-warning btn" id="LikBuy" type="button">加入购物车</button>
						</div>
					</li>
				</div>

			</div>

			<div class="clear"></div>

		</div>

		<div class="clear"></div>


		<div class="introduce">
			<div class="browse">
				<div class="mc">
				</div>
			</div>
			<div class="introduceMain">
				<div class="am-tabs" data-am-tabs>
					<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
						<li class="am-active"><a href="#"> <span
								class="index-needs-dt-txt">宝贝详情</span></a></li>

						<li><a href="#"> <span class="index-needs-dt-txt">全部评价</span></a>

					</ul>

					<div class="am-tabs-bd">

						<div class="am-tab-panel am-fade am-in am-active">
							<div class="J_Brand">

								<div class="attr-list-hd tm-clear">
									<h4>产品参数：</h4>
								</div>
								<div class="clear"></div>
								<ul id="J_AttrUL">
									<li title="">基本信息</li>
									<li title="">基本信息</li>
								</ul>
								<div class="clear"></div>
							</div>

							<div class="details">
								<div class="attr-list-hd after-market-hd">
									<h4>商品细节</h4>
								</div>
								<div class="twlistNews">
									<!-- 照片的循环起点 -->
									<img src="<%= basePath %>/images/tw1.jpg" /> 
								</div>
							</div>
							<div class="clear"></div>

						</div>

						<div class="am-tab-panel am-fade">

							<div class="actor-new">
								<div class="rate">
									<strong>100<span>%</span></strong><br> <span>好评度</span>
								</div>
							</div>
							<div class="clear"></div>
							<div class="tb-r-filter-bar">
								<ul class=" tb-taglist am-avg-sm-4">
									<li class="tb-taglist-li tb-taglist-li-current">
										<div class="comment-info">
											<span>全部评价</span> <span class="tb-tbcr-num">(动态)</span>
										</div>
									</li>

									<li class="tb-taglist-li tb-taglist-li-1">
										<div class="comment-info">
											<span>好评</span> <span class="tb-tbcr-num">(动态)</span>
										</div>
									</li>

									<li class="tb-taglist-li tb-taglist-li-0">
										<div class="comment-info">
											<span>中评</span> <span class="tb-tbcr-num">(动态)</span>
										</div>
									</li>

									<li class="tb-taglist-li tb-taglist-li--1">
										<div class="comment-info">
											<span>差评</span> <span class="tb-tbcr-num">(动态)</span>
										</div>
									</li>
								</ul>
							</div>
							<div class="clear"></div>

							<ul class="am-comments-list am-comments-list-flip">
							<!-- 循环评论的起点 -->
								<li class="am-comment">
									<a href=""> 
										<img class="am-comment-avatar" src="<%= basePath %>/images/hwbn40x40.jpg" /> <!-- 评论者头像 -->
									</a>

									<div class="am-comment-main">
										<!-- 评论内容容器 -->
										<header class="am-comment-hd">
											<!--<h3 class="am-comment-title">评论标题</h3>-->
											<div class="am-comment-meta">
												<!-- 评论元数据 -->
												<a href="#link-to-user" class="am-comment-author">b***1
													(匿名)</a>
												<!-- 评论者 -->
												评论于
												<time datetime="">2015年11月02日 17:46</time>
											</div>
										</header>

										<div class="am-comment-bd">
											<div class="tb-rev-item " data-id="255776406962">
												<div class="J_TbcRate_ReviewContent tb-tbcr-content ">
													摸起来丝滑柔软，不厚，没色差，颜色好看！买这个衣服还接到诈骗电话，我很好奇他们是怎么知道我买了这件衣服，并且还知道我的电话的！
												</div>
												<div class="tb-r-act-bar">颜色分类：柠檬黄&nbsp;&nbsp;尺码：S</div>
											</div>

										</div>
										<!-- 评论内容 -->
									</div>
								</li>

							</ul>

							<div class="clear"></div>

							<!--分页 -->
							<ul class="am-pagination am-pagination-right">
								<li class="am-disabled"><a href="#">&laquo;</a></li>
								<li class="am-active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
							<div class="clear"></div>

							<div class="tb-reviewsft">
								<div class="tb-rate-alert type-attention">
									购买前请查看该商品的 <a href="#" target="_blank">购物保障</a>，明确您的售后保障权益。
								</div>
							</div>
						</div>
					</div>
				</div>
			<div class="clear"></div>
		</div>
	</div>
	<!--菜单 -->
	<div class=tip>
		<div id="sidebar">
			<div id="wrap">
				<div id="shopCart" class="item">
					<a href="#"> <span class="message"></span>
					</a>
					<p>购物车</p>
					<p class="cart_num">1000</p>
				</div>
				<!--回到顶部 -->
				<div id="quick_links_pop" class="quick_links_pop hide"></div>
			</div>
		</div>
	</div>
</body>
</html>