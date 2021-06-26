/*$(function(){
	$('#loginId').focus().blur(check_login);
	$('#password').blur(checkPassword);
});*/

/*function checkName() {
	const loginId = document.getElementById("loginId");
	const password = document.getElementById("password");
	if (loginId.value == "") {
		window.alert("登录ID不为空");
		return false;
	}
	if (password.value == "") {
		window.alert("登录密码不为空");
		return false;
	}

}*/
function check_login(){
	const loginId = document.getElementById("loginId");
	const password = document.getElementById("password");
	if (loginId.value ==""){
		window.alert("登录ID不为空");
		return false;
	}
	if(password.value == ""){
		window.alert("登录密码不为空");
		return false;
	}
}
/*
function checkPassword(){
	const password = $('#password').val();
	if(password == null || password == ""){
		//提示错误
		$('#password-msg').html("密码不能为空");
		return false;
	}
	var reg = /^\w{3,10}$/;
	if(!reg.test(password)){
		$('#password-msg').html("输入3-10个字母或数字或下划线");
		return false;
	}
	$('#password-msg').empty();
	return true;
}*/
