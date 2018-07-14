﻿
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 	 
 	 <%@page import="java.util.List"%>
 	 <%@page import="java.util.ArrayList"%>
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
	   <link rel="stylesheet"  href="ShoppingCart/css/shopping.css"/>
	   <script src="http://code.jquery.com/jquery-2.0.0.min.js"></script>
		<script src="ShoppingCart/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/jquery-1.12.4.min.js"></script>
		<script src="ShoppingCart/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/shopping.js"></script>
		
		<link type="text/css" rel="stylesheet" href="ShoppingCart/css/mobile_date.css">
		<script type="text/javascript" src="ShoppingCart/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/mobile_date.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/ssxld.js"></script>
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
		
		function shoppingAjax(logong){
			var shouhuren =$("#shouhuo").val();
			var shouhurenshouji =$("#shouji1").val();
			var dizhi=$('#shengfen').val()+"_"+$('#chengshi').val()+"_"+$('#qu').val()+"_"+$('#dizhi2').val();
			var yuyuer =$("#yuyue").val();
			var yuyuerenshouji =$("#shouji2").val();
			var time =$("#gezi").val();
			var beizhu=$("#beizhu").val();
			var money=$("#money").text();
			var list=[];
			var shangping= $("tbody tr");
			var number=shangping.size();
			
			
			for(var i=0;i<number;i++){
				var bc=$(shangping[i] );
				var td=bc.children();
				var abc=$(td[1]).children().children();
				
				var onemoney=$(td[4]).children().text();
				var spname=$(abc[1]).text();
				var guige=$(abc[4]).text();
				var src =$(abc[0])[0].src;
				var spnumber =$(td[3]).children().text();
				var cgid =$(td[2]).children().val();
				
				var tableclass=new Object();
				tableclass.onemoney=onemoney;
				tableclass.spname=spname;
				tableclass.guige=guige;
				tableclass.src=src;
				tableclass.spnumber=spnumber;
				tableclass.cgid=cgid;
				list[i]=(tableclass);		
			}
			
			
			$.ajax({
				url:"${pageContext.request.contextPath}/shoppingAjax?who="+logong,
				type:"post",
				traditional :false, 
				data:{"shouname":shouhuren,"shounumber":shouhurenshouji,"dizhi":dizhi,
					"yuyuename":yuyuer,"yuyuenumber":yuyuerenshouji,"time":time,"beizhu":beizhu,
					"money":money,"fangshi":fangshi,"splist":JSON.stringify(list),
						},
				dataType:"json",
				success:function(data){
					if(data!="login"&&data!=null&&data!="tis"){
						window.location.href ='/O-MATCHA/page/invoice.jsp';	
						$("#modal-85897").removeAttr("href"); 
					}
					if(data=="tis"){
						$(".modal-body").html("请登录您的账号！！");
					}
					if(data=="login"){
						window.location.href ='/O-MATCHA/page/login.jsp';	
					}
					
				}
			});	
		}
		
	

		</script>
		
		
		
	<title>订单提交  新鲜现做 就是O-MATCHA生日蛋糕/下午茶预订首选!</title>
	</head>
	
	
	<body onload="tranData()" >
	<jsp:include   page="indexHeader.jsp" flush="true"/>
		
		<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<h4>填写信息/提交订单</h4>
					<p style="position:absolute; margin-left:-15px;margin-top:20px;font-weight:bold;">选择收货地址</p>
					
					<div id="logintest" class="biaotou" style="margin-top:100px;">
					<span>如果您之前有购买，可登录直接获取地址，方便快捷并可获取积分信息 </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button id="denglu" onclick="shoppingAjax('logong')" >登&nbsp;录</button><br/><br/>
					</div>
					<div class="biaotou">
					
					<span>配送方式</span> <input  type="radio" name="名称" checked="checked"/><span>配送上门</span ><input  type="radio" name="名称" /><span>门店自提</span >
					</div>
					
					<div class="fangda" >
					<input id="shouhuo" value="${Consignee}"/><span>收货人</span> 
					</div>
					
					
					<div  class="fangda">
					<input id="shouji1" class="shouji" value="${Consigneephone}" /><span >收货人手机</span> 
					</div>
					
					<div class="fangda">
						<span>收货人地址</span> 
						<select id="shengfen"  style="margin-left:26px"; >
								
								</select>
								<select  id="chengshi"  >
								
								</select>
								<select id="qu" >
								
								</select>
								<p><input id="dizhi2" placeholder="请输入详细地址（为保护隐私地址信息不提供保存！）"  style="margin-top:15px;width:600px;"></input> <a id="dizhi3"href="<%=path%>/page/map.jsp"">查看店面详细地址</a></p>
					</div>
					
					<div class="fangda"style="margin-top:80px;">
					<input  id="yuyue" value="${Reservations}"/><span>预约人</span> 
					</div>
					
					<div class="fangda" >
					<input  id="shouji2" class="shouji" value="${Reservationsphone}" /><span>预约人手机</span> 
					</div>
					
					<div class="fangda" style="margin-top:120px;">
						<p style="position:absolute; margin-left:-15px;margin-top:-50px;font-weight:bold;">配送时间</p>
						<input readonly="readonly" id="gezi" onfocus="jujiao()" onblur="shijiao()"value="${time}" ></input><span>配送时间</span>
						
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
									<c:forEach items="${confirmlist}" var="confirm">
										<tr  style="border:1px solid gray;margin:50px;">
										<td id="tdone">礼盒1</td>
										
										<td >
											<div style="width:250px;"> 
												<img  style="width:80px;height:80px; float:left"alt="80x80" src="${confirm.src}" />
												<a class="name" href="#">${confirm.spname}</a><br/><br/><span id="jiesao">${confirm.guige}</span>
											</div>
											
										</td>
										<td >
											<input type="hidden" value="${confirm.cgid}"></input>
										</td>
										<td id ="shuliang">
											<span>${confirm.spnumber}</span>
										</td>
										<td class ="heji1" id="heji">
											￥<span >${confirm.countmoney}</span>
										</td>
						
										</tr>
										</c:forEach>
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
					
					<div class="modal fade" id="modal-container-85897"  role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top:100px;">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
									<h4 class="modal-title" id="myModalLabel">
										O-MATCHA  温馨提示！
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
		
	
	<jsp:include   page="indexFooter.jsp" flush="true"/>
	<script type="text/javascript">  
	addressInit('shengfen', 'chengshi', 'qu');  
    //$("#shengfen").val("广西");
   // $("#chengshi").find("option[value='柳州市']").attr("selected",true);
   // $("#chengshi").val("柳州市");
   // $("#qu").val("柳南区");
	</script>	
	</body>
</html>