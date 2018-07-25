$(document).ready(function () {
    $(".Order-top>ul>li").click(function () {
        $(".Order-list .showli").removeClass("showli");
        $(this).addClass("active").siblings().removeClass("active");
        var select=$(this).attr("data-select");console.log(select);
        if (select!=0) {
            $("span.deal-state[data-state=" + select + "]").parents(".panel").addClass("showli").fadeIn("fast").siblings(":not(.showli)").fadeOut("fast");
        }
        else
        {
            $(".panel").fadeIn("fast");
        }
    });
    $(".menu-item>li").click(function () {
        $(this).addClass("active").siblings().removeClass("active");
        var select=$(this).attr("data-select");console.log(select);
        $(".show-area>div[data-state="+select+"]") .show().siblings().hide();
    });
    $(".Address-table").on("click",".Address-delect",function () {
        $(this).parents("tr").remove();
    });
    $(".Address-addsubmit").click(function () {
        var address=$("#addressDetail").val();
        var postcode=$("#addressPostcode").val();
        var phone=$("#addressPhone").val();
        var name=$("#addressName").val();
        if (address!=""&&postcode!=""&&phone!=""&&name!=""){
            var text="<tr>"+"<td class='addressName'>"+name+"</td>"+"<td class='addressDetail'>"+address+"</td>"
            +"<td class='addressPhone'>"+phone+"</td>"+"<td class='addressPostcode'>"+postcode+"</td>"+ "<td><button class='layui-btn layui-btn-radius layui-btn-primary Address-modify'>修改</button>"+"<button class='layui-btn layui-btn-radius layui-btn-primary Address-delect'>删除</button></td>";
            $(".Address-table tbody").append(text);
        }
        else{
            var text="<laber class='text-danger'>不能为空</laber>"
            $(".modal-body").append(text);
            return false;
        }
    });

    $(".search-button").click(function () {
        $("div.panel").hide();
        var orderid=$("#search").val();
       $(".Order-id:contains("+orderid+")").parents(".panel").show();
    });
    
});