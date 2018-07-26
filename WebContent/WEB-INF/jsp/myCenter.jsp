<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${currentCustomer.customerName}的管理中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css">
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
                   		<a href="signup" id="signup">注册</a>
                        <a href="signin" id="signin">登录</a>
                        <a href="mycenter" id="myCenter">个人中心</a>
                        <a href="signout" id="signout">注销</a>
                </div>
            </div>
        </div>
    </div>
    <!--中间部分-->
    <div class="boxshadow">
        <div class="top-main">
            <div id="logo_img">
                <img src="${pageContext.request.contextPath }/img/logo.png.png" alt="logo">
            </div>
            <div id="serech_input">
                <input type="text" value="雅迪电动车只要999">
                <i class="glyphicon glyphicon-search"></i>
            </div>
        </div>
        <!--下部分-->
        <div class="container">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="home"><a href="/SE3-F4">首页<span class="sr-only">首页</span></a></li>
                            <li class="bag-li"><a href="#">箱包配饰</a>
                                <div class="bag-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/xingli.png" alt=""><span>行李箱包</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/nanxing.png" alt=""><span>男士箱包</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/nvxing.png" alt=""><span>女性箱包</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/qianbao.png" alt=""><span>钱包配件</span></div></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            <li class="cloth-li"><a href="#">服装</a>
                                <div class="cloth-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/Tshirt.png" alt=""><span>清爽短袖</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/shirt.png" alt=""><span>时尚衬衫</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/dress.png" alt=""><span>性感长裙</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/ku.png" alt=""><span>潮流裤类</span></div></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="food-li"><a href="#">饮食</a>
                                <div class="food-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/xiaochi.png" alt=""><span>美味零食</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/shuiguo.png" alt=""><span>水果坚果</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/rou.png" alt=""><span>新鲜肉类</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/yinliao.png" alt=""><span>饮料酒水</span></div></a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="sport-li"><a href="#">文体</a>
                                <div class="sport-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/wenju.png" alt=""><span>精美文具</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/huwai.png" alt=""><span>运动户外</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/yinyue.png" alt=""><span>音乐相关</span></div></a>
                                        </li>
                                        <li>
                                            <a href="#"><div><img src="${pageContext.request.contextPath }/img/yinshi.png" alt=""><span>影视相关</span></div></a>
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
                                    <input type="text"  placeholder="请输入搜索的订单号" id="search">
                                    <div class="input-group-addon">
                                        <button class="layui-icon layui-icon-search search-button" style="border: 0px"></button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="Order-list">


                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <span class="Order-time">下单时间：2017-06-01 21:58:54</span>
                                    <span class="Order-id">订单号：13436510</span>
                                    <i class="layui-icon layui-icon-delete pull-right"></i>
                                </div>
                                <div class="panel-body">
                                    <div class="goods">
                                        <img src="${pageContext.request.contextPath }/img/dingdan1.png" alt="">
                                        <span>日系百褶蝴蝶结钱包</span>
                                    </div>
                                    <div class="cell">
                                        <span class="deal-state" data-state="5">交易完成</span>
                                        <button class="layui-btn layui-btn-radius">立马评价</button>
                                    </div>
                                    <div class="price">
                                        <span>￥</span>
                                        <span class="number">189</span>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <span class="Order-time">下单时间：2017-06-02 21:58:54</span>
                                    <span class="Order-id">订单号：13436510</span>
                                    <i class="layui-icon layui-icon-delete pull-right"></i>
                                </div>
                                <div class="panel-body">
                                    <div class="goods">
                                        <img src="${pageContext.request.contextPath }/img/dingdan1.png" alt="">
                                        <span>日系百褶蝴蝶结钱包</span>
                                    </div>
                                    <div class="cell">
                                        <span class="deal-state" data-state="1">待付款</span>
                                        <button class="layui-btn layui-btn-radius">去付款</button>
                                    </div>
                                    <div class="price">
                                        <span>￥</span>
                                        <span class="number">189</span>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <span class="Order-time">下单时间：2017-06-03 21:58:54</span>
                                    <span class="Order-id">订单号：13436511</span>
                                    <i class="layui-icon layui-icon-delete pull-right"></i>
                                </div>
                                <div class="panel-body">
                                    <div class="goods">
                                        <img src="${pageContext.request.contextPath }/img/dingdan1.png" alt="">
                                        <span>日系百褶蝴蝶结钱包</span>
                                    </div>
                                    <div class="cell">
                                        <span class="deal-state" data-state="4">待评价</span>
                                        <button class="layui-btn layui-btn-radius">立马评价</button>
                                    </div>
                                    <div class="price">
                                        <span>￥</span>
                                        <span class="number">189</span>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <span class="Order-time">下单时间：2017-06-04 21:58:54</span>
                                    <span class="Order-id">订单号：13436512</span>
                                    <i class="layui-icon layui-icon-delete pull-right"></i>
                                </div>
                                <div class="panel-body">
                                    <div class="goods">
                                        <img src="${pageContext.request.contextPath }/img/dingdan1.png" alt="">
                                        <span>日系百褶蝴蝶结钱包</span>
                                    </div>
                                    <div class="cell">
                                        <span class="deal-state" data-state="3">已发货</span>
                                    </div>
                                    <div class="price">
                                        <span>￥</span>
                                        <span class="number">189</span>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <span class="Order-time">下单时间：2017-06-06 21:58:54</span>
                                    <span class="Order-id">订单号：13436514</span>
                                    <i class="layui-icon layui-icon-delete pull-right"></i>
                                </div>
                                <div class="panel-body">
                                    <div class="goods">
                                        <img src="${pageContext.request.contextPath }/img/dingdan1.png" alt="">
                                        <span>日系百褶蝴蝶结钱包</span>
                                    </div>
                                    <div class="cell">
                                        <span class="deal-state" data-state="3">已发货</span>
                                    </div>
                                    <div class="price">
                                        <span>￥</span>
                                        <span class="number">189</span>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <span class="Order-time">下单时间：2017-06-06 21:58:54</span>
                                    <span class="Order-id">订单号：13436513</span>
                                    <i class="layui-icon layui-icon-delete pull-right"></i>
                                </div>
                                <div class="panel-body">
                                    <div class="goods">
                                        <img src="${pageContext.request.contextPath }/img/dingdan1.png" alt="">
                                        <span>日系百褶蝴蝶结钱包</span>
                                    </div>
                                    <div class="cell">
                                        <span class="deal-state" data-state="2">待发货</span>
                                    </div>
                                    <div class="price">
                                        <span>￥</span>
                                        <span class="number">189</span>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <span class="Order-time">下单时间：2017-06-06 21:58:54</span>
                                    <span class="Order-id">订单号：13436513</span>
                                    <i class="layui-icon layui-icon-delete pull-right"></i>
                                </div>
                                <div class="panel-body">
                                    <div class="goods">
                                        <img src="${pageContext.request.contextPath }/img/dingdan1.png" alt="">
                                        <span>日系百褶蝴蝶结钱包</span>
                                    </div>
                                    <div class="cell">
                                        <span class="deal-state" data-state="2">待发货</span>
                                    </div>
                                    <div class="price">
                                        <span>￥</span>
                                        <span class="number">189</span>
                                    </div>
                                </div>
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
                                        <span><input type="text" class="customerName" id="customerName" value="${currentCustomer.customerName }"></span>
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
                                    <form action="">
                                    <div class="group">
                                        <label>旧密码</label>
                                        <span><input type="password" id="oldcustomerPwd" name="oldcustomerPwd"></span>
                                    </div>
                                    <div class="group">
                                        <label>新密码</label>
                                        <span><input type="password" id="customerPwd" name="customerPwd"></span>
                                    </div>
                                    <div class="group">
                                        <label>确定新密码</label>
                                        <span><input type="password" id="recustomerPwd" name="recustomerPwd"></span>
                                    </div>
                                    <div class="group">
                                        <button class="layui-btn layui-btn-radius" type="submit">确认修改</button>
                                    </div>
                                    </form>
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
                                        <form action="">
                                        <div class="modal-body">


                                                    <div class="group">
                                                        <label>用户地址</label>
                                                        <span><input type="text" id="addressDetail" name="addressDetail"></span>
                                                    </div>
                                                    <div class="group">
                                                        <label>邮政编码</label>
                                                        <span><input type="text" id="addressPostcode" name="addressPostcode"></span>
                                                    </div>
                                                    <div class="group">
                                                        <label>联系电话</label>
                                                        <span><input type="text" id="addressPhone" name="addressPhone"></span>
                                                    </div>
                                                    <div class="group">
                                                        <label>收件人</label>
                                                        <span><input type="text" id="addressName" name="addressName"></span>
                                                    </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="layui-btn-primary layui-btn layui-btn-radius Address-addsubmit" data-dismiss="modal">保存</button>
                                             <button type="button" class="layui-btn-primary layui-btn layui-btn-radius Address-mod" data-dismiss="modal">确认修改</button>
                                            <!--<button class="layui-btn layui-btn-radius layui-btn-primary Address-addsubmit" >确认添加</button>-->
                                        </div>
                                        </form>
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
                                    <tr>
                                        <td class="addressName">jj昌</td>
                                        <td class="addressDetail">华南农业大学华山14栋</td>
                                        <td class="addressPhone">138001380000</td>
                                        <td class="addressPostcode">523100</td>
                                        <td><button class="layui-btn layui-btn-radius layui-btn-primary Address-modify" data-target="#myModal" data-toggle="modal">修改</button>
                                            <button class="layui-btn layui-btn-radius layui-btn-primary Address-delect">删除</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="addressName">黄jj</td>
                                        <td class="addressDetail">华南农业大学泰山7栋</td>
                                        <td class="addressPhone">138001380000</td>
                                        <td class="addressPostcode">523100</td>
                                        <td><button class="layui-btn layui-btn-radius layui-btn-primary  Address-modify" data-target="#myModal" data-toggle="modal">修改</button>
                                            <button class="layui-btn layui-btn-radius layui-btn-primary Address-delect">删除</button>
                                        </td>
                                    </tr>
                            </tbody>
                        </table>


                    </div>
            </div>
         </div>
    </div>
</section>
<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.form.js"></script>
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
			}
			else{
				$("#myCenter").show();
				$("#signout").show();
				$("#signin").hide();
				$("#signup").hide();
			}
		
		});

		$(".Message-list .save").click(function(){
			var name=$("#customerName").val();
			/*
			$.ajax({    
			 contentType:"application/json;charset=utf-8",
	         type : "post",      
	         url : "http://localhost:8080/SE3-F4/user/changeName",
	         //dataType:"jsonp",
			 //data: JSON.stringify({
			 //"customerName":"name"
			 //}), 
			 data:'{"customerName":"name"}',
	         success:function(res){     
						alert("ok");
	         },    
	         error:function(e){ 
		         
				alert("提交失败");
	         }    
	     });   */

		    $.ajax({
		        type: "POST",
		        url: "http://localhost:8080/SE3-F4/user/changeName",
		        contentType: "application/json; charset=utf-8",
		        data: JSON.stringify(GetJsonData()),
		        dataType: "json",
		        success: function (message) {
		            
		            alert("请求已提交！");
		            
		        },
		        error: function (message) {
		        	alert("提交数据失败！");
		        }
		    });
		});

		function GetJsonData() {
		    var json = {
		    	"customerName":"name",
		        "name": "蜘蛛侠"
		    };
		    return json;
		}
		</script>
</body>
</html>