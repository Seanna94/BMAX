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

function changeFrameWidth(){
    var ifm= document.getElementById("center");
    ifm.width=$(document).width()-230;
}

window.onresize=function(){
    changeFrameWidth();
}


$(function() {
    changeFrameWidth();

});




