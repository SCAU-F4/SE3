
//  鼠标悬浮导航栏
$(document).ready(function () {
	ishasCartItem($(".cart-top-area .cart-item").length);
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
   
   
   $(".detail_add").click(function(){
		var  customer=$(".whichone").text();
		var isHas=false;
		var newNum;
		var index;
		var str;
		var newPrice;
			if(customer == ""){
				$(".tip h4").text("请先登陆");
				$(".tip").fadeIn();
				$(".tip").delay(1500).fadeOut().delay(300,function(){
				$(location).attr('href', '/SE3-F4/user/signin');
				}); 
			}
			else{
				if(check($(".detail_specify .specify .active").length)){
				var flag=0;
					
						var goodID=$(".goodid").text();
						var goodPic=$(".whichpic").text();
						var goodName=$(".detail_name .name span").text();
						var goodPrice=$(".detail_price .price-num").text();
						var goodBrief=$(".detail_name .brief").text();
						var goodNum=$(".detail_num .num input").val();
						var goodSpecify=$(".detail_specify .specify .active").text();
						console.log(goodID+"//"+goodPic+"//"+goodName+"//"+goodPrice+"//"+goodNum+"//"+goodSpecify); 
						var i=0;
						if($(".cart-item>input.cartGoodsID[value="+goodID+"]").length!=0){
								var item=$(".cart-item>input.cartGoodsID[value="+goodID+"]").siblings(".cart-introduce").text();
							/* console.log($(".cart-item>input.cartGoodsID[value="+goodID+"]:eq(1)").siblings(".cart-introduce").text()); */
							for(i;i<$(".cart-item>input.cartGoodsID[value="+goodID+"]").length;i++)
							{
									if(goodSpecify==$(".cart-item>input.cartGoodsID[value="+goodID+"]:eq("+i+")").siblings(".cart-introduce").text()){
												/* $itemNum=$(".cart-item>input.cartGoodsID[value="+goodID+"]:eq("+i+")").siblings(".cart-number").find("span.indentNumber"); */
												/* console.log($(".cart-item>input.cartGoodsID[value="+goodID+"]:eq("+i+")").siblings(".cart-number").find("span.indentNumber")); */
												index=i;
												console.log(index);
												flag=1;
												break;
									}
							}
							if(flag==0){
								var totalP=parseFloat(parseFloat(goodPrice)*parseFloat(goodNum));
									str="<div class=\"cart-item\">" +
   								"<input type=\"hidden\" value=\""+goodID+"\" class=\"cartGoodsID\"/>" +
   							    "<div class=\"cart-img\">" +
  								    "<img" +
   								"\tsrc=\""+goodPic+"\"" +
  									 "\talt=\"\" height=\"50\">" +
   "</div>" +
   "<div class=\"cart-name\">" +
   "<a href=\"/SE3-F4/products/detail/"+goodID+"\" title=\""+goodName+"\">"+goodName+"</a>" +
   "</div>" +
   "<div class=\"cart-introduce text-muted\">"+goodSpecify+"</div>" +
   "<div class=\"cart-number\">" +
    "<span class=\"glyphicon glyphicon-minus\"></span>"+  
   "x <span class=\"indentNumber\">"+goodNum+"</span>" +
   "<span class=\"glyphicon glyphicon-plus\"></span>"+  
   "</div>" +
   "<div class=\"cart-price text-danger\">" +
   "<input type=\"hidden\" value=\""+goodPrice+"\">"+
   "￥ <span class=\"indentMoney\">"+totalP+"</span>" +
   "</div>" +
   "<div class=\"close\">" +
   "<i class=\"layui-icon layui-icon-close\"></i>" +
   "</div>"+"</div>";
							}
							else{
								isHas=true;
								var oldnum=$(".cart-item>input.cartGoodsID[value="+goodID+"]:eq("+index+")").siblings(".cart-number").find("span.indentNumber").text();
								var oldprice=$(".cart-item>input.cartGoodsID[value="+goodID+"]:eq("+index+")").siblings(".cart-price").find("span.indentMoney").text();
								newNum=parseInt(oldnum)+parseInt(goodNum); 
								console.log(newNum);
								newPrice=parseFloat(oldprice)+(parseFloat(goodPrice)*parseInt(goodNum));
								console.log(newPrice);
								console.log("ok");
								
							}
							
						}
						else{
									
							var totalP=parseFloat(parseFloat(goodPrice)*parseFloat(goodNum));
    str="<div class=\"cart-item\">" +
   "<input type=\"hidden\" value=\""+goodID+"\" class=\"cartGoodsID\"/>" +
   "<div class=\"cart-img\">" +
   "<img" +
   "\tsrc=\""+goodPic+"\"" +
   "\talt=\"\" height=\"50\">" +
   "</div>" +
   "<div class=\"cart-name\">" +
   "<a href=\"/SE3-F4/products/detail/"+goodID+"\" title=\""+goodName+"\">"+goodName+"</a>" +
   "</div>" +
   "<div class=\"cart-introduce text-muted\">"+goodSpecify+"</div>" +
   "<div class=\"cart-number\">" +
   "<span class=\"glyphicon glyphicon-minus\"></span>"+  
   "x <span class=\"indentNumber\">"+goodNum+"</span>" +
   "<span class=\"glyphicon glyphicon-plus\"></span>"+  
   "</div>" +
   "<div class=\"cart-price text-danger\">" +
   "<input type=\"hidden\" value=\""+goodPrice+"\">"+
   "￥ <span class=\"indentMoney\">"+totalP+"</span>" +
   "</div>" +
   "<div class=\"close\">" +
   "<i class=\"layui-icon layui-icon-close\"></i>" +
   "</div>"+"</div>"; 
  						
}  						
								$.ajax({    
							 type : "post",
		 					 async:false, 
							 url:"/SE3-F4/products/add2Cart",
		 					 dataType:"jsonp",
		 					 jsonp:"callback",
		 					 data:{
								goodsID:goodID,
	    						goodsSpecify:goodSpecify,
	    						goodsCount:goodNum,
								t:new Date()
								},
								success:function(res){
									if(res.result=="")
									{
									$(".tip h4").text("已添加购物车");
										$(".tip").fadeIn();
									$(".tip").delay(1500).fadeOut();
									if(isHas){
									$(".cart-item>input.cartGoodsID[value="+goodID+"]:eq("+index+")").siblings(".cart-number").find("span.indentNumber").text(newNum);
									$(".cart-item>input.cartGoodsID[value="+goodID+"]:eq("+index+")").siblings(".cart-price").find("span.indentMoney").text(newPrice);
									}
									else{
										 $(".cart-top-area").append(str);
									}
									
									updatetotalPrice();
									ishasCartItem($(".cart-top-area .cart-item").length);
									}
									else{
										alert(res.result);
									}
								},error:function(e){
									alert("失败了");
								}
  						
				});
				}
				}
		});
   
   
   
   $(".cart-top-area").on("click",".cart-item .cart-number span.glyphicon-minus",function(){
	   var $items;
	  var num=$(this).siblings(".indentNumber").text();
	  console.log(num);
	  if(num>1){	  
		  $items=$(this).siblings(".indentNumber");
		  var $price=$(this).parents(".cart-item").find(".cart-price");
		  var str="-1";
		  var goodId=$(this).parents(".cart-item").find(".cartGoodsID").val();
		  console.log(goodId);
		  var goodSpecify=$(this).parents(".cart-item").find(".cart-introduce").text();
		  console.log(goodSpecify);
		  
		  $.ajax({
			  type : "post",
				 async:false, 
				 url:"/SE3-F4/products/add2Cart",
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
							  ishasCartItem($(".cart-top-area .cart-item").length);
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
   
   $(".cart-top-area").on("click",".cart-item .cart-number span.glyphicon-plus",function(){
	   var $items;
	   var str=1;
		  var num=$(this).siblings(".indentNumber").text();
		  console.log(num);
		  var goodId=$(this).parents(".cart-item").find(".cartGoodsID").val();
		  var goodSpecify=$(this).parents(".cart-item").find(".cart-introduce").text();
			   $items=$(this).siblings(".indentNumber")
			  var $price=$(this).parents(".cart-item").find(".cart-price");
			   
			   console.log($price+"ok");
			   console.log($price.find("span.indentMoney").text());
			
			  $.ajax({
				  type : "post",
					 async:false, 
					 url:"/SE3-F4/products/add2Cart",
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
								  console.log("total:"+total);
								  var oneprice=$price.find("input").val();
								  console.log("oneprice:"+oneprice);
								  var newTotal=parseFloat(parseFloat(total)+parseFloat(oneprice));
								  console.log("newTotal:"+newTotal);
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
    $(".cart-top-area").on("click",".cart-item .close i.layui-icon-close",function(){
    	var $item=$(this).parents(".cart-item");
    	var num=$(this).parents(".cart-item").find(".indentNumber").text();
    	var str="-"+num;
    	 var goodId=$(this).parents(".cart-item").find(".cartGoodsID").val();
		  var goodSpecify=$(this).parents(".cart-item").find(".cart-introduce").text();
    	console.log(goodId+"///"+str+"///"+goodSpecify);
    	  $.ajax({
			  type : "post",
				 async:false, 
				 url:"/SE3-F4/products/add2Cart",
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
					    	
					    	ishasCartItem($(".cart-top-area .cart-item").length);
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

function check(a){
	if(a==0){
				$(".tip h4").text("请选择规格");
				$(".tip").fadeIn();
				$(".tip").delay(1500).fadeOut();
				return false;
	  }
	  else{
	  			  return true;
	  }
	}

function ishasCartItem(a){
	if(a==0){
		$(".cart-bottom-area").hide();
		$(".cart-show-area").addClass("nullCart");
		var str="<span class=\"cart-tip text-muted\">目前购物车为空呢~快去添加商品吧</span>"
		$(".cart-show-area").append(str);
	}
	else{
		$(".cart-bottom-area").show();
		$(".cart-show-area").removeClass("nullCart");
		$(".cart-tip").remove();
	}
}

function updatetotalPrice(){
	var total=0;
	for(var i=0;i<$(".cart-item span.indentMoney").length;i++){
		var price=$(".cart-item span.indentMoney:eq("+i+")").text();
		total=parseFloat(parseFloat(price)+parseFloat(total));
	}
	$(".cart-bottom-area span.priceNum").text("￥"+total);
}