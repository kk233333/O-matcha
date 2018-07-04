function queren(obj){
	var abc=$(obj);
	if($("#zhifufangshi").text()=="现金支付"){
		abc.attr("href","https://www.baidu.com");
	}
}
function bianhao(){
	var timestamp = (new Date()).valueOf();
	$("#bianhao").html(timestamp);
	var mydate = new Date();
	var mytime=mydate.toLocaleString( ); //获取日期与时间
	$("#time").html(mytime);
}