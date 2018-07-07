<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于我们</title>
<script type="text/javascript" src="<%=path%>/qingxiping/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/index.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/js/index.js"></script>
</head>
<body>
<!-- 导航栏-->
 	<jsp:include   page="indexHeader.jsp" flush="true"/>
<div class="container">
	<div class="row clearfix" style="margin:30px 0;">
		<div class="col-md-12 column">
			<h3 class="text-center">
				关于我们
			</h3>
		</div>
	</div>
	<div class="row clearfix">
		<div class="col-md-6 column">
			<img alt="140x140" src="<%=path%>/qingxiping/images/goods/aboutUs1.png" />
		</div>
		<div class="col-md-6 column" style="padding:20px 10px;">
			<p>
				 成都市O-MATCHA商城科技股份有限公司有“O-MATCHA”品牌的独立运营权。O-MATCHA凭借健康的食材和人性化的服务，在各界普受好评。O-MATCHA微信公众号现今拥有数百万粉丝，已成为国内知名O2O电商蛋糕品牌之一。集研发生产销售于一体，始终坚持“百分百新鲜现做”，为消费者生产健康、安全、绿色的五星级烘焙食品。9年来，O-MATCHA以“用心、传递幸福”的企业使命不断超越自我，完善服务，给成千上万的粉丝带去幸福的味道。自2015年8月以来，先后覆盖了一百多个城市，包括深圳、上海、北京、广州、香港、澳门等，在全国覆盖范围内无论是哪个地区，用户下单后2-5小时送达。全程专业冷链配送，新鲜现做就是O-MATCHA。
			</p>
		</div>
	</div>
	<div class="row clearfix" style="margin:50px 0;">
		<div class="col-md-6 column" style="padding:20px 10px;">
			<p>
				 O-MATCHA首创，旨在打造一个敢承诺，敢守信的影响力服务品牌
O-MATCHA从维护消费者的根本福利出发，用实际行动获得消费者的信任
用优质服务来回报消费者的选择
			</p>
			<p>
				 无论是在哪个地区，只要是在配送范围内
订货和收货都可以在2-5小时送达，配送员全年无休，风雨无阻
O-MATCHA不生产蛋糕，幸福商城只是在用心传递幸福
			</p>
			<p>
				 如果客户有特殊需求，即可申请1小时专车服务；仅需1个小时，幸福就会到达你的家门口
			</p>
		</div>
		<div class="col-md-6 column">
			<img alt="140x140" src="<%=path%>/qingxiping/images/goods/aboutUs2.png" />
		</div>
	</div>
</div>
<!--底部信息栏-->
	<jsp:include   page="indexFooter.jsp" flush="true"/>
</body>
</html>