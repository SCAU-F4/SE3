
//  鼠标悬浮导航栏
$(document).ready(function () {
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

});