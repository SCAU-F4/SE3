var $customerItem;
$(".indentList-body").on("click",".modify-CustomerName",function(){
	$(this).parents(".customerItem").find(".inputModify").hide();
	$(this).parents(".customerItem").find(".modify").hide();
	$(this).parents(".customerItem").find("span").show();
	$(this).parents(".customerItem").find(".inputName").show();
	var name=$(this).parents(".customerItem").find(".customername").text();
	$(this).parents(".customerItem").find(".customername").hide();
	$(this).parents(".customerItem").find(".inputName").val(name);
	$(this).parents(".customerItem").find(".modify-Name").show();
});

$(".indentList-body").on("click",".modify-CustomerPhone",function(){
	$(this).parents(".customerItem").find(".inputModify").hide();
	$(this).parents(".customerItem").find(".modify").hide();
	$(this).parents(".customerItem").find("span").show();
	$(this).parents(".customerItem").find(".inputPhone").show();
	var phone=$(this).parents(".customerItem").find(".customerphone").text();
	$(this).parents(".customerItem").find(".customerphone").hide();
	$(this).parents(".customerItem").find(".inputPhone").val(phone);
	$(this).parents(".customerItem").find(".modify-Phone").show();
});

$(".indentList-body").on("click",".modify-CustomerEmail",function(){
	$(this).parents(".customerItem").find(".inputModify").hide();
	$(this).parents(".customerItem").find(".modify").hide();
	$(this).parents(".customerItem").find("span").show();
	$(this).parents(".customerItem").find(".inputEmail").show();
	var email=$(this).parents(".customerItem").find(".customeremail").text();
	$(this).parents(".customerItem").find(".customeremail").hide();
	$(this).parents(".customerItem").find(".inputEmail").val(email);
	$(this).parents(".customerItem").find(".modify-Email").show();
});

$(".indentList-body").on("click",".modify-CustomerPwd",function(){
	$(this).parents(".customerItem").find(".inputModify").hide();
	$(this).parents(".customerItem").find(".modify").hide();
	$(this).parents(".customerItem").find("span").show();
	$(this).parents(".customerItem").find(".inputPwd").show();
	var pwd=$(this).parents(".customerItem").find(".customerPwd").text();
	$(this).parents(".customerItem").find(".customerpwd").hide();
	$(this).parents(".customerItem").find(".inputPwd").val(pwd);
	$(this).parents(".customerItem").find(".modify-Pwd").show();
});


$(".indentList-body").on("click",".modify-Name",function(){
	$customerItem=$(this).parents(".customerItem");
	var id=$customerItem.find(".customerid").text();
	var name=$customerItem.find(".inputName").val();
	console.log(id+"//"+name);
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
		}
		,error:function(e){
			alert("shibai");
		}
	});
});

$(".indentList-body").on("click",".modify-Pwd",function(){
	$customerItem=$(this).parents(".customerItem");
	var id=$customerItem.find(".customerid").text();
	var pwd=$customerItem.find(".inputPwd").val();
	console.log(id+"//"+pwd);
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
		}
		,error:function(e){
			alert("shibai");
		}
	});
});

$(".indentList-body").on("click",".modify-Email",function(){
	$customerItem=$(this).parents(".customerItem");
	var id=$customerItem.find(".customerid").text();
	var email=$customerItem.find(".inputEmail").val();
	console.log(id+"//"+email);
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
		}
		,error:function(e){
			alert("shibai");
		}
	});
});

$(".indentList-body").on("click",".modify-Phone",function(){
	$customerItem=$(this).parents(".customerItem");
	var id=$customerItem.find(".customerid").text();
	var phone=$customerItem.find(".inputPhone").val();
	console.log(id+"//"+phone);
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
		}
		,error:function(e){
			alert("shibai");
		}
	});
});