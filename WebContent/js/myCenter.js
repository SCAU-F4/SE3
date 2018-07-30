$(document).ready(function () {
	 var $modify;
    $(".Order-top>ul>li").click(function () {
        $(".Order-list .showli").removeClass("showli").hide();
        $(this).addClass("active").siblings().removeClass("active");
        var select=$(this).attr("data-select");console.log(select);
        $(".page").show();
        if (select!=0) {
        	console.log($("span.deal-state[data-state=" + select + "]").text());
        	$("span.deal-state[data-state=" + select + "]").parents(".panel").addClass("showli").fadeIn().siblings(".panel:not(.showli)").fadeOut();
        	
        }
        else
        {
            $(".panel").addClass("showli").fadeIn("fast");
         
        }
    });
//    点击订单状态分类显示相应的订单
    
    
    $(".menu-item>li").click(function () {
        $(this).addClass("active").siblings().removeClass("active");
        var select=$(this).attr("data-select");console.log(select);
        $(".show-area>div[data-state="+select+"]") .show().siblings().hide();
    });
//点击左侧菜单显示相应的div
  
    $(".Address-table").on("click",".Address-delect",function () {
        $(this).parents("tr").remove();
    });
//删除地址
    
    $(".Address-addsubmit").click(function () {
        var address=$("#addressDetail").val();
        var postcode=$("#addressPostcode").val();
        var phone=$("#addressPhone").val();
        var name=$("#addressName").val();
        if (address!=""&&postcode!=""&&phone!=""&&name!=""){
            var text="<tr>"+"<td class='addressName'>"+name+"</td>"+"<td class='addressDetail'>"+address+"</td>"
            +"<td class='addressPhone'>"+phone+"</td>"+"<td class='addressPostcode'>"+postcode+"</td>"+ "<td><button class='layui-btn layui-btn-radius layui-btn-primary Address-modify' data-target='#myModal' data-toggle='modal'>修改</button>"+"<button class='layui-btn layui-btn-radius layui-btn-primary Address-delect'>删除</button></td>";
            $(".Address-table tbody").append(text);
        }
        else{
            var text="<laber class='text-danger'>不能为空</laber>"
            $(".modal-body").append(text);
            return false;
        }
    });
//添加地址细节
    
    $(".Address-add").click(function () {
        $(".Address-addsubmit").show();
        $(".Address-mod").hide();
    });
//添加地址按钮的点击事件
    
    $(".search-button").click(function () {
        $("div.panel").hide();
        var orderid=$("#search").val();
       $(".Order-id:contains("+orderid+")").parents(".panel").show();
    });
//订单号查询
    
    $(".panel .panel-heading").on("click","i",function () {
        $(this).parents(".panel").remove();
    });
//删除订单
    
    $(".Address-table tbody").on("click",".Address-modify",function () {
        $modify=$(this);
        var name=$(this).parents("td").siblings(".addressName").text();
        var address=$(this).parents("td").siblings(".addressDetail").text();
        var phone=$(this).parents("td").siblings(".addressPhone").text();
        var postcode=$(this).parents("td").siblings(".addressPostcode").text();
        console.log(name+address+phone+postcode);
        $(".Address-addsubmit").hide();
        $(".Address-mod").show();
        // $("#addressDetail").
        $("#addressName").val(name);
        $("#addressDetail").val(address);
        $("#addressPostcode").val(postcode);
        $("#addressPhone").val(phone);
});
//地址修改
    
    $(".Address-mod").click(function () {
        $modify.parents("td").siblings(".addressName").text($("#addressName").val());
        $modify.parents("td").siblings(".addressDetail").text($("#addressDetail").val());
        $modify.parents("td").siblings(".addressPhone").text($("#addressPhone").val());
        $modify.parents("td").siblings(".addressPostcode").text($("#addressPostcode").val());
        $("#addressName").val("");
        $("#addressDetail").val("");
        $("#addressPhone").val("");
        $("#addressPostcode").val("");
    });
//地址修改
    
    $(".panel").each(function(){
    	var page=$(this).attr("data-page");
    	var pageNumber=Math.ceil((parseFloat(page)+1.0)/5.0);
    	$(this).attr("data-pagenumber",pageNumber);
    	console.log(pageNumber);	
    });
    console.log($(".panel:last").attr("data-pagenumber"));
    var MaxPage=$(".panel:last").attr("data-pagenumber");
    var j=1;
    for(j;j<=MaxPage;j++){
    	var option='<option value=\"'+j+'\">第'+j+'页</option>';
    	$("#PageNumber").append(option);	
    } 
    console.log($("#PageNumber").val());
    function check(){
    $(".panel").each(function(){
    	if($(this).attr("data-pagenumber")==$("#PageNumber").val()){
    		$(this).show();
    	}
    	else{
    		$(this).hide();
    	}
    });
    }
    $("#pre").click(function(){
    	if($("#PageNumber").val()>1){
    	$("#PageNumber").val($("#PageNumber").val()-1);
    	console.log($("#PageNumber").val());
    	check();
    	}
    	else{
    		alert("已经是第一页了");
    	}
    });
    $("#last").click(function(){
    	if($("#PageNumber").val()<MaxPage){
    	$("#PageNumber").val($("#PageNumber").val()+1);
    	console.log($("#PageNumber").val());
    	check();
    	}
    	else{
    		alert("已经是最后一页了");
    	}
    });
    
    $(".Order-list .cell .deal-state").each(function(){
    	var jspState=$(this).attr("jspstate");
    	var dataState=parseInt(jspState)+1;
    	$(this).attr("data-state",dataState);
    	if(jspState==0){
    		$(this).text("待付款");
    		var button="<button class=\"layui-btn layui-btn-radius\">去付款</button>";
    		$(this).parent().append(button);	
    	}
    	if(jspState==1){
    		$(this).text("待发货");	
    	}
    	if(jspState==2){
    		$(this).text("已发货");	
    	}
    	if(jspState==3){
    		$(this).text("待评价");	
    		var button="<button class=\"layui-btn layui-btn-radius\">立马评价</button>";
    		$(this).parent().append(button);	
    	}
    	if(jspState==4){
    		$(this).text("交易成功");	
    	}
    })
    
    
    $("#customerName").blur(function () {
        var value=$(this).val();
        var re=/^[\u4E00-\u9FA5A-Za-z0-9_]{5,20}$/;
        if(value.length<5 ||re.test(value)==false){
            $(this).parent().find("i").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            $(this).parent().parent().find("p").fadeIn("fast");
            $(this).attr("flag","false");
        }
        else{
            $(this).parent().parent().find("p").fadeOut("fast");
            $(this).parent().find("i").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
            $(this).attr("flag","true");
        }
    });
    $("#oldcustomerPwd").blur(function(){
    	var old=$("#OldPassword").val();
    	if($(this).val()!=old){
    		$(this).parent().find("i").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            $(this).parent().parent().find("p").fadeIn("fast");
            $(this).attr("flag","false");
    	}
    	else{
    		$(this).parent().parent().find("p").fadeOut("fast");
            $(this).parent().find("i").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
            $(this).attr("flag","true");
    	}
    });
    $("#customerPwd").blur(function () {
        var value=$(this).val();
        var re=/^[A-Za-z0-9]{6,20}$/;
        if (!re.test(value)){
        	$(this).parent().find("i").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            $(this).parent().parent().find("p").fadeIn("fast");
            $(this).attr("flag","false");
        }
        else{
        	$(this).parent().parent().find("p").fadeOut("fast");
            $(this).parent().find("i").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
            $(this).attr("flag","true");
        }
    });
    $("#recustomerPwd").blur(function () {
        var password=$("#customerPwd").val()
        if ($(this).val()===password && $(this).val()!=""){
        	$(this).parent().parent().find("p").fadeOut("fast");
            $(this).parent().find("i").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
            $(this).attr("flag","true");
        }
        else
        {
        	$(this).parent().find("i").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            $(this).parent().parent().find("p").fadeIn("fast");
            $(this).attr("flag","false");
        }
    });
    
    $("#ResetPwd").click(function(){
    	if($("#oldcustomerPwd").attr("flag")=="true"&&$("#customerPwd").attr("flag")=="true"&&$("#recustomerPwd").attr("flag")=="true"){
    		console.log("ok");
    		var id=$("#OldPassword").attr("data-id");
    		var oldPwd=$("#oldcustomerPwd").val();
    		var password=$("#customerPwd").val();
    		var repassword=$("#recustomerPwd").val();
    		console.log(id+"/"+oldPwd+"/"+password+"/"+repassword);
    		$.ajax({
    			type:"post",
    			async:false,
    			url:"changePassword",
    			dataType:"jsonp",
    			jsonp:"callback",
    			data:{
    				customerID:id,
    				oldPassword:oldPwd,
    				newPassword:password,
    				rePassword:repassword,
    				t:new Date()
    			},
    			success:function(res)
    			{
    				console.log(res.result);
    			},
    			error:function(es){
    				alert("tijiaoshibia");
    			}
    		});
    	}
    });
});