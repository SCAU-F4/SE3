<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>${category.categoryType}</title>
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
						<a href="user/signup" id="signup">注册</a> <a href="user/signin"
							id="signin">登录</a> <a href="user/mycenter" id="myCenter">个人中心</a>
						<a href="user/signout" id="signout">注销</a>
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
					<input type="text" value="雅迪电动车只要999"> <i
						class="glyphicon glyphicon-search"></i>
				</div>
			</div>
			<!--下部分-->
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="home active"><a href="/SE3-F4">首页<span
										class="sr-only">首页</span></a></li>
								<li class="bag-li"><a
									href="/SE3-F4/products/list?categoryId=1&subcategoryId=-1">箱包配饰</a>
									<div class="bag-li container downmenu">
										<ul class="nav navbar-nav">
											<li><a
												href="/SE3-F4/products/list?categoryId=1&subcategoryId=1"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/xingli.png"
															alt=""><span>行李箱包</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=1&subcategoryId=2"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/nanxing.png"
															alt=""><span>男士箱包</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=1&subcategoryId=3"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/nvxing.png"
															alt=""><span>女士箱包</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=1&subcategoryId=4"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/qianbao.png"
															alt=""><span>钱包配件</span>
													</div></a></li>
										</ul>
									</div></li>

								<li class="cloth-li"><a
									href="/SE3-F4/products/list?categoryId=2&subcategoryId=-1">服装</a>
									<div class="cloth-li container downmenu">
										<ul class="nav navbar-nav">
											<li><a
												href="/SE3-F4/products/list?categoryId=2&subcategoryId=5"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/Tshirt.png"
															alt=""><span>清爽短袖</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=2&subcategoryId=6"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/shirt.png"
															alt=""><span>时尚衬衫</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=2&subcategoryId=7"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/dress.png"
															alt=""><span>性感长裙</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=2&subcategoryId=8"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/ku.png"
															alt=""><span>潮流裤类</span>
													</div></a></li>
										</ul>
									</div></li>
								<li class="food-li"><a
									href="/SE3-F4/products/list?categoryId=3&subcategoryId=-1">饮食</a>
									<div class="food-li container downmenu">
										<ul class="nav navbar-nav">
											<li><a
												href="/SE3-F4/products/list?categoryId=3&subcategoryId=9"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/xiaochi.png"
															alt=""><span>美味零食</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=3&subcategoryId=10"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/shuiguo.png"
															alt=""><span>水果坚果</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=3&subcategoryId=11"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/rou.png"
															alt=""><span>新鲜肉类</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=3&subcategoryId=12"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/yinliao.png"
															alt=""><span>饮料酒水</span>
													</div></a></li>
										</ul>
									</div></li>
								<li class="sport-li"><a
									href="/SE3-F4/products/list?categoryId=4&subcategoryId=-1">文体</a>
									<div class="sport-li container downmenu">
										<ul class="nav navbar-nav">
											<li><a
												href="/SE3-F4/products/list?categoryId=4&subcategoryId=13"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/wenju.png"
															alt=""><span>精美文具</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=4&subcategoryId=14"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/huwai.png"
															alt=""><span>运动户外</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=4&subcategoryId=15"><div>
														<img
															src="${pageContext.request.contextPath }/img/icon/yinyue.png"
															alt=""><span>音乐相关</span>
													</div></a></li>
											<li><a
												href="/SE3-F4/products/list?categoryId=4&subcategoryId=16"><div>
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
					 <c:forEach items="${subcategory.goodsList}"
							var="good" varStatus="status">
						<div class="classify-item">
							<div class="image">
								<img
									src="${good.pictureList[0].picturePath }"
									alt="" width="220">
							</div>
							<div class="introduce">
								<div>
									<span>${good.goodsName }</span>
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

	<script
		src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/js/index.js"></script>
</body>
</html>