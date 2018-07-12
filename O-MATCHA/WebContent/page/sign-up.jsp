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
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<script type="text/javascript">

function checkname(){ 
	var temp = false;
	var inputName = document.getElementById("input-7").value;  
	   $.ajax({
		  url:'${pageContext.request.contextPath}/CheckName',
	  	  type:'post',
	  	  data:{"username":inputName},
	  	  dataType:'json',
	  	  async : false,
	  	  success:function(data){
	  		  if (inputName.length>0) {
	  			if (data.msg==1) {
	  			document.getElementById("duplication").innerText=" ";
	  			temp= true;
						}
	  		  else {
	  			document.getElementById("duplication").innerText="该用户已存在";
	  			temp= false;
			}
	  		  }
	  		  else{
	  			temp= false;
	  		  }
	  	  }
	  });
	   return temp;
}

</script>
<script type="text/javascript">
function checkphone(){ 
	var regx=/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
	var temp = false;
	var inputPhone = document.getElementById("input-8").value;  
	   $.ajax({
		  url:'${pageContext.request.contextPath}/CheckPhone',
	  	  type:'post',
	  	  data:{"inputPhone":inputPhone},
	  	  dataType:'json',
	  	  async : false,
	  	  success:function(data){
	  		  if ((inputPhone.length>0)&&regx.test(inputPhone)) {
	  			if (data.msg==1) {
	  			document.getElementById("cuephone").innerText=" ";
	  			temp= true;
						}
	  		  else {
	  			document.getElementById("cuephone").innerText="号码已存在";
	  			temp= false;
			}
	  		  }
	  		  else{
	  			document.getElementById("cuephone").innerText="号码不能为空/格式不正确";
	  			temp= false;
	  		  }
	  	  }
	  });
	   return temp;
}
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
					<input class="input__field input__field--kuro kuro_w3" type="text" id="input-7" placeholder="" required=""  onkeyup="checkname()">
					
					<label class="input__label input__label--kuro" for="input-7">
						<span class="input__label-content input__label-content--kuro">用户名</span>
					</label>
				</span>
					<p class="text-warning text-center" id="duplication"></p>
					
					<span class="input input--kuro">
					<input class="input__field input__field--kuro kuro_w3" type="tel" id="input-8" placeholder="" required=""  onkeyup="checkphone()" >
					<label class="input__label input__label--kuro" for="input-8">
						<span class="input__label-content input__label-content--kuro">电话</span>
					</label>
				</span>
				<p class="text-warning text-center"  id="cuephone"></p>
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