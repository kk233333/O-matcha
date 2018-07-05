<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% String path = request.getContextPath(); %>>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>setpassword</title>
<link href="../wangwei/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../wangwei/css/Usermessage.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<a href=""><span id="head-matcha">MATCHA</span></a>--<a href=""><code>个人信息</code></a>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-3 column" id="menu">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<a href="<%=path%>/page/Usertx.jsp" target="rightpage"><img src="../wangwei/images/tx-logo.png" class="img-circle"></a>
				</div>
			</div>
			<ul>
				<li>
					<a href="<%=path%>/page/Userlist.jsp" target="rightpage">个人信息</a>
				</li>
				<li>
					<a href="<%=path%>/page/Connection.jsp" target="rightpage">收藏夹</a>
				</li>
				<li>
					<a href="<%=path%>/page/Order.jsp" target="rightpage">我的订单</a>
				</li>
				<li>
					<a href="">收货地址</a>
				</li>
				<li>
					<a href="<%=path%>/page/resetPassword.jsp" target="rightpage">修改密码 </a>
				</li>
				<li>
					<a href="">联系客服</a>
				</li>
				
			</ul>
		</div>
		<div class="col-md-9 column">
		<iframe src="" width="100%" height="550px" frameborder="0" name="rightpage"></iframe>
		</div>
	</div>
</div>


</body>
</html>