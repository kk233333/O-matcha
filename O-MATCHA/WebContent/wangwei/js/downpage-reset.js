function checktel(){
	var tel = document.getElementById("tel").value;
	var regx=/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
	if(tel==""||tel.trim()==""){
		document.getElementById('checknum').innerHTML="号码格式不正确";
	}
	else{
		if(!(regx.test(tel))){
			document.getElementById('checknum').innerHTML="号码格式不正确";
		}
	}
}





