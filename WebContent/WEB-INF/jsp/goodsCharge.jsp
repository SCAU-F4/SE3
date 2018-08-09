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
<title>IndustryApp Template</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-responsive.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/styles.css" />
	    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/toastr.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/fullcalendar.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/simplePaging.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/goodsCharge.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
	<div id="in-nav">
		<div class="container">
			<div class="row">
				<div class="span12">
					<h4>
						<strong>华农有货</strong>
					</h4>
				</div>
			</div>
		</div>
	</div>
	<div id="in-sub-nav">
		<div class="container">
			<div class="row">
				<div class="span12">
					<ul>
						<li><a href="${pageContext.request.contextPath }/admin/tongji"><i class="batch home"></i><br />首页</a></li>
						<li><a
							href="${pageContext.request.contextPath }/admin/goodsCharge" class="active"><i class="batch stream"></i><br />商品管理</a></li>
						<li><a href="faq.html"><i class="batch forms"></i><br />订单管理</a></li>
						<li><a href="users.html"><i class="batch users"></i><br />用户管理</a></li>
						<li><a href="settings.html"><i class="batch settings"></i><br />管理员信息管理</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="page">
		<div class="page-container">
			<div class="container">
				<div class="row">
					<div class="col-md-2">
						<h4>商品分类</h4>
						<div class="sidebar">
							<ul class="col-nav span3">
								<li class="mainType"><a data-mainType="0">全部商品</a></li>
								<li class="mainType"><a 
									data-mainType="1">箱包配饰</a></li>
								<li id="baglist" class="collapse" data-mainType="1">
									<ul>
										<li data-mainType="1"><a  data-SecondType="1">行李箱包</a><a 
											data-SecondType="2">男士箱包</a><a href="#" data-SecondType="3">女性箱包</a><a
											 data-SecondType="4">钱包及小配件</a></li>
									</ul>
								</li>
								<li class="mainType"><a
									data-mainType="2">服装</a></li>
								<li id="clothlist" class="collapse" data-mainType="2">
									<ul>
										<li data-mainType="2"><a data-SecondType="5">清爽短袖</a><a 
											data-SecondType="6">时尚衬衫</a><a data-SecondType="7">性感长裙</a><a
											data-SecondType="8">时尚裤类</a></li>
									</ul>
								</li>
								<li class="mainType"><a href="#foodlist"
									data-mainType="3">饮食</a></li>
								<li id="foodlist" class="collapse" data-mainType="3">
									<ul>
										<li data-mainType="3"><a data-SecondType="9">美味零食</a><a 
											data-SecondType="10">水果坚果</a><a data-SecondType="11">新鲜肉类</a><a
										   data-SecondType="12">饮料酒水</a></li>
									</ul>
								</li>
								<li class="mainType"><a href="#sportlist"
									data-mainType="4">文体</a></li>
								<li id="sportlist" class="collapse" data-mainType="4">
									<ul>
										<li data-mainType="4"><a data-SecondType="13">精美文具</a><a 
											data-SecondType="14">运动户外</a><a data-SecondType="15">音乐相关</a><a
											data-SecondType="16">影视相关</a></li>
									</ul>
								</li>
							</ul>
						</div>
					</div>
					<div class="part part6 col-md-10">
						<h4 class="header">商品列表</h4>
						<div class="stream" id="NoneStream" style="display: none;">
						
						<c:forEach items="${allGoodList}" var="goodlist" varStatus="status">
								<div class="item" data-mainType="${goodlist.goodsMainTypeID}" data-SecondType="${goodlist.goodsSecondaryTypeID}">
										<input type="hidden" value="${goodlist.goodsID}" class="itemgoodsID"/>
										<div class="btn-group pull-right">
											<button data-toggle="dropdown" class="btn dropdown-toggle">
													<span class="caret"></span>
											</button>
									<ul class="dropdown-menu">
										<li><a class="modify">修改</a></li>
										<li><a class="delete">下架</a></li>
									</ul>
								</div>
								<div class="stream-icon">
									<img
										src="${goodlist.pictureList[0].picturePath}"
										alt="" width="80">
								</div>
								<p class="date">${goodlist.isSell}</p>
								<h4>${goodlist.goodsName}</h4>
								<p>商品简介：${goodlist.goodsBrief}  商品种类：${goodlist.goodsSpecify}</p>
								<span class="price">价格：￥${goodlist.goodsPrice}</span> <span class="number">库存：${goodlist.goodsCount}</span>
							</div>
						</c:forEach>
						
						</div>

						<div class="stream showpage"></div>
					</div>
				</div>
				<div class="part part6">
					<div class="showPagePaging" style="margin: 20px auto 0 auto"></div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="Evaluate"></div>
	<div class="Evaluate-area">
		<i class="layui-icon layui-icon-close pull-right"></i>
		<div class="product-img">
			<img src="" width="200">
		</div>
		
			
			<input type="hidden" value="${currentCustomer.customerID}" name="customer.customerID" />
			<input type="hidden" id="goodsSpecify" name="goodsSpecify" />
			<div class="Evaluate-main">
				<span class="title">评论区</span>
				<textarea placeholder="请输入你的评价" id="evaluateContent" name="evaluateContent" style="resize: none"></textarea>
			</div>
			<button type="submit" class="layui-btn layui-btn-radius layui-btn-primary addcomment">提交评论</button>
			<button type="reset" style="display: none;" id="resetForm">重置</button>
		
	</div>
	
	<footer>
		<div class="container">
			<div class="row">
				<div class="span12">
					<p class="pull-right">华农有货后台管理系统</p>
					<p>&copy; 2018 FreelanceLeague</p>
				</div>
			</div>
		</div>
	</footer>
	<script
		src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.knob.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.tablesorter.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/jquery.peity.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/js/fullcalendar.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/gcal.js"></script>
	<script src="${pageContext.request.contextPath }/js/setup.js"></script>
	<script src="${pageContext.request.contextPath }/js/simplePaging.js"></script>
	<script src="${pageContext.request.contextPath }/js/stream.js"></script>

</body>
</html>