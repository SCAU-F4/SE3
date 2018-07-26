$(document).ready(function () {
    var flag=1;
    var result=new Array(0,0,0,0,0);
    console.log(flag);
    $("#customerName").blur(function () {
        console.log(flag);
        var value=$(this).val();
        var re=/^[\u4E00-\u9FA5A-Za-z0-9_]{5,20}$/;
        if(value.length<5 ||re.test(value)==false){
            flag = 0;
            console.log(flag);
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
            result[0]=0;
            console.log(result[0]);
        }
        else{
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
            result[0]=1;
            console.log(result[0]);
        }
    });

    $("#customerPwd").blur(function () {
        var value=$(this).val();
        var re=/^[A-Za-z0-9]{6,20}$/;
        if (!re.test(value)){
            flag = 0;
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            result[1]=0;
        }
        else{
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
            result[1]=1;
        }
    });
    $("#repassword").blur(function () {
        var password=$("#customerPwd").val()
        if ($(this).val()===password && $(this).val()!=""){
            flag = 0;
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
            result[2]=1;
        }
        else
        {
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            result[2] = 0
        }
    });
    $("#customerPhone").blur(function () {

        var re=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        var value=$(this).val();
        if (!re.test(value)){
            flag = 0;
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            result[3]=0;
        }
        else{
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
            result[3]=1;
        }
    });
    $("#customerEmail").blur(function () {
        var re=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.com$/;
        var value=$(this).val();
        if (!re.test(value)){
            flag = 0;
            $(this).parent().parent().css("margin-bottom","0").find("p").fadeIn("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-remove").show("fast");
            result[4]=0;
        }
        else{
            $(this).parent().parent().css("margin-bottom","15px").find("p").fadeOut("fast");
            $(this).parent().find("span").hide("fast");
            $(this).parent().find(".glyphicon-ok").show("fast");
            result[4]=1;
        }
    });
    console.log(result);
    $("#SE3_signup #submit").click(function () {
        var submitflag=1;
        var i=0;
        for (i;i<result.length;i++)
        {
            if (result[i]==0){
                submitflag=0;
            }
        }
        if (submitflag==0){
            layer.open({
                title:'申请失败'
                ,content: '存在输入项不符合要求' //这里content是一个普通的String
            });
            return false;
        }
    });
});