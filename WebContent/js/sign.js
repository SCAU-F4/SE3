$(document).ready(function () {
    var flag=1;
    $("#name").blur(function () {
        var value=$(this).val();
        var re=/^[\u4E00-\u9FA5A-Za-z0-9_]{5,20}$/;
        if(value.length<5 ||re.test(value)==false){
            flag = 0;
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");

        }
        else{
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
        }
    });

    $("#password").blur(function () {
        var value=$(this).val();
        var re=/^[A-Za-z0-9]{6,20}$/;
        if (!re.test(value)){
            flag = 0;
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
        }
        else{
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
        }
    });
    $("#repassword").blur(function () {
        var password=$("#password").val()
        if ($(this).val()===password && $(this).val()!=""){
            flag = 0;
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
        }
        else
        {
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
        }
    });
    $("#phone").blur(function () {

        var re=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        var value=$(this).val();
        if (!re.test(value)){
            flag = 0;
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
        }
        else{
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
        }
    });
    $("#email").blur(function () {
        var re=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.com$/;
        var value=$(this).val();
        if (!re.test(value)){
            flag = 0;
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
        }
        else{
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
        }
    });
});