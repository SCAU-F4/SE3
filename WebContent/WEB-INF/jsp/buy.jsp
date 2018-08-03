<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>提交订单</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/modules/layer/default/layer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/buy.css">
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

<section class="SE3_buy">
    <div class="address">
        <div class="buy_head">
            <span>收货信息</span>
        </div>
        <div class="change">
            <div class="address_detail">
                <div class="left">
                    <div class="modify">
                        <span>修改地址</span>
                    </div>
                    <div class="text">
                        <span>收 货 人 :</span>
                        <span class="name_text">黄帅哥</span>
                    </div>
                    <div class="text">
                        <span>联系方式 : </span>
                        <span class="phone_text">15692021111</span>
                    </div>
                    <div class="text">
                        <span>邮 编 : </span>
                        <span class="mail_text">523000</span>
                    </div>
                    <div class="text">
                        <span>收货地址 :</span>
                        <span class="address_text">广东省广州市天河区华南农业大学华山学生公寓15栋</span>
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
                            <span>收货人:</span>
                            <input class="short_input name_text" type="text">
                            <i class="glyphicon glyphicon-ok"></i>
                            <i class="glyphicon glyphicon-remove"></i>
                        </div>
                    </div>
                    <div>
                        <div class="phone_div">
                            <span>手机号码:</span>
                            <input class="short_input phone_text" type="text">
                            <i class="glyphicon glyphicon-ok"></i>
                            <i class="glyphicon glyphicon-remove"></i>
                        </div>
                        <div>
                            <span>邮编:</span>
                            <input class="short_input mail_text" type="text">
                            <i class="glyphicon glyphicon-ok"></i>
                            <i class="glyphicon glyphicon-remove"></i>
                        </div>
                    </div>
                    <div class="address_text">
                        <span>详细地址:</span>
                        <textarea cols="30" rows="10"></textarea>
                        <i class="glyphicon glyphicon-ok"></i>
                        <i class="glyphicon glyphicon-remove"></i>
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
                            <span>收货人:</span>
                            <input class="short_input name_text" type="text">
                            <i class="glyphicon glyphicon-ok"></i>
                            <i class="glyphicon glyphicon-remove"></i>
                        </div>
                    </div>
                    <div>
                        <div class="phone_div">
                            <span>手机号码:</span>
                            <input class="short_input phone_text" type="text">
                            <i class="glyphicon glyphicon-ok"></i>
                            <i class="glyphicon glyphicon-remove"></i>
                        </div>
                        <div>
                            <span>邮编:</span>
                            <input class="short_input mail_text mail_input" type="text">
                            <i class="glyphicon glyphicon-ok"></i>
                            <i class="glyphicon glyphicon-remove"></i>
                        </div>
                    </div>
                    <div class="address_text">
                        <span>详细地址:</span>
                        <textarea cols="30" rows="10"></textarea>
                        <i class="glyphicon glyphicon-ok"></i>
                        <i class="glyphicon glyphicon-remove"></i>
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
                    <div class="choose active">
                        <div class="text">
                            <span>收 货 人 :</span>
                            <span class="choose_name_text">黄帅哥</span>
                        </div>
                        <div class="second">
                            <div class="text">
                                <span>联系方式 : </span>
                                <span class="choose_phone_text">15692021111</span>
                            </div>
                            <div class="text">
                                <span>邮 编 : </span>
                                <span class="choose_mail_text">523111</span>
                            </div>
                        </div>
                        <div class="text">
                            <span>收货地址 :</span>
                            <span class="choose_address_text">广东省广州市天河区华南农业大学111栋</span>
                        </div>
                    </div>
                    <div class="choose">
                        <div class="text">
                            <span>收 货 人 :</span>
                            <span class="choose_name_text">黄大大大帅哥</span>
                        </div>
                        <div class="second">
                            <div class="text">
                                <span>联系方式 : </span>
                                <span class="choose_phone_text">15692022222</span>
                            </div>
                            <div class="text">
                                <span>邮 编 : </span>
                                <span class="choose_mail_text">523222</span>
                            </div>
                        </div>
                        <div class="text">
                            <span>收货地址 :</span>
                            <span class="choose_address_text">广东省广州市天河区华南农业大学222栋</span>
                        </div>
                    </div>
                    <div class="choose">
                        <div class="text">
                            <span>收 货 人 :</span>
                            <span class="choose_name_text">黄炒鸡帅哥</span>
                        </div>
                        <div class="second">
                            <div class="text">
                                <span>联系方式 : </span>
                                <span class="choose_phone_text">15692023333</span>
                            </div>
                            <div class="text">
                                <span class="mail_text">邮 编 : </span>
                                <span class="choose_mail_text">523333</span>
                            </div>
                        </div>
                        <div class="text">
                            <span>收货地址 :</span>
                            <span class="choose_address_text">广东省广州市天河区华南农业大学333栋</span>
                        </div>
                    </div>
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
                <tr>
                    <td>
                        <img src="${pageContext.request.contextPath }/img/product/product1_1.png">
                        <div class="goods_detail">
                            <div class="goods_name">24寸 纯PC“铝框”（非全铝）拉杆箱</div>
                            <div class="goods_classify">玫红色</div>
                        </div>
                    </td>
                    <td>
                        <span>¥</span>
                        <span>389.00</span>
                    </td>
                    <td>1</td>
                    <td>
                        <span>¥</span>
                        <span>389.00</span>
                    </td>
                </tr>

                <tr>
                    <td>
                        <img src="${pageContext.request.contextPath }/img/product/product2_1.png">
                        <div class="goods_detail">
                            <div class="goods_name">24寸 纯PC“铝框”（非全铝）拉杆箱</div>
                            <div class="goods_classify">黑色</div>
                        </div>
                    </td>
                    <td>
                        <span>¥</span>
                        <span>389.00</span>
                    </td>
                    <td>1</td>
                    <td>
                        <span>¥</span>
                        <span>389.00</span>
                    </td>
                </tr>

                <tr>
                    <td>
                        <img src="${pageContext.request.contextPath }/img/product/product3_1.png">
                        <div class="goods_detail">
                            <div class="goods_name">Kinven 灭蚊魔方</div>
                            <div class="goods_classify">白色</div>
                        </div>
                    </td>
                    <td>
                        <span>¥</span>
                        <span>189.00</span>
                    </td>
                    <td>1</td>
                    <td>
                        <span>¥</span>
                        <span>189.00</span>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="pay">
            <div>
                <div>
                    <div class="pay_text">
                        <span>商品合计：</span>
                        <span class="price">
                                <span>¥</span>
                                <span>967.00</span>
                            </span>
                    </div>
                    <div class="pay_text">
                        <span>运费：</span>
                        <span class="price">
                                <span>¥</span>
                                <span>967.00</span>
                            </span>
                    </div>
                </div>
                <div class="pay_text total_text">
                    <span>应付总额：</span>
                    <span class="price total">
                                <span>¥</span>
                                <span>967.00</span>
                            </span>
                </div>
                <span class="pay_btn">去付款</span>
                <div class="re_address">
                    <div class="name">
                        <span>黄帅哥</span>
                        <span>15692021111</span>
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
<script src="${pageContext.request.contextPath }/js/buy.js"></script>
<script src="${pageContext.request.contextPath }/js/detail.js"></script>

</body>
</html>