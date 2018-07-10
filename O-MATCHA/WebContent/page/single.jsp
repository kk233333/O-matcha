<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详情</title>
<script type="text/javascript" src="<%=path%>/qingxiping/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/index.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/js/index.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/single.css"/>
<!--flexslider是个滑动切换插件，这里引入-->
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/flexslider.css" /> 
<script type="text/javascript" src="<%=path%>/qingxiping/js/jquery.flexslider.js"></script>
<script>
	$(window).load(function() {
	  $('.flexslider').flexslider({
		animation: "slide",
		controlNav: "thumbnails"
	  });
	});
</script>
</head>
<body>
	<!-- 导航栏-->
 	<jsp:include   page="indexHeader.jsp" flush="true"/>
	<!--路径导航栏-->
	<div class="container" style="margin-top:20px;background-color:#fff;">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<ul class="breadcrumb" style="background-color:#fff;margin-bottom: 0;">
					<li>
						 <a href="#">${goods.type}</a>
					</li>
					<li>
						 <a href="#">${goods.species}</a>
					</li>
					<li class="active">
						${goods.name}
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!--single-page-->
	<div class="single">
		<div class="container">
			<div class="single-grids">				
				<div class="col-md-6 single-grid" style="padding: 50px;">		
					<div class="flexslider">
						<ul class="slides">
							<li data-thumb="<%=path%>/qingxiping/images/goods/${goods.image1 }">
								<div class="thumb-image"> <img src="<%=path%>/qingxiping/images/goods/${goods.image1 }" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="<%=path%>/qingxiping/images/goods/${goods.image2 }">
								 <div class="thumb-image"> <img src="<%=path%>/qingxiping/images/goods/${goods.image2 }" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="<%=path%>/qingxiping/images/goods/${goods.image3 }">
							   <div class="thumb-image"> <img src="<%=path%>/qingxiping/images/goods/${goods.image3 }" data-imagezoom="true" class="img-responsive"> </div>
							</li> 
						</ul>
					</div>
				</div>	
				<div class="col-md-6 single-grid simpleCart_shelfItem" style="padding: 50px 30px;">		
					<h3>${goods.name}</h3>
					<p id="describe">全巧克力的蛋糕:它不是最眩、最醒目的，但是总有忠实拥趸对它青睐有加。香浓诱人的巧克力口味；柔软的口感、甜蜜的味道,完美的全巧克力蛋糕经得起各种口味的挑剔.表面富有曲线美的巧克力花纹与蛋糕的名称相得益彰</p>
					<ul class="size">
						<h3>大小</h3>
							<li><a href="?weight=1">1 KG</a></li>
							<li><a href="?weight=2">2 KG</a></li>
							<li><a href="?weight=3">3 KG</a></li>
							<li><a href="?weight=4">4 KG</a></li>
					</ul>
					<ul class="size">
						<h3>价格</h3>
							<div class="prices">
							<h4 class="item_price"><span>$<span>${goods.price}</h4>
						</div>
						<div class="clearfix"></div>
					</ul>
					<p class="qty"> 数量   </p><input min="1" type="number" id="quantity" name="quantity" value="1" class="form-control input-small">
					<div id="addcart" class="btn_form">
						<a href="#" class="add-cart item_add">加入购物车</a>	
					</div>
					<div id="buynow" class="btn_form">
						<a href="#" class="add-cart item_add"> 立 即  购 买 </a>	
					</div>
					<div class="tag">
						<p>分类 : <a href="#"> 蛋糕</a></p>
						<p>标签 : <a href="#"> 巧克力 甜品 </a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 手风琴切换 -->
	<div class="collpse tabs" style="margin-top: 100px;">
		<div class="container">
			<div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingOne">
						<h4 class="panel-title">
							<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							  商品详情
							</a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							   更多信息
							</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
								评价 (<span id="review">
									5
								</span>)
							</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
						<h4 class="panel-title">
							<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
								帮助
							</a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
						<div class="panel-body">
							Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<!--推荐选择-->
	<div class="related-products">
		<div class="container">
			<h3>推荐选择</h3>
			<div class="product-model-sec single-product-grids">
				<div class="product-grid single-product">
					<a href="single.html">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="<%=path %>/qingxiping/images/goods/m1.png" class="img-responsive" alt="">
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
						<img src="<%=path %>/qingxiping/images/goods/m2.png" class="img-responsive" alt="">
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
						<img src="<%=path %>/qingxiping/images/goods/m3.png" class="img-responsive" alt="">
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
						<img src="<%=path %>/qingxiping/images/goods/m4.png" class="img-responsive" alt="">
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
	<!--底部信息栏-->
		<jsp:include   page="indexFooter.jsp" flush="true"/>
</body>
</html>