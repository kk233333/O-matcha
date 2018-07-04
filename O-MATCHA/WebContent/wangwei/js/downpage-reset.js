function checktel(){
	var tel = document.getElementById("tel").value;
	var regx=/^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$/;
	if(tel==""||tel.trim()==""){
		var text_2=document.getElementById("checknum");
		text_2.removeAttribute("hidden");
	}
	else{
		if(!(regx.test(tel))){
			var text_1=document.getElementById("checknum").innerText;
			document.getElementById("checknum").removeAttribute("hidden");
		}
	}
}
function blurnum(){
	var text_2=document.getElementById("checknum");
		text_2.setAttribute("hidden",true);
}


function checkcodes(){
	var code = document.getElementById("code1").value;
	if(code==""||code.trim()==""){
		var text_2=document.getElementById("checkcode");
		text_2.removeAttribute("hidden");
	}
}

function blurcode(){
	var text_2=document.getElementById("checkcode");
		text_2.setAttribute("hidden",true);
}