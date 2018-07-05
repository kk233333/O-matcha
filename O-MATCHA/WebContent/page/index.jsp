<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>O-MATCHA首页</title>
<script type="text/javascript" src="<%=path%>/qingxiping/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/index.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/js/index.js"></script>
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
	          		<li><a href="#" class="active">首页</a></li>
	          		<li><a href="product.do" >全部商品</a></li>
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

	<!--商品展示栏-->
	<div id="exhibition">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="4"></li>
		  </ol>
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		            <img src="<%=path%>/qingxiping/images/index/coffee1.jpg" >
		    </div>
		    <div class="item">
		            <img src="<%=path%>/qingxiping/images/index/coffee2.jpg" >
		    </div>
		    <div class="item">
		            <img src="<%=path%>/qingxiping/images/index/exhibition2.jpg" >
		    </div>	
		    <div class="item">
		            <img src="<%=path%>/qingxiping/images/index/exhibition3.jpg" >
		    </div>	
		    <div class="item">
		            <img src="<%=path%>/qingxiping/images/index/exhibition4.jpg" >
		    </div>		
		  </div>
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>		 
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>		 
		  </a>
	</div>
	<!--今日推介-->
	<div id="todaySpecial">
		<div class="col-lg-12 callout">
		<div class="container" style="text-align:center;margin-top:50px;">
			<img src="<%=path%>/qingxiping/images/index/mainicon.png"/>
		</div>
			<h2 class="centered">今日推介</h2>
			<hr>
			<p class="large">一份心意,一份香浓.</p>
		</div>
      <div class="container">
      <div class="row">       
        <!-- PORTFOLIO IMAGE 1 -->
        <div class="col-md-4 ">
          <div class="grid overlay">
            <figure> <img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio01.jpg" alt="">
              <figcaption>
                <h5>Coco Cake</h5>
                <a data-toggle="modal" href="#myModal" class="btn btn-default" style="position:relative;left:236px;top:-78px;">More Details</a> </figcaption>
              <!-- /figcaption --> 
            </figure>
            <!-- /figure --> 
          </div>
          <!-- /grid-overlay --> 
        </div> 
        
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Coco Cake</h4>
              </div>
              <div class="modal-body">
                <p><img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio01.jpg" alt=""></p>
                <p class="large">咖啡色的光感下隐藏着浓浓的可可的味道. </p> 
              </div> 
            </div>
            <!-- /.modal-content --> 
          </div>
          <!-- /.modal-dialog --> 
        </div>
        <!-- /.modal --> 
        
        <!-- PORTFOLIO IMAGE 2 -->
        <div class="col-md-4">
          <div class="grid overlay">
            <figure> <img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio02.jpg" alt="">
              <figcaption>
                <h5>Rose Cake</h5>
                <a data-toggle="modal" href="#myModa2" class="btn btn-default" style="position:relative;left:236px;top:-78px;">More Details</a> </figcaption>
              <!-- /figcaption --> 
            </figure>
            <!-- /figure --> 
          </div>
          <!-- /grid-overlay --> 
        </div>
        <div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Rose Cake</h4>
              </div>
              <div class="modal-body">
                <p><img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio02.jpg" alt=""></p>
                <p class="large">清甜可口,花香四溢. </p> 
              </div> 
            </div>
            <!-- /.modal-content --> 
          </div>
          <!-- /.modal-dialog --> 
        </div>
        <!-- PORTFOLIO IMAGE 3 -->
        <div class="col-md-4">
          <div class="grid overlay">
            <figure> <img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio03.jpg" alt="">
              <figcaption>
                <h5>Cappuccino</h5>
                <a data-toggle="modal" href="#myModa3" class="btn btn-default" style="position:relative;left:236px;top:-78px;">More Details</a> </figcaption>
              <!-- /figcaption --> 
            </figure>
            <!-- /figure --> 
          </div>
          <!-- /grid-overlay --> 
        </div>
      </div>
      <!-- /row --> 
      <div class="modal fade" id="myModa3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Cappuccino</h4>
              </div>
              <div class="modal-body">
                <p><img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio03.jpg" alt=""></p>
                <p class="large">愿在夕阳下,看阳光碎了一地的灿烂,泡一杯卡布奇诺放两块方糖,在咖啡的香气中,思考着生命,听方糖溶化的声音. </p> 
              </div> 
            </div>
            <!-- /.modal-content --> 
          </div>
          <!-- /.modal-dialog --> 
        </div>
      <!-- PORTFOLIO IMAGE 4 -->
      <div class="row">
        <div class="col-md-4 ">
          <div class="grid overlay">
            <figure> <img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio04.jpg" alt="">
              <figcaption>
                <h5>Green Tea</h5>
                <a data-toggle="modal" href="#myModa4" class="btn btn-default" style="position:relative;left:236px;top:-78px;">More Details</a> </figcaption>
              <!-- /figcaption --> 
            </figure>
            <!-- /figure --> 
          </div>
          <!-- /grid-overlay --> 
        </div>
        <div class="modal fade" id="myModa4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Green Tea</h4>
              </div>
              <div class="modal-body">
                <p><img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio04.jpg" alt=""></p>
                <p class="large">纯正绿茶的清香,伴有纯牛奶的鲜滑,交织的口感柔和温润,妙在茶味与奶香融合的恰到好处,吞吐清新,舒心惬意,足以让抹茶控欢喜. </p> 
              </div> 
            </div>
            <!-- /.modal-content --> 
          </div>
          <!-- /.modal-dialog --> 
        </div>
        <!-- PORTFOLIO IMAGE 5 -->
        <div class="col-md-4">
          <div class="grid overlay">
            <figure> <img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio05.jpg" alt="">
              <figcaption>
                <h5>Cookies</h5>
                <a data-toggle="modal" href="#myModa5" class="btn btn-default" style="position:relative;left:236px;top:-78px;">More Details</a> </figcaption>
              <!-- /figcaption --> 
            </figure>
            <!-- /figure --> 
          </div>
          <!-- /grid-overlay --> 
        </div>
        <div class="modal fade" id="myModa5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Cookies</h4>
              </div>
              <div class="modal-body">
                <p><img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio05.jpg" alt=""></p>
                <p class="large">不是所有饼干都叫 Cookie. </p> 
              </div> 
            </div>
            <!-- /.modal-content --> 
          </div>
          <!-- /.modal-dialog --> 
        </div>
        <!-- PORTFOLIO IMAGE 6 -->
        <div class="col-md-4">
          <div class="grid overlay">
            <figure> <img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio06.jpg" alt="">
              <figcaption>
                <h5>Coffee</h5>
                <a data-toggle="modal" href="#myModa6" class="btn btn-default" style="position:relative;left:236px;top:-78px;">More Details</a> </figcaption>
              <!-- /figcaption --> 
            </figure>
            <!-- /figure --> 
          </div>
          <!-- /grid-overlay --> 
        </div>
        <!-- /col --> 
        <div class="modal fade" id="myModa6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Coffee</h4>
              </div>
              <div class="modal-body">
                <p><img class="img-responsive" src="<%=path%>/qingxiping/images/index/folio06.jpg" alt=""></p>
                <p class="large">独自斜坐在咖啡屋的一角,灯光昏黄发暗,没有咖啡和点心,只有一杯水. </p> 
              </div> 
            </div>
            <!-- /.modal-content --> 
          </div>
          <!-- /.modal-dialog --> 
        </div>
      </div>
      <!-- /row --> 
    </div>
    <!-- /row --> 
  </div>
</div>
<!-- /container --> 
	</div>
	<!--蛋糕展示栏标题-->
	<div id="cake-header">
		<div class="col-lg-12 callout">
		<div class="container" style="text-align:center;margin-top:50px;">
			<img src="<%=path%>/qingxiping/images/index/cakeicon.png"/>
		</div>
			<h2 class="centered">美食甜点</h2>
			<hr>
			<p class="large">幸福就是甜品的味道;每一道甜品都有一个故事;生活就像一道道甜品;不品尝怎么知道哪道更适合自己.</p>
		</div>
	</div>
	<!--蛋糕展示栏-->
	<div id="cake">
		 <div class="container">
			<div class="row clearfix">
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/cakeshow1.jpg" />
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/cakeshow2.jpg" />
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/cakeshow3.jpg" />
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/cakeshow4.jpg" />
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
	</div>
		 </div>
	</div>
	<!--咖啡展示栏标题-->
	<div id="coffee-header">
		<div class="col-lg-12 callout">
		<div class="container" style="text-align:center;margin-top:50px;">
			<img src="<%=path%>/qingxiping/images/index/coffeeicon.png"/>
		</div>
			<h2 class="centered">咖啡时光</h2>
			<hr>
			<p class="large">浪漫与激情的双重体验.</p>
		</div>
	</div>
	<!--咖啡展示栏-->
	<div id="coffee">
		 <div class="container">
			<div class="row clearfix">
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/coffeeshow1.png" />
			<h4>
				浓缩咖啡
			</h4>
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/coffeeshow2.png" />
			<h4>
				意式咖啡
			</h4>
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/coffeeshow3.png" />
			<h4>
				拿铁咖啡
			</h4>
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/coffeeshow4.png" />
			<h4>
				卡布奇诺
			</h4>
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
	</div>
		 </div>
	</div>
	<!--饮品展示栏标题-->
	<div id="tea-header">
		<div class="col-lg-12 callout">
		<div class="container" style="text-align:center;margin-top:50px;">
			<img src="<%=path%>/qingxiping/images/index/teaicon.png"/>
		</div>
			<h2 class="centered">夏日饮品</h2>
			<hr>
			<p class="large">可口饮品屋,清凉一整夏.</p>
		</div>
	</div>
	<!--饮品展示栏-->
	<div id="tea">
<div class="container">
	<div class="row clearfix">
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/teashow1.png" />
			<h4>
				鲜榨果汁
			</h4>
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/teashow2.png" />
			<h4>
				奶盖奶茶
			</h4>
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/teashow3.png" />
			<h4>
				果肉奶昔
			</h4>
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
		<div class="col-md-3 column" style="text-align:center">
			<img alt="140x140" src="<%=path%>/qingxiping/images/index/teashow4.png" />
			<h4>
				现调鸡尾酒
			</h4>
			<p>
				 <a class="btn" href="#" style="color:#FF8000">更多详情 »</a>
			</p>
		</div>
	</div>
</div>

	</div>
	<!--关于我们-->
	<div id="aboutUs">
		<div class="col-lg-12 callout">
		<div class="container" style="text-align:center;margin-top:50px;">
				<h2 class="centered" style="color:black">ABOUT US</h2>
		</div>			
			<hr>
		</div>
	<div class="container">
		<div class="row white">
		<div class="col-md-6"> <img class="img-responsive" src="<%=path%>/qingxiping/images/index/aboutusshow.jpg" align=""> </div>
		<div class="col-md-6">
        <h3>经营理念</h3>
        <p style="font-family:'微软雅黑'">每一道甜点或每一杯饮品，都是我们对于食材和口味的挑剔，坚持的程度是远远超越您所能想像的。金钱，根本不能用来衡量我们对这点的坚持。为了客户热爱的奶茶及甜点，每天O-MATCHA的中央厨房都得从凌晨开始精心备料及製作甜点。虽然总数多达数十种，但我们总是不厌其烦地逐一检查，鲜度是否合格、每个甜点的样式是否有瑕疵…不符标准的，立刻全部验退！每一道甜点或每一杯饮品，都是我们对于食材和口味的挑剔，坚持的程度是远远超越您所能想像的。金钱，根本不能用来衡量我们对这点的坚持。</p>
        <h3>加入我们</h3>
        <p style="font-family:'微软雅黑'">我们是港式潮饮品牌，集十余年丰富的品牌管理和店面运营理经验为一体，以独树一帜的“港式潮饮”特色定位，“年轻、时尚、潮流”的气息深入人心，外加专业的培训制度、严格的原料供应体系及完善的物流体系，迅速从众多同行业竞争品牌中脱颖而出。</p>
      </div>
    </div>
    <!-- row --> 
  </div>
	</div>
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