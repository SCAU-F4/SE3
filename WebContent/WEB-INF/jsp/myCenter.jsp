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
    <title>${currentCustomer.customerName}的管理中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/modules/layer/default/layer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/myCenter.css">
</head>
<body>
<!--头-->
<header id="SE3_header" class="myCenterHeader">
    <!--上部分-->
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-7 text-muted"><p>好的生活，没那么贵</p></div>
                <div class="col-md-5 top-right">
                   		<a href="${pageContext.request.contextPath }/user/signup" id="signup">注册</a>
                        <a href="${pageContext.request.contextPath }/user/signin" id="signin">登录</a>
                        <a href="${pageContext.request.contextPath }/user/mycenter" id="myCenter">个人中心</a>
                         <a href="${pageContext.request.contextPath }/user/signout" id="signout">注销</a>
                     						<div class="shopping-cart">
							<i class="glyphicon glyphicon-shopping-cart"></i><i>购物车</i>
							<div class="cart-show-area">
								<div class="cart-top-area">
									<c:forEach items="${currentCustomer.cart.CartDetailList}" var="cartList" varStatus="status">
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
                <img src="${pageContext.request.contextPath }/img/icon/logo.png" alt="logo">
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
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="home"><a href="${pageContext.request.contextPath }">首页<span class="sr-only">首页</span></a></li>
                            <li class="bag-li"><a href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=-1">箱包配饰</a>
                                <div class="bag-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=1"><div><img src="${pageContext.request.contextPath }/img/icon/xingli.png" alt=""><span>行李箱包</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=2"><div><img src="${pageContext.request.contextPath }/img/icon/nanxing.png" alt=""><span>男士箱包</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=3"><div><img src="${pageContext.request.contextPath }/img/icon/nvxing.png" alt=""><span>女士箱包</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=1&subcategoryId=4"><div><img src="${pageContext.request.contextPath }/img/icon/qianbao.png" alt=""><span>钱包配件</span></div></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            <li class="cloth-li"><a href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=-1">服装</a>
                                <div class="cloth-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=5"><div><img src="${pageContext.request.contextPath }/img/icon/Tshirt.png" alt=""><span>清爽短袖</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=6"><div><img src="${pageContext.request.contextPath }/img/icon/shirt.png" alt=""><span>时尚衬衫</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=7"><div><img src="${pageContext.request.contextPath }/img/icon/dress.png" alt=""><span>性感长裙</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=2&subcategoryId=8"><div><img src="${pageContext.request.contextPath }/img/icon/ku.png" alt=""><span>潮流裤类</span></div></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="food-li"><a href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=-1">饮食</a>
                                <div class="food-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=9"><div><img src="${pageContext.request.contextPath }/img/icon/xiaochi.png" alt=""><span>美味零食</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=10"><div><img src="${pageContext.request.contextPath }/img/icon/shuiguo.png" alt=""><span>水果坚果</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=11"><div><img src="${pageContext.request.contextPath }/img/icon/rou.png" alt=""><span>新鲜肉类</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=3&subcategoryId=12"><div><img src="${pageContext.request.contextPath }/img/icon/yinliao.png" alt=""><span>饮料酒水</span></div></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="sport-li"><a href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=-1">文体</a>
                                <div class="sport-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=13"><div><img src="${pageContext.request.contextPath }/img/icon/wenju.png" alt=""><span>精美文具</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=14"><div><img src="${pageContext.request.contextPath }/img/icon/huwai.png" alt=""><span>运动户外</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=15"><div><img src="${pageContext.request.contextPath }/img/icon/yinyue.png" alt=""><span>音乐相关</span></div></a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath }/products/list?categoryId=4&subcategoryId=16"><div><img src="${pageContext.request.contextPath }/img/icon/yinshi.png" alt=""><span>影视相关</span></div></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>
<section class="myCenterBody">
    <div class="container">
        <div class="row">
             <div class="menu-left col-md-2">
                 <h3>个人中心</h3>
                <ul class="menu-item">

                    <li class="active" data-select="0">订单管理</li>
                    <li data-select="1">账号管理</li>
                    <li data-select="2">地址管理</li>
                </ul>
            </div>
            <div class="show-area col-md-10">
                    <div class="Order" data-state="0">
                        <div class="Order-top">
                            <h3>订单管理</h3>
                            <ul>
                                <li class="active" data-select="0">全部订单</li>
                                <li data-select="1">待付款</li>
                                <li data-select="2">待发货</li>
                                <li data-select="3">已发货</li>
                                <li data-select="4">待评价</li>
                                <li data-select="5">已完成</li>
                            </ul>
                            <div class="Order-search">
                                <div class="input-group">
                                    <input type="text"  placeholder="请输入搜索的商品名" id="search">
                                    <div class="input-group-addon">
                                        <button class="layui-icon layui-icon-search search-button" style="border: 0px"></button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="Order-list">
                    <c:forEach items="${allindent}" var="indent" varStatus="status">
     							<div class="panel panel-default showli" data-page="${status.index}">
                                <div class="panel-heading">
                                    <span class="Order-time">下单时间：${indent.indentTime}</span>
                                    <span class="Order-id" data-indentID="${indent.indentID }">订单号：${indent.indentID}</span>
                                    <i class="layui-icon layui-icon-delete pull-right"></i>
                                </div>
                                <div class="panel-body">
                                <c:forEach items="${indent.indentDetaillist}" var="indentDetail" varStatus="status">
                                    <div class="items">
                                    <div class="goods">
                                        <img src="${indentDetail.good.pictureList[0].picturePath}" alt="" width="120">
                                        <span>${indentDetail.good.goodsName}</span>
                                    </div>
                                    <div class="cell">
                                        <span class="deal-state" jspstate="${indent.indentState}">数量：${indentDetail.goodsCount}</span>
                                         <span>样式类型：${indentDetail.good.goodsSpecify}</span> 
                                    </div>
                                    <div class="price">
                                        <span>￥</span>
                                        <span class="number">${indentDetail.good.goodsPrice}</span>
                                    </div>
                                    </div>
                                    </c:forEach>
                                </div>
                                <div class="panel-footer">
                                <div class="cell pull-left" style="margin-top:1%;"><span>总价：￥<strong class="totalPrice"></strong></span></div>
                                	<div class="cell pull-right">
                                	 <span class="target"></span>
                              	<button class="layui-btn layui-btn-radius"></button></div>
                               		
                                </div>	
                            </div>
   					</c:forEach>
   						 <div class="isNoPanel"><i class="layui-icon layui-icon-404"></i><span>目前还没有找到符合的订单哦</span></div>
								 <div class="page">
										<span id="pre">上一页</span>
										<select name="pageNumber" id="PageNumber">
     									 </select>
									    <span id="last">下一页</span>
								</div>  
                        </div>
                    </div>
                    <div class="Message" data-state="1">
                        <h3>账号管理</h3>

                        <div class="Message-list">
                        <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#usermsg" aria-controls="home" role="tab" data-toggle="tab">账号信息</a></li>
                                <li role="presentation"><a href="#resetpwd" aria-controls="profile" role="tab" data-toggle="tab">重置密码</a></li>
                            </ul>

                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="usermsg">
                                    <div class="group">
                                        <label>用户ID:</label>
                                        <span class="customerId">${currentCustomer.customerID }</span>
                                    </div>
                                    
                                    <div class="group">
                                        <label>用户名:</label>
                                        <span class="inputgroup"><input type="text" class="customerName" id="customerName" value="${currentCustomer.customerName }">
                                        		<i class="glyphicon glyphicon-ok text-success"></i>
                            					<i class="glyphicon glyphicon-remove text-danger"></i>
                            					<p class="text-danger">用户名不符合规范</p>
                            					</span>
                                    </div>
                                    <div class="group">
                                         <label>手机号:</label>
                                         <span>${currentCustomer.customerPhone }</span>
                                    </div>
                                     <div class="group">
                                        <label>邮箱:</label>
                                        <span>${currentCustomer.customerEmail }</span>
                                     </div>

                                    <div class="group">
                                        <button class="layui-btn layui-btn-radius save">保存</button>
                                    </div>
                                    
                                </div>
                                <div role="tabpanel" class="tab-pane" id="resetpwd">
                                  
                                    <div class="group">
                                        <label>旧密码</label>
                                        <span class="inputgroup"><input type="password" id="oldcustomerPwd" name="oldcustomerPwd">
                                        	<i class="glyphicon glyphicon-ok text-success"></i>
                            				<i class="glyphicon glyphicon-remove text-danger"></i>
                            				<p class="text-danger">请输入正确的旧密码</p>
                            			</span>
                                    </div>
                                    <div class="group">
                                        <label>新密码</label>
                                        <span class="inputgroup"><input type="password" id="customerPwd" name="customerPwd">
                                        	<i class="glyphicon glyphicon-ok text-success"></i>
                            				<i class="glyphicon glyphicon-remove text-danger"></i>
                            				<p class="text-danger">密码不符合规范</p>
                            			</span>
                                    </div>
                                    <div class="group">
                                        <label>确定新密码</label>
                                        <span class="inputgroup"><input type="password" id="recustomerPwd" name="recustomerPwd">
                                        	<i class="glyphicon glyphicon-ok text-success"></i>
                            				<i class="glyphicon glyphicon-remove text-danger"></i>
                            				<p class="text-danger">密码不一致</p>
                            			</span>
                                    </div>
                                    <input type="hidden" id="OldPassword" value="${currentCustomer.customerPwd}" data-id="${currentCustomer.customerID}">
                                    <div class="group">
                                        <button class="layui-btn layui-btn-radius" id="ResetPwd">确认修改</button>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="Address" data-state="2">
                        <div class="Address-top">
                        <h3>地址管理</h3>
                        <button class="Address-add layui-btn layui-btn-radius layui-btn-primary pull-right" data-toggle="modal" data-target="#myModal">添加地址</button>
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index: 111111111">
                                <div class="modal-dialog" role="document" style="z-index: 111111111">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">地址管理</h4>
                                        </div>
                                       
                                        <div class="modal-body">
                                                    <div class="group">
                                                        <label>用户地址</label>
                                                        <span class="inputgroup"><input type="text" id="addressDetail" name="addressDetail">
                                                        <i class="glyphicon glyphicon-ok text-success"></i>
                            							<i class="glyphicon glyphicon-remove text-danger"></i>
                            							<p class="text-danger">请输入正确的地址</p></span>
                                                    </div>
                                                    <div class="group">
                                                        <label>邮政编码</label>
                                                        <span class="inputgroup"><input type="text" id="addressPostcode" name="addressPostcode">
                                                        <i class="glyphicon glyphicon-ok text-success"></i>
                            							<i class="glyphicon glyphicon-remove text-danger"></i>
                            							<p class="text-danger">输入正确的邮政编码</p>
                                                        </span>
                                                    </div>
                                                    <div class="group">
                                                        <label>联系电话</label>
                                                        <span class="inputgroup addrphone"><input type="text" id="addressPhone" name="addressPhone"> 
                                                        <i class="glyphicon glyphicon-ok text-success"></i>
                            							<i class="glyphicon glyphicon-remove text-danger"></i>
                            							<p class="text-danger">请输入正确的电话号码</p>
                                                        </span>
                                                    </div>
                                                    <div class="group">
                                                        <label>收件人</label>
                                                        <span class="inputgroup"><input type="text" id="addressName" name="addressName">
                                                        <i class="glyphicon glyphicon-ok text-success"></i>
                            							<i class="glyphicon glyphicon-remove text-danger"></i>
                            							<p class="text-danger">请输入正确的收件人</p>
                                                        </span>
                                                    </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="layui-btn-primary layui-btn layui-btn-radius Address-addsubmit" data-dismiss="modal">保存</button>
                                             <button type="button" class="layui-btn-primary layui-btn layui-btn-radius Address-mod" data-dismiss="modal">确认修改</button>
                                            <!--<button class="layui-btn layui-btn-radius layui-btn-primary Address-addsubmit" >确认添加</button>-->
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                    </div>
                        <table class="Address-table table table-hover">
                            <thead>
                            <tr>
                                <th>收件人</th>
                                <th>收货地址</th>
                                <th>收货电话</th>
                                <th>邮政编码</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>

                                    <c:forEach items="${currentCustomer.addressList}" var="address" varStatus="status">
                                    <tr>
                                        <td class="addressName" data-addrId="${address.addressID }">${address.addressName }</td>
                                        <td class="addressDetail">${address.addressDetail }</td>
                                        <td class="addressPhone">${address.addressPhone }</td>
                                        <td class="addressPostcode">${address.addressPostcode }</td>
                                        <td><button class="layui-btn layui-btn-radius layui-btn-primary Address-modify" data-target="#myModal" data-toggle="modal">修改</button>
                                            <button class="layui-btn layui-btn-radius layui-btn-primary Address-delect">删除</button>
                                        </td>
                                    </tr>
                                    </c:forEach>
                            </tbody>
                        </table>
                    </div>
            </div>
         </div>
    </div>
</section>
<div class="back-top"><i class="layui-icon layui-icon-top"></i></div>
<div class="tip"><h4>修改成功</h4></div>
<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath }/layui/lay/modules/layer.js"></script>
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/js/index.js"></script>
<script src="${pageContext.request.contextPath }/js/myCenter.js"></script>
<script>

		$(document).ready(function () {
			var customer= "${currentCustomer.customerName}";
			if(customer==""){
				$("#myCenter").hide();
				$("#signout").hide();
				$("#signin").show();
				$("#signup").show();
				$(".shopping-cart").hide();
			}
			else{
				$("#myCenter").show();
				$("#signout").show();
				$("#signin").hide();
				$("#signup").hide();
				$(".shopping-cart").show();
			}
		});

		$(".Message-list .save").click(function(){
		    var isTrue=$("#customerName").attr("flag");
		    if(isTrue=='true'){
			var customerID="${currentCustomer.customerID}";
			var customerName=$("#customerName").val();
			$.ajax({    
			 type : "post",
			 async:false, 
			 url:"changeName",
			 dataType:"jsonp",
			 jsonp:"callback",
			 data:{
				 customerID:customerID,
		    	customerName:customerName ,
				t:new Date()
			},
	         success:function(res){     
						if(res.result!=""){
							console.log(res.result);
								layer.open({
           				 			title:'修改失败'
           				 			,content: res.result
            						,anim: 6 
        						});
						}
						else{
							$(".tip").fadeIn();
							$(".tip").delay(1500).fadeOut();
						}
	         },    
	         error:function(e){ 
				alert("提交失败");
	         }    
	     	});
	      } 
		});  
</script>
</body>
</html>