function isSell(){
	$(".showpage .item").each(function(){
		var isSell=($(this).find(".date").text());
		if(isSell==1){
			$(this).find(".date").text("上架中");
		}
		else{
			$(this).find(".date").text("已下架");
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