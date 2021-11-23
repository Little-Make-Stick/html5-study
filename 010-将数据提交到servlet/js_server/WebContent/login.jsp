<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="http://libs.baidu.com/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#LoginForm").submit(function(){
		var account=$.trim($("#account").val());
		var password=$.trim($("#password").val());
		var params={
			"account":account,
			"password":password
		};
		$.ajax({
			type:"POST",
			url:"/js_server/my",
			async:false,
			data:params,
			dataType:"json",
			success:function(data){
				if(data.result=="ok"){
					alert("login succeed");
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
$(document).ready(function(){
	$("#forget").click(function(){
	    alert("帐号：mitsuha，密码：123456");
	    $("#account").focus();
    });
});
</script>
<title>Insert title here</title>
</head>
<body style="text-align:center;">
        <h2>F站</h2> 
		<form id="LoginForm"  method="post">
			<fieldset>
				<legend>客官请登录</legend>   
				<br /><br />
				帐号：<input name="account" id="account" type="text"  size="50" />
				<br /><br /><br />
				密码：<input name="password" id="password"  type="password"  size="50" />
				<br /><br /><br />
			</fieldset>
			<a href="#" id="forget">忘记密码</a><br /><br />
			<input type="submit" value="登录"  />
			<input type="button" value="取消"  />
		</form>
</body>
</html>