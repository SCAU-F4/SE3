$(document).ready(function () {
    $(".SE3_buy .address .change .address_detail .modify").click(function () {
        name = true;
        phone = true;
        mail = true;
        address = true;
        $(".SE3_buy .address .modify_address .name_text").val($(".SE3_buy .address .address_detail .name_text").text());
        $(".SE3_buy .address .modify_address .phone_text").val($(".SE3_buy .address .address_detail .phone_text").text());
        $(".SE3_buy .address .modify_address .mail_text").val($(".SE3_buy .address .address_detail .mail_text").text());
        $(".SE3_buy .address .modify_address textarea").val($(".SE3_buy .address .address_detail .address_text").text());
        $(".SE3_buy .address .change .modify_address").show().siblings("div").hide();
    });

    $(".SE3_buy .address .change .address_detail .change_btn").click(function () {
        $(".SE3_buy .address .change .change_address").show().siblings("div").hide();
    });

    $(".SE3_buy .address .change .address_detail .new_btn").click(function () {
        name = false;
        phone = false;
        mail = false;
        address = false;
        $(".SE3_buy .address .add_address").show().siblings("div").hide();
    });

    $(".SE3_buy .address .change .modify_address .save_btn").click(function () {
        if (name && phone && mail && address) {
            $(".SE3_buy .address .address_detail .name_text").text($(".SE3_buy .address .change .modify_address .name_text").val());
            $(".SE3_buy .address .address_detail .phone_text").text($(".SE3_buy .address .change .modify_address .phone_text").val());
            $(".SE3_buy .address .address_detail .mail_text").text($(".SE3_buy .address .change .modify_address .mail_text").val());
            $(".SE3_buy .address .address_detail .address_text").text($(".SE3_buy .address .change .modify_address textarea").val());
            $(".SE3_buy .address .change .address_detail").show().siblings("div").hide();
        }
        else {
            layer.open(
                {
                    title: "提示",
                    content: "请输入正确信息！"
                }
            );
            event.preventDefault();
        }
    });

    $(".SE3_buy .address .change .modify_address .cancel_btn").click(function () {
        $(".SE3_buy .address .change .address_detail").show().siblings("div").hide();
        $(".SE3_buy .address").find(".glyphicon-remove").hide("fast");
        $(".SE3_buy .address").find(".glyphicon-ok").hide("fast");
    });

    $(".SE3_buy .address .change .add_address .save_btn").click(function () {
        if (name && phone && mail && address) {
            $(".SE3_buy .address .address_detail .name_text").text($(".SE3_buy .address .change .add_address .name_text").val());
            $(".SE3_buy .address .address_detail .phone_text").text($(".SE3_buy .address .change .add_address .phone_text").val());
            $(".SE3_buy .address .address_detail .mail_text").text($(".SE3_buy .address .change .add_address .mail_text").val());
            $(".SE3_buy .address .address_detail .address_text").text($(".SE3_buy .address .change .add_address textarea").val());
            $(".SE3_buy .address .change .address_detail").show().siblings("div").hide();
            var str="                    <div class=\"choose\">\n" +
                "                        <div class=\"text\">\n" +
                "                            <span>收 货 人 :</span>\n" +
                "                            <span class=\"choose_name_text\">"+$(".SE3_buy .address .change .add_address .name_text").val()+"</span>\n" +
                "                        </div>\n" +
                "                        <div class=\"second\">\n" +
                "                            <div class=\"text\">\n" +
                "                                <span>联系方式 : </span>\n" +
                "                                <span class=\"choose_phone_text\">"+$(".SE3_buy .address .change .add_address .phone_text").val()+"</span>\n" +
                "                            </div>\n" +
                "                            <div class=\"text\">\n" +
                "                                <span>邮 编 : </span>\n" +
                "                                <span class=\"choose_mail_text\">"+$(".SE3_buy .address .change .add_address .mail_text").val()+"</span>\n" +
                "                            </div>\n" +
                "                        </div>\n" +
                "                        <div class=\"text\">\n" +
                "                            <span>收货地址 :</span>\n" +
                "                            <span class=\"choose_address_text\">"+$(".SE3_buy .address .change .add_address textarea").val()+"</span>\n" +
                "                        </div>\n" +
                "                    </div>";

            $(".change_address .left").append(str);
            $(".SE3_buy .address .change .change_address .left>div:last-child").addClass("active").siblings("div").removeClass("active");
        }
        else {
            layer.open(
                {
                    title: "提示",
                    content: "请输入正确信息！"
                }
            );
            event.preventDefault();
        }
    });

    $(".SE3_buy .address .change .add_address .cancel_btn").click(function () {
        $(".SE3_buy .address .change .address_detail").show().siblings("div").hide();
        $(".SE3_buy .address").find(".glyphicon-remove").hide("fast");
        $(".SE3_buy .address").find(".glyphicon-ok").hide("fast");
    });

    $(".SE3_buy .address .change .change_address .left").on("click", "div", function () {
        $(this).addClass("active").siblings("div").removeClass("active");
    });

    $(".SE3_buy .address .change .change_address .choose_btn").click(function () {
        $(".SE3_buy .address .address_detail .name_text").text($(".SE3_buy .address .change .change_address .left .choose.active .choose_name_text").text());
        $(".SE3_buy .address .address_detail .phone_text").text($(".SE3_buy .address .change .change_address .left .choose.active .choose_phone_text").text());
        $(".SE3_buy .address .address_detail .mail_text").text($(".SE3_buy .address .change .change_address .left .choose.active .choose_mail_text").text());
        $(".SE3_buy .address .address_detail .address_text").text($(".SE3_buy .address .change .change_address .left .choose.active .choose_address_text").text());
        $(".SE3_buy .address .change .address_detail").show().siblings("div").hide();
    });

    $(".SE3_buy .address .change .change_address .no_choose_btn").click(function () {
        $(".SE3_buy .address .change .address_detail").show().siblings("div").hide();
    });


    var name = false;
    var phone = false;
    var mail = false;
    var address = false;

    $(".name_text").blur(function () {
        var re = /^[\u4E00-\u9FA5A-Za-z0-9_]{2,8}$/;
        var value = $(this).val();
        if (re.test(value)) {
            name = true;
            $(this).parent().find(".glyphicon-ok").show("fast");
            $(this).parent().find(".glyphicon-remove").hide("fast");
        }
        else {
            name = false;
            $(this).parent().find(".glyphicon-ok").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
        }
    });

    $(".phone_text").blur(function () {
        var re = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        var value = $(this).val();
        if (re.test(value)) {
            phone = true;
            $(this).parent().find(".glyphicon-ok").show("fast");
            $(this).parent().find(".glyphicon-remove").hide("fast");
        }
        else {
            phone = false;
            $(this).parent().find(".glyphicon-ok").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
        }
    });

    $(".mail_text").blur(function () {
        var re = /^[0-9]{6}$/;
        var value = $(this).val();
        console.log(value);
        if (re.test(value)) {
            mail = true;
            $(this).parent().find(".glyphicon-ok").show("fast");
            $(this).parent().find(".glyphicon-remove").hide("fast");
        }
        else {
            mail = false;
            $(this).parent().find(".glyphicon-ok").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
        }
    });

    $(".address_text textarea").blur(function () {
        var value = $(this).val();
        if (value.length > 0) {
            address = true;
            $(this).parent().find(".glyphicon-ok").show("fast");
            $(this).parent().find(".glyphicon-remove").hide("fast");
        }
        else {
            address = false;
            $(this).parent().find(".glyphicon-ok").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
        }
    });
});