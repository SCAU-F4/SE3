$(document).ready(function () {

	$(".SE3_product .list ul li:first-child").addClass("active");

    $(".SE3_product .list ul").on("mouseenter","li",function () {
        $(this).addClass("active").siblings("li").removeClass("active");
        $(this).addClass("active").siblings("li").removeClass("active");
        var href=$(this).find("img").attr("src");
        console.log(href);
        $(".SE3_product .picture .view img").attr("src",href);
    });

    $(".SE3_product .detail .detail_specify .specify").on("click", "li", function () {
        $(this).addClass("active").siblings("li").removeClass("active");
    });

    $(".detail_num .glyphicon-plus").click(function () {
        var values= $(".detail_num .num input").val();
        $(".detail_num .num input").val(1+parseInt(values));
    });

    $(".detail_num .glyphicon-minus").click(function () {
        var values= $(".detail_num .num input").val();
        if(values>1){
            $(".detail_num .num input").val(parseInt(values)-1);
        }
        else{
            layer.open(
                {
                    title:"提示",
                    content:"本商品1件起售"
                }
            );

            event.preventDefault();
        }
    });

    $(".SE3_product_body .left .left_head").on("click", "li", function () {
        $(this).addClass("active").siblings("li").removeClass("active");
        var select =$(this).attr("data-select");
        console.log(select);
        $(".SE3_product_body .left div[data-select="+select+"]").show().siblings("div").hide();
    });

    $(".SE3_product_body .left .evaluate .head_right .specify").on("click","span", function () {
        $(this).addClass("active").siblings("span").removeClass("active");
    });

    $(".SE3_product_body .left .evaluate .sort .classify").on("click","div", function () {
        $(this).addClass("active").siblings("div").removeClass("active");
    });

    $(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .evaluate_picture img").click(function () {
        var href = $(this).attr("src");
        console.log(href);
        $(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .big_img img").attr("src",href).parent().show();
    })

    $(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .big_img .close").click(function () {
        $(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .big_img").hide();
    })

});