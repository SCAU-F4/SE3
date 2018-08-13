$(".IndentItem").each(function(){
	var state=$(this).find(".label").attr("data-state");
	UpdateState(state,$(this));
});
function UpdateState(state,$a){
	if(state==0){
		$a.find(".label").text("未付款");
	}
	else if(state==1){
		$a.find(".label").text("待发货");
	}
	else if(state==2){
		$a.find(".label").text("已发货");
	}
	else if(state==3){
		$a.find(".label").text("待评价");
	}
	else if(state==4){
		$a.find(".label").text("交易成功");
	}
}

$(".Evaluate-area i.layui-icon-close").click(function(){
	$(".Evaluate-area").slideUp("fast");
	$(".Evaluate").fadeOut("fast");
});
var $indentItem;
$(".indentList-body").on("click",".IndentItem .modify-Indent",function(){
	$indentItem=$(this);
	var IndentID=$(this).parents(".IndentItem").find(".IndentID").text();
	var customerID=$(this).parents(".IndentItem").find(".customerID").text();
	var totalPrice=$(this).parents(".IndentItem").find(".totalPrice").text();
	var IndentTime=$(this).parents(".IndentItem").find(".IndentTime").text();
	var AddressID=$(this).parents(".IndentItem").find(".AddressID").text();
	var expressCode=$(this).parents(".IndentItem").find(".expressCode").val();
	var state=$(this).parents(".IndentItem").find(".label").attr("data-state");
	$(".modify-IndentID").text(IndentID);
	$(".modify-indentTime").text(IndentTime);
	$(".modify-customerID").val(customerID);
	$(".modify-totalPrice").val(totalPrice);
	$(".modify-AddressID").val(AddressID);
	$(":radio[name='optionsRadios'][value="+state+"]").attr("checked","checked"); 
	$(".modify-expressCode").val(expressCode);
	$(".Evaluate-area").slideDown("fast");
	$(".Evaluate").fadeIn("fast");
});

$(".Indent-modify").click(function(){
	var IndentID=$(".modify-IndentID").text();
	var customerID=$(".modify-customerID").val();
	var totalPrice=$(".modify-totalPrice").val();
	var IndentTime=$(".modify-indentTime").text();
	var AddressID=$(".modify-AddressID").val();
	var expressCode=$(".modify-expressCode").val();
	var state=$('.radio input:radio:checked').val();
    console.log(IndentID+"//"+customerID+"//"+totalPrice+"//"+IndentTime+"//"+AddressID+"//"+expressCode+"//"+state);
    $.ajax({
    	type:"post",
		async:false,
		url:"IndentUpdate",
		dataType:"jsonp",
		jsonp:"callback",
		data:{
			indentID:IndentID,
			customerID:customerID,
			totalPrice:totalPrice,
			addressID:AddressID,
			expressCode:expressCode,
			indentState:state,
			t:new Date()}
    		,success:function(res){
    				alert(res.result);
    				$indentItem.parents(".IndentItem").find(".customerID").text(customerID);
    				$indentItem.parents(".IndentItem").find(".totalPrice").text(totalPrice);
    				$indentItem.parents(".IndentItem").find(".addressID").text(AddressID);
    				$indentItem.parents(".IndentItem").find(".label").attr("data-state",state);
    				UpdateState(state,$indentItem.parents(".IndentItem"));
    				$(".Evaluate-area i.layui-icon-close").click();
    		},error:function(e){
    			alert("shibia");
    		}
    	});
});


$(".deleteIndent").click(function(){
	$indentItem=$(this);
	var IndentID=$(this).parents(".IndentItem").find(".IndentID").text();
	 $.ajax({
	    	type:"post",
			async:false,
			url:"IndentDelete",
			dataType:"jsonp",
			jsonp:"callback",
			data:{
				indentID:IndentID,
				t:new Date()}
	    		,success:function(res){
	    				alert(res.result);
	    				$indentItem.parents(".IndentItem").remove();
	    		},error:function(e){
	    			alert("shibia");
	    		}
	    	});
});



