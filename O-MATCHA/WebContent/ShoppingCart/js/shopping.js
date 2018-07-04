var sc=["成都市","绵阳市","巴中市"];
var hb=["黄冈市","武汉市","襄阳市"];
var js=["南京市","徐州市","无锡市"];
var prov = [sc,hb,js]; 
var cd=["成华区","金牛区","郫都区"];
var my=["涪城区","游仙区","安州区"];
var bz=["巴州区","恩阳区","通江县"];
var hg=["黄州区","麻城市","团风县"];
var wh=["新洲区","江岸区","江汉区"];
var xy=["樊城区","襄州区","南漳县"];
var nj=["秦淮区","鼓楼区","建邺区"];
var xz=["泉山区","丰县","铜山区"];
var wx=["惠山区","滨湖区","梁溪区"];
var sc1=[cd,my,bz];
var hb1=[hg,wh,xy];
var js1=[nj,xz,wx];
var prov1= [sc1,hb1,js1]; 
var number;
function tranData(){
	var proObj = document.getElementById("provice");
	var index = proObj.selectedIndex;
		number=index;
	var data = prov[index];
	var cityObj = document.getElementById("city");
	while(cityObj.childNodes.length>0){
		cityObj.removeChild(cityObj.firstChild);
	}
	for(var i=0;i<data.length;i++){
		var optionObj = document.createElement("option");
		optionObj.innerText = data[i];
		cityObj.appendChild(optionObj);
	}
	tranData1();
	orange();
}
function tranData1(){
	var proObj = document.getElementById("city");
	var index = proObj.selectedIndex;
	var data = prov1[number][index];
	var cityObj = document.getElementById("qu");
	while(cityObj.childNodes.length>0){
		cityObj.removeChild(cityObj.firstChild); 
	}
	for(var i=0;i<data.length;i++){
		var optionObj = document.createElement("option");
		optionObj.innerText = data[i];
		cityObj.appendChild(optionObj);
	}
}
function zhifufangs(obj){
	var abc =$(obj);
	var cat =abc.siblings();
	abc.css("backgroundColor","#3D2D23");
	abc.css("color","white");
	cat.css("backgroundColor","white");
	cat.css("color","black");
}

function jujiao(){
	$(".box").css("display","block");
	abc();
}
function shijiao(){
//	$(".box").css("display","none");
}



function abc(){
	$("#riqi").children("li").click(function(){
		 var year=$(".year").text();
		var month=$(".month").text();
		var day=$(this).text();
		$("#gezi").val(year+"年   "+month+"月   "+day+"日");
		$(".box").css("display","none");
	});
};

	var boolea = false;
function panduan(obj){
	var number=$(".shouji").val();
	var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
	var test =$(".shouji").next();
	var a=test.text();
	for(var i=0;i<test.size();i++){
	if(myreg.test(number)){
		boolea =true;
	}else{
		boolea =false;
		$(".modal-body").html("您的手机号码输入不正确，请您核实后再输入！！");
	}
	}
	if($("#dizhi2").val()==""){
		boolea =false;
		$(".modal-body").html("请填写正确的收货地址！");
	}
	if($("#shouhuo").val()==""){
		boolea =false;
		$(".modal-body").html("请填写正确的收货人信息！");
	}
	if($("#yuyue").val()==""){
		boolea =false;
		$(".modal-body").html("请填写正确的预约人信息！");
	}
	if($("#gezi").val()==""){
		boolea =false;
		$(".modal-body").html("请选择好配送的日期时间！");
	}
	
	var abc=$(obj);
	if(boolea){
		abc.attr("href","https://www.baidu.com");
	}
	
}

function orange(){
	var orange1 =$("#zongji1").children().children();
	
		var numbercat=0;
		var orangecat=$(".heji1");
		
		for(var i=0;i<orangecat.size();i++){
			numbercat=numbercat+parseFloat($(orangecat[i]).children().text());
		}
	var jiaobj =$("#jia");
		jiaobj.html(numbercat.toFixed(2));
	
		var jia =parseFloat($("#jia").text())
		var jia1 =parseFloat($("#jia1").text())
		var jian =parseFloat($("#jian").text())
		var jian1 =parseFloat($("#jian1").text())
		var jian2 =parseFloat($("#jian2").text())
		var zong = (jia+jia1-jian-jian1-jian2);
		orange1.html(zong.toFixed(2));
		
}

function fapiao(obj){
	var abc =$(obj);
	var zhi =abc.next().text();
	if(zhi=="需要"){
		$("#jia1").html("8.00");
		orange();
	}
	if(zhi=="不需要"){
		$("#jia1").html("00.00");
		orange();
	}
}










