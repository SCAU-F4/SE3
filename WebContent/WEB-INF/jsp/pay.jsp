<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>付款</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/modules/layer/default/layer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/pay.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
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
                <img src="lib/img/icon/logo.png" alt="logo">
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
                                            <a href="#">
                                                <div><img src="lib/img/icon/xingli.png" alt=""><span>行李箱包</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/nanxing.png" alt=""><span>男士箱包</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/nvxing.png" alt=""><span>女性箱包</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/qianbao.png" alt=""><span>钱包配件</span></div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>

                            <li class="cloth-li"><a href="#">服装</a>
                                <div class="cloth-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/Tshirt.png" alt=""><span>清爽短袖</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/shirt.png" alt=""><span>时尚衬衫</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/dress.png" alt=""><span>性感长裙</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/ku.png" alt=""><span>潮流裤类</span></div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="food-li"><a href="#">饮食</a>
                                <div class="food-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/xiaochi.png" alt=""><span>美味零食</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/shuiguo.png" alt=""><span>水果坚果</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/rou.png" alt=""><span>新鲜肉类</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/yinliao.png" alt=""><span>饮料酒水</span></div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li class="sport-li"><a href="#">文体</a>
                                <div class="sport-li container downmenu">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/wenju.png" alt=""><span>精美文具</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/huwai.png" alt=""><span>运动户外</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/yinyue.png" alt=""><span>音乐相关</span></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div><img src="lib/img/icon/yinshi.png" alt=""><span>影视相关</span></div>
                                            </a>
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

<section class="SE3_pay">
    <div>
        <div>选择付款方式</div>
        <div>
            <span>实付 :</span>
            <span>
                <span>¥</span>
                <span>189.00</span>
            </span>
        </div>
    </div>
    <div>
        <div>支付方式</div>
        <img src="${pageContext.request.contextPath }/img/product/weixin.jpg">
        <img src="${pageContext.request.contextPath }/img/product/zhifubao.jpg">
    </div>
    <span>已完成付款</span>
</section>

<section class="SE3_tail">
    <div class="serve">
        <div class="col-md-4 detail_serve">
            <img src="${pageContext.request.contextPath }/img/icon/shield.png">
            <span>30天无忧退换货</span>
        </div>
        <div class="col-md-4 detail_serve">
            <img class="car" src="${pageContext.request.contextPath }/img/icon/car.png">
            <span>满88元免邮费</span>
        </div>
        <div class="col-md-4 detail_serve">
            <img src="${pageContext.request.contextPath }/img/icon/nong.png">
            <span>华农有货品质保证</span>
        </div>
    </div>
</section>

<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script src="${pageContext.request.contextPath }/layui/lay/modules/layer.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/js/index.js"></script>
<script src="${pageContext.request.contextPath }/js/pay.js"></script>

</body>
</html>