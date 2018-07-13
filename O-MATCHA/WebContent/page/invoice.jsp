<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%
	String path = request.getContextPath();
	%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<script type="text/javascript" src="ShoppingCart/js/jquery-1.7.2.js"></script>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
	   <link rel="stylesheet"  href="ShoppingCart/bootstrap-3.3.5-dist/css/bootstrap.css"/>
		<link rel="stylesheet"  href="ShoppingCart/css/dianzifapiao.css"/>
	   <script src="http://code.jquery.com/jquery-2.0.0.min.js"></script>
		<script src="ShoppingCart/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/jquery-1.12.4.min.js"></script>
		<script src="ShoppingCart/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/dainzifapiao.js"></script>
		<link type="text/css" rel="stylesheet" href="ShoppingCart/css/mobile_date.css">
		<script type="text/javascript" src="ShoppingCart/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/mobile_date.js"></script>
	   
	<title>购物车  新鲜现做 就是O-MATCHA生日蛋糕/下午茶预订首选!</title>
	<script>
		function shoppingAjax(){
			
			var cgidlista;
			for(var i=0;i<$(".name").size();i++){
				if(i==0){
					cgidlista=$($(".name")[i]).text();
				}else{
					cgidlista=$($(".name")[i]).text()+"-"+cgidlista;
				}
				alert(cgidlista);
				
			}
			
			$.ajax({
				url:"${pageContext.request.contextPath}/orderAjax",
				type:"post",
				traditional :true, 
				data:{"cname":cgidlista},
				dataType:"json",
				success:function(data){
					
				}
			});
			
			
		}
	
	</script>
	
	
	
	</head>
	
		<body onload="bianhao()">
		<jsp:include   page="indexHeader.jsp" flush="true"/>
			<div class="container" style="margin-top:100px;">
	<div class="row clearfix">
	<div class="col-md-2 column"></div>
		<div class="col-md-8 column">
			
				<h2>订单信息</h2><hr style="height:0px;border:1px solid gray;width:700px;margin-left:-180px;"/>
				<div class="bane">
				<span>下单时间：</span><span id="time" >${xiadantime}</span><br/><br/>
				<span>付款金额：</span><span>￥</span><span>${money}</span><br/><br/>
				<span>收货人：</span><span >${Consignee}</span><br/>
				
				</div>
				<div class="bane">
				
				<span id="biangao">订单编号：</span><span id="bianhao">${dingdannumber}</span><br/><br/>
				<span id="fangshi">付款方式：</span><span id="zhifufangshi">${Paymentmethod}</span><br/><br/>
				<span id="dizi">收货地址：</span><span>${address}</span><br/>
				</div>
				
				
				
				
				<p><h4>下单商品</h4></p>
					<table id ="dingdanbiao" class="table table-hover">
								<thead>
									<tr style="border: 1px solid gray">
										<th>
											
										</th>
										<th>
											商品信息
										</th>
										<th>
											备注
										</th>
										<th>
											数量
										</th>
										<th>
											金额小计
										</th>
										
									</tr>
									
								</thead>
								<tbody >
									<c:forEach items="${Orderlist}" var="commodity">
										<tr  style="border:1px solid gray;margin:50px;">
										<td id="tdone">礼盒1</td>
										
										<td >
											<div style="width:250px;"> 
												<img  style="width:80px;height:80px; float:left"alt="80x80" src="${commodity.src}" />
												<a class="name" href="#">${commodity.spname}</a><br/><br/><span id="jiesao">${commodity.guige}</span>
											</div>
											
										</td>
										<td >
											<input type="hidden" value="${commodity.cgid}"></input>
										</td>
										<td id ="shuliang">
											${commodity.spnumber}
										</td>
										<td class ="heji1" id="heji">
											￥<span >${commodity.onemoney}</span>
										</td>
						
										</tr>
										
										<tr></tr>   
										</c:forEach>
								</tbody>
							</table>
				
			
			<a  onclick="queren(this)" id="modal-422240" href="#modal-container-422240" role="button" class="btn" data-toggle="modal" style="margin-left:400px;">确认订单信息</a>
		
				<!--<a class="btn" id="xiugai" href="<%=path%>/page/shopping.jsp">返回修改</a>-->
			
			
			
			
			
					 
					
					<div class="modal fade" id="modal-container-422240" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">
										请扫码付款:
									</h4>
								</div>
								<div class="modal-body">
									<img style="width:500px;height:450px;margin-left:40px;" src="ShoppingCart/images/eimazhifuhaibaosheji_7065409.bmp"/>
								</div>
								<div class="modal-footer">
									 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <a  href="https://www.baidu.com" type="button" class="btn btn-primary">完成</a>
								</div>
							</div>
							
						</div>
						
					</div>
			
			
			
			
			
			
		</div>
	</div>
</div>
	
	<jsp:include   page="indexFooter.jsp" flush="true"/>	
	</body>
</html>