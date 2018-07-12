<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../wangwei/bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
<script type="text/javascript" src="../wangwei/js/ssxld.js" charset="UTF-8"></script><link href="../wangwei/bootstrap-datetimepicker-master/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

<title>订单信息</title>
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
		<div class="form-group">
					 <label for="name">我的订单</label>
		<table class="table">
		<thead>
			<tr>
				<th>订单号</<th>
				<th>下单时间</th>
				<th>收货地址</th>
				<th>金额</th>
				<th>付款方式</th>
				
			</tr>
			</thead>
			<tbody>
		<c:forEach items="${orderlist}" var="orderlist">
			<tr>
				<td>${orderlist.dingdannumber}</td>
				<td>${orderlist.xiadantime}</td>
				<td>${orderlist.address}</td>
				<td>${orderlist.money}</td>
				<td>${orderlist.Paymentmethod}</td>
				
			</tr>
			</tbody>
			</table>
		</c:forEach>
	</table>
		</div>
		</div>
	</div>
</div>


</body>
</html>