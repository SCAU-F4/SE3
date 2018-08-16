function isSell(){
	$(".showpage .item").each(function(){
		var isSell=($(this).find(".date").text());
		if(isSell==1){
			$(this).find(".date").text("上架中");
			$(this).find(".delete").text("下架")
		}
		else{
			$(this).find(".date").text("已下架");
			$(this).find(".delete").text("上架");
		}
	});
}

$(".span3>li.mainType").click(function () {
   var type= $(this).find("a").attr("data-mainType");
   	$("li.collapse[data-mainType!="+type+"]").hide();
   	$("li.collapse[data-mainType="+type+"]").show();
    $("li.collapse[data-mainType!="+type+"] ul").slideUp("fast").delay(300);
    $("li.collapse[data-mainType="+type+"] ul").slideDown("fast");
    if (type!=0){
        var itemList=[];
        var items=$("#NoneStream>.item[data-mainType="+type+"]");
        var page=Math.ceil(parseFloat(items.length)/10);
        console.log(items.length);
        console.log(page);
/*        console.log(items.get(0));*/
        var z=1;
        for (var i=0;i<page;i++){
            var j=0;
            var item={};
            for (j ;j<10;j++){
                if (z>items.length){
                    break
                }
                else{
                    var count=parseInt(z)-1;
                    item["n"+j]=items.get(count);
                    z++;
                }
            }
            itemList.push(item);
        }
        console.log(itemList);
        var itemData={
            allPage:page,
            data:itemList
        };
        $(".showPagePaging").empty();
        $(".showPagePaging").simplePaging({
            allPage: itemData.allPage,//总页数
            showPage: 5,//显示页数
            startPage: 1,//第一页页码数字
            initPage: 1,//加载完毕自动跳转到第n页(初始化激活页)
            initPageClick:true,//每次页面加载完毕后，是否触发initPage页的绑定事件
            first: "首页",//首页显示字符
            last: "尾页",//尾页显示字符
            prev: "«",//上一页显示字符
            next: "»",//下一页显示字符
            showTurnTo: true,//是否显示跳转按钮，true显示，false不显示
            animateType: "animation",//过渡模式：动画“animation”、跳动“jumpy”、快速移动“fast”、正常速度移动“normal”、缓慢的速度移动“slow”、异常缓慢的速度移动“verySlow”
            animationTime: 300,//animateType为animation时，动画过渡时间(ms)
            callBack: function (num) {
                var showPage = $(".showpage");
                var data  = itemData.data[num-1];
                var str = "";
                for (var key in data){
                    str+="<div class='item'>"+data[key].innerHTML+"</div>";
                    /* showPage.html(data[key]);*/

                }
                showPage.html(str);
                isSell();
            }
        });
    }

    else{
        var z=1;
        var itemList=[];
        var items=$("#NoneStream>.item");
        console.log(items.length);
        var page=Math.ceil(parseFloat(items.length)/10);
        for (var i=0; i<page;i++){
            var j=0;
            var item={};
            for (j;j<10;j++){
                if (z>items.length){
                    break;
                }
                else{
                    var count=parseInt(z)-1;
                    item["n"+j]=items.get(count);
                    z++;
                }
            }
            itemList.push(item);

        }
        console.log(itemList);
        var itemData={
            allPage:page,
            data:itemList
        };
        $(".showPagePaging").empty();
        $(".showPagePaging").simplePaging({
            allPage: itemData.allPage,//总页数
            showPage: 5,//显示页数
            startPage: 1,//第一页页码数字
            initPage: 1,//加载完毕自动跳转到第n页(初始化激活页)
            initPageClick:true,//每次页面加载完毕后，是否触发initPage页的绑定事件
            first: "首页",//首页显示字符
            last: "尾页",//尾页显示字符
            prev: "«",//上一页显示字符
            next: "»",//下一页显示字符
            showTurnTo: true,//是否显示跳转按钮，true显示，false不显示
            animateType: "animation",//过渡模式：动画“animation”、跳动“jumpy”、快速移动“fast”、正常速度移动“normal”、缓慢的速度移动“slow”、异常缓慢的速度移动“verySlow”
            animationTime: 300,//animateType为animation时，动画过渡时间(ms)
            callBack: function (num) {
                var showPage = $(".showpage");
                var data  = itemData.data[num-1];
                var str = "";
                for (var key in data){
                    str+="<div class='item'>"+data[key].innerHTML+"</div>";
                    /* showPage.html(data[key]);*/

                }
                showPage.html(str);
                isSell();
            }
        });
    }
});

$(".span3 li").find("a[data-mainType=0]").click();


$(".span3 li.collapse li a").click(function () {
    var secondType=$(this).attr("data-SecondType");
    var items=$("#NoneStream .item[data-SecondType="+secondType+"]");
    var page=Math.ceil(parseFloat(items.length)/10);
    var itemList=[];
    var z=1;
    for (var i=0;i<page;i++)
    {
        var j=0;
        var item={};
        for(j;j<10;j++){
            if (z>items.length){
                break;
            }
            else{
                var count=parseInt(z)-1;
                item["n"+j]=items.get(count);
                z++;
            }
        }
        itemList.push(item);
    }
    console.log(secondType+"///"+page+"////"+itemList);
    console.log(itemList);
    var itemData={
        allPage:page,
        data:itemList
    };
    $(".showPagePaging").empty();
    $(".showPagePaging").simplePaging({
        allPage: itemData.allPage,//总页数
        showPage: 5,//显示页数
        startPage: 1,//第一页页码数字
        initPage: 1,//加载完毕自动跳转到第n页(初始化激活页)
        initPageClick:true,//每次页面加载完毕后，是否触发initPage页的绑定事件
        first: "首页",//首页显示字符
        last: "尾页",//尾页显示字符
        prev: "«",//上一页显示字符
        next: "»",//下一页显示字符
        showTurnTo: true,//是否显示跳转按钮，true显示，false不显示
        animateType: "animation",//过渡模式：动画“animation”、跳动“jumpy”、快速移动“fast”、正常速度移动“normal”、缓慢的速度移动“slow”、异常缓慢的速度移动“verySlow”
        animationTime: 300,//animateType为animation时，动画过渡时间(ms)
        callBack: function (num) {
            var showPage = $(".showpage");
            var data  = itemData.data[num-1];
            var str = "";
            for (var key in data){
                str+="<div class='item'>"+data[key].innerHTML+"</div>";
                /* showPage.html(data[key]);*/

            }
            showPage.html(str);
            isSell();
        }
    });
});

var $thisItem;

var $isSellthisItem;
$(".showpage").on("click",".delete",function(){
	var goodsID=$(this).parents(".item").find(".itemgoodsID").val();
	var goodsSpecify=$(this).parents(".item").find(".itemgoodsSpecify").text();
	var isSell=$(this).parents(".item").find(".itemisSell").val();
	var code;
	if(isSell==0){
		code=1;
	}
	else if(isSell==1){
		code=0;
	}
	console.log(code);
	$isSellthisItem=$(this);
	$.ajax({
		type:"post",
		async:false,
		url:"GoodsISsell",
		dataType:"jsonp",
		jsonp:"callback",
		data:{
			goodsID:goodsID,
			goodsSpecify:goodsSpecify,
			isSell:code,
			t:new Date()
		},success:function(res){
			alert(res.result);
			if(code==0){
				$isSellthisItem.parents(".item").find(".itemisSell").val("0");
				$isSellthisItem.parents(".item").find(".date").text("已下架");
				$isSellthisItem.parents(".item").find(".delete").text("上架");
			}
			else if(code==1){
				$isSellthisItem.parents(".item").find(".itemisSell").val("1");
				$isSellthisItem.parents(".item").find(".date").text("上架中");
				$isSellthisItem.parents(".item").find(".delete").text("下架");
			}
			$("#NoneStream .item .itemgoodsID[value="+goodsID+"]").each(function(){
				if($(this).parents(".item").find(".itemgoodsSpecify").text()==goodsSpecify)
					{
						$(this).parents(".item").find(".itemisSell").val("0");
					}
			});
		},
		error:function(e){
			alert("shibia");
		}
	});
});


var $modifyItem;

$(".showpage").on("click",".modify",function(){
	$modifyItem=$(this);
	var goodsID=$(this).parents(".item").find(".itemgoodsID").val();
	var goodsMainTypeCode=$(this).parents(".item").find(".itemgoodsMainTypeID").val();
	var goodsSecondaryTypeIDCode=$(this).parents(".item").find(".itemgoodsSecondaryTypeID").val();
	console.log(goodsMainTypeCode);
	console.log(goodsSecondaryTypeIDCode);
	var goodsMainType=$(".sidebar>ul>li>a[data-mainType="+goodsMainTypeCode+"]").text();
	var goodsSecondaryTypeID=$(".collapse>ul>li>a[data-SecondType="+goodsSecondaryTypeIDCode+"]").text();
	var imgPath=$(this).parents(".item").find(".stream-icon img").attr("src");
	var goodsName=$(this).parents(".item").find("h4").text();
	var goodsSpecify=$(this).parents(".item").find(".itemgoodsSpecify").text();
	var gootsBrief=$(this).parents(".item").find(".itemgoodsBrief").text();
	var goodsPrice=$(this).parents(".item").find(".itemgoodsPrice").text();
	var isSell=$(this).parents(".item").find(".itemisSell").val();
	var goodsCount=$(this).parents(".item").find(".itemgoodsCount").text();
	var sellCount=$(this).parents(".item").find(".sellNum").text();
	var goodsDate=$(this).parents(".item").find(".goodsDate").val();
	$(".inputGroup .GoodsName").val(goodsName);
	$(".Evaluate-area #goodsID").val(goodsID);
	$(".inputGroup .goodsMainTypeID").text(goodsMainType);
	$(".inputGroup .goodsMainTypeID").attr("data-goodsMainTypeID",goodsMainTypeCode);
	$(".inputGroup .goodsSecondaryTypeID").text(goodsSecondaryTypeID);
	$(".inputGroup .goodsSecondaryTypeID").attr("data-goodsSecondaryTypeID",goodsSecondaryTypeIDCode);
	$(".inputGroup .goodsSpecify").text(goodsSpecify);
	$(".inputGroup .goodsBrief").val(gootsBrief);
	$(".inputGroup .goodsPrice").val(goodsPrice);
	$(".inputGroup .goodsCount").val(goodsCount);
	$(".inputGroup .sellCount").val(sellCount);
	$(".inputGroup .goodsDate").val(goodsDate);
	$(":radio[name='optionsRadios'][value="+isSell+"]").attr("checked","checked"); 
	$(".product-img img").attr("src",imgPath);
	$(".Evaluate").show();
	$(".Evaluate-area").show();
});

$(".Evaluate-area i.layui-icon-close").click(function(){
	$(".Evaluate-area").slideUp("fast");
	$(".Evaluate").fadeOut("fast");
});

$(".Goods-modify").click(function(){
	var goodsName=$(".inputGroup .GoodsName").val();
	var goodsID=$(".Evaluate-area #goodsID").val();
	var goodsMainTypeID=$(".inputGroup .goodsMainTypeID").attr("data-goodsMainTypeID");
	var goodsSecondaryTypeID=$(".inputGroup .goodsSecondaryTypeID").attr("data-goodsSecondaryTypeID");
	var goodsSpecify=$(".inputGroup .goodsSpecify").text();
	var goodsBrief=$(".inputGroup .goodsBrief").val();
	var goodsPrice=$(".inputGroup .goodsPrice").val();
	var goodsCount=$(".inputGroup .goodsCount").val();
	var sellCount=$(".inputGroup .sellCount").val();
	var isSell=$('.radio input:radio:checked').val();
	var goodsDate=$(".inputGroup .goodsDate").val();
	console.log("Name:"+goodsName+"/////"+"ID"+goodsID+"///////"+goodsMainTypeID+"/////"+goodsSecondaryTypeID
			+"/////"+goodsSpecify+"/////"+goodsPrice+"/////"+goodsBrief+"/////"+goodsPrice+"/////"+goodsCount+"/////"+
			sellCount+"/////"+isSell);
	$.ajax({
		type:"post",
		async:false,
		url:"GoodsUpdate",
		dataType:"jsonp",
		jsonp:"callback",
		data:{
			goodsName:goodsName,
			goodsID:goodsID,
			goodsMainTypeID:goodsMainTypeID,
			goodsSecondaryTypeID:goodsSecondaryTypeID,
			goodsSpecify:goodsSpecify,
			goodsBrief:goodsBrief,
			goodsCount:goodsCount,
			sellCount:sellCount,
			goodsPrice:goodsPrice,
			goodsDate:goodsDate,
			isSell:isSell,
			t:new Date()
		},success:function(res){
			alert(res.result);
			$("#NoneStream .item .itemgoodsID[value="+goodsID+"]").each(function(){
				if($(this).parents(".item").find(".itemgoodsSpecify").text()==goodsSpecify)
				{
					$(this).parents(".item").find("h4").text(goodsName);
					$(this).parents(".item").find(".itemgoodsBrief").text(goodsBrief);
					$(this).parents(".item").find(".itemgoodsPrice").text(goodsPrice);
					$(this).parents(".item").find(".itemgoodsCount").text(goodsCount);
					$(this).parents(".item").find(".sellNum").text(sellCount);
					$(this).parents(".item").find(".itemisSell").val(isSell);
				}
			});
			$modifyItem.parents(".item").find("h4").text(goodsName);
			$modifyItem.parents(".item").find(".itemgoodsBrief").text(goodsBrief);
			$modifyItem.parents(".item").find(".itemgoodsPrice").text(goodsPrice);
			$modifyItem.parents(".item").find(".itemgoodsCount").text(goodsCount);
			$modifyItem.parents(".item").find(".sellNum").text(sellCount);
			$modifyItem.parents(".item").find(".itemisSell").val(isSell);
			if(isSell==1){
				$modifyItem.parents(".item").find(".date").text("上架中");
				$modifyItem.parents(".item").find(".delete").text("下架")
			}
			else{
				$modifyItem.parents(".item").find(".date").text("已下架");
				$modifyItem.parents(".item").find(".delete").text("上架");
			}
			$(".Evaluate-area i.layui-icon-close").click();
		},
		error:function(e){
			alert("shibia");
		}
	});
});







