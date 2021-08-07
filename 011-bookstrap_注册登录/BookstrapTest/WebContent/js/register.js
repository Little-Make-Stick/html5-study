$(document).ready(function(){
			$("#Register_Form").submit(function(){
				var name=$.trim($("#name").val());
				var telephone=$.trim($("#telephone").val());
				var email=$.trim($("#email").val());
				var birthday=$.trim($("#birthday").val());
				var province=$.trim($("#province").val());
				var city=$.trim($("#city").val());
				//var account=$.trim($("#account").val());
				var password=$.trim($("#password").val());
				var params={	
					"name":name,
					"telephone":telephone,
					"email":email,
					"birthday":birthday,
					"province":province,
					"city":city,
					//"account":account,
					"password":password
				};
				$.ajax({
					type:"POST",
					url:"/BookstrapTest/register",
					async:false,
					data:params,
					dataType:"json",
					success:function(data){
						if(data.register_result=="register_succeed"){
							alert("register succeed!Account="+data.account);
						}else{
							alert("register failed");
						}
					},
					error:function(data){
						alert("error"+data);
					}
				});
			});
		});