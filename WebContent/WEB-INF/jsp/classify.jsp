<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${category.categoryType}</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/css/layui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/classify.css">
</head>
<body>
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
										<div class="cart-img">
											<img
												src="${cartList.good.pictureList[0].picturePath}"
												alt="" height="50">
										</div>
										<div class="cart-name">
											<a href="${pageContext.request.contextPath }/products/detail/${cartList.good.goodsID}" title="${cartList.good.goodsBrief}">${cartList.good.goodsBrief}</a>
										</div>
										<div class="cart-introduce text-muted">${cartList.good.goodsSpecify}</div>
										<div class="cart-number">
											x <span class="indentNumber">${cartList.goodsCount}</span>
										</div>
										<div class="cart-price text-danger">
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
											<span class="priceNum text-danger">￥${cart.totalPrice}</span>
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
								<li class="home active"><a href="${pageContext.request.contextPath }">首页<span
										class="sr-only">首页</span></a></li>
								<li class="bag-li" data-chose="1"><a
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

								<li class="cloth-li" data-chose="2"><a
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
								<li class="food-li" data-chose="3"><a
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
								<li class="sport-li" data-chose="4"><a
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

	<section class="SE3_classify">
		<div class="BFC" id="BFCBOX">
			<div class="box">
				<div class="classify-top">
					<div class="classify">
						<ul class="classify-list">
							<li class="Title">分类：</li>
							<li>全部</li>
							<c:forEach items="${category.goodssecondarytypelist}"
								var="subcategory" varStatus="status">
								<li>${subcategory.goodsSecondaryType}</li>
							</c:forEach>
						</ul>
					</div>
					<div class="sort">
						<ul class="sort-list">
							<li class="Title">排序：</li>
							<li>默认</li>
							<li>价格</li>
							<li>上架时间</li>
						</ul>
					</div>
				</div>
				<c:forEach items="${category.goodssecondarytypelist}"
					var="subcategory" varStatus="status">
					<div class="classify-main">
						<div class="classify-icon">
							<div>
								<img src="${subcategory.picture.picturePath} " alt=""><span>${subcategory.goodsSecondaryType}</span>
							</div>
							<p class="text-muted">${subcategory.goodsSecondaryTypeExplain}</p>
						</div>
						<div class="classify-items">
							<c:forEach items="${subcategory.goodsList}" var="good"
								varStatus="status">
								<input type="hidden" class="goodsMaintype"
									value="${good.goodsMainTypeID}" />
								<div class="classify-item">
									<div class="image">
										<a
											href="${pageContext.request.contextPath }/products/detail/${good.goodsID}">
											<img src="${good.pictureList[0].picturePath }" alt=""
											width="220" height="220">
										</a>
									</div>
									<div class="introduce">
										<div>
											<a href="${pageContext.request.contextPath }/products/detail/${good.goodsID}"> <span>${good.goodsName }</span>
											</a>
										</div>
										<div class="pri">
											<span class="text-danger">￥${good.goodsPrice }</span>
										</div>
										<p class="text-muted">${good.goodsBrief }</p>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

	</section>

	<section class="SE3_tail">
		<div class="serve">
			<div class="col-md-4 detail_serve">
				<img src="${pageContext.request.contextPath }/img/icon/shield.png">
				<span>30天无忧退换货</span>
			</div>
			<div class="col-md-4 detail_serve">
				<img class="car"
					src="${pageContext.request.contextPath }/img/icon/car.png"> <span>满88元免邮费</span>
			</div>
			<div class="col-md-4 detail_serve">
				<img src="${pageContext.request.contextPath }/img/icon/nong.png">
				<span>华农有货品质保证</span>
			</div>
		</div>
	</section>
	<div class="back-top">
		<i class="layui-icon layui-icon-top"></i>
	</div>
	<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/js/index.js"></script>

	<script>
		$(document)
				.ready(
						function() {
							var mainType = $(".goodsMaintype:eq(0)").val();
							console.log(mainType);
							$(
									"#SE3_header .navbar .container-fluid .collapse > ul > li.active")
									.removeClass("active");
							$(
									"#SE3_header .navbar .container-fluid .collapse > ul > li[data-chose="
											+ mainType + "]")
									.addClass("active");
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

							var $item1 = $(".classify-items:eq(0)").find(
									".classify-item");

							var $item2 = $(".classify-items:eq(1)").find(
									".classify-item");

							var $item3 = $(".classify-items:eq(2)").find(
									".classify-item");

							var $item4 = $(".classify-items:eq(3)").find(
									".classify-item");

							var item1Num = Math.ceil($item1.length / 4);
							var item2Num = Math.ceil($item2.length / 4);
							var item3Num = Math.ceil($item3.length / 4);
							var item4Num = Math.ceil($item4.length / 4);

							var str = item1Num * 340 + item2Num * 340
									+ item3Num * 340 + item4Num * 340 + 1100;
							var str2 = item1Num * 340 + item2Num * 340
									+ item3Num * 340 + item4Num * 340 + 900;
							console.log(str + "px");
							$(".SE3_classify").height(str);
							$(".box").height(str2);
							$(".SE3_tail").show();

						});
	</script>
</body>
</html>