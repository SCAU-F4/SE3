$(document).ready(function() {
	$(".SE3_product .list ul li:first-child").addClass("active");

	$(".SE3_product .list ul").on("mouseenter", "li", function() {
		$(this).addClass("active").siblings("li").removeClass("active");
		$(this).addClass("active").siblings("li").removeClass("active");
		var href = $(this).find("img").attr("src");
		console.log(href);
		$(".SE3_product .picture .view img").attr("src", href);
	});

	$(".SE3_product .detail .detail_specify .specify").on("click", "li", function() {
		$(this).addClass("active").siblings("li").removeClass("active");
	});

	$(".detail_num .glyphicon-plus").click(function() {
		var values = $(".detail_num .num input").val();
		$(".detail_num .num input").val(1 + parseInt(values));
	});

	$(".detail_num .glyphicon-minus").click(function() {
		var values = $(".detail_num .num input").val();
		if (values > 1) {
			$(".detail_num .num input").val(parseInt(values) - 1);
		} else {
			layer.open(
				{
					title : "提示",
					content : "本商品1件起售"
				}
			);

			event.preventDefault();
		}
	});


	$(".detail_btn .detail_buy").click(function() {
		if ($(".whichone").text().length > 0) {
			if ($(".SE3_product .detail .detail_specify .specify ul li.active").length > 0) {
				var goodsID = $(".goodid").text();
				var goodsSpecify = $(".SE3_product .detail .detail_specify .specify ul li.active").text();
				var goodsCount = $(".detail_num .num input").val();

				$(location).attr('href', "/SE3-F4/user/auction" +
					"?goodsID=" + goodsID + "&goodsSpecify=" + goodsSpecify + "&goodsCount=" + goodsCount);
			} else {
				$(".tip h4").text("请先选择颜色");
				$(".tip").fadeIn();
				$(".tip").delay(1500).fadeOut().delay(300);
			}
		} else {
			$(".tip h4").text("请先登陆");
			$(".tip").fadeIn();
			$(".tip").delay(1500).fadeOut().delay(300, function() {
				$(location).attr('href', '/SE3-F4/user/signin');
			});
		}

	});

	$(".SE3_product_body .left .left_head").on("click", "li", function() {
		$(this).addClass("active").siblings("li").removeClass("active");
		var select = $(this).attr("data-select");
		console.log(select);
		$(".SE3_product_body .left div[data-select=" + select + "]").show().siblings("div").hide();
	});

	layui.use('rate', function() {
		
		var head = layui.rate.render({
			elem : '.SE3_product_body .left .evaluate .head_left .star', //绑定元素
			value : 3,
			readonly : true
		});
		
		var detail = layui.rate.render({
			elem : '.SE3_product_body .left .evaluate .detail_right .star', //绑定元素
			value : 4,
			readonly : true
		});
	});

	$(".SE3_product_body .left .evaluate .head_right .specify").on("click", "span", function() {
		$(this).addClass("active").siblings("span").removeClass("active");
	});

	$(".SE3_product_body .left .evaluate .sort .classify").on("click", "div", function() {
		$(this).addClass("active").siblings("div").removeClass("active");
	});

	$(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .evaluate_picture img").click(function() {
		var href = $(this).attr("src");
		console.log(href);
		$(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .big_img img").attr("src", href).parent().show();
	})

	$(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .big_img .close").click(function() {
		$(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .big_img").hide();
	})

});