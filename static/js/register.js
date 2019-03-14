$(function(){
	

//	
//	var _phone2=$("#i_phone_number").val();
//	var _test=$("#test").val();//验证码
	
	var check1=	/^[a-zA-Z0-9_-]{6,18}$/;//6-18位数字字母组合区分大小写；
	var check2=/^1[3|4|5|7|8]\d{9}$/;//手机号
	
	$("#account").blur(function(){
		
		var _account=$("#account").val();
		
		console.log(_account);
		console.log(check1.test(_account));
		
		if (check1.test(_account)) {
			$("#account").parent().find(".popb2").css("display","block");
			$("#account").parent().find(".popb1").css("display","none");
		} else{
			$("#account").parent().find(".popb1").css("display","block");
			$("#account").parent().find(".popb2").css("display","none");
		}
	})
	
	$("#password").blur(function(){
		var _password=$("#password").val();
		
		if (check1.test(_password)) {
			$(this).parent().find(".popb2").css("display","block");
			$(this).parent().find(".popb1").css("display","none");
		} else{
			$(this).parent().find(".popb1").css("display","block");
			$(this).parent().find(".popb2").css("display","none");
		}
	})
	
	$("#comfirm").blur(function(){
		
		var _comfirm=$("#comfirm").val();
		var _password=$("#password").val();
		
		if (_password==_comfirm) {
			$(this).parent().find(".popb2").css("display","block");
			$(this).parent().find(".popb1").css("display","none");
		} else{
			$(this).parent().find(".popb1").css("display","block");
			$(this).parent().find(".popb2").css("display","none");
		}
	})
	
	$("#phone").blur(function(){
		var _phone=$("#phone").val();
		if (check2.test(_phone)) {
			$(this).parent().find(".popb2").css("display","block");
			$(this).parent().find(".popb1").css("display","none");
		} else{
			$(this).parent().find(".popb1").css("display","block");
			$(this).parent().find(".popb2").css("display","none");
		}
	})
	
	//获取验证码
	
	$("#havetext").on("click",function(){
		var number1=parseInt(Math.random()*10001);
		alert(number1);
		
		$("#test").blur(function(){
		var _test=$("#test").val();
			console.log(_test);
			if(_test==number1){
				$(this).parent().find(".popb2").css("display","block");
				$(this).parent().find(".popb1").css("display","none");
			}else{
				$(this).parent().find(".popb1").css("display","block");
				$(this).parent().find(".popb2").css("display","none");
			}
		})
	})
	
	$("#zhucebox").click(function(){
		alert("注册成功");
		location.href="login.html";
	})
	
	
})