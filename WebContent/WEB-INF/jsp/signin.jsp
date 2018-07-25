<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/sign.css">
</head>
<body>
<header id="SE3_header">
    <!--上部分-->
    <div class="top-bar">
        <div class="container">
            <div class="row">
                <div class="col-md-7 text-muted"><p>好的生活，没那么贵</p></div>
                <div class="col-md-5 ">
                    <a href="signup.html">注册</a>
                    <a href="signin.html">登录</a>
                </div>
            </div>
        </div>
    </div>
</header>

<section id="SE3_signin">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="jumbotron">
                    <h1>一起</h1>
                    <h1>享受好生活</h1>

                </div>
            </div>
            <div class="col-md-5">
                <div class="form-part">
                <form action="#" >
                    <h3>登陆</h3>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="layui-icon layui-icon-username input-group-addon"></div>
                            <input type="text" class="form-control" id="name" placeholder="请输入用户名">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="layui-icon layui-icon-password input-group-addon"></div>
                            <input type="password" class="form-control" id="password" placeholder="请输入密码">
                        </div>
                    </div>
                    <div class="submitButton">
                        <button type="reset" class="layui-btn layui-btn-radius layui-btn-primary">登陆</button>
                        <a class="layui-btn layui-btn-radius layui-btn-primary" id="submit">注册</a></div>
                </form>
            </div>
            </div>
            </div>
        </div>
    </div>
</section>
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/js/sign.js"></script>
</body>
</html>