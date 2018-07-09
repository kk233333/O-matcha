<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%String path=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>indexFooter</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/qingxiping/css/index.css"/>
<script type="text/javascript" src="<%=path%>/qingxiping/js/index.js"></script>
</head>
<body>

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
                <select class="btn btn-default" id="selCity";"></select>
          
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