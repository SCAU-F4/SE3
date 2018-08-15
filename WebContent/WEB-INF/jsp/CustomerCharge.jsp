<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>IndustryApp Template</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/layui/css/layui.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.admin.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap-responsive.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/styles.css" />
	    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/toastr.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/fullcalendar.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/simplePaging.css"/>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/customerCharge.css"/>

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
						<li>
							<a href="${pageContext.request.contextPath }/admin/tongji">
								<i class="batch home"></i>
								<br />
								首页
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/admin/goodsCharge">
								<i class="batch stream"></i>
								<br />
								商品管理
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/admin/IndentCharge">
								<i class="batch forms"></i>
								<br />
								订单管理
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/admin/CustomerCharge" class="active">
								<i class="batch users"></i>
								<br />
								用户管理
							</a>
						</li>
					</ul>
				</div>
      </div>
    </div>
  </div>
  <div class="page">
    <div class="page-container">
      <div class="container">
        <div class="row">
          <div class="span12">
            <h4 class="header">订单</h4>
            <table class="table table-striped sortable">
              <thead>
              <tr>
                <th>用户ID</th>
                <th>用户名</th>
                <th>手机号码</th>
                <th>邮箱</th>
                <th>账号密码</th>
              </tr>
              </thead>
              <tbody class="indentList-body">
                 <c:forEach items="${allCustomeList}" var="customerlist" varStatus="status">
                 	  <tr class="customerItem">
               			 <td class="customerID"><span class="customerid">${customerlist.customerID}</span></td>
                		<td class="customerName">
                			<span class="customername text">${customerlist.customerName}</span>
                			<div class="input-group">
                					<input type="text" class="inputModify inputName" value="">
                					<span class="glyphicon glyphicon-ok text-success"></span>
									<span class="glyphicon glyphicon-remove text-danger"></span>
							</div>
						</td>
               			 <td class=customerPhone>
               			 	<span class="customerphone text">${customerlist.customerPhone}</span>
               			 	<div class="input-group">
               			 			<input type="text" class="inputModify inputPhone" value="">
               			 			<span class="glyphicon glyphicon-ok text-success"></span>
									<span class="glyphicon glyphicon-remove text-danger"></span>
							</div>
						</td>
                			<td class="customerEmail">
                				<span class="customeremail text">${customerlist.customerEmail}</span>
                				<div class="input-group">
                					<input type="text" class="inputModify inputEmail" value="">
                					<span class="glyphicon glyphicon-ok text-success"></span>
									<span class="glyphicon glyphicon-remove text-danger"></span>
								</div>
							</td>
                			<td class="customerPwd">
                				<span class="customerpwd text">${customerlist.customerPwd}</span>
                				<div class="input-group">
                					<input type="text" class="inputModify inputPwd" value="">
                					<span class="glyphicon glyphicon-ok text-success"></span>
									<span class="glyphicon glyphicon-remove text-danger"></span>
								</div>
							</td>
                			<td>
                 			 <div class="btn-group">
                 			 <button class="btn modify modify-Name">修改</button>
                 			 <button class="btn modify modify-Pwd">修改</button>
                 			 <button class="btn modify modify-Email">修改</button>
                 			 <button class="btn modify modify-Phone">修改</button>
                    			<button data-toggle="dropdown" class="btn dropdown-toggle" style="padding-bottom: 10px;padding-top: 6px;height: 30px;"><span class="caret"></span></button>
                    			<ul class="dropdown-menu">
                     			 <li class="action">
                     			    <a class="deleteCustomer">删除用户</a>
                     			 	<a class="modify-CustomerName">修改用户名</a>
                     			 	<a class="modify-CustomerPwd">修改用户密码</a>
                     			 	<a class="modify-CustomerEmail">修改用户邮箱</a>
                     			 	<a class="modify-CustomerPhone">修改用户电话</a>
                     			 </li>
                    			</ul>
                  			</div>
              			  </td>
             		 </tr>
                 </c:forEach>
              
              </tbody>
            </table>
          </div>
        </div>
      </div>
    
   <!--    <div id="newUserModal" class="modal hide fade">
        <div class="modal-header">
          <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
          <h3>New User</h3>
        </div>
        <div class="modal-body">
          <form class="form-horizontal" />
          <div class="control-group">
            <label for="inputEmail" class="control-label">Email </label>
            <div class="controls">
              <input id="inputEmail" type="text" placeholder="Email" />
            </div>
          </div>
          <div class="control-group">
            <label for="inputCurrentPassword" class="control-label">Username </label>
            <div class="controls">
              <input id="inputCurrentPassword" type="password" placeholder="Username" />
            </div>
          </div>
          </form>
        </div>
        <div class="modal-footer"><a href="#" data-dismiss="modal" class="btn">Close</a><a href="#" data-dismiss="modal" class="btn btn-primary">Save Changes</a></div>
      </div> -->
    </div>
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
	<script src="${pageContext.request.contextPath }/js/customerCharge.js"></script>
  </body>
</html>