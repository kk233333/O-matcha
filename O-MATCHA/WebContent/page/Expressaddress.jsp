<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					 <label for="name">我的地址</label>
		<table class="table">
		<thead>
			<tr>
				<th>联系人</<th>
				<th>电话</th>
				<th>省</th>
				<th>市</th>
				<th>县</th>
				<th>具体地址</th>
			</tr>
			</thead>
			<tbody>
		<c:forEach items="${expressadresslist}" var="expressadress">
			<tr>
				<td>${expressadress.eid}</td>
				<td>${expressadress.Consignee}</td>
				<td>${expressadress.ephone}</td>
				<td>${expressadress.eprovince}</td>
				<td>${expressadress.ecity}</td>
				<td>${expressadress.ecountry}</td>
				<td>${expressadress.eadress}</td>
			</tr>
			</tbody>
			</table>
		</c:forEach>
	</table>
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