var account;
$(document).ready(function(){
	$("#Login_Form").submit(function(){
		account=$.trim($("#account").val());
		var password=$.trim($("#password").val());
		var params={
			"account":account,
			"password":password
		};
		$.ajax({
			type:"POST",
			url:"/BookstrapTest/login",
			async:false,
			data:params,
			dataType:"json",
			success:function(data){
				if(data.login_result=="login_succeed"){
					alert("login succeed");
					alert("name:   "+data.name+"\ntelephone:   "+data.telephone+"\nemail:   "+data.email+"\nbirthday:   "+data.birthday+"\nprovince:   "+data.province+"\ncity:   "+data.city);
//					jump();					
				}else{
					alert("login failed");
				}
			},
			error:function(data){
				alert("error"+data);
			}
		});
	});
});
//function jump(){
//	var urlpath="../myMessage.html?account="+account;
//	alert("urlpath="+urlpath);
//	window.location.href=urlpath;
//	alert("jump succeed");
//}