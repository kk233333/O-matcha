<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath();%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>全部商品</title>
<script type="text/javascript" src="<%=path%>/qingxiping/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/index.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/js/index.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/single.css"/>
</head>
<body>
<!--导航栏-->
	<div id="main-header">
		<div class="navbar navbar-default navbar-fixed-top">
			<div class="container">
			<div class="navbar-header">
				<div class="pull-left logo">
					<a class="" href="#index"><img src="<%=path%>/qingxiping/images/index/logo.png" /></a>
				</div>
        
			</div>
			<div class="pull-left" style="margin-left:10px;line-height:80px"> 
				<span class="glyphicon glyphicon-map-marker"></span>
				<span id="city">
					广州市
				</span>
				<a id="changecity" href="#modal7" role="button" class="btn" data-toggle="modal">切换城市</a>
			</div>
     	 	<div class="pull-left" >
	        	<ul class="nav navbar-nav pull-left" style="margin:15px;font-size:16px;font-family:'微软雅黑'">
	          		<li><a href="<%=path%>/page/index.jsp">首页</a></li>
	          		<li><a href="#">全部商品</a></li>
	          		<li><a href="#services">美食甜点</a></li>		  
	          		<li><a href="#about">咖啡时光</a></li>
	          		<li><a href="#portfolio">夏日饮品</a></li>
	         		<li><a href="#team">关于我们</a></li>
	        	</ul>
     	 	</div>
     	 	<div class="pull-right" style="line-height:80px;text-align:center;width:200px">
				<div class="search" style="float:left;line-height:80px;margin-top:28px">
				<input style="width:100px;height:25px" type="text" class="form-control" placeholder="搜索商品">			
				</div>
				<div class="icon" style="float:left"> 
					<a href="#">
						<span style="margin-left:10px" class="glyphicon glyphicon-search"></span>
					</a>
					<a href="#">
						<span style="margin-left:10px" class="glyphicon glyphicon-shopping-cart"><span style="position:relative;top:-12px;left:-2px;padding:2px 4px;" class="badge pull-right">0</span></span>
						
					</a>
					<a href="#">
						<span id="usericon" style="margin-left:5px" class="glyphicon glyphicon-user"></span>
					</a>
					<span id="username" style="width:40px;margin-left:5px;display:none">xxx</span>
				</div>
     	 		
     	 	</div>
			
    	</div>
		</div>		 
	</div>
	<!--展示图-->
	<div class="row clearfix" style="margin-top:2px">
		<div class="col-md-12 column">
				<img style="width:100%" alt="140x140" src="<%=path%>/qingxiping/images/index/cake1.jpg" />
			</div>
			
		</div>
	<!--商品信息-->
	<div class="related-products" style="margin-top:100px">
		<div class="container">
			<div class="product-model-sec single-product-grids">
			
			<c:forEach items="${goodslist}" var="goods">
				<div class="product-grid single-product">
					<a href="single.do?gid=${goods.gid}">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<%=path%>/qingxiping/images/goods/${goods.image1 }" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>${goods.name }</h4>								
							<span class="item_price">$<span>${goods.price }</span></span>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
			
			</c:forEach>
			<!--  
				<div class="product-grid single-product">
					<a href="single.html">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="images/m1.png" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>								
							<span class="item_price">$<span>20</span></span>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
				<div class="product-grid single-product">
					<a href="single.html">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="images/m2.png" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>								
							<span class="item_price">$<span>20</span></span>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
				<div class="product-grid single-product">
					<a href="single.html">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="images/m3.png" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>								
							<span class="item_price">$<span>20</span></span>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
				<div class="product-grid single-product">
					<a href="single.html">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="images/m4.png" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>								
							<span class="item_price">$<span>20</span></span>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
				<div class="product-grid single-product">
					<a href="single.html">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="images/m4.png" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>								
							<span class="item_price">$<span>20</span></span>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	-->
<!--分页导航-->
<ul class="pager">
    <li><a href="?start=${pre}">&laquo;上一页</a></li>
    <li><a href="?start=${next}">下一页&raquo;</a></li>
</ul>
	<!--底部信息栏-->
	<div id="footer">
		 <div class="container">
    <div class="row">
      <div class="col-md-8" style="margin-top:20px;line-height:24px">
		<span><a href="#">品牌动态</a></span>
		<span><a href="#">经营资质</a></span>
		<span><a href="#">企业合作</a></span>
		<span><a href="#">发票申请</a></span>
		<span><a href="#">帮助服务</a></span>
		<span><a href="#" style="border:none">联系我们</a></span>
		<p style="display:block;margin-top:40px"> @2015-2018 O-matcha.cn — All Rights Reserved. 蜀ICP备15000533号</p>
	  </div>
      <div class="col-md-4">
        <address>
		<br/> 795 Folsom Ave, Suite 600
		<br/> San Francisco, CA 94107<br/> 
		<abbr title="Phone">P:</abbr>
		(123)456-7890
		</address>
      </div>
    </div>
  </div>
</div>
	<div class="modal fade" id="modal7" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h5>选择区域:</h5>
						</div>
						<div class="modal-body">
							<div class="provinceSel">
							<select class="btn btn-default" id="selProvince" onchange="provinceChange();"></select> 
							
						</div>
						 <div class="citySel">
                <select class="btn btn-default" id="selCity" onchange="cityChange();"></select>
          
            </div>
			<div class="tips">
					温馨提示：若购买中更换收货城市，可能导致购物车内容均被清空！
				</div>
						</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" id="savecity" class="btn btn-primary">确认</button>
						</div>
					</div>
					
				</div>
				
			</div>
</body>
</html>