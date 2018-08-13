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
	href="${pageContext.request.contextPath }/css/IndentCharge.css"/>

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
							<a href="${pageContext.request.contextPath }/admin/IndentCharge" class="active">
								<i class="batch forms"></i>
								<br />
								订单管理
							</a>
						</li>
						<li>
							<a href="${pageContext.request.contextPath }/admin/CustomerCharge">
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
                <th>订单号</th>
                <th>客户ID</th>
                <th>总价</th>
                <th>下单时间</th>
                <th>订单状态</th>
                <th>地址ID</th>
              </tr>
              </thead>
              <tbody class="indentList-body">
                 <c:forEach items="${allIndentList}" var="indentlist" varStatus="status">
                 	  <tr class="IndentItem">
               			 <td class="IndentID">${indentlist.indentID}</td>
                		<td class="customerID">${indentlist.customerID}</td>
               			 <td class="totalPrice">${indentlist.totalPrice}</td>
                			<td class="IndentTime">${indentlist.indentTime}</td>
                			<td><span class="label label-success" data-state="${indentlist.indentState}"></span></td>
                			<td class="AddressID">${indentlist.addressID}</td>
                			<input type="hidden" class="expressCode" value="${indentlist.expressCode}"/>
                			<td>
                 			 <div class="btn-group">
                   				 <button class="btn modify-Indent">修改</button>
                    			<button data-toggle="dropdown" class="btn dropdown-toggle" style="padding-bottom: 10px;padding-top: 6px;height: 30px;"><span class="caret"></span></button>
                    			<ul class="dropdown-menu">
                     			 <li class="action"><a class="deleteIndent">删除订单</a></li>
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
      
      <div class="Evaluate"></div>
	<div class="Evaluate-area">
		<i class="layui-icon layui-icon-close pull-right"></i>
		<div class="product-img">
			<img src="" width="250">
		</div>
		<input type="hidden" value="" class="goodsDate"/>
			<input type="hidden" id="goodsID" name="goodsID" />
			<div class="inputArea">
			<input type="hidden" class="modify-expressCode" value="">
			<div class="inputGroup">
					<label class="text">订单ID:</label>
					<span class="modify-IndentID"></span>
			</div>
			<div class="inputGroup">
					<label class="text">下单时间:</label>
					<span class="modify-indentTime"></span>
			</div>
			<div class="inputGroup">
					<label class="text">用户ID:</label>
					<input type="text" class="modify-customerID" value=""/>
			</div>
			<div class="inputGroup">
					<label class="text">总价:</label>
					<input type="text" class="modify-totalPrice" value=""/>
			</div>
			<div class="inputGroup">
					<label class="text">地址ID:</label>
					<input type="text" class="modify-AddressID" value=""/>
			</div>
			<div class="radio">
  				<label>
    				<input type="radio" name="optionsRadios" id="optionsRadios1" value="0">
   							未付款
  				</label>
			</div>
			<div class="radio">
  				<label>
   					 <input type="radio" name="optionsRadios" id="optionsRadios2" value="1">
    						待发货
  					</label>
			</div>
			<div class="radio">
  				<label>
   					 <input type="radio" name="optionsRadios" id="optionsRadios2" value="2">
    						已发货
  					</label>
			</div>
			<div class="radio">
  				<label>
   					 <input type="radio" name="optionsRadios" id="optionsRadios2" value="3">
    						待评价
  					</label>
			</div>
			<div class="radio">
  				<label>
   					 <input type="radio" name="optionsRadios" id="optionsRadios2" value="4">
    						交易成功
  					</label>
			</div>
			</div>
			<button class="layui-btn layui-btn-radius layui-btn-primary Indent-modify">确认修改</button>
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
	<script src="${pageContext.request.contextPath }/js/IndentCharge.js"></script>
  </body>
</html>