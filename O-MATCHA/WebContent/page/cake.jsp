<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath();%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>美食甜点</title>
<script type="text/javascript" src="<%=path%>/qingxiping/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/index.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/js/index.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/single.css"/>
</head>
<body>
	<!-- 导航栏-->
 	<jsp:include   page="indexHeader.jsp" flush="true"/>
 	<!--路径导航栏-->
	<div class="container" style="margin-top:20px;background-color:#fff;">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<ul class="breadcrumb" style="background-color:#fff;margin-bottom: 0;">
					<li class="active">
						 <a href="<%=path %>/product.do?type=all">全部商品</a>
					</li>
					<li>
						美食甜点
					</li>
				</ul>
			</div>
		</div>
	</div>
 	<!--商品信息-->
	<div class="related-products" style="margin-top:100px">
		<div class="container">
			<div class="product-model-sec single-product-grids">
			<c:forEach items="${cakelist}" var="cake">
				<div class="product-grid single-product">
					<a href="<%=path %>/single.do?gid=${cake.gid}">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<%=path%>/qingxiping/images/goods/${cake.image3 }" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>查看</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>${cake.name }</h4>								
							<span class="item_price">$<span>${cake.price }</span></span>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
			
			</c:forEach>
			</div>
		</div>
	</div>
 	<!--分页导航-->
<ul class="pager">
    <li><a href="?cstart=${cpre}">&laquo;上一页</a></li>
    <li><a href="?cstart=${cnext}">下一页&raquo;</a></li>
</ul>
 	<!--底部信息栏-->
	<jsp:include   page="indexFooter.jsp" flush="true"/>
</body>
</html>