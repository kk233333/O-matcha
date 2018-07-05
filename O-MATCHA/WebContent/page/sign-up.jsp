<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册界面</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="../wangwei/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../wangwei/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link rel="stylesheet" href="../wangwei/css/font-awesome.min.css" />
<!-- //font-awesome icons -->
<!-- js -->
<script src="../wangwei/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="../wangwei/js/jquery.marquee.min.js"></script>
<!-- //js -->
<link href="http://fonts.googleapis.com/css?family=Muli:300,300i,400,400i" rel="stylesheet">
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../wangwei/js/move-top.js"></script>
<script type="text/javascript" src="../wangwei/js/easing.js"></script>
<script type="text/javascript" src="../wangwei/js/sign-up.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<div class="login">
		<div class="container">
			<h3>注册O-MATCHA</h3>
			<form action="signup.do?a=signup" method="post" onsubmit="return checksubmit()">
				<span class="input input--kuro">
					<input class="input__field input__field--kuro kuro_w3" type="text" id="input-7" placeholder="" required="" name="username" onkeyup="checkUserName()">
					<label class="input__label input__label--kuro" for="input-7">
						<span class="input__label-content input__label-content--kuro">用户名</span>
					</label>
				</span>
					<p class="text-warning text-center"  id="duplication"></p>
					
					<span class="input input--kuro">
					<input class="input__field input__field--kuro kuro_w3" type="tel" id="input-8" placeholder="" required="" name="userphone" onblur="checkphone()" onfocus="focusphone()">
					<label class="input__label input__label--kuro" for="input-8">
						<span class="input__label-content input__label-content--kuro">电话</span>
					</label>
				</span>
				<p class="text-warning text-center" hidden="hidden" id="cuephone">电话格式不正确</p>
				<span class="input input--kuro">
					<input class="input__field input__field--kuro kuro_w3" type="email" id="input-9" placeholder="" required="" name="useremail">
					<label class="input__label input__label--kuro" for="input-9">
						<span class="input__label-content input__label-content--kuro">邮箱</span>
					</label>
				</span>
				<span class="input input--kuro">
					<input class="input__field input__field--kuro kuro_w3" type="password" id="input-10" placeholder="" required="" name="userpassword" onblur="checkpasswords()" onfocus="focuspwd()">
					<label class="input__label input__label--kuro" for="input-10">
						<span class="input__label-content input__label-content--kuro">密码</span>
					</label>
				</span>
				<p class="text-warning text-center" hidden="hidden" id="cuepasswords">密码不正确（请输入6-20位字母、数字组合 ）</p>
				<span class="input input--kuro">
					<input class="input__field input__field--kuro kuro_w3" type="password" id="input-11" placeholder="" required="" onblur="checkconpwd()" onfocus="focusconpwd()">
					<label class="input__label input__label--kuro" for="input-11">
						<span class="input__label-content input__label-content--kuro">确认密码</span>
					</label>
				</span>
				<p class="text-warning text-center" hidden="hidden" id="confirmpwd">两次密码不一致</p>
				<input type="submit" value="提交信息" >
			</form>
			
			<div class="w3l_login_form_bottom1">
				<a href="index.html">回首页</a>
			</div>
		</div>
	</div>
<!-- //register -->
<!-- footer -->
	<div class="footer">
		
	</div>

</body>
</html>