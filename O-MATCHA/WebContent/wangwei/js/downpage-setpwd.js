function checkpwd(){
	var pwd = document.getElementById("pwd").value;
	var regx=/^(\w){6,20}$/;
	if(pwd==""||pwd.trim()==""){
		var text_2=document.getElementById("checkpwd");
		text_2.removeAttribute("hidden");
	}
	else{
		if(!(regx.test(pwd))){
			var text_1=document.getElementById("checkpwd").innerText;
			document.getElementById("checkpwd").removeAttribute("hidden");
		}
	}
}
function blurpwd(){
	var text_2=document.getElementById("checkpwd");
		text_2.setAttribute("hidden",true);
}



function checkapwd(){
	var apwd = document.getElementById("apwd").value;
	var pwd = document.getElementById("pwd").value;
	
	if(apwd==""||apwd.trim()==""){
		var text_2=document.getElementById("checkapwd");
		text_2.removeAttribute("hidden");
	}
	else{
		if(apwd!=pwd){
			var text_1=document.getElementById("checakpwd");
			document.getElementById("checkapwd").removeAttribute("hidden");
		}
	}
}
function blurapwd(){
	var text_2=document.getElementById("checkapwd");
		text_2.setAttribute("hidden",true);
}