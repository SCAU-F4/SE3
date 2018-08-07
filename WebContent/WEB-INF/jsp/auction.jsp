<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>提交订单</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/css/modules/layer/default/layer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/buy.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/css/layui.css">
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
	
	<section class="SE3_buy">
		<div class="address">
			<div class="buy_head">
				<span>收货信息</span>
			</div>
			<div class="change">
				
            	<div class="first_detail">
                	<div>
                    	<span class="change_btn">选择地址</span>
                    	<span class="new_btn">新建地址</span>
                	</div>
            	</div>
				<div class="address_detail">
					<div class="left">
						<div class="modify">
							<span>修改地址</span>
						</div>
						<input type="hidden" class="addressID" value=""/>
						<div class="text">
							<span>收 货 人 :</span> <span class="name_text">黄帅哥</span>
						</div>
						<div class="text">
							<span>联系方式 : </span> <span class="phone_text">15692021111</span>
						</div>
						<div class="text">
							<span>邮 编 : </span> <span class="mail_text">523000</span>
						</div>
						<div class="text">
							<span>收货地址 :</span> <span class="address_text">广东省广州市天河区华南农业大学</span>
						</div>
					</div>
					<div class="right">
						<div>
							<span class="change_btn">地址切换</span>
						</div>
						<div>
							<span class="new_btn">新建地址</span>
						</div>
					</div>
				</div>
				<div class="modify_address">
					<div class="left">
						<div>
							<div>
								<span>收货人:</span> <input class="short_input name_text"
									type="text"> <i class="glyphicon glyphicon-ok"></i> <i
									class="glyphicon glyphicon-remove"></i>
							</div>
						</div>
						<input type="hidden" class="addressID" value=""/>
						<div>
							<div class="phone_div">
								<span>手机号码:</span> <input class="short_input phone_text"
									type="text"> <i class="glyphicon glyphicon-ok"></i> <i
									class="glyphicon glyphicon-remove"></i>
							</div>
							<div>
								<span>邮编:</span> <input class="short_input mail_text"
									type="text"> <i class="glyphicon glyphicon-ok"></i> <i
									class="glyphicon glyphicon-remove"></i>
							</div>
						</div>
						<div class="address_text">
							<span>详细地址:</span>
							<textarea cols="30" rows="10"></textarea>
							<i class="glyphicon glyphicon-ok"></i> <i
								class="glyphicon glyphicon-remove"></i>
						</div>
					</div>
					<div class="right">
						<div>
							<span class="save_btn">保存地址</span>
						</div>
						<div>
							<span class="cancel_btn">取消</span>
						</div>
					</div>
				</div>
				<div class="add_address">
					<div class="left">
						<div>
							<div>
								<span>收货人:</span> <input class="short_input name_text"
									type="text"> <i class="glyphicon glyphicon-ok"></i> <i
									class="glyphicon glyphicon-remove"></i>
							</div>
						</div>
						<input type="hidden" class="addressID" value=""/>
						<div>
							<div class="phone_div">
								<span>手机号码:</span> <input class="short_input phone_text"
									type="text"> <i class="glyphicon glyphicon-ok"></i> <i
									class="glyphicon glyphicon-remove"></i>
							</div>
							<div>
								<span>邮编:</span> <input class="short_input mail_text mail_input"
									type="text"> <i class="glyphicon glyphicon-ok"></i> <i
									class="glyphicon glyphicon-remove"></i>
							</div>
						</div>
						<div class="address_text">
							<span>详细地址:</span>
							<textarea cols="30" rows="10"></textarea>
							<i class="glyphicon glyphicon-ok"></i> <i
								class="glyphicon glyphicon-remove"></i>
						</div>
					</div>
					<div class="right">
						<div>
							<span class="save_btn">保存地址</span>
						</div>
						<div>
							<span class="cancel_btn">取消</span>
						</div>
					</div>
				</div>
				<div class="change_address">
					<div class="left">
						<c:forEach items="${currentCustomer.addressList}" var="address" varStatus="status">
							<div class="choose">
								<div class="text">
									<span>收 货 人 :</span> <span class="choose_name_text">${address.addressName }</span>
								</div>
								<input type="hidden" class="addressID" value="${address.addressID }"/>
								<div class="second">
									<div class="text">
										<span>联系方式 : </span> <span class="choose_phone_text">${address.addressPhone }</span>
									</div>
									<div class="text">
										<span class="mail_text">邮 编 : </span> 
										<span class="choose_mail_text">${address.addressPostcode }</span>
									</div>
								</div>
								<div class="text">
									<span>收货地址 :</span> <span class="choose_address_text">${address.addressDetail }</span>
								</div>
							</div>
						</c:forEach>
					
					</div>
					<div class="right">
						<div>
							<span class="choose_btn">确定</span>
						</div>
						<div>
							<span class="no_choose_btn">取消</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="goods">
			<div class="detail">
				<div></div>
				<table>
					<thead>
						<tr class="table_head">
							<th style="width: 540px">商品信息</th>
							<th style="width: 165px">单价</th>
							<th style="width: 170px">数量</th>
							<th style="width: 190px">小计</th>
						</tr>
					</thead>

					
					<tbody>
						<c:forEach items="${indent.indentDetaillist}" var="goods" varStatus="status">
							<tr>
								<td><img src="${goods.good.pictureList[0].picturePath}">
									<div class="goods_detail">
										<div class="goods_name">${goods.good.goodsName }</div>
										<div class="goods_classify">${goods.good.goodsSpecify }</div>
									</div></td>
								<td><span>¥</span> <span>${goods.good.goodsPrice}</span></td>
								<td>${goods.goodsCount }</td>
								<td><span>¥</span> <span>${goods.totalPrice}</span></td>
							</tr>
						</c:forEach>
					</tbody>
					
				</table>
			</div>
			<div class="pay">
				<div>
					<div>
						<div class="pay_text">
							<span>商品合计：</span> <span class="price"> <span>¥</span> <span>${indent.totalPrice }</span>
							</span>
						</div>
						<div class="pay_text">
							<span>运费：</span> <span class="price"> <span>¥</span> <span>0.00</span>
							</span>
						</div>
					</div>
					<div class="pay_text total_text">
						<span>应付总额：</span> <span class="price total"> <span>¥</span>
							<span>${indent.totalPrice }</span>
						</span>
					</div>
					<span class="pay_btn">去付款</span>
					<div class="re_address">
						<div class="name">
							<span>黄帅哥</span> <span>15692021111</span>
						</div>
						<div class="name">广东省广州市天河区华南农业大学华山学生公寓15栋</div>
					</div>
				</div>
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
 
	<script
		src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
	<script
		src="${pageContext.request.contextPath }/layui/lay/modules/layer.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/js/buy.js"></script>
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
	<script type="text/javascript">
    	if(window.name != "bencalie"){
        	location.reload();
         	window.name = "bencalie";
     	}else{
         	window.name = "";
      	}
	</script>
</body>
</html>