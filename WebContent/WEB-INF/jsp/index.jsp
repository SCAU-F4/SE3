<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>华农有货</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
</head>
<body>
<!--头-->
<header id="SE3_header">
    <!--上部分-->
    <div class="top-bar">
        <div class="container">
                <div class="row">
                    <div class="col-md-7 text-muted"><p>好的生活，没那么贵</p></div>
                    <div class="col-md-5 top-right">
                        <a href="user/signup" id="signup">注册</a>
                        <a href="user/signin" id="signin">登录</a>
                        <a href="user/mycenter" id="myCenter">个人中心</a>
                        <a href="user/signout" id="signout">注销</a>
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
                    <li class="home active"><a href="/SE3-F4">首页<span class="sr-only">首页</span></a></li>
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

<!--轮播图-->
<section id="SE3_carousel">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="${pageContext.request.contextPath }/img/1.jpg" alt="...">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath }/img/2.jpg" alt="...">
            </div>
            <div class="item">
                <img src="${pageContext.request.contextPath }/img/3.jpg" alt="...">
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</section>

<!--hot-->
<section id="SE3_hot">
    <div class="container">
        <div class="row">
            <div class="Title"><h1>人气推荐</h1></div>
            <div class="col-md-4 left">
                    <div class="Lagerimg">
                        <a href="#">
                            <img src="${pageContext.request.contextPath }/img/lagerimg.png" alt="">
                        </a>
                    </div>
                    <div class="Lagerimg-title">
                        <div class="Lagerimg-title-top"><span>限时购</span></div>
                        <div class="Lagerimg-title-name">
                            <h4>平滑密编清凉仿藤席</h4>
                            <div class="Lagerimg-title-price"><span class="text-danger">¥</span><span class="text-danger">269.1</span></div>
                        </div>
                    </div>
            </div>
            <div class="col-md-8 right">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 product">
                            <div class="littleimg">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/img/product1.png" alt="">
                                </a>
                            </div>
                                <div class="littleimg-title">
                                    <div class="littleimg-title-top"><span>限时购</span></div>
                                    <div class="littleimg-title-name">
                                        <h4>智造N520除螨吸尘器</h4>
                                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">499</span></div>
                                    </div>
                                </div>
                            <div class="littleimg">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/img/product2.png" alt="">
                                </a>
                            </div>
                            <div class="littleimg-title">
                                <div class="littleimg-title-top"><span>满赠</span></div>
                                <div class="littleimg-title-name">
                                    <h4>玲珑柑普</h4>
                                    <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">85</span></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 product">
                            <div class="littleimg">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/img/product3.png" alt="">
                                </a>
                            </div>
                            <div class="littleimg-title">
                                <div class="littleimg-title-top"><span>满折</span></div>
                                <div class="littleimg-title-name">
                                    <h4>美国制造除甲醛空气净化剂227g</h4>
                                    <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">45</span></div>
                                </div>
                            </div>
                            <div class="littleimg">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/img/product4.png" alt="">
                                </a>
                            </div>
                            <div class="littleimg-title">
                                <div class="littleimg-title-top"><span>黄大仙同款</span></div>
                                <div class="littleimg-title-name">
                                    <h4>全净皓齿变速式声波电动牙刷</h4>
                                    <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">85</span></div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 product">
                            <div class="littleimg">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/img/product5.png" alt="">
                                </a>
                            </div>
                            <div class="littleimg-title">
                                <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                                <div class="littleimg-title-name">
                                    <h4>蛋壳杯旅行茶具套装</h4>
                                    <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">499</span></div>
                                </div>
                            </div>
                            <div class="littleimg">
                                <a href="#">
                                    <img src="${pageContext.request.contextPath }/img/product6.png" alt="">
                                </a>
                            </div>
                            <div class="littleimg-title">
                                <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                                <div class="littleimg-title-name">
                                    <h4>24寸拉杆箱</h4>
                                    <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">85</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--箱包配饰-->
<section class="SE3_product">
    <div class="container">
        <div class="row">
            <div class="producttitle">
            <h1>箱包配饰</h1>
            <ol class="breadcrumb">
                <li class="text-muted"><a href="#" class="text-muted">行李箱</a></li>
                <li class="text-muted"><a href="#" class="text-muted">女士包袋</a></li>
                <li class="text-muted"><a href="#" class="text-muted">男士包袋</a></li>
                <li class="text-muted"><a href="#" class="text-muted">钱包配件</a></li>
            </ol>
            </div>
            <div class="col-md-12">
                <img src="${pageContext.request.contextPath }/img/xiebig.jpg" alt="" width="1100">
            </div>
        </div>
        <div class="row">

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag1.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>金属流苏小方包</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">299</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag2.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>24寸山海经印花PC铝框拉杆箱</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">539</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag3.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4> 多功能商务旅行袋</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">369</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag4.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>头层牛皮长款拉链钱包</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">269</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--服装-->
<section class="SE3_product">
    <div class="container">
        <div class="row">
            <div class="producttitle">
                <h1>箱包配饰</h1>
                <ol class="breadcrumb">
                    <li class="text-muted"><a href="#" class="text-muted">行李箱</a></li>
                    <li class="text-muted"><a href="#" class="text-muted">女士包袋</a></li>
                    <li class="text-muted"><a href="#" class="text-muted">男士包袋</a></li>
                    <li class="text-muted"><a href="#" class="text-muted">钱包配件</a></li>
                </ol>
            </div>
            <div class="col-md-12">
                <img src="${pageContext.request.contextPath }/img/xiebig.jpg" alt="" width="1100">
            </div>
        </div>
        <div class="row">

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag1.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>金属流苏小方包</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">299</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag2.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>24寸山海经印花PC铝框拉杆箱</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">539</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag3.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4> 多功能商务旅行袋</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">369</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag4.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>头层牛皮长款拉链钱包</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">269</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--饮食-->
<section class="SE3_product">
    <div class="container">
        <div class="row">
            <div class="producttitle">
                <h1>箱包配饰</h1>
                <ol class="breadcrumb">
                    <li class="text-muted"><a href="#" class="text-muted">行李箱</a></li>
                    <li class="text-muted"><a href="#" class="text-muted">女士包袋</a></li>
                    <li class="text-muted"><a href="#" class="text-muted">男士包袋</a></li>
                    <li class="text-muted"><a href="#" class="text-muted">钱包配件</a></li>
                </ol>
            </div>
            <div class="col-md-12">
                <img src="${pageContext.request.contextPath }/img/xiebig.jpg" alt="" width="1100">
            </div>
        </div>
        <div class="row">

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag1.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>金属流苏小方包</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">299</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag2.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>24寸山海经印花PC铝框拉杆箱</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">539</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag3.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4> 多功能商务旅行袋</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">369</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag4.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>头层牛皮长款拉链钱包</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">269</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--文体-->
<section class="SE3_product">
    <div class="container">
        <div class="row">
            <div class="producttitle">
                <h1>箱包配饰</h1>
                <ol class="breadcrumb">
                    <li class="text-muted"><a href="#" class="text-muted">行李箱</a></li>
                    <li class="text-muted"><a href="#" class="text-muted">女士包袋</a></li>
                    <li class="text-muted"><a href="#" class="text-muted">男士包袋</a></li>
                    <li class="text-muted"><a href="#" class="text-muted">钱包配件</a></li>
                </ol>
            </div>
            <div class="col-md-12">
                <img src="${pageContext.request.contextPath }/img/xiebig.jpg" alt="" width="1100">
            </div>
        </div>
        <div class="row">
            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag1.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>金属流苏小方包</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">299</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag2.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>24寸山海经印花PC铝框拉杆箱</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">539</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag3.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4> 多功能商务旅行袋</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">369</span></div>
                    </div>
                </div>
            </div>

            <div class="product col-md-3">
                <div class="littleimg">
                    <a href="#">
                        <img src="${pageContext.request.contextPath }/img/bag4.png" alt="">
                    </a>
                </div>
                <div class="littleimg-title">
                    <div class="littleimg-title-top"><span style="background-color: #fff;"></span></div>
                    <div class="littleimg-title-name">
                        <h4>头层牛皮长款拉链钱包</h4>
                        <div class="littleimg-title-price"><span class="text-danger">¥</span><span class="text-danger">269</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%-- ${currentCustomer.customerName} --%>
</section>

<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/js/index.js"></script>
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
</script>
</body>
</html>