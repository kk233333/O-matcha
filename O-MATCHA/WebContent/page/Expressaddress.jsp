<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../wangwei/bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="../wangwei/js/ssxld.js" charset="UTF-8"></script><link href="../wangwei/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

<title>收货地址</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<div class="form-group">
					 <label for="name">我的地址</label><input type="text" class="form-control" id="name" name="myadress"/>
				</div>
				
			<form role="form" id="form" action="express" method="post" >
				<div class="form-group">
					 <label for="Adress">新增地址</label>
					 <input class="form-control" type="text"   placeholder="收货人" name="Consignee"/><br/>
					 <input class="form-control" type="text"   placeholder="收货人电话" name="ephone"/><br/>
					 <select class="form-control" id="cmbProvince" name="cmbProvince"></select><br/> 
					 <select class="form-control" id="cmbCity" name="cmbCity" ></select>  <br/>
					 <select class="form-control" id="cmbArea" name="cmbArea" ></select>  <br/>
					 <input class="form-control" type="text" placeholder="详细地址"  name="eadress"/>
				</div>
				<input type="submit" class="btn btn-default" value="新增地址"/>
			</form>
		</div>
	</div>
</div>


<script type="text/javascript">  
	addressInit('cmbProvince', 'cmbCity', 'cmbArea');  
</script>




</body>
</html>