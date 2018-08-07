$(document).ready(function() {
	var all_eva = 0;
	var pic_eva = 0;
	var all_star = 0;

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


	$(".buy_num").blur(function() {
		var values = $(this).val();
		if (values < 1) {
			layer.open(
				{
					title : "提示",
					content : "本商品1件起售"
				}
			);
			$(this).val(1);
		} else if (values > 100) {
			layer.open(
				{
					title : "提示",
					content : "本商品限购99件"
				}
			);
			$(this).val(99);
		}
		event.preventDefault();
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

	$(".detail_num .glyphicon-plus").click(function() {
		var values = $(".detail_num .num input").val();
		if (values < 99) {
			$(".detail_num .num input").val(parseInt(values) + 1);
		} else {
			layer.open(
				{
					title : "提示",
					content : "本商品限购99件"
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
				$(".tip h4").text("请选择规格");
				$(".tip").fadeIn();
				$(".tip").delay(1500).fadeOut().delay(300);
			}
		} else {
			$(".tip h4").text("请先登录");
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

	$(".SE3_product_body .left .evaluate .evaluate_detail>ul>li").each(function() {
		if ($(this).find(".detail_right .evaluate_picture img").length > 0) pic_eva++;
		var value = parseInt($(this).find(" input").val());
		all_star = all_star + value;
		var $star = $(this).find(".star");
		console.log(value);
		layui.use('rate', function() {
			var detail = layui.rate.render({
				elem : $star,
				value : value,
				readonly : true
			});
		});
	});

	all_eva = $(".SE3_product_body .left .evaluate .evaluate_detail>ul>li").length;
	if (all_eva > 0) {
		$(".evlauate_ratio").text((all_star / (all_eva * 5) * 100).toFixed(2));
	} else {
		$(".ratio").text("暂无");
	}
	$(".total_evaluate").text(all_eva);
	$(".picture_evaluate").text(pic_eva);

	if (pic_eva == 0) $(".SE3_product_body .left .evaluate .head_right .specify>span:last-child").hide();

	layui.use('rate', function() {
		var ratio = 0;
		if (all_eva > 0)
			ratio = all_star / all_eva;
		var head = layui.rate.render({
			elem : '.SE3_product_body .left .evaluate .head_left .star',
			value : ratio,
			readonly : true
		});
	});

	$(".SE3_product_body .left .evaluate .head_right .specify").on("click", "span.classify", function() {
		$(this).addClass("active").siblings("span.classify").removeClass("active");
		$(this).find("span").removeClass("active");
	});

	$(".SE3_product_body .left .evaluate .head_right .specify .all_hhh").click(function() {
		$(".SE3_product_body .left .evaluate .evaluate_detail>ul>li").each(function() {
			$(this).show();
		});
	});

	$(".SE3_product_body .left .evaluate .head_right .specify .pic_hhh").click(function() {
		$(".SE3_product_body .left .evaluate .evaluate_detail>ul>li").each(function() {
			if ($(this).find(".detail_right .evaluate_picture img").length == 0) $(this).hide();
		});
	});

	$(".SE3_product_body .left .evaluate .sort .classify").on("click", "div", function() {
		if (!$(this).hasClass('active')) {
			var ul = $(".evaluate .evaluate_detail>ul");
			ul.append(ul.find(".evaluate_item").get().reverse());
		}
		$(this).addClass("active").siblings("div").removeClass("active");
	});

	$(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .evaluate_picture img").click(function() {
		var href = $(this).attr("src");
		$(this).parent().parent().parent().find(".big_img img").attr("src", href).parent().slideDown("fast");
	})

	$(".SE3_product_body .left .evaluate .evaluate_detail .detail_right .big_img .close").click(function() {
		$(this).parent().slideUp("fast");
	})

});