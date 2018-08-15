var $customerItem;
var flag=1;
$(".indentList-body").on("click",".modify-CustomerName",function(){
	$(this).parents(".customerItem").find(".inputModify").hide();
	$(this).parents(".customerItem").find(".modify").hide();
	$(this).parents(".customerItem").find("span.text").show();
	$(this).parents(".customerItem").find(".inputName").show();
	var name=$(this).parents(".customerItem").find(".customername").text();
	$(this).parents(".customerItem").find(".customername").hide();
	$(this).parents(".customerItem").find(".inputName").val(name);
	$(this).parents(".customerItem").find(".modify-Name").show();
});

$(".indentList-body").on("click",".modify-CustomerPhone",function(){
	$(this).parents(".customerItem").find(".inputModify").hide();
	$(this).parents(".customerItem").find(".modify").hide();
	$(this).parents(".customerItem").find("span.text").show();
	$(this).parents(".customerItem").find(".inputPhone").show();
	var phone=$(this).parents(".customerItem").find(".customerphone").text();
	$(this).parents(".customerItem").find(".customerphone").hide();
	$(this).parents(".customerItem").find(".inputPhone").val(phone);
	$(this).parents(".customerItem").find(".modify-Phone").show();
});

$(".indentList-body").on("click",".modify-CustomerEmail",function(){
	$(this).parents(".customerItem").find(".inputModify").hide();
	$(this).parents(".customerItem").find(".modify").hide();
	$(this).parents(".customerItem").find("span.text").show();
	$(this).parents(".customerItem").find(".inputEmail").show();
	var email=$(this).parents(".customerItem").find(".customeremail").text();
	$(this).parents(".customerItem").find(".customeremail").hide();
	$(this).parents(".customerItem").find(".inputEmail").val(email);
	$(this).parents(".customerItem").find(".modify-Email").show();
});

$(".indentList-body").on("click",".modify-CustomerPwd",function(){
	$(this).parents(".customerItem").find(".inputModify").hide();
	$(this).parents(".customerItem").find(".modify").hide();
	$(this).parents(".customerItem").find("span.text").show();
	$(this).parents(".customerItem").find(".inputPwd").show();
	var pwd=$(this).parents(".customerItem").find(".customerpwd").text();
	$(this).parents(".customerItem").find(".customerpwd").hide();
	$(this).parents(".customerItem").find(".inputPwd").val(pwd);
	$(this).parents(".customerItem").find(".modify-Pwd").show();
});


$(".indentList-body").on("click",".modify-Name",function(){
	$customerItem=$(this).parents(".customerItem");
	var id=$customerItem.find(".customerid").text();
	var name=$customerItem.find(".inputName").val();
	console.log(id+"//"+name);
	if(flag==1){
	$.ajax({
		type:"post",
		async:false,
		url:"UpdateCustomerName",
		dataType:"jsonp",
		jsonp:"callback",
		data:{
			customerID:id,
			customerName:name,
			t:new Date()
		},success:function(res){
			alert(res.result);
			$customerItem.find(".modify-Name").hide();
			$customerItem.find(".inputName").hide();
			$customerItem.find(".customername").text(name).show();
			$customerItem.find(".glyphicon").hide("fast");
		}
		,error:function(e){
			alert("shibai");
		}
	});
	}
	else{
		alert("存在不符合要求项");
	}
});

$(".indentList-body").on("click",".modify-Pwd",function(){
	$customerItem=$(this).parents(".customerItem");
	var id=$customerItem.find(".customerid").text();
	var pwd=$customerItem.find(".inputPwd").val();
	console.log(id+"//"+pwd);
	if(flag==1){
	$.ajax({
		type:"post",
		async:false,
		url:"UpdateCustomerPwd",
		dataType:"jsonp",
		jsonp:"callback",
		data:{
			customerID:id,
			customerPwd:pwd,
			t:new Date()
		},success:function(res){
			alert(res.result);
			$customerItem.find(".modify-Pwd").hide();
			$customerItem.find(".inputPwd").hide();
			$customerItem.find(".customerpwd").text(pwd).show();
			$customerItem.find(".glyphicon").hide("fast");
		}
		,error:function(e){
			alert("shibai");
		}
	});
	}
	else{
		alert("存在不符合要求项");
	}
});

$(".indentList-body").on("click",".modify-Email",function(){
	$customerItem=$(this).parents(".customerItem");
	var id=$customerItem.find(".customerid").text();
	var email=$customerItem.find(".inputEmail").val();
	console.log(id+"//"+email);
	if(flag==1){
		
	
	$.ajax({
		type:"post",
		async:false,
		url:"UpdateCustomerEmail",
		dataType:"jsonp",
		jsonp:"callback",
		data:{
			customerID:id,
			CustomerEmail:email,
			t:new Date()
		},success:function(res){
			alert(res.result);
			$customerItem.find(".modify-Email").hide();
			$customerItem.find(".inputEmail").hide();
			$customerItem.find(".customeremail").text(email).show();
			$customerItem.find(".glyphicon").hide("fast");
		}
		,error:function(e){
			alert("shibai");
		}
	});
}
	else{
		alert("存在不符合要求项");
	}
});

$(".indentList-body").on("click",".modify-Phone",function(){
	$customerItem=$(this).parents(".customerItem");
	var id=$customerItem.find(".customerid").text();
	var phone=$customerItem.find(".inputPhone").val();
	console.log(id+"//"+phone);
	if(flag==1){
	$.ajax({
		type:"post",
		async:false,
		url:"UpdateCustomerPhone",
		dataType:"jsonp",
		jsonp:"callback",
		data:{
			customerID:id,
			customerPhone:phone,
			t:new Date()
		},success:function(res){
			alert(res.result);
			$customerItem.find(".modify-Phone").hide();
			$customerItem.find(".inputPhone").hide();
			$customerItem.find(".customerphone").text(phone).show();
			$customerItem.find(".glyphicon").hide("fast");
		}
		,error:function(e){
			alert("shibai");
		}
	});
	}
	else{
		alert("存在不符合要求项");
	}
});

$(".indentList-body").on("click",".deleteCustomer",function(){
	$customerItem=$(this).parents(".customerItem");
	var id=$customerItem.find(".customerid").text();
	console.log(id);
	$.ajax({
		type:"post",
		async:false,
		url:"DeleteCustomer",
		dataType:"jsonp",
		jsonp:"callback",
		data:{
			customerID:id,
			t:new Date()
		},success:function(res){
			alert(res.result);
			$customerItem.remove();	
		}
		,error:function(e){
			alert("shibai");
		}
	});
	
});

$(".inputName").blur(function () {
    console.log(flag);
    var value=$(this).val();
    var re=/^[\u4E00-\u9FA5A-Za-z0-9_]{5,20}$/;
    if(value.length<5 ||re.test(value)==false){
        flag = 0;
      
        $(this).parent().find("span").hide("fast");
        $(this).parent().find(".glyphicon-remove").show("fast");
        $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
       console.log(flag);
    }
    else{
        $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
        $(this).parent().find("span").hide("fast");
        $(this).parent().find(".glyphicon-ok").show("fast");
        flag=1;
        console.log(flag);
    }
});

$(".inputPwd").blur(function () {
    var value=$(this).val();
    var re=/^[A-Za-z0-9]{6,20}$/;
    if (!re.test(value)){
        flag = 0;
        $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
        $(this).parent().find("span").hide("fast");
        $(this).parent().find(".glyphicon-remove").show("fast");
    }
    else{
        $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
        $(this).parent().find("span").hide("fast");
        $(this).parent().find(".glyphicon-ok").show("fast");
        flag=1;
    }
});
$(".inputPhone").blur(function () {

    var re=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
    var value=$(this).val();
    if (!re.test(value)){
        flag = 0;
        $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
        $(this).parent().find("span").hide("fast");
        $(this).parent().find(".glyphicon-remove").show("fast");
        
    }
    else{
        $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
        $(this).parent().find("span").hide("fast");
        $(this).parent().find(".glyphicon-ok").show("fast");
        flag=1;
    }
});
$(".inputEmail").blur(function () {
    var re=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.com$/;
    var value=$(this).val();
    if (!re.test(value)){
        flag = 0;
        $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
        $(this).parent().find("span").hide("fast");
        $(this).parent().find(".glyphicon-remove").show("fast");
       
    }
    else{
        $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
        $(this).parent().find("span").hide("fast");
        $(this).parent().find(".glyphicon-ok").show("fast");
        flag=1;
    }
});