$(document).ready(function() {

	$(".SE3_pay > div:last-child > span:first-child").click(function() {
		$(location).attr('href', "/SE3-F4/user/payment?" + "indentID=" + $(".SE3_pay > input").val() + "&ispay=1");
	});

	$(".SE3_pay > div:last-child > span:last-child").click(function() {
		$(location).attr('href', "/SE3-F4/user/payment?" + "indentID=" + $(".SE3_pay > input").val() + "&ispay=0");
	});

});