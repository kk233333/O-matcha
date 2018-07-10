<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<% String path = request.getContextPath(); %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ResetPassword</title>
<link href="../wangwei/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<ul class="breadcrumb">
				<li>
					 <a href="<%=path%>/page/downpage-reset.jsp" target="downpage">验证身份</a>
				</li>
				<li>
					 <a href="<%=path%>/page/downpage-setpwd.jsp" target="downpage">设置密码</a>
				</li>
				<li class="active">
					完成
				</li>
			</ul>
		</div>
	</div>
</div>
<iframe src="" width="100%" height="450px" frameborder="0" name="downpage"></iframe>

</body>
</html>