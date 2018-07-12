
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
	if(checkphone()&&checkpasswords()&&checkconpwd()&&checkname()){
		return true;
		}
	return false;
	
}





