<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<% String path = request.getContextPath(); %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<title>注册界面</title>
<!-- for-mobile-apps -->
<!-- js -->
<script src="<%=path%>/wangwei/js/jquery-1.9.1.min.js"></script>
<script src="<%=path%>/wangwei/js/jquery-1.11.1.min.js"></script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="<%=path%>/wangwei/js/move-top.js"></script>
<script type="text/javascript" src="<%=path%>/wangwei/js/easing.js"></script>
<script type="text/javascript" src="<%=path%>/wangwei/js/sign-up.js"></script>
<script type="text/javascript" src="<%=path%>/wangwei/js/jquery.marquee.min.js"></script>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="<%=path%>/wangwei/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="<%=path%>/wangwei/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link rel="stylesheet" href="<%=path%>/wangwei/css/font-awesome.min.css" />
<!-- //font-awesome icons -->



<!-- //js -->
<link href="http://fonts.googleapis.com/css?family=Muli:300,300i,400,400i" rel="stylesheet">

<script type="text/javascript">
var xmlhttp;
function checkUserName(){
	var uname = $("#input-7").val();
	// $.ajax方法实现
	$.ajax({
        url:"${pageContext.request.contextPath}/CheckName",
        type:"post",
        data:{"username":uname},
        dataType:"json",
       
        success:function(data){
        	if(data.msg ==1){
        		document.getElementById("duplication").innerHtml="1111";
        	}
        	else{
        		document.getElementById("duplication").innerHtml="该用户已注册";
        	}
        },
        	error:function(){
        	document.getElementById("duplication").innerHtml="2222";
        }
	});
  }

</script>

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
<jsp:include page="/page/indexHeader.jsp" flush="true"/>
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
					<p class="text-warning text-center" id="duplication"></p>
					
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
				<a href="<%=path%>/page/index.jsp">回首页</a>
			</div>
		</div>
	</div>
<!-- //register -->
<!-- footer -->
<jsp:include   page="/page/indexFooter.jsp" flush="true"/>
</body>
</html>