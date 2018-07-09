function checkphone(){
	var tel = document.getElementById("input-8").value;
	var regx=/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
	if(tel==null||tel.trim()==""||!(regx.test(tel))){
		var text_2=document.getElementById("cuephone");
		text_2.removeAttribute("hidden");
		return false;
	}
	return true;
}

function focusphone(){
	var text_2=document.getElementById("cuephone");
		text_2.setAttribute("hidden",true);
}



function checkpasswords(){
	var pwd = document.getElementById("input-10").value;
	var regx=/^[A-Za-z0-9]{6,20}$/;
	if(!(regx.test(pwd))){
		var text_2=document.getElementById("cuepasswords");
		text_2.removeAttribute("hidden");
		return false;
	}
	return true;
}

function focuspwd(){
	var text_2=document.getElementById("cuepasswords");
		text_2.setAttribute("hidden",true);
}


function checkconpwd(){
	var apwd = document.getElementById("input-11").value;
	var pwd = document.getElementById("input-10").value;
	
	if(apwd==""||apwd.trim()==""||apwd!=pwd){
		var text_2=document.getElementById("confirmpwd");
		text_2.removeAttribute("hidden");
		return false;
	}
	return true;
}
function focusconpwd(){
	var text_2=document.getElementById("confirmpwd");
		text_2.setAttribute("hidden",true);
}

function checksubmit(){
	if(checkphone()&&checkpasswords()&&checkconpwd()){
		return true;
		}
	return false;
	
}





