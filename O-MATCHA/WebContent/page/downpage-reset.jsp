<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ResetPassword</title>
<link href="../wangwei/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../wangwei/css/downpage-reset.css" rel="stylesheet" type="text/css" media="all" />
<script src="../wangwei/js/downpage-reset.js"></script>
</head>
<body>
<div class="container">
	<div class="row clearfix" id="ground">
		<div class="col-md-12 column">
			<input type="text" placeholder="请输入您的手机号" size="40" id="tel" onblur="checktel()" onfocus="blurnum()"></input><br/><br/>
			<p class="text-warning" hidden="hidden" id="checknum">号码格式不正确</p>
			<input type="text" placeholder="请输入验证码" id="code1" onblur="checkcodes()" onfocus="blurcode()"></input> 
			<div id="code"></div>
			<p class="text-warning" hidden="hidden" id="checkcode">验证码不能为空</p>
			<br/><br/>
			<input type="text" placeholder="请输入短信验证码"></input> 
			<button type="button" class="btn btn-default" id="sms">获取短信验证</button><br/><br/>
			<button type="button" class="btn btn-default" id="submit">下一步</button>
		</div>
			
	</div>
</div>


</body>
</html>