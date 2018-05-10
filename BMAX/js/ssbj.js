function big(x){
    x.style.fontSize="16px";
}
function normal(x){
    x.style.fontSize="14px";
}
function changeFrameHeight(){
    var ifm= document.getElementById("center");
    ifm.height=document.documentElement.innerHeight-54;
}

function ready(){
    $("a").click(function () {
        var ifm= document.getElementById("center");
        ifm.height=document.documentElement.innerHeight-54;
        var event= document.getElementById("newEvent");
        event.height=ifm.height;
    });
}
window.onresize=function(){
    changeFrameHeight();
    ready();
}
$(function(){
    changeFrameHeight();
    ready();
});