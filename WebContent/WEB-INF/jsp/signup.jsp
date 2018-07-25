<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/modules/layer/default/layer.css">
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

<section id="SE3_signup">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <div class="jumbotron">
                    <h1>华农的生活</h1>
                    <h1>就是这么贵</h1>

                </div>
            </div>
            <div class="col-md-5">
                <div class="form-part">
                <form  method="post">
                    <h3>注册</h3>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="layui-icon layui-icon-username input-group-addon"></div>
                            <input type="text" class="form-control" id="customerName" name="customerName" placeholder="请输入用户名">
                            <span class="glyphicon glyphicon-ok text-success"></span>
                            <span class="glyphicon glyphicon-remove text-danger"></span>
                        </div>
                        <p style="margin-bottom: 0"><strong class="text-danger">用户名不符合规范</strong></p>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="layui-icon layui-icon-password input-group-addon"></div>
                            <input type="password" class="form-control" id="customerPwd" name="customerPwd" placeholder="请输入密码">
                            <span class="glyphicon glyphicon-ok text-success"></span>
                            <span class="glyphicon glyphicon-remove text-danger"></span>
                        </div>
                        <p style="margin-bottom: 0"><strong class="text-danger">密码不符合规范</strong></p>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="layui-icon layui-icon-password input-group-addon"></div>
                            <input type="password" class="form-control" id="repassword" name="repassword" placeholder="请再次输入密码">
                            <span class="glyphicon glyphicon-ok text-success"></span>
                            <span class="glyphicon glyphicon-remove text-danger"></span>
                        </div>
                        <p style="margin-bottom: 0"><strong class="text-danger">密码不一致</strong></p>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon layui-icon layui-icon-cellphone"></div>
                            <input type="tel" class="form-control" id="customerPhone" name="customerPhone" placeholder="请输入手机号码">
                            <span class="glyphicon glyphicon-ok text-success"></span>
                            <span class="glyphicon glyphicon-remove text-danger"></span>
                        </div>
                        <p style="margin-bottom: 0"><strong class="text-danger">手机号不符合规范</strong></p>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="layui-icon layui-icon-website input-group-addon"></div>
                            <input type="email" class="form-control" id="customerEmail" name="customerEmail" placeholder="请输入邮箱">
                            <span class="glyphicon glyphicon-ok text-success"></span>
                            <span class="glyphicon glyphicon-remove text-danger"></span>
                        </div>
                        <p style="margin-bottom: 0"><strong class="text-danger">邮箱不符合规范</strong></p>
                    </div>
                    <div class="submitButton">
                        <button type="reset" class="layui-btn layui-btn-radius layui-btn-primary">重置</button>
                        <button class="layui-btn layui-btn-radius layui-btn-primary" type="submit" id="submit">注册</button></div>
                </form>
               
                </div>
            </div>
        </div>

    </div>
</section>
<script src="${pageContext.request.contextPath }/layui/layui.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/layui/lay/modules/layer.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/js/sign.js"></script>
<script>
var lock=1;
 var text="${error}";
           console.log(text);
              if(text!=""&&lock==1)
    	{
   		layer.open({
            title:'注册失败'
            ,content: text
            ,id:'Sign_result'
            ,anim: 6 //这里content是一个普通的String
            ,success:function(layero,index){
            	lock=0;
            }
            ,end:function(layero,index){
            	lock=1;
            }
        });
    	}
           </script>
</body>
</html>