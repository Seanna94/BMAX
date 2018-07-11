var common = {};
common = function () {
    var Result = {
        myboxup_full_resize: function () {
            var modal_obj = $(".myboxup_full");
            var height = window.innerHeight - 20 - modal_obj.find(".modal-header").outerHeight() - modal_obj.find(".modal-footer").outerHeight();
            modal_obj.css("marginTop", "10px");
            modal_obj.find(".modal-body").outerHeight(height).css("maxHeight", height);
        }

    };
    return Result;
}();

$(function () {
    /***** 初始化类样式“loadPage”元素的点击事件，点击后加载页面 *****/
    $("body").on("click", "[load_href]", function () {
        var loadPageItem = $(this);
        var load_href = loadPageItem.attr("load_href");
        //判断是否含有needparams和params属性
        var needparams = loadPageItem.attr("needparams");
        if (needparams !== undefined && needparams === "true") {
            var params = loadPageItem.attr("params");
            if (params === undefined || params.length === 0) {
                //参数不全，无法继续执行方法。
                dialogMsg("请选择一条数据。");
                return;
            } else {
                if (load_href.indexOf("?") > 0) {
                    load_href += "&";
                }
                else {
                    load_href += "?";
                }
                load_href += params;
            }
        }
        var customfun = loadPageItem.attr("customfun");//自定义事件
        var loadPage_container = loadPageItem.attr("load_container");//加载的容器div
        if (loadPage_container === undefined || loadPage_container.length === 0) {
            loadPage_container = _Layout_back_main;
        }
        if (load_href !== undefined && load_href.length > 0) {
            loadPage(loadPage_container, load_href, function () {
                if (customfun !== undefined && customfun.length > 0) {
                    $("body").trigger(customfun, loadPageItem);//触发自定义事件
                }
            });
        }
    });

    /***** 初始化类样式“dialog_href”元素的点击事件，点击后弹出加载页面 *****/
    $("body").on("click", "[dialog_href]", function () {
        var dialogItem = $(this);
        var dialog_href = dialogItem.attr("dialog_href");
        var myboxup = dialogItem.attr("myboxup");

        //判断是否含有needparams和params属性
        var needparams = dialogItem.attr("needparams");
        if (needparams !== undefined && needparams === "true") {
            var params = dialogItem.attr("params");
            if (params === undefined || params.length === 0) {
                dialogMsg("请选择一条数据。");
                return;
            } else {
                if (dialog_href.indexOf("?") > 0) {
                    dialog_href += "&";
                }
                else {
                    dialog_href += "?";
                }
                dialog_href += params;
            }
        }
        dialog(dialog_href, null, null, myboxup);
    });


    /***** 初始化类样式“execute_href”元素的点击事件，点击后执行url对象的控制器方法 *****/
    $("body").on("click", "[execute_href]", function () {
        var executeItem = $(this);
        var execute_href = executeItem.attr("execute_href");
        var confirmmsg = executeItem.attr("confirmmsg");
        if (confirmmsg !== undefined && confirmmsg.length > 0) {
            dialogMsg(confirmmsg, function (status) {
                if (status !== undefined && status !== null && status === true) {
                    execute(execute_href);
                }
            });
        } else {
            execute(execute_href);
        }
        return false;
    });


    /*******防止页面多次提交，添加页面请求等待效果********************/
    var lastSubmitForm;
    $("body").on("submit", "form", function (e) {
        if (lastSubmitForm !== undefined) {
            lastSubmitForm.removeAttr("disabled");
        }
        lastSubmitForm = $(this).find("button");
        lastSubmitForm.attr("disabled", "disabled");
        setTimeout("close_modal_div()", 5000);
        open_modal_div();
        return true;
    });
    $(document).ajaxComplete(function (event, jqXHR, options) {
        if (lastSubmitForm !== undefined) {
            lastSubmitForm.removeAttr("disabled");
        }
        close_modal_div();
    });
    /*********************************************************************/

    try {
        if ($.jqResize) {
            $(window).jqResize(function () {
                common.myboxup_full_resize();
            });
        }
    } catch (e) {

    }
});


//根据url加载内容页面
var _Layout_back_main = "#_Layout_back_main";
var _loadPageUrl, _loadPageFun;
var loadPageContainer_obj;
var loadPageContainer;
function loadPage(container, url, fun, pushstate) {
    try {
        if (url === undefined || url === null) {
            url = location.pathname + location.search + location.hash;
        }
        _loadPageUrl = url;
        if (fun !== undefined && fun !== null) {
            _loadPageFun = fun;
        }
        if (container === undefined || container === null || container.length === 0) {
            container = _Layout_back_main;
        }
        //更新内容区域
        $.ajax({
            type: "get",
            url: url,
            data: null,
            cache: false,
            dataType: "html",
            success: function (result) {
                if (result.indexOf("/*js*/") >= 0) {
                    eval(result);
                } else {
                    var title = $(result).filter("title").text();
                    document.title = title;
                    //更新URL
                    if (pushstate !== undefined && pushstate !== null) {

                    } else {
                        var state = {
                            title: title,
                            url: url,
                        };
                        if ('pushState' in history) {
                            history.pushState(state, title, url);
                        }
                    }
                    var result_html = $(result).find(container);//获取新内容html                    
                    if (loadPageContainer_obj !== undefined) {
                        loadPageContainer_obj.empty();
                    }
                    if (loadPageContainer_obj === undefined || loadPageContainer !== container) {
                        loadPageContainer_obj = $(container).empty();
                        loadPageContainer = container;
                    }
                    $("#divClearTag").nextAll().remove();//删除该div后自动生成的所有无用代码
                    loadPageContainer_obj.append(result_html.html());
                    if ($.unobtrusive_parse !== undefined) {
                        $.unobtrusive_parse(loadPageContainer_obj);//load加载方式，需要重新绑定jquery.validate
                    }
                    if (fun !== undefined && $.type(fun) === "function") {
                        fun();
                    }
                }
                clearTimeout(setTimeoutObj);
                close_modal_div();//关闭加载等待效果
            }
        });
    } catch (e) {
        clearTimeout(setTimeoutObj);
    }
    open_modal_div();//打开加载等待效果
    var setTimeoutObj = setTimeout("close_modal_div()", 10000);
}

//弹出窗口操作方法
function dialog(url, params, container, myboxup) {
    try {
        var data = {};
        if (params !== undefined && params !== null) {
            data = params;
        }
        $.ajax({
            type: "get",
            url: url,
            data: data,
            cache: false,
            dataType: "html",
            success: function (result) {
                if (result.indexOf("/*js*/") >= 0) {
                    eval(result);
                    close_modal_div(true);
                } else {
                    var modalID = $.randomString(6);
                    var title = $(result).filter("title").text();
                    var result_obj = null;
                    if (container !== undefined && container !== null && container.length > 0) {
                        result_obj = $(result).find(container);
                    } else {
                        result_obj = $(result);
                    }

                    result_obj = $("<div class='modal-content'></div>").append(result_obj);
                    var result_html = "";
                    var result_script = [];

                    var tempScript = result_obj.find("script");
                    $.each(tempScript, function (i, n) {
                        result_script.push($(n));
                    });
                    var tempHtml = result_obj.not("script");
                    result_obj.find("script").remove()
                    result_html = tempHtml.html();

                    if (myboxup === undefined || myboxup === null) {
                        myboxup = "";
                    }
                    var modal_dialog = $('<div class="modal modal_dialog" id="' + modalID + '" tabindex="-1" role="dialog"><div class="' + myboxup + ' myboxup modal-dialog modal-lg"><div class="modal-content">' + result_html + '</div></div></div>');


                    var css_modal_dialog = modal_dialog.find(".modal-dialog");
                    modal_dialog.on('show.bs.modal', function (e) {
                        close_modal_div(true);
                    }).on('hidden.bs.modal', function (e) {
                        modal_dialog.remove();
                        // 解决多个弹出框滚动条丢失bug
                        if ($("body").find(".modal:visible").length > 0) {
                            $("body").addClass("modal-open");
                        }
                    }).on('shown.bs.modal', function () {
                        //模态框层级问题
                        var _z = Number($(this).css('z-index'));
                        var _n = $('.modal-open .modal.modal_dialog.in').length;
                        $(this).css('z-index', _z + _n);
                        $("div.modal-backdrop.in:last-child").css('z-index', _z + _n - 1);
                        //模态窗口高度
                        if (css_modal_dialog.height() < $(window).height()) {
                            css_modal_dialog.css({
                                'margin-top': function () {
                                    return ($(window).height() / 2 - (css_modal_dialog.height() / 2));
                                }
                            });
                        }
                        if (result_script.length > 0) {
                            var scriptContainer = modal_dialog.find(".modal-content");
                            $.each(result_script, function (i, n) {
                                scriptContainer.append(n);
                            });
                        }
                    });
                    modal_dialog.appendTo("body").modal({ show: true, backdrop: "static" });
                    if ($.unobtrusive_parse !== undefined) {
                        $.unobtrusive_parse(modal_dialog);//load加载方式，需要重新绑定jquery.validate
                    }
                    common.myboxup_full_resize();
                }
                clearTimeout(setTimeoutObj);
            }
        });
    } catch (e) {
        clearTimeout(setTimeoutObj);
    }
    open_modal_div();//打开加载等待效果
    var setTimeoutObj = setTimeout("close_modal_div()", 10000);
}


//弹出消息操作方法
function dialogMsg(msg, fun, closeFun) {
    try {
        $("#myModalMsg").remove();
        var modal_dialog_msg = $('<div id="myModalMsg" class="modal"><div class="modal-dialog" style="width:400px;"><div class="modal-content"><div class="pagebuilder_modal-header modal-header"><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
            '<h5 class="modal-title">消息</h5></div><div class="modal-body"><p>' + msg + '</p></div><div class="pagebuilder_modal-footer modal-footer"><button type="button" class="btn btn-default btnNo btn-xs" data-dismiss="modal">取消</button><button type="button" class="btn btn-primary btnOk btn-xs">确定</button>' +
            '</div></div></div></div>');
        var css_modal_dialog = modal_dialog_msg.find(".modal-dialog");
        modal_dialog_msg.on('hide.bs.modal', function (e) {
            modal_dialog_msg.remove();
            // 解决多个弹出框滚动条丢失bug
            if ($("body").find(".modal:visible").length > 0) {
                $("body").addClass("modal-open");
            }
            if (closeFun !== undefined && $.type(closeFun) === "function") {
                closeFun();
            }
        }).on('shown.bs.modal', function () {
            //模态框层级问题
            var _z = Number($(this).css('z-index'));
            var _n = $('.modal-open .modal.modal_dialog.in').length;
            $(this).css('z-index', _z + _n + 1);
            $("div.modal-backdrop.in:last-child").css('z-index', _z + _n);

            if (css_modal_dialog.height() < $(window).height()) {
                css_modal_dialog.css({
                    'margin-top': function () {
                        return ($(window).height() / 2 - (css_modal_dialog.height() / 2));
                    }
                });
            }
            modal_dialog_msg.find(".btnOk").focus();
        });
        var btnOk = modal_dialog_msg.find(".btnOk");
        var btnNo = modal_dialog_msg.find(".btnNo");
        btnOk.click(function () {
            modal_dialog_msg.modal('hide');
            if (fun !== undefined && $.type(fun) === "function") {
                fun(true);
            }
            if (closeFun !== undefined && $.type(closeFun) === "function") {
                closeFun();
            }
        });
        btnNo.click(function () {
            if (fun !== undefined && $.type(fun) === "function") {
                fun(false);
            }
        });
        if (fun === undefined || $.type(fun) !== "function") {
            btnNo.hide();
        }
        modal_dialog_msg.appendTo("body").modal({ show: true, backdrop: "static" });
    } catch (e) {
    }
}


//提交请求
function execute(url, params) {
    try {
        var data = {};
        if (params !== undefined && params !== null) {
            data = params;
        }
        $.ajax({
            type: "get",
            url: url,
            data: data,
            cache: false,
            dataType: "html",
            success: function (result) {
                close_modal_div(true);
                clearTimeout(setTimeoutObj);
                if (result && result.length > 0) {
                    eval(result);
                }
            }
        });
    } catch (e) {
    }
    open_modal_div();//打开加载等待效果
    var setTimeoutObj = setTimeout("close_modal_div()", 10000);
}

//重新加载页面
function reloadPage(url) {
    if (url === undefined || url === null || url.length <= 0) {
        loadPage(_Layout_back_main, _loadPageUrl, _loadPageFun);
    } else {
        location.href = url;
    }
}


//页面加载过程中（ajax调用过程中）,页面的加载等待效果
function close_modal_div(obj) {
    var modal_box_parent = $('#modal_box_parent');
    var modal_box = modal_box_parent.find('#modal_box');
    var modal_progress = modal_box_parent.find('#modal_progress');
    if (obj !== undefined && obj === true) {
        modal_progress.stop().fadeOut(400);
        modal_box.stop().fadeOut(400, function () {
            modal_box_parent.remove();
        });
    } else {
        modal_box_parent.remove();
    }
}

function open_modal_div(msg) {
    var modal_box, modal_box_parent, modal_progress;
    if (msg === undefined || msg === null) {
        msg = "请等待...";
    }
    if ($("#modal_box_parent").length === 0) {
        modal_box_parent = $("<div id='modal_box_parent'><div id='modal_box' class='modal-backdrop' style='display:none;opacity:0.35;background-color: #000;'></div>" +
        "<div style='position: absolute;z-index:1060;top: 45%;left: 50%;width: 300px;margin-left: -150px;opacity: .9;'>" +
        "<div id='modal_progress' style='display:none' class='progress'><div class='progress-bar progress-bar-striped active' role='progressbar' style='width: 100%'>" + msg + "</div></div></div></div>");
        modal_box = modal_box_parent.find("#modal_box");
        modal_progress = modal_box_parent.find("#modal_progress");
    }
    $('body').append(modal_box_parent);
    if (modal_box !== undefined && modal_box !== null && modal_box.length > 0) {
        modal_box.fadeIn(2000);
    }
    if (modal_progress !== undefined && modal_progress !== null && modal_progress.length > 0) {
        modal_progress.fadeIn(1500);
    }
}


function open_modal_wait_div(msg) {
    var modal_box2, modal_box_parent2, modal_progress2;
    if (msg === undefined || msg === null) {
        msg = "请等待...";
    }
    if ($("#modal_box_parent2").length === 0) {
        modal_box_parent2 = $("<div id='modal_box_parent2'><div id='modal_box2' class='modal-backdrop' style='display:none;opacity:0.35;background-color: #000;'></div>" +
        "<div style='position: absolute;z-index:1060;top: 45%;left: 50%;width: 300px;margin-left: -150px;opacity: .9;'>" +
        "<div id='modal_progress2' style='display:none' class='progress'><div class='progress-bar progress-bar-striped active' role='progressbar' style='width: 100%'>" + msg + "</div></div></div></div>");
        modal_box2 = modal_box_parent2.find("#modal_box2");
        modal_progress2 = modal_box_parent2.find("#modal_progress2");
    }
    $('body').append(modal_box_parent2);
    if (modal_box2 !== undefined && modal_box2 !== null && modal_box2.length > 0) {
        modal_box2.fadeIn(2000);
    }
    if (modal_progress2 !== undefined && modal_progress2 !== null && modal_progress2.length > 0) {
        modal_progress2.fadeIn(1500);
    }
}
function close_modal_wait_div(obj) {
    var modal_box_parent2 = $('#modal_box_parent2');
    var modal_box2 = modal_box_parent2.find('#modal_box2');
    var modal_progress2 = modal_box_parent2.find('#modal_progress2');
    if (obj !== undefined && obj === true) {
        modal_progress2.stop().fadeOut(400);
        modal_box2.stop().fadeOut(400, function () {
            modal_box_parent2.remove();
        });
    } else {
        modal_box_parent2.remove();
    }
}




/**
* 消息提示
* @param                {String}                消息内容
* @param                {bool}                  是否错误消息(默认false)
* @param                {bool}                  是否刷新(默认false)
* @param                {String}                刷新URL(可选)
* @param                {millisecond}           刷新等待时间(单位毫秒)
* @param                {function}           回调函数
*/
function JMessage(msg, isError, isRefresh, refresh_url, millisecond, func) {
    $('#jmessage').html(msg);
    if (isError !== undefined && isError === true) {
        $('#jmessage').showTopbarMessage({ background: "#f00", close: 5000, func: func });
    } else {
        $('#jmessage').showTopbarMessage({ background: "#093", close: 5000, func: func });
    }
    if (isRefresh !== undefined && isRefresh === true) {
        if (millisecond === undefined || millisecond === null) {
            millisecond = 2000;
        }
        if (refresh_url !== undefined && refresh_url !== null && refresh_url.length > 0) {
            var js = "loadPage(null,'" + refresh_url + "');";
            window.setTimeout(js, millisecond);
        } else {
            window.setTimeout("reloadPage();", millisecond);
        }
    }
}

$.extend({
    /*获取url参数方法*/
    QueryString: function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r !== null) return (r[2]); return null;
    },
    /*随机字符串*/
    randomString: function (len) {
        len = len || 8;
        var chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890';    /****默认去掉了容易混淆的字符oOLl,9gq,Vv,Uu,I1****/
        var maxPos = chars.length;
        var pwd = '';
        for (i = 0; i < len; i++) {
            pwd += chars.charAt(Math.floor(Math.random() * maxPos));
        }
        return pwd;
    },
});

//数组过滤重复
Array.prototype.unique = function () {
    var res = [], hash = {};
    for (var i = 0, elem; (elem = this[i]) != null; i++) {
        if (!hash[elem]) {
            res.push(elem);
            hash[elem] = true;
        }
    }
    return res;
}

//js时间转换，按格式转换，用法（date.format("yyyy-MM-dd hh:mm:ss")）
Date.prototype.format = function (format) {
    var o = {
        "M+": this.getMonth() + 1, //month 
        "d+": this.getDate(), //day 
        "h+": this.getHours(), //hour 
        "D": this.getWeek(), //week 
        "m+": this.getMinutes(), //minute 
        "s+": this.getSeconds(), //second 
        "q+": Math.floor((this.getMonth() + 3) / 3), //quarter 
        "S": this.getMilliseconds() //millisecond 
    }

    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }

    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
}
Date.prototype.getWeek = function () {
    var day = this.getDay();
    var value;
    switch (day) {
        case 0:
            value = "日";
            break;
        case 1:
            value = "一";
            break;
        case 2:
            value = "二";
            break;
        case 3:
            value = "三";
            break;
        case 4:
            value = "四";
            break;
        case 5:
            value = "五";
            break;
        case 6:
            value = "六";
            break;
    }
    return value;
}

String.prototype.formatStr = function (params) {
    var value = this.toString();
    if (params !== undefined) {
        for (var i = 0; i < params.length; i++) {
            var reg = new RegExp("\\{" + i + "\\}", "g");
            value = value.replace(reg, params[i]);
        }
    }
    return value;
};

//获取url参数值
String.prototype.QueryString = function (name) {
    var value = this.toString();
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = value.match(reg);
    if (r !== null) return (r[2]); return null;
};


//重构Date函数
//var MyDate = {};
//MyDate = (function () {
//    var Return = {
//        a:1
//    };
//    Return = new Date();
//    return Return;
//})();

//var MyDate = Date;

//var Date = function (value) {
//    var obj = new MyDate("2016/6/14");
//    return obj;
//};

//var MyDate = function (value) {
//    var obj = null;
//    if (value !== undefined && value !== null) {
//        obj = new Date(value);
//    } else {
//        obj = new Date();
//    }
//    return obj;
//};