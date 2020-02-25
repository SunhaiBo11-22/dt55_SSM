
function isDecimal(obj){
    // 清除"数字"和"."以外的字符
    obj.value = obj.value.replace(/[^\d]/g,"");
    // 验证第一个字符是数字
    obj.value = obj.value.replace(/^\./g,"");
    // 只保留第一个, 清除多余的
    obj.value = obj.value.replace(/\.{2,}/g,".");
    obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
  }
function name_check(obj){
	obj.value = obj.value.replace(/[^\u4E00-\u9FA5]/g,'');
}

function submitform(){
	var pwd1 = $(" input[ name='password1' ] ").val();
	var pwd2 = $(" input[ name='password' ] ").val();
	var name = $(" input[ name='username' ] ").val();
	var phone = $(" input[ name='phonenumber' ] ").val();
	
	if (pwd1 =="" || pwd2 == "" || name == "" || phone =="") {
		alert("请将注册表填写完成");
		return false;
	}
	if (pwd1 != pwd2) {
		 $("#passwordRepeat").val("");
		 $("#password").val("");
		 alert("两次密码不一致");
		 return false;
	}
	
	var check = $("input[name='check']").prop('checked')
	if (!check) {
		alert("提交前请认证阅读《孙氏协议》并且同意商城《孙氏协议》");
		return false;
	}
	
	if (confirm("是否提交注册")) {
		return true;
	}else {
		return false;
	}
	
	
}

function loginCheck() {
	var username = $(" input[ name='username' ] ").val();
	var password = $(" input[ name='password' ] ").val();
	if (username =="" || password == "" ) {
		alert("请将信息填写完整");
		return false;
	}
	return true;
}