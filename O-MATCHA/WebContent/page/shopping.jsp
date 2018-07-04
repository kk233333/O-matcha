<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	String path = request.getContextPath();
	%>
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
	   <link rel="stylesheet"  href="ShoppingCart/css/shopping.css"/>
	   <script src="http://code.jquery.com/jquery-2.0.0.min.js"></script>
		<script src="ShoppingCart/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/jquery-1.12.4.min.js"></script>
		<script src="ShoppingCart/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/shopping.js"></script>
		
		<link type="text/css" rel="stylesheet" href="ShoppingCart/css/mobile_date.css">
		<script type="text/javascript" src="ShoppingCart/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/mobile_date.js"></script>
		
		<script >
			
			var fangshi = "支付宝支付";
			function zhifufangs(obj){
				var abc =$(obj);
				fangshi=abc.val();
				var cat =abc.siblings();
				abc.css("backgroundColor","#3D2D23");
				abc.css("color","white");
				cat.css("backgroundColor","white");
				cat.css("color","black");
			}
		
		function shoppingAjax(){
			var shouhuren =$("#shouhuo").val();
			var shouhurenshouji =$("#shouji1").val();
			var dizhi=$('#provice').val()+"_"+$('#city').val()+"_"+$('#qu').val()+"_"+$('#dizhi2').val();
			var yuyuer =$("#yuyue").val();
			var yuyuerenshouji =$("#shouji2").val();
			var time =$("#gezi").val();
			var beizhu=$("#beizhu").val();
			var money=$("#money").text();
			$.ajax({//常用的就是ajax 也可以是get 和 post
				url:"${pageContext.request.contextPath}/shoppingAjax",
				type:"post",
				data:{"shouname":shouhuren,"shounumber":shouhurenshouji,"dizhi":dizhi,
					"yuyuename":yuyuer,"yuyuenumber":yuyuerenshouji,"time":time,"beizhu":beizhu,
					"money":money,"fangshi":fangshi,
						},
				dataType:"json",
				success:function(data){
					if(data!=null){
						  window.location.href ='/O-MATCHA/page/invoice.jsp';
					}
				}
			});
			
			
		}

		</script>
		
		
		
	<title>订单提交  新鲜现做 就是O-MATCHA生日蛋糕/下午茶预订首选!</title>
	</head>
	
	
	<body onload="tranData()" >
	
		
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<h4>填写信息/提交订单</h4>
					<p style="position:absolute; margin-left:-15px;margin-top:20px;font-weight:bold;">选择收货地址</p>
					
					<div class="biaotou" style="margin-top:100px;">
					<span>如果您之前有购买，可登录直接获取地址，方便快捷并可获取积分信息 </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button id="denglu" >登&nbsp;录</button><br/><br/>
					</div>
					<div class="biaotou">
					<span>配送方式</span> <input  type="radio" name="名称" checked="checked"/><span>配送上门</span ><input  type="radio" name="名称" /><span>门店自提</span >
					</div>
					
					<div class="fangda" >
					<input id="shouhuo"/><span>收货人</span> 
					</div>
					
					
					<div  class="fangda">
					<input id="shouji1" class="shouji" /><span >收货人手机</span> 
					</div>
					
					<div class="fangda">
						<span>收货人地址</span> 
						<select id="provice" onchange="tranData()" style="margin-left:26px;">
									<option>四川省</option>
									<option>湖北省</option>
									<option>江苏省</option>
									
								</select>
								<select  id="city" onchange="tranData1()" >
									<option>成都市</option>
									<option>绵阳市</option>
									<option>巴中市</option>
								</select>
								<select id="qu" >
									<option>成华区</option>
									<option>金牛区</option>
									<option>郫都区</option>
								</select>
								<p><input id="dizhi2" placeholder="请输入详细地址" style="margin-top:15px;width:600px;"></input></p>
					</div>
					
					<div class="fangda"style="margin-top:80px;">
					<input  id="yuyue"/><span>预约人</span> 
					</div>
					
					<div class="fangda" >
					<input  id="shouji2" class="shouji" /><span>预约人手机</span> 
					</div>
					
					<div class="fangda" style="margin-top:120px;">
						<p style="position:absolute; margin-left:-15px;margin-top:-50px;font-weight:bold;">配送时间</p>
						<input readonly="readonly" id="gezi" onfocus="jujiao()" onblur="shijiao()"></input><span>配送时间</span>
						
						<div class="box" style="height:260px;width:250px; border:1px solid gray" onclick="abc()">
							<section class="date">
								<div class="head">
									<div class="prev">上一月</div>
									<div class="tomon"><span class="year"></span>年 <span class="month"></span>月</div>
									<div class="next">下一月</div>
								</div>
								<!--<ol><li>周日</li><li>周一</li><li>周二</li><li>周三</li><li>周四</li><li>周五</li><li>周六</li></ol>-->
								<ul id="riqi" style="margin-top:20px;">
									<li>日期</li><li>日期</li><li>日期</li><li>日期</li><li>日期</li><li>日期</li><li>日期</li>
									<li>日期</li><li>日期</li><li>日期</li><li>日期</li>
								</ul>
							</section>
						</div>
						
					</div>
					<div style="margin-top:100px;">
						<p id ="dingdanxinxi">订单信息</p>
						
						
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
									
										<tr  style="border:1px solid gray;margin:50px;">
										<td id="tdone">礼盒1</td>
										
										<td >
											<div style="width:250px;"> 
												<img  style="width:80px;height:80px; float:left"alt="80x80" src="ShoppingCart/images/o_1c2g5gj3b1262u4u19rq1hrlrgff.jpg" />
												<a class="name" href="#">熊熊乐园（戚风款）</a><br/><br/><span id="jiesao">规格：1磅</span>
											</div>
											
										</td>
										<td >
											
										</td>
										<td id ="shuliang">
											1
										</td>
										<td class ="heji1" id="heji">
											￥<span >198.50</span>
										</td>
						
										</tr>
											
												
										<tr  style="border:1px solid gray;margin:50px;">
										<td id="tdone">礼盒1</td>
										
										<td >
											<div style="width:250px;"> 
												<img  style="width:80px;height:80px; float:left"alt="80x80" src="ShoppingCart/images/o_1c2g5gj3b1262u4u19rq1hrlrgff.jpg" />
												<a class="name" href="#">熊熊乐园（戚风款）</a><br/><br/><span id="jiesao">规格：1磅</span>
											</div>
											
										</td>
										<td >
											
										</td>
										<td id ="shuliang">
											1
										</td>
										<td class ="heji1" id="heji">
											￥<span >180.50</span>
										</td>
						
										</tr>
											
												
												
												
												
												
												
												
												
												
												
								</tbody>
							</table>
										
						
				</div>
					
				<div class="fangda1" style="margin-top:50px;"> 
					<span>添加订单备注</span> <input id="beizhu" placeholder="限定60字！（请将购买需求在备注中详细说明）" maxlength="60" style="margin-left:30px;" ></input>
					<p style="margin-left:120px;margin-top:20px;" >提示：请勿填写有关支付，收货，发票方面的信息 </p>
				</div>
				<div style="margin-top:50px;"> 
					<span style="font-weight:bold;">发票信息</span> <span >提示：开票金额为现金支付金额 [扣除优惠券、礼品卡金额等活动金额] </span ><br/><br/>
					<span id="left1">发票类型 </span><input  onclick="fapiao(this)" id="left2" type="radio" name="fapiao"/><span>需要</span><input  onclick="fapiao(this)" id="left3" type="radio" name="fapiao" checked /><span>不需要</span>
				</div>
					
					
				<div id="zhifu">
					<p style="position:absolute; margin-left:-15px;margin-top:-30px;font-weight:bold;">支付方式</p>
					<span><button  value="微信支付"onclick="zhifufangs(this)">微信支付</button><button value="支付宝支付" onclick="zhifufangs(this)">支付宝支付</button><button value="现金支付" onclick="zhifufangs(this)">现金支付</button></span>
				</div>
					
					
				<div style="border: 1px solid gray; margin-top:80px;">
					<ul id="tongji">
						<li>
							商品金额：￥<span id="jia">00.00</span>
						</li>
						<li>
							发票运费：￥<span  id="jia1">00.00</span>
						</li>
						<li>
							折扣抵用：￥<span  id="jian">00.00</span>
						</li>
						<li>
							积分抵用：￥<span  id="jian1">00.00</span>
						</li>
						<li>
							优惠金额：￥<span  id="jian2">00.00</span>
						</li>
						<li>
							<a href="<%=path%>/page/shoppingcart.jsp">返回购物车</a>
						</li>
					</ul>
					<div>
					<div id="zongji1">
						<p> 总计￥<span id="money">129.00</span></p>
					</div>
					 <a onclick="panduan(this)" id="modal-85897"  href="#modal-container-85897" role="button" class="btn" data-toggle="modal" >提交订单</a>
					</div>
				</div>
					
					<div class="modal fade" id="modal-container-85897"  role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top:200px;">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">
										提示信息！！！
									</h4>
								</div>
								<div class="modal-body">
									<!--你所输入的信息不正确，请您核实后再输入！！-->
								</div>
								<div class="modal-footer">
									 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
								</div>
							</div>
							
						</div>
						
					</div>
					
					
					
					
					
					
					
					
					
					
					
				</div>
			</div>
		</div>
		
	
	
	</body>
</html>