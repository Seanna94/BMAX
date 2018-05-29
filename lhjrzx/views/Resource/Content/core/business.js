
$.extend({
    /*修复虚拟路径*/
    fixVirtualPath: function (virtualPath) {
        return virtualPath.replace(/\.\.\//g, "")
    },
    /*获取文本长度*/
    getTextLength: function (str) {
        var realLength = 0;
        for (var i = 0; i < str.length; i++) {
            charCode = str.charCodeAt(i);
            if (charCode >= 0 && charCode <= 128)
                realLength += 1;
            else
                realLength += 2;
        }
        return realLength;
    }
});

var temp_addLockStyle = function () {
    $(".lockdiv").remove();
    var lockdiv = $('<div class="lockdiv" style="position:absolute;padding:1px 3px;right:0px;top:0px;font-size:12px;line-height: 18px;background-color:#FFFF00;color:black;cursor: pointer;">项目已锁<img style="width:16px;height:16px;vertical-align: top;" src="/Content/Image/lock.png" /></div>');
    $(".lock").append(lockdiv);
}