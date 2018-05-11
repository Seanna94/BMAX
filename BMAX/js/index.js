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
    ifm.height=document.documentElement.clientHeight-50;
    ifm.width=document.documentElement.clientWidth-30;
}
window.onresize=function(){ changeFrameHeight();}
$(function(){changeFrameHeight();});

