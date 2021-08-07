var url = decodeURI(window.location.href);
alert("url="+url);
var texts = url.split("?account=");
alert("texts="+texts);
var account = texts[1];
alert("account="+account);
if(account===undefined){
    Tologin();
}
$(document).ready(function(){
	var params={
		"account":account,
	};
	$.ajax({
		type:"POST",
		url:"/BookstrapTest/my",
		async:false,
		data:params,
		dataType:"json",
		success:function(data){
			if(data.show_message_result=="get_message_succeed"){
				alert("name ="+data.name);
					
			}else{
				alert("unfind");
			}
		},
		error:function(data){
			alert("error"+data);
		}
	});
});
function Tologin(){
	window.location.href="login.html";
}

//function exitEvent(){
//	
//	//window.sessionStorage.removeItem("LoginKey");
//	db.transaction(function (tx) {
//        tx.executeSql('DELETE FROM StudentLogins where account=?', [account]);
//    });
//	location.reload();
//}