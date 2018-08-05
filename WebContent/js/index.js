
//  鼠标悬浮导航栏
$(document).ready(function () {
    var flag=0;
    var $down=$(".downmenu");
    $down.mouseenter(function () {
        flag = 1;
    }).mouseleave(function () {
        flag = 0;
            $(".flag").fadeOut("fast").removeClass("flag");

    });

    $(".collapse>.nav>li").mouseenter(function () {
        if (!$down.is(":animated")) 
            $(this).find("div").fadeIn().addClass("flag");

        }).mouseleave(function () {
            if (flag === 0)
            {
                $(this).find("div").fadeOut("fast").removeClass("flag");
            }
        });
    $(".shopping-cart").hover(function () {
        $(".cart-show-area").show();
   },function () {
       $(".cart-show-area").hide();
   });
   $(".back-top").click(function () {
       $("html,body").animate({scrollTop:0},"slow");
   });
   
   $(".cart-number").on("click","span.glyphicon-minus",function(){
	   var $items;
	  var num=$(this).siblings(".indentNumber").text();
	  console.log(num);
	  if(num>1){	  
		  $items=$(this).siblings(".indentNumber");
		  var $price=$(this).parents(".cart-item").find(".cart-price");
		 /* var total=$price.find("span.indentMoney").text();
		  var oneprice=$price.find("input").val();
		  var newTotal=parseFloat(parseFloat(total)-parseFloat(oneprice));
		  $price.find("span.indentMoney").text(newTotal);
		  var str="-1";
		  updatetotalPrice();*/
		  var str="-1";
		  var goodId=$(this).parents(".cart-item").find(".cartGoodsID").val();
		  console.log(goodId);
		  var goodSpecify=$(this).parents(".cart-item").find(".cart-introduce").text();
		  console.log(goodSpecify);
		  
		  $.ajax({
			  type : "post",
				 async:false, 
				 url:"products/add2Cart",
				 dataType:"jsonp",
				 jsonp:"callback",
				 data:{
					goodsID:goodId,
					goodsSpecify:goodSpecify,
					goodsCount:str,
					t:new Date()
					},
					success:function(res){
						if(res.result==""){
							var newNum=parseInt(parseInt(num)-1);
							  $items.text(newNum);
							var total=$price.find("span.indentMoney").text();
							  var oneprice=$price.find("input").val();
							  var newTotal=parseFloat(parseFloat(total)-parseFloat(oneprice));
							  $price.find("span.indentMoney").text(newTotal);
							  
							  updatetotalPrice();
						}
						else{
							alert(res.result);
						}
					},
					error:function(e){
						alert("shibai");
					}
		  });
	  }
	  else{
		  $(this).parents(".cart-item").find("i.layui-icon-close").click();
	  }
   });
   
   $(".cart-number").on("click","span.glyphicon-plus",function(){
	   var $items;
	   var str=1;
		  var num=$(this).siblings(".indentNumber").text();
		  console.log(num);
		  var goodId=$(this).parents(".cart-item").find(".cartGoodsID").val();
		  var goodSpecify=$(this).parents(".cart-item").find(".cart-introduce").text();
			   $items=$(this).siblings(".indentNumber")
			  var $price=$(this).parents(".cart-item").find(".cart-price");

			  
			  $.ajax({
				  type : "post",
					 async:false, 
					 url:"products/add2Cart",
					 dataType:"jsonp",
					 jsonp:"callback",
					 data:{
						goodsID:goodId,
						goodsSpecify:goodSpecify,
						goodsCount:str,
						t:new Date()
						},
						success:function(res){
							if(res.result==""){
								 var newNum=parseInt(parseInt(num)+1);
								  $items.text(newNum);
								  var total=$price.find("span.indentMoney").text();
								  var oneprice=$price.find("input").val();
								  var newTotal=parseFloat(parseFloat(total)+parseFloat(oneprice));
								  $price.find("span.indentMoney").text(newTotal);
								  updatetotalPrice();
							}
							else{
								alert(res.result);
							}
						},error:function(e){
							alert("shibai");
						}
	  
	   });
   });
   
    $(".cart-item .close").on("click","i.layui-icon-close",function(){
    	var $item=$(this).parents(".cart-item");
    	var num=$(this).parents(".cart-item").find(".indentNumber").text();
    	var str="-"+num;
    	 var goodId=$(this).parents(".cart-item").find(".cartGoodsID").val();
		  var goodSpecify=$(this).parents(".cart-item").find(".cart-introduce").text();
    	console.log(goodId+"///"+str+"///"+goodSpecify);
    	  $.ajax({
			  type : "post",
				 async:false, 
				 url:"products/add2Cart",
				 dataType:"jsonp",
				 jsonp:"callback",
				 data:{
					goodsID:goodId,
					goodsSpecify:goodSpecify,
					goodsCount:str,
					t:new Date()
					},
					success:function(res){
						if(res.result==""){
							$item.remove();
					    	updatetotalPrice();
						}
						else{
							alert(res.result);
						}
					},error:function(e){
						alert("shibai");
					}
  
    	  });	
    });
    
    
 
   $("#serech_input a").click(function(){
   	var value=$(this).siblings("input").val();
   	var str=$(this).attr("href")+"?Name="+value;
   	$(this).attr("href",str);
   	console.log(str);
   });
});
function updatetotalPrice(){
	var total=0;
	for(var i=0;i<$(".cart-item span.indentMoney").length;i++){
		var price=$(".cart-item span.indentMoney:eq("+i+")").text();
		total=parseFloat(parseFloat(price)+parseFloat(total));
	}
	$(".cart-bottom-area span.priceNum").text("￥"+total);
}