// var animateGlobal = "bounceIn";
// var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
// //初始化动画
// var initAnimate = function () {
//         //按钮动画
//         $("body").on("mouseover", ".btn", function () {
//             var obj = $(this);
//             if (obj.hasClass("animated") === false) {
//                 obj.addClass("animated");
//             }
//             obj.addClass(animateGlobal).one(animationEnd, function () {
//                 obj.removeClass(animateGlobal);
//             });
//         });
//         //table_option动画
//         $("body").on("mouseover", ".table_option", function () {
//             var obj = $(this);
//             if (obj.hasClass("animated") === false) {
//                 obj.addClass("animated");
//             }
//             obj.addClass(animateGlobal).one(animationEnd, function () {
//                 obj.removeClass(animateGlobal);
//             });
//         });
//         //_frame_tab_tag动画
//         $("body").on("mouseover", "._frame_tab_tag", function () {
//             var obj = $(this);
//             if (obj.hasClass("animated") === false) {
//                 obj.addClass("animated");
//             }
//             obj.addClass(animateGlobal).one(animationEnd, function () {
//                 obj.removeClass(animateGlobal);
//             });
//         });
//         //dropdown-toggle
//         $("body").on("mouseover", ".dropdown-toggle", function () {
//             var obj = $(this);
//             if (obj.hasClass("animated") === false) {
//                 obj.addClass("animated");
//             }
//             obj.addClass(animateGlobal).one(animationEnd, function () {
//                 obj.removeClass(animateGlobal);
//             });
//         });
//         //_frame_left_menu
//         $("body").on("mouseover", "#_frame_left_menu .treeview>a", function () {
//             var obj = $(this);
//             if (obj.hasClass("animated") === false) {
//                 obj.addClass("animated");
//             }
//             obj.addClass(animateGlobal).one(animationEnd, function () {
//                 obj.removeClass(animateGlobal);
//             });
//         });
//         //_layout_header
//         $("body").on("mouseover", "#_layout_header #topmenu_system_monitoring,#_layout_header .sidebar-toggle,#_layout_header a[data-toggle='control-sidebar']", function () {
//             var obj = $(this);
//             if (obj.hasClass("animated") === false) {
//                 obj.addClass("animated");
//             }
//             obj.addClass(animateGlobal).one(animationEnd, function () {
//                 obj.removeClass(animateGlobal);
//             });
//         });
//     }
function big(x){
    x.style.fontSize="16px";
}
function normal(x){
    x.style.fontSize="14px";
}
$(document).ready(
    function() {
        $("#scro").niceScroll({
            cursorcolor: "black", // 改变滚动条颜色，使用16进制颜色值
            cursoropacitymin: 0, // 当滚动条是隐藏状态时改变透明度, 值范围 1 到 0
            cursoropacitymax: 0, // 当滚动条是显示状态时改变透明度, 值范围 1 到 0
            cursorwidth: "0px", // 滚动条的宽度，单位：便素
            cursorborderradius: "5px", // 滚动条圆角（像素）
            scrollspeed: 60, // 滚动速度
            mousescrollstep: 40, // 鼠标滚轮的滚动速度 (像素)
            touchbehavior: false, // 激活拖拽滚动
            cursorheight:30
        });
    }
);
    function changeFrameHeight(){
        var ifm= document.getElementById("center");
        ifm.width=$(document).width()-346;
    }
window.onresize=function(){ changeFrameHeight();}
$(function(){changeFrameHeight();});

var data = {
    labels: [
        "紧急报警",
        "重要报警",
        "一般报警"
    ],
    datasets: [
        {
            data: [20, 15, 10],
            backgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ],
            hoverBackgroundColor: [
                "#FF6384",
                "#36A2EB",
                "#FFCE56"
            ]
        }]
};
var options={
    //标题设置
    title: {
        display: true,
        text:"报警概况"
    },
}

var ctx = document.getElementById("myChart");
var myBarChart = new Chart(ctx, {
    type: 'pie',
    data: data,
    options: options
});
//饼状图
var ctx = document.getElementById("chart2");
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ["0", "1", "2", "3", "4", "5","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"],
        datasets: [{
            label : "紧急报警",
            data: [2, 0, 3, 5, 2, 3,3,4,4,2,1,3,2,3,4,3,2,3,2,2,3,2,2],
            backgroundColor: [
                'rgba(110, 199, 132, 0.2)'
            ],
            borderColor: [
                'rgba(110, 199, 132,1)'
            ],
            borderWidth: 1,
            pointBackgroundColor:
                'rgba(110, 199, 132,0.5)'
        }, {
            label:"重要报警",
            data:[2,3,4,6,7,3,5,2,3,2,5,2,4,2,5,2,4,1,3,3,5,2,5,3,5,3,5],
            backgroundColor: [
                'rgba(55, 199, 232, 0.2)',
            ],
            borderColor: [
                'rgba(55, 199, 232, 1)',
            ],
            borderWidth: 1,
            pointBackgroundColor: 'rgba(55, 199, 232, 0.5)'
        },
            {
                label:"一般报警",
                data:[1,3,4,2,4,2,5,2,2,5,2,5,6,7,8,5,0,2,5,3,2,4,1,3,2,3],
                backgroundColor: [
                    'rgba(255, 99, 232, 0.2)',
                ],
                borderColor: [
                    'rgba(255, 99, 232, 1)',
                ],
                borderWidth: 1,
                pointBackgroundColor:  'rgba(255, 99, 232, 0.5)'
            }]
    }
});

//定时刷新
// is_f = localStorage.getItem("is_f");
//   if(is_f == 2){
//       $('#check_is_f').attr("checked", true);
//       tf = setTimeout('myrefresh()',3000); //指定秒刷新一次
//   }
//
//   $('.am-switch input[type=checkbox]').on('click',function(){
//       if($(this).is(':checked')){
//           localStorage.setItem("is_f",2);
//           tf = setTimeout('myrefresh()',3000); //指定秒刷新一次
//       }else{
//           clearTimeout(tf); //取消自动刷新
//           localStorage.setItem("is_f",0);
//       }
//   })
//
//   function myrefresh(){
//       window.location.reload();
//   }