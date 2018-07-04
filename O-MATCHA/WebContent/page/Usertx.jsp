<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>USER-SET</title>
<link href="../wangwei/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="../wangwei/css/Usertx.css" />
</head>
<body>
<div class="container" id="from">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form role="form">
				<div class="form-group">
					 <input type="file" id="exampleInputFile" value="上传"/>
					 </div>
					 <div id="tx-moder">
					支持JPG／PNG格式，不超过5 MB
					<div id="tx-moder1"><img alt="140x140" src="../wangwei/images/tx-moder3.png">140*140px</div>
					<div id="tx-moder2"><img alt="100x100" src="../wangwei/images/tx-moder2.png">100*100px</div>
					<div id="tx-moder3"><img alt="80x80" src="../wangwei/images/tx-moder1.png">80*80px</div>
					</div>
				 <button type="submit" class="btn btn-default" id="submit">保存头像</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>