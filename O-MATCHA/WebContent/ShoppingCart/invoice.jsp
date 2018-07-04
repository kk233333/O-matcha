<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
	   <link rel="stylesheet"  href="bootstrap-3.3.5-dist/css/bootstrap.css"/>
		<link rel="stylesheet"  href="css/dianzifapiao.css"/>
	   <script src="http://code.jquery.com/jquery-2.0.0.min.js"></script>
		<script src="bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
		<script src="bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="js/dainzifapiao.js"></script>
		<link type="text/css" rel="stylesheet" href="css/mobile_date.css">
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/mobile_date.js"></script>
	   
	<title>购物车  新鲜现做 就是O-MATCHA生日蛋糕/下午茶预订首选!</title>
	</head>
	
		<body onload="bianhao()">
			<div class="container" style="margin-top:100px;">
	<div class="row clearfix">
	<div class="col-md-2 column"></div>
		<div class="col-md-8 column">
			
			
				<h2>订单信息</h2><hr style="height:0px;border:1px solid gray;"/>
				<div class="bane">
				<span>下单时间：</span><span id="time" >2018年7月3日15:30</span><br/><br/>
				<span>付款金额：</span><span>￥</span>198.50</span></span><br/><br/>
				<span>收货人：</span><span >你是哪个嘛</span><br/>
				
				</div>
				<div class="bane">
				
				<span id="biangao">订单编号：</span><span id="bianhao">909096068686668</span><br/><br/>
				<span id="fangshi">付款方式：</span><span id="zhifufangshi">微信支付</span><br/><br/>
				<span id="dizi">收货地址：</span><span>宝山区....<span><br/>
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
									
										<tr  style="border:1px solid gray;margin:50px;">
										<td id="tdone">礼盒1</td>
										
										<td >
											<div style="width:250px;"> 
												<img  style="width:80px;height:80px; float:left"alt="80x80" src="images/o_1c2g5gj3b1262u4u19rq1hrlrgff.jpg" />
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
										
										<tr></tr>   
		
								</tbody>
							</table>
				
			
			<a  onclick="queren(this)" id="modal-422240" href="#modal-container-422240" role="button" class="btn" data-toggle="modal" style="margin-left:400px;">确认订单信息</a>
		
				<a class="btn" id="xiugai">返回修改</a>
			
			
			
			
			
					 
					
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
									<img style="width:500px;height:450px;margin-left:40px;" src="images/eimazhifuhaibaosheji_7065409.bmp"/>
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
	
			
	</body>
</html>