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


