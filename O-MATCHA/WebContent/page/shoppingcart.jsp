<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%
	String path = request.getContextPath();
	%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<META NAME="save" CONTENT="history">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<script type="text/javascript" src="ShoppingCart/js/jquery-1.7.2.js"></script>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
	  <link rel="stylesheet"  href="ShoppingCart/bootstrap-3.3.5-dist/css/bootstrap.css"/>
	   <link rel="stylesheet"  href="ShoppingCart/css/shopping cartcss.css"/>
		<script src="ShoppingCart/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/jquery-1.12.4.min.js"></script>
		<script src="ShoppingCart/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="ShoppingCart/js/shopping cart.js"></script>
		
		
		<script >
		
			function shoppingcartAjax(){
			
			var list=[];
			var shangping= $("tbody tr");
			var number=shangping.size();
				var count=1;
			for(var i=1;i<number;i++){
				
				var bc=$(shangping[i]);
				var boolea=$($((bc.children())[0]).children()[0]).is(":checked");  
				if(boolea){
				var td=$((bc.children())[1]);
				var spname=$($(td.children()).children()[1]).text();
				var guige=$($(td.children()).children()[4]).text();
				var onemoney=$($((bc.children())[2]).children()).text();
				var countmoney=$($((bc.children())[4]).children()).text();
				var spnumber= $($((bc.children())[3]).children()[1]).text();
				var type =$($($(td.children()).children()[8]).children()[0]).text();
				var zhufu =$($($($($((bc.children())[6]).children()).children()).children()[3]).children()).val();
				var src=$(td.children()).children()[0].src;
				
				var tableclass=new Object();
						
				tableclass.onemoney=onemoney;
				tableclass.spname=spname;
				tableclass.guige=guige;
				tableclass.src=src;
				tableclass.spnumber=spnumber;
				tableclass.countmoney=countmoney;
				tableclass.type=type;
				tableclass.zhufu=zhufu;
				list[count]=(tableclass);	
				count++;
				}
			}
			
			
			$.ajax({//常用的就是ajax 也可以是get 和 post
				url:"${pageContext.request.contextPath}/shoppingcartAjax",
				type:"post",
				traditional :false, 
				data:{"splist":JSON.stringify(list),},
				dataType:"json",
				success:function(data){
					if(data!=null){
						 window.location.href ='/O-MATCHA/page/shopping.jsp';
					}
				}
			});
			
			
		}
			
		
			
			

		</script>
		
		
		
		
		
		
		
		
		
		
		
	<title>购物车  新鲜现做 就是O-MATCHA生日蛋糕/下午茶预订首选!</title>
	</head>
	
	
	<!--shuanl()-->
	
	<body onload="shuanl()">
		<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column" >
		<h4 style="margin-top:50px;">O-MATCHA购物车</h4>
		<span id ="shouye">总金额 (已包含运费金额￥ 00.00 )</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span id ="jieshaun1">￥<span id ="jieshaun2">00.00</span></span>
		<div class="row clearfix" id="jiesuan">
			<div class="col-md-12 column">
			<!--  根据查询情况修改  class名称 -->
				 <button  id="xiadanjiesuan1" name="Single"type="button" class="btn btn-primary disabled btn-default">下单结算</button>
				<!-- <button type="button" class="btn btn-default btn-primary">下单结算</button>  --> 
			</div>
		</div>
	</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-12 column">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>
							<input  onclick="quanxuan(this)" id ="quanxuan" name="sProblem"type="checkbox"></input>全选
						</th>
						<th>
							商品信息
						</th>
						<th>
							单价
						</th>
						<th>
							数量
						</th>
						<th>
							合计
						</th>
						<th>
							操作
						</th>
						
					</tr>
					<br/><br/>
				</thead>
				<td><br/><br/></td>
				<tbody>
				<tr  style="border:1px solid gray;margin:50px;">
						<td><input  onclick="xuanzhong(this)" type="checkbox" name="sProblem"></input></td>
						<td >
							<div style="width:250px;"> 
								<img  style="width:80px;height:80px; float:left"alt="80x80" src="ShoppingCart/images/o_1c2g5gj3b1262u4u19rq1hrlrgff.jpg" />
								<a class="name" >熊熊乐园（戚风款）</a><br/><br/><span id="jiesao">规格：1磅</span><br/><br/><br/>
									<div class="btn-group" id="sha">
										 <button class="btn btn-default">请选择你订购蛋糕的生日牌</button> <button style="height:34px;" data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
											<ul class="dropdown-menu">
												<li>
													<a onclick="qiehuan(this)" href="#">无</a>
												</li>
												<li>
													<a onclick="qiehuan(this)" href="#">生日快乐</a>
												</li>
												<li>
													<a onclick="qiehuan(this)" href="#">节日快乐</a>
												</li>
												<li>
													<a onclick="qiehuan(this)" href="#">新年快乐</a>
												</li>
												<li>
													<a onclick="qiehuan(this)" href="#">Happy Birthday</a>
												</li>
												<li class="disabled">
													<a href="#">另一操作</a>
												</li>
												<li class="divider">
												</li>
												<li>
													<input style="float:left" maxlength="14" placeholder="限定14字哦！"></input><button onclick="qiehuan1(this)" id="ok">确定</button>
												</li>
											</ul>
									</div>
							</div>
						</td>
						<td id="tdone" value="198.50">
							￥<span>198.50</span>
						</td>
						<td id ="shuliang" class="sl">
							<button  onclick="addshuliang(this)">+</button> &nbsp;<span>1</span>&nbsp;&nbsp;<button onclick="jianshuliang(this)">-</button>
						</td>
						<td id ="heji" >
							￥<span>198.50</span>
						</td>
						<td  id="tdtow">
							<a href="#" title="添加到我的幸福收藏夹"><img src="ShoppingCart/images/1222.bmp" /></a>&nbsp;&nbsp;<a href="#" onclick="shanchu(this)" title="删除此商品"><img src="ShoppingCart/images/12122.jpg" /></a>
						</td>
						<td>
							<div id ="cat">
								<ul id ="orange">
									<li>
										祝福贺卡
									</li>
									<li>
										<input type="radio" value="0" name="gender" onclick="xuyao(this)">需要</input>

									</li>
									<li>
										<input type="radio" value="1" name="gender" checked  onclick="buxuyao(this)">不需要</input>
									</li>
									<li>
										<input  style="height:30px;width:300px; display:none;" placeholder="限定30字哦！"></input>
									</li>
								</ul>
							</div>
						</td>
						</tr>
						<tr  style="border:1px solid gray;margin:50px;">
						<td><input name="sProblem" onclick="xuanzhong(this)" type="checkbox"></input></td>
						<td >
							<div style="width:250px;"> 
								<img  style="width:80px;height:80px; float:left"alt="80x80" src="ShoppingCart/images/o_1c2g5gj3b1262u4u19rq1hrlrgff.jpg" />
								<a class="name" href="#">熊熊乐园（戚风款）</a>
								<br/><br/><span id="jiesao">规格：1磅</span><br/><br/><br/>
									<div class="btn-group" id="sha">
										 <button class="btn btn-default">请选择你订购蛋糕的生日牌</button> <button style="height:34px;" data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
											<ul class="dropdown-menu">
												<li>
													<a  onclick="qiehuan(this)" href="#">无</a>
												</li>
												<li>
													<a onclick="qiehuan(this)" href="#">生日快乐</a>
												</li>
												<li>
													<a onclick="qiehuan(this)" href="#">节日快乐</a>
												</li>
												<li>
													<a onclick="qiehuan(this)" href="#">新年快乐</a>
												</li>
												<li>
													<a onclick="qiehuan(this)" href="#">Happy Birthday</a>
												</li>
												<li class="disabled">
													<a href="#">另一操作</a>
												</li>
												<li class="divider">
												</li>
												<li>
													<input style="float:left" maxlength="14" placeholder="限定14字哦！" ></input><button onclick="qiehuan1(this)" id="ok">确定</button>
												</li>
											</ul>
									</div>
							</div>
						</td>
						<td id="tdone">
							￥<span>150.50</span>
						</td>
						<td id ="shuliang" class="sl">
							<button onclick="addshuliang(this)">+</button>&nbsp;<span>1</span>&nbsp;&nbsp;<button onclick="jianshuliang(this)">-</button>
						</td>
						<td id ="heji">
							￥<span >150.50</span>
						</td>
						<td  id="tdtow">
							<a href="#" title="添加到我的幸福收藏夹"><img src="ShoppingCart/images/1222.bmp" /></a>&nbsp;&nbsp;<a href="#" onclick="shanchu(this)" title="删除此商品"><img src="ShoppingCart/images/12122.jpg" /></a>
						</td>
						<td>
							<div id ="cat">
								<ul id ="orange">
									<li>
										祝福贺卡
									</li>
									<li>
										<input type="radio" value="0" name="gender1" onclick="xuyao(this)">需要</input>

									</li>
									<li>
										<input type="radio" value="1" name="gender1" checked  onclick="buxuyao(this)">不需要</input>
									</li>
									<li>
										<input style="height:30px;width:300px;display:none;" placeholder="限定30字哦！"></input>
									</li>
								</ul>
							</div>
						</td>
						</tr>     
						</tbody>
			</table>
				<br/>
				<div style="height:50px;background-color:#EEEEEE;">
					<ul id ="orange1">
								<li style="margin-left:-35px;">
									<input name="sProblem" type="checkbox" onclick="quanxuan(this)"></input><span > 全选</span >
								</li>
								<li style="margin-left:860px;">
									合计<span id ="money">￥<span id="money01">00.00</span></span >
								</li>
								<li>
									<div class="row clearfix" id="">
										<div class="col-md-12 column">
										<!--  根据查询情况修改  class名称 -->
											<button id="xiadanjiesuan2" name="Single" type="button" class="btn btn-default btn-primary">下单结算</button>
											
											<!-- <button type="button" class="btn btn-primary disabled btn-default">下单结算</button> -->
										</div>
									</div>
								</li>
							</ul>
					
				</div>
				<br/><br/><br/><br/><br/><br/>
				<h4>推荐选择</h4>
				<hr style="border:0.5px solid gray;"/>
				<br/><br/>
				<div class="tuijian">
					<ul>
						<li><div style="width:197px;height:257px;border:1px solid gray ;">
								<img  style ="height:195px;width:195px;"src="ShoppingCart/images/o_1cai7215e1v3017jc7sn1j101ckpe.jpg"/>
								<a class ="dangao">四重奏蛋糕 </a><br/><br/>
								<p class="money002">￥49.50</p>
							</div>
						<li>
						<li>
							<div style="width:197px;height:257px;border:1px solid gray ;">
								<img  style ="height:195px;width:195px;"src="ShoppingCart/images/o_1b001ccd62babvb1msg2rs4tg90.jpg"/>
								<a class ="dangao">草莓甜心 </a><br/><br/>
								<p class="money002">￥67.50</p>
							</div>
						<li>
						<li>
							<div style="width:197px;height:257px;border:1px solid gray ;">
								<img  style ="height:195px;width:195px;"src="ShoppingCart/images/o_1c9lneqsniid1grupb317tjbrl18.jpg"/>
								<a class ="dangao">蛋糕风云 </a><br/><br/>
								<p class="money002">￥102.50</p>
							</div>
						<li>
						<li>	
							<div style="width:197px;height:257px;border:1px solid gray ;">
								<img  style ="height:195px;width:195px;"src="ShoppingCart/images/o_1c3us8se7b2jfkk12a6tm08cp13.jpg"/>
								<a class ="dangao">沙漠风暴 </a><br/><br/>
								<p class="money002">￥42.00</p>
							</div>
						<li>
					</ul>
				
				</div>
				
	</div>
	</div>
	
	
</div>
	
	
	
	
	</body>
</html>