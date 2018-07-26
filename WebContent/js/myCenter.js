$(document).ready(function () {
	 var $modify;
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
            +"<td class='addressPhone'>"+phone+"</td>"+"<td class='addressPostcode'>"+postcode+"</td>"+ "<td><button class='layui-btn layui-btn-radius layui-btn-primary Address-modify' data-target='#myModal' data-toggle='modal'>修改</button>"+"<button class='layui-btn layui-btn-radius layui-btn-primary Address-delect'>删除</button></td>";
            $(".Address-table tbody").append(text);
        }
        else{
            var text="<laber class='text-danger'>不能为空</laber>"
            $(".modal-body").append(text);
            return false;
        }
    });
    $(".Address-add").click(function () {
        $(".Address-addsubmit").show();
        $(".Address-mod").hide();
    });
    $(".search-button").click(function () {
        $("div.panel").hide();
        var orderid=$("#search").val();
       $(".Order-id:contains("+orderid+")").parents(".panel").show();
    });
    $(".panel .panel-heading").on("click","i",function () {
        $(this).parents(".panel").remove();
    });

    $(".Address-table tbody").on("click",".Address-modify",function () {
        $modify=$(this);
        var name=$(this).parents("td").siblings(".addressName").text();
        var address=$(this).parents("td").siblings(".addressDetail").text();
        var phone=$(this).parents("td").siblings(".addressPhone").text();
        var postcode=$(this).parents("td").siblings(".addressPostcode").text();
        console.log(name+address+phone+postcode);
        $(".Address-addsubmit").hide();
        $(".Address-mod").show();
        // $("#addressDetail").
        $("#addressName").val(name);
        $("#addressDetail").val(address);
        $("#addressPostcode").val(postcode);
        $("#addressPhone").val(phone);
});
    $(".Address-mod").click(function () {
        $modify.parents("td").siblings(".addressName").text($("#addressName").val());
        $modify.parents("td").siblings(".addressDetail").text($("#addressDetail").val());
        $modify.parents("td").siblings(".addressPhone").text($("#addressPhone").val());
        $modify.parents("td").siblings(".addressPostcode").text($("#addressPostcode").val());
        $("#addressName").val("");
        $("#addressDetail").val("");
        $("#addressPhone").val("");
        $("#addressPostcode").val("")
    });
});