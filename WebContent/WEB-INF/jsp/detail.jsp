<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>${goods[0].goodsName}</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/css/modules/layer/default/layer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/index.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/detail.css">
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
									<div class="cart-item">
										<div class="cart-img">
											<img
												src="${pageContext.request.contextPath }/img/product/product10.png"
												alt="" height="50">
										</div>
										<div class="cart-name">
											<a href="" title="小方盖系列 水性可撕指甲油">小方盖系列 水性可撕指甲油</a>
										</div>
										<div class="cart-introduce text-muted">底油亮油色</div>
										<div class="cart-number">
											x <span class="indentNumber">1</span>
										</div>
										<div class="cart-price text-danger">
											￥ <span class="indentMoney">100</span>
										</div>
										<div class="close">
											<i class="layui-icon layui-icon-close"></i>
										</div>

									</div>
									<div class="cart-item">
										<div class="cart-img">
											<img
												src="${pageContext.request.contextPath }/img/product/product10.png"
												alt="" height="50">
										</div>
										<div class="cart-name">
											<a href="" title="小方盖系列 水性可撕指甲油">小方盖系列 水性可撕指甲油</a>
										</div>
										<div class="cart-introduce text-muted">底油亮油色</div>
										<div class="cart-number">
											x <span class="indentNumber">1</span>
										</div>
										<div class="cart-price text-danger">
											￥ <span class="indentMoney">100</span>
										</div>
										<div class="close">
											<i class="layui-icon layui-icon-close"></i>
										</div>
									</div>
									<div class="cart-item">
										<div class="cart-img">
											<img
												src="${pageContext.request.contextPath }/img/product/product10.png"
												alt="" height="50">
										</div>
										<div class="cart-name">
											<a href="" title="小方盖系列 水性可撕指甲油">小方盖系列 水性可撕指甲油</a>
										</div>
										<div class="cart-introduce text-muted">底油亮油色</div>
										<div class="cart-number">
											x <span class="indentNumber">1</span>
										</div>
										<div class="cart-price text-danger">
											￥ <span class="indentMoney">100</span>
										</div>
										<div class="close">
											<i class="layui-icon layui-icon-close"></i>
										</div>
									</div>
                                </div>
                                <div class="cart-bottom-area">
                                    <div class="allPrice">
                                       <div class="pricedetail">商品总价 ：</div>
                                        <div class="pricedetailnumber"><span class="priceNum text-danger">￥1000</span></div>
                                    </div>
                                    <div class="buy">
                                    <a href="#"><button id="cart-buy" class="layui-btn layui-btn-primary">去付款</button></a></div>
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

	<section class="SE3_product">
		<div>
			<div class="picture">

				<div class="view">
					<img src="${goods[0].pictureList[0].picturePath}">
				</div>

			</div>

			<div class="list">
				<ul>
					<c:forEach items="${goods[0].pictureList}" begin="0" end="4"
						var="picture" varStatus="status">
						<li class="active"><img src="${picture.picturePath}"></li>
					</c:forEach>
				</ul>
			</div>

			<div class="detail">
				<div class="detail_name">
					<div class="name">
						<span>${goods[0].goodsName }</span>
					</div>

					<div class="brief">${goods[0].goodsBrief }</div>
				</div>

				<div class="detail_price">
					<div>
						<span class="price_name">价格：</span> <span class="price">¥${goods[0].goodsPrice }</span>
					</div>
					<div class="detail_serve">
						<span class="serve_name">服务：</span> <span class="serve"> ･
							支持30天无忧退换货 ･ 48小时快速退款 ･ 满88元免邮费<br> ･ 华农自营品牌 ･ 国内部分地区无法配送
						</span>
					</div>
				</div>

				<div class="detail_specify">
					<div class="name">规格：</div>
					<div class="specify">
						<ul>
							<c:forEach items="${goods}" var="good" varStatus="status">
								<li class="option">${good.goodsSpecify }</li>
							</c:forEach>
						</ul>
					</div>
				</div>

				<div class="detail_num">
					<div class="name">数量：</div>
					<div class="num">
						<span class="glyphicon glyphicon-minus"></span> <input type="text"
							value="1"> <span class="glyphicon glyphicon-plus"></span>
					</div>
				</div>

				<div class="detail_btn">
					<div class="detail_buy btn1">
						<span class="buy">立即购买</span>
					</div>

					<div class="detail_add btn2">
						<span class="add">加入购物车</span>
					</div>
				</div>
			</div>

		</div>
	</section>

	<section class="SE3_product_body">
		<div class="left">
			<ul class="left_head">
				<li class="head_details active" data-select="0"><span>详情</span>
				</li>

				<li class="head_evaluate" data-select="1"><span>评价</span></li>

				<li class="head_problem" data-select="2"><span>常见问题</span></li>
			</ul>

			<div class="detail_picture" data-select="0">
				<img src="${goods[0].pictureList[5].picturePath}">
			</div>

			<div class="evaluate" data-select="1">
				<div class="evaluate_head">
					<div class="head_left">
						<div class="name">好评率</div>
						<div class="ratio">95.9%</div>
						<div class="star">⭐⭐⭐⭐⭐</div>
					</div>
					<div class="head_right">
						<div class="name">大家都在说：</div>
						<div class="specify">
							<span class="classify active">全部（217）</span> <span
								class="classify">有图（16）</span> <span class="classify">追评（17）</span>
						</div>
					</div>
				</div>

				<div class="sort">
					<div class="name">排序：</div>
					<div class="classify">
						<div class="default active">默认</div>
						<div class="time">评价时间</div>
					</div>
				</div>

				<div class="evaluate_detail">
					<ul>
						<li>
							<div class="detail_left">
								<div class="head_picture">
									<img
										src="${pageContext.request.contextPath }/img/icon/user_head.png">
								</div>
								<div class="user_name">
									<span>老柠檬</span>
								</div>
							</div>
							<div class="detail_right">
								<div class="star">⭐⭐⭐⭐⭐</div>
								<div class="specify">
									<span class="specify_name">规格：</span> <span
										class="specify_text">灰色</span>
								</div>
								<div class="text">挺好的，比较特别的款式，质感很新奇，轻！</div>
								<div class="evaluate_picture">
									<div class="picture1">
										<img
											src="${pageContext.request.contextPath }/img/product/product12_1.png">
									</div>
									<div class="picture2">
										<img
											src="${pageContext.request.contextPath }/img/product/product12_2.png">
									</div>
									<div class="picture3">
										<img
											src="${pageContext.request.contextPath }/img/product/product12_3.png">
									</div>
								</div>
								<div class="big_img">
									<span class="close layui-icon layui-icon-close"></span> <img
										src="">
								</div>
								<div class="time">2018-06-24 11:34</div>

							</div>
						</li>
						<li>
							<div class="detail_left">
								<div class="head_picture">
									<img
										src="${pageContext.request.contextPath }/img/icon/user_head.png">
								</div>
								<div class="user_name">
									<span>清风徐来</span>
								</div>
							</div>
							<div class="detail_right">
								<div class="star">⭐⭐⭐⭐</div>
								<div class="specify">
									<span class="specify_name">规格：</span> <span
										class="specify_text">白色</span>
								</div>
								<div class="text">物流太快了，非常满意，包包轻巧，用后再评。</div>
								<div class="time">2018-06-22 11:53</div>

							</div>
						</li>
						<li>
							<div class="detail_left">
								<div class="head_picture">
									<img
										src="${pageContext.request.contextPath }/img/icon/user_head.png">
								</div>
								<div class="user_name">
									<span>15648</span>
								</div>
							</div>
							<div class="detail_right">
								<div class="star">⭐⭐⭐</div>
								<div class="specify">
									<span class="specify_name">规格：</span> <span
										class="specify_text">黑色</span>
								</div>
								<div class="text">物流相当快啊！严选的产品一如既往的好。下次还来你家。</div>
								<div class="time">2018-07-20 22:22</div>

							</div>
						</li>
						<li>
							<div class="detail_left">
								<div class="head_picture">
									<img
										src="${pageContext.request.contextPath }/img/icon/user_head.png">
								</div>
								<div class="user_name">
									<span>hello</span>
								</div>
							</div>
							<div class="detail_right">
								<div class="star">⭐⭐⭐⭐</div>
								<div class="specify">
									<span class="specify_name">规格：</span> <span
										class="specify_text">灰色</span>
								</div>
								<div class="text">看着不错就买了一个，到货和图片一样挻好的！</div>
								<div class="time">2018-07-25 12:40</div>

							</div>
						</li>
					</ul>
				</div>
			</div>

			<div class="problem" data-select="2">
				<div>
					<div class="head">购买运费如何收取？</div>
					<div class="text">
						单笔订单金额（不含运费）满88元免邮费；不满88元，每单收取10元运费。 <br>(港澳台地区需满500元免邮费；不满500元，每单收取30元运费)
					</div>
				</div>
				<br> <br>
				<div>
					<div class="head">华农有货的订单如何配送？</div>
					<div class="text">
						华农有货会根据商品所在地、顾客所在地和商品的尺寸重量优选物流配送商，确保优质用户体验。目前暂不支持自选快递。</div>
				</div>
				<br> <br>
				<div>
					<div class="head">如何申请退换货？</div>
					<div class="text">
						1.自收到商品之日起30日内，顾客可申请无忧退货；如果是退货，退款将原路返还，不同的银行处理时间不同，预计1-5个工作日到账； <br>2.内裤和食品等特殊商品无质量问题不支持退换货；
						<br>3.退货流程： 确认收货-申请退货-客服审核通过-用户寄回商品-仓库签收验货-退款审核-退款完成； <br>4.换货流程：
						确认收货-申请换货-客服审核通过-用户寄回商品-仓库签收验货-客服确认-换货完成； <br>5.退换货运费由网易严选承担（大件商品除外）。上门取件费用由网易严选统一与快递服务商结算，顾客只需将退换货商品交给上门取件快递员寄回。如顾客选择自行寄回商品，请先垫付运费，到货验证商品后，严选将以现金券形式为用户报销运费，不接受单方面到付件。
					</div>
				</div>
				<br> <br>
				<div>
					<div class="head">如何开具发票？</div>
					<div class="text">
						1.请在下单时选择“我要开发票”并填写相关信息（APP仅限2.4.0及以上版本）。开具增值税专用发票需在下单时填写增票资质信息。温馨提示：请确保增票资质信息与贵司税务登记证信息一致，避免因开票信息错误给贵司带来损失。
						2.可选开票内容：
						依照国税总局开票法规，严选订单开具纸质发票、电子发票，开票内容为明细；礼品卡开票内容为预付卡；增值税专用发票开票内容为明细。</div>
				</div>
			</div>

		</div>


		<div>
			<div class="right">
				<div class="head">
					<span>24小时热销榜</span>
				</div>
				<div class="body">
					<ul>
						<li><a
							href="${pageContext.request.contextPath }/products/detail/1">
								<img
								src="${pageContext.request.contextPath }/img/product/detail_right_1.png">
						</a> <a href="${pageContext.request.contextPath }/products/detail/1">
								<div class="name">24寸原创山海经PC铝框拉杆箱</div>
						</a>
							<div class="price">¥5.9</div></li>
						<li><a
							href="${pageContext.request.contextPath }/products/detail/34">
								<img
								src="${pageContext.request.contextPath }/img/product/detail_right_2.png">
						</a> <a href="${pageContext.request.contextPath }/products/detail/34">
								<div class="name">女式典雅真丝长吊带睡裙</div>
						</a>
							<div class="price">¥100</div></li>
						<li><a
							href="${pageContext.request.contextPath }/products/detail/15">
								<img
								src="${pageContext.request.contextPath }/img/product/detail_right_3.png">
						</a> <a href="${pageContext.request.contextPath }/products/detail/15">
								<div class="name">幸运桃心链条单肩包</div>
						</a>
							<div class="price">¥19.9</div></li>
						<li><a
							href="${pageContext.request.contextPath }/products/detail/40">
								<img
								src="${pageContext.request.contextPath }/img/product/detail_right_4.png">
						</a> <a href="${pageContext.request.contextPath }/products/detail/40">
								<div class="name">爱的乐章黑巧克力礼盒</div>
						</a>
							<div class="price">¥45</div></li>
						<li><a
							href="${pageContext.request.contextPath }/products/detail/43">
								<img
								src="${pageContext.request.contextPath }/img/product/detail_right_5.png">
						</a> <a href="${pageContext.request.contextPath }/products/detail/43">
								<div class="name">千层星云酥</div>
						</a>
							<div class="price">¥12.9</div></li>
						<li><a
							href="${pageContext.request.contextPath }/products/detail/78">
								<img
								src="${pageContext.request.contextPath }/img/product/detail_right_6.png">
						</a> <a href="${pageContext.request.contextPath }/products/detail/78">
								<div class="name">瓦坎达图腾 杯垫</div>
						</a>
							<div class="price">¥13.99</div></li>
					</ul>
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
	<script src="${pageContext.request.contextPath }/js/index.js"></script>
	<script src="${pageContext.request.contextPath }/js/detail.js"></script>
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