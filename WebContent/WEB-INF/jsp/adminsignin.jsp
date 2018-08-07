<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>华农有货管理员后台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap-responsive.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/styles.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/fullcalendar.css" />
    <script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.knob.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.sparkline.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.tablesorter.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/jquery.peity.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/fullcalendar.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/gcal.js"></script>
    <script src="${pageContext.request.contextPath }/js/setup.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
  <body>
    <div id="in-nav">
      <div class="container">
        <div class="row">
          <div class="span12">
             <h4><strong>华农有货</strong></h4>
          </div>
        </div>
      </div>
    </div>
<div class="container">
  <div class="row">
    <div class="span6 offset2">
      <div class="login">
        <form id="mainform" method="post" action="adminsignin">
          <div class="control-group">
            <div class="controls">
              <h4>登录</h4>
              ${ error}
            </div>
          </div>
          <div class="control-group">
            <label for="inputEmail" class="control-label">账号</label>
            <div class="controls">
              <input id="inputEmail" type="text" placeholder="账号" />
            </div>
          </div>
          <div class="control-group">
            <label for="inputPassword" class="control-label">密码</label>
            <div class="controls">
              <input id="inputPassword" type="password" placeholder="密码" />
            </div>
          </div>
          <div class="control-group"> 
            <div class="controls"><button type="submit" class="btn">登录</button></div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

  </body><!-- <script>protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://'; address = protocol + window.location.host + window.location.pathname + '/ws'; socket = new WebSocket(address);
socket.onmessage = function(msg) { msg.data == 'reload' && window.location.reload() }</script> -->
</html>