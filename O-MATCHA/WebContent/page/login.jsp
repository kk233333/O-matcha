<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
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

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="../wangwei/js/move-top.js"></script>
<script type="text/javascript" src="../wangwei/js/easing.js"></script>
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

<!-- login -->
	<div class="login">
		<div class="container">
			<h3>Login</h3>
			<form action="#" method="post">
				<span class="input input--kuro">
					<input class="input__field input__field--kuro kuro_w3" type="text" id="input-7" placeholder="" required="" style="color:black"/>
					<label class="input__label input__label--kuro" for="input-7">
						<span class="input__label-content input__label-content--kuro">Username</span>
					</label>
				</span>
				<span class="input input--kuro">
					<input class="input__field input__field--kuro kuro_w3" type="password" id="input-8" placeholder="" required=""/>
					<label class="input__label input__label--kuro" for="input-8">
						<span class="input__label-content input__label-content--kuro">Password</span>
					</label>
				</span>
				<div class="agileinfo_remember">
					<div class="agileinfo_remember_left">
						<input type="checkbox" id="brand1" value=""/>
						<label for="brand1"><span></span>Remember me</label>
					</div>
					<div class="agileinfo_remember_right">
						<a href="#">Forgot Password?</a>
					</div>
					<div class="clearfix"> </div>
				</div>
				<input type="submit" value="Submit"/>
			</form>
			
			<div class="w3l_login_form_bottom1">
				<h5>For New People</h5>
				<a href="sign-up.html">Register Now!</a>
			</div>
		</div>
	</div>
<!-- //login -->
<!-- footer -->
	<div class="footer">
		
	</div>

</body>
</html>