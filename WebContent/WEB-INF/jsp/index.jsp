<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>华农有货</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/css/layui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/index.css">
</head>
<body>
	<!--头-->
	<header id="SE3_header">
		<!--上部分-->
		<div class="top-bar">
			<div class="container">
				<div class="row">
					<div class="col-md-7 text-muted">
						<p>好的生活，没那么贵</p>
					</div>
					<div class="col-md-5 top-right">
						<a href="${pageContext.request.contextPath }/user/signup"
							id="signup">注册</a> <a
							href="${pageContext.request.contextPath }/user/signin"
							id="signin">登录</a> <a
							href="${pageContext.request.contextPath }/user/mycenter"
							id="myCenter">个人中心</a> <a
							href="${pageContext.request.contextPath }/user/signout"
							id="signout">注销</a>

						<div class="shopping-cart">
							<i class="glyphicon glyphicon-shopping-cart"></i><i>购物车</i>
							<div class="cart-show-area">
								<div class="cart-top-area">
									<c:forEach items="${currentCustomer.cart.cartDetailList}" var="cartList" varStatus="status">
										<input type="hidden" value="${cartList.good.goodsID}" class="cartGoodsID"/>
										<div class="cart-item">
										<input type="hidden" value="${cartList.good.goodsID}" class="cartGoodsID"/>
										<div class="cart-img">
											<img
												src="${cartList.good.pictureList[0].picturePath}"
												alt="" height="50">
										</div>
										<div class="cart-name">
											<a href="${pageContext.request.contextPath }/products/detail/${cartList.good.goodsID}" title="${cartList.good.goodsName}">${cartList.good.goodsName}</a>
										</div>
										<div class="cart-introduce text-muted">${cartList.good.goodsSpecify}</div>
											<div class="cart-number">
										   <span class="glyphicon glyphicon-minus"></span>  
											x <span class="indentNumber">${cartList.goodsCount}</span>
											<span class="glyphicon glyphicon-plus"></span>
										</div>
										<div class="cart-price text-danger">
																					<input type="hidden" value="${cartList.good.goodsPrice}">
											￥ <span class="indentMoney">${cartList.totalPrice}</span>
										</div>
										<div class="close">
											<i class="layui-icon layui-icon-close"></i>
										</div>
									</div>
								
									</c:forEach>
								</div>
								<div class="cart-bottom-area">
									<div class="allPrice">
										<div class="pricedetail">商品总价 ：</div>
										<div class="pricedetailnumber">
											<span class="priceNum text-danger">￥${currentCustomer.cart.totalPrice}</span>
										</div>
									</div>
									<div class="buy">
										<a href= "${pageContext.request.contextPath }/user/auction"><button id="cart-buy" class="layui-btn layui-btn-primary">去付款</button>
										</a>
									</div>
								</div>

							</div>
						
						</div>

					</div>
				</div>
			</div>
		</div>
		<!--中间部分-->
		<div class="boxshadow">
			<div class="top-main">
				<div id="logo_img">
					<img src="${pageContext.request.contextPath }/img/icon/logo.png"
						alt="logo">
				</div>
				<div id="serech_input">
					<input type="text" placeholder="雅迪电动车只要999"> 
					<a href="${pageContext.request.contextPath }/products/searchitems" class="glyphicon glyphicon-search"></a>
				</div>
			</div>
			<!--下部分-->
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="home active"><a
									href="${pageContext.request.contextPath }">首页<span
										class="sr-only">首页</span></a></li>
								<li class="bag-li"><a
									href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=-1">箱包配饰</a>
									<div class="bag-li container downmenu">
										<ul class="nav navbar-nav">
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=1"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/xingli.png"
															alt=""><span>行李箱包</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=2"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/nanxing.png"
															alt=""><span>男士箱包</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=3"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/nvxing.png"
															alt=""><span>女士箱包</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=4"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/qianbao.png"
															alt=""><span>钱包配件</span>
													</div></a></li>
										</ul>
									</div></li>

								<li class="cloth-li"><a
									href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=-1">服装</a>
									<div class="cloth-li container downmenu">
										<ul class="nav navbar-nav">
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=5"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/Tshirt.png"
															alt=""><span>清爽短袖</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=6"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/shirt.png"
															alt=""><span>时尚衬衫</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=7"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/dress.png"
															alt=""><span>性感长裙</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=8"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/ku.png"
															alt=""><span>潮流裤类</span>
													</div></a></li>
										</ul>
									</div></li>
								<li class="food-li"><a
									href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=-1">饮食</a>
									<div class="food-li container downmenu">
										<ul class="nav navbar-nav">
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=9"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/xiaochi.png"
															alt=""><span>美味零食</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=10"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/shuiguo.png"
															alt=""><span>水果坚果</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=11"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/rou.png"
															alt=""><span>新鲜肉类</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=12"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/yinliao.png"
															alt=""><span>饮料酒水</span>
													</div></a></li>
										</ul>
									</div></li>
								<li class="sport-li"><a
									href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=-1">文体</a>
									<div class="sport-li container downmenu">
										<ul class="nav navbar-nav">
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=13"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/wenju.png"
															alt=""><span>精美文具</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=14"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/huwai.png"
															alt=""><span>运动户外</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=15"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/yinyue.png"
															alt=""><span>音乐相关</span>
													</div></a></li>
											<li><a
												href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=16"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/yinshi.png"
															alt=""><span>影视相关</span>
													</div></a></li>
										</ul>
									</div></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</header>

	<!--轮播图-->
	<section id="SE3_carousel">
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"
					class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
				<li data-target="#carousel-example-generic" data-slide-to="4"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="${pageContext.request.contextPath }/img/icon/lunbo1.jpg"
						alt="...">
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath }/img/icon/lunbo2.jpg"
						alt="...">
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath }/img/icon/lunbo3.jpg"
						alt="...">
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath }/img/icon/lunbo4.jpg"
						alt="...">
				</div>
				<div class="item">
					<img src="${pageContext.request.contextPath }/img/icon/lunbo5.jpg"
						alt="...">
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</section>

	<!--hot-->
	<section id="SE3_hot">
		<div class="container">
			<div class="row">
				<div class="Title">
					<h1>人气推荐</h1>
				</div>
				<div class="col-md-4 left">
					<div class="Lagerimg">
						<a href="products/detail"> <img
							src="${pageContext.request.contextPath }/img/icon/lagerimg.png"
							alt="">
						</a>
					</div>
					<div class="Lagerimg-title">
						<div class="Lagerimg-title-top">
							<span>限时购</span>
						</div>
						<div class="Lagerimg-title-name">
							<h4>平滑密编清凉仿藤席</h4>
							<div class="Lagerimg-title-price">
								<span class="text-danger">¥</span><span class="text-danger">269.1</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8 right">
					<div class="container">
						<div class="row">
							<div class="col-md-3 product">
								<div class="littleimg">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/img/product/product1.png"
										alt="">
									</a>
								</div>
								<div class="littleimg-title">
									<div class="littleimg-title-top">
										<span>限时购</span>
									</div>
									<div class="littleimg-title-name">
										<h4>智造N520除螨吸尘器</h4>
										<div class="littleimg-title-price">
											<span class="text-danger">¥</span><span class="text-danger">499</span>
										</div>
									</div>
								</div>
								<div class="littleimg">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/img/product/product2.png"
										alt="">
									</a>
								</div>
								<div class="littleimg-title">
									<div class="littleimg-title-top">
										<span>满赠</span>
									</div>
									<div class="littleimg-title-name">
										<h4>玲珑柑普</h4>
										<div class="littleimg-title-price">
											<span class="text-danger">¥</span><span class="text-danger">85</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 product">
								<div class="littleimg">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/img/product/product3.png"
										alt="">
									</a>
								</div>
								<div class="littleimg-title">
									<div class="littleimg-title-top">
										<span>满折</span>
									</div>
									<div class="littleimg-title-name">
										<h4>美国制造除甲醛空气净化剂227g</h4>
										<div class="littleimg-title-price">
											<span class="text-danger">¥</span><span class="text-danger">45</span>
										</div>
									</div>
								</div>
								<div class="littleimg">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/img/product/product4.png"
										alt="">
									</a>
								</div>
								<div class="littleimg-title">
									<div class="littleimg-title-top">
										<span>黄大仙同款</span>
									</div>
									<div class="littleimg-title-name">
										<h4>全净皓齿变速式声波电动牙刷</h4>
										<div class="littleimg-title-price">
											<span class="text-danger">¥</span><span class="text-danger">85</span>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-3 product">
								<div class="littleimg">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/img/product/product5.png"
										alt="">
									</a>
								</div>
								<div class="littleimg-title">
									<div class="littleimg-title-top">
										<span style="background-color: #fff;"></span>
									</div>
									<div class="littleimg-title-name">
										<h4>蛋壳杯旅行茶具套装</h4>
										<div class="littleimg-title-price">
											<span class="text-danger">¥</span><span class="text-danger">499</span>
										</div>
									</div>
								</div>
								<div class="littleimg">
									<a href="#"> <img
										src="${pageContext.request.contextPath }/img/product/product6.png"
										alt="">
									</a>
								</div>
								<div class="littleimg-title">
									<div class="littleimg-title-top">
										<span style="background-color: #fff;"></span>
									</div>
									<div class="littleimg-title-name">
										<h4>24寸拉杆箱</h4>
										<div class="littleimg-title-price">
											<span class="text-danger">¥</span><span class="text-danger">85</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<c:forEach items="${indexs}" var="item" varStatus="status">
		<section class="SE3_product">
			<div class="container">
				<div class="row">
					<div class="producttitle">
						<h1>${item.mainType }</h1>
						<ol class="breadcrumb">
							<c:forEach items="${item.secondaryTypes}" var="secondaryType"
								varStatus="status">
								<li class="text-muted"><a
									href="${pageContext.request.contextPath }/products/list?categoryId=${item.mainTypeId}&subcategoryId=${secondaryType.goodsSecondaryTypeID}"
									class="text-muted">${secondaryType.goodsSecondaryType}</a></li>
							</c:forEach>
						</ol>
					</div>
					<div class="col-md-12">
						<img src="${item.mainTypePicture}" alt="" width="1100">
					</div>
				</div>
				<div class="row">
					<c:forEach items="${item.goods}" var="good" varStatus="status">
						<div class="product col-md-3">
							<div class="littleimg">
								<a
									href="${pageContext.request.contextPath }/products/detail/${good.goodsID}">
									<img src="${good.pictureList[0].picturePath}" alt="" width="220" >
								</a>
							</div>
							<div class="littleimg-title">
								<div class="littleimg-title-top">
									<span style="background-color: #fff;"></span>
								</div>
								<div class="littleimg-title-name">
									<h4>${good.goodsName}</h4>
									<div class="littleimg-title-price">
										<span class="text-danger">¥</span><span class="text-danger">${good.goodsPrice}</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
	</c:forEach>
	<div class="back-top">
		<i class="layui-icon layui-icon-top"></i>
	</div>

	<section class="SE3_tail">
		<div class="serve">
			<div class="col-md-4 detail_serve">
				<img src="${pageContext.request.contextPath }/img/icon/shield.png">
				<span>30天无忧退换货</span>
			</div>
			<div class="col-md-4 detail_serve">
				<img class="car"
					src="${pageContext.request.contextPath }/img/icon/car.png">
				<span>满88元免邮费</span>
			</div>
			<div class="col-md-4 detail_serve">
				<img src="${pageContext.request.contextPath }/img/icon/nong.png">
				<span>华农有货品质保证</span>
			</div>
		</div>
	</section>

	<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/js/index.js"></script>
	<script>
		$(document).ready(function() {
			var customer = "${currentCustomer.customerName}";
			if (customer == "") {
				$("#myCenter").hide();
				$("#signout").hide();
				$("#signin").show();
				$("#signup").show();
				$(".shopping-cart").hide();
			} else {
				$("#myCenter").show();
				$("#signout").show();
				$("#signin").hide();
				$("#signup").hide();
				$(".shopping-cart").show();
			}
		});
	</script>
</body>
</html>