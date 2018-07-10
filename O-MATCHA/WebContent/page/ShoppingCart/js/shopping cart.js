function addshuliang(obj){
	
	var abc =$(obj);
	var test =abc.next();
	var b=parseInt(test.text());
	var b =b+1;
	test.html(b);
	  
	var cat=abc.parent().prev().children();
	var danjia=parseFloat(cat.text());
	var dog =abc.parent().next().children();
	dog.html(danjia*b);
	
	var danxuan =abc.parent().prev().prev().prev().children();
	var boorean= danxuan.is(":checked")
	 var xiadan= $("#money01")
	 var money= parseFloat($("#money01").text());
	 var xiadan1= $("#jieshaun2")
	 var money1= parseFloat($("#jieshaun2").text());
	if(boorean){
		 xiadan.html((money+danjia).toFixed(2) );
		 xiadan1.html((money1+danjia).toFixed(2));
	}
}
function jianshuliang(obj){
	var abc =$(obj);
	var test =abc.prev();
	var b=parseInt(test.text());
	if(b>1){
	var b =b-1;
	test.html(b);
	var cat=abc.parent().prev().children();
	var danjia=parseFloat(cat.text());
	var dog =abc.parent().next().children();
	dog.html(danjia*b);
	
	var danxuan =abc.parent().prev().prev().prev().children();
	var boorean= danxuan.is(":checked")
	 var xiadan= $("#money01")
	 var money= parseFloat($("#money01").text());
	 var xiadan1= $("#jieshaun2")
	 var money1= parseFloat($("#jieshaun2").text());
	if(boorean){
		xiadan.html((money-danjia).toFixed(2));
		  xiadan1.html((money1-danjia).toFixed(2));
	}
	  }
}
function xuyao(obj){
	
	var abc =$(obj);
	var cat=abc.parent().next().next().children();
	  cat.css("display","block");
}
function buxuyao(obj){
	var abc =$(obj);
	var cat=abc.parent().next().children();
	  cat.css("display","none");
}



function quanxuan(obj){
	var abc =$(obj);
	var isChecked = abc.is(":checked"); 
	var cat = $("input:checkbox[name='sProblem']");
	var cat1 = $("input:checkbox[name='sProblem']").not("input:checked");
	 if(isChecked){
		cat1.prop('checked',true); 
		var a=0;
		for(var i=0;i<$(".sl").size();i++){
			a+=parseFloat($($(".sl")[i]).next().children().text());
		}
		
		  $("#money01").html((a).toFixed(2) );
		 $("#jieshaun2").html((a).toFixed(2));
		 $("button[name=Single]").attr("class","btn btn-default btn-primary");
	  }else{
		cat.prop('checked',false); 
		  $("#money01").html((0).toFixed(2) );
		 $("#jieshaun2").html((0).toFixed(2));
		  $("button[name=Single]").attr("class","btn btn-primary disabled btn-default");
	  }
	var test = $("input[name='sProblem']:checked");
	 var orange=test.parent().next().next().next().next().next().children().text();
	 var dog = $("tbody input:checkbox[name='sProblem']");
	  var dog1 = $("tbody input:checkbox[name='sProblem']").not("input:checked");
	 for(var i=0;i<dog.length;i++){
		//	if((dog.is(":checked"))){
					
		//	}
	 }
		
};
function xuanzhong(obj){
	var abc =$(obj);
	var test = $("input[name='sProblem']:checked");
	 var orange=parseFloat(abc.parent().next().next().next().next().children().text());
	 var xiadan= $("#money01")
	 var money= parseFloat($("#money01").text());
	 var xiadan1= $("#jieshaun2")
	 var money1= parseFloat($("#jieshaun2").text());
	 if(abc.is(":checked")){
		 xiadan.html((money+orange).toFixed(2) );
		 xiadan1.html((money1+orange).toFixed(2));
	 }else{
		  xiadan.html((money-orange).toFixed(2));
		  xiadan1.html((money1-orange).toFixed(2));
	 } 
	 
	 Single();
	  
}
function shanchu(obj){
	var abc =$(obj);
	var orange =abc.parent().parent();
	orange.remove();
	var cat=abc.parent().prev().prev().prev().prev().prev().children();
	 var xiadan= $("#money01")
	 var money= parseFloat($("#money01").text());
	 var xiadan1= $("#jieshaun2")
	 var money1= parseFloat($("#jieshaun2").text());
	 var dog =abc.parent().prev().children().text();
	if(cat.is(":checked")){
		 xiadan.html((money-parseFloat(dog)).toFixed(2));
		 xiadan1.html((money1-parseFloat(dog)).toFixed(2));
	}
}


function Single(){
	var abc=$("button[name=Single]");
	var money1= parseFloat($("#jieshaun2").text());
	if(money1<=0){
		abc.attr("class","btn btn-primary disabled btn-default");
		
	}
	if(money1>0){
		abc.attr("class","btn btn-default btn-primary");
		
	}
}
function shuanl(){
	$("#xiadanjiesuan2").on('click', function(){
	shoppingcartAjax();
	});
	$("#xiadanjiesuan1").on('click', function(){
	shoppingcartAjax();
	});
	
	
	var test = $("tbody input[name='sProblem']:checked");
	for(var i=0;i<test.size();i++){
	 var orange=parseFloat($(test[i]).parent().next().next().next().next().children().text());
	 var xiadan= $("#money01")
	 var money= parseFloat($("#money01").text());
	 var xiadan1= $("#jieshaun2")
	 var money1= parseFloat($("#jieshaun2").text());
	 if(test.is(":checked")){
		 xiadan.html((money+orange).toFixed(2) );
		 xiadan1.html((money1+orange).toFixed(2));
	 }else{
		  xiadan.html((money-orange).toFixed(2));
		  xiadan1.html((money1-orange).toFixed(2));
	 } 
	}
	Single();
	
}
function qiehuan(obj){
	var abc =$(obj);
	var zhi =abc.text();
	var dog=abc.parent().parent().prev().prev();
	var cat=abc.parent().parent().prev().prev().text();
	dog.html(zhi+"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
	
}
function qiehuan1(obj){
	var abc =$(obj);
	var zhi =abc.prev().val();
	var dog=abc.parent().parent().prev().prev();
	var cat=abc.parent().parent().prev().prev().text();
	dog.html(zhi);
	
}

























