var config = { user: "user", pwd: "1234"};
var db = new Array();var grfwidth = 800;var grfheight = 600;
var valuechangedcallback = null;//function(jsontags)
var tag_alarmhicss = {color:"red"};
var tag_alarmlocss = {color:"green"};
var tag_normalcss = {color:"black"};
var divcenter = false;

var mydiv_resize = function () {
    var left = (document.body.clientWidth - grfwidth) / 2;
    if (left < 0) { mydiv.style.left = "0px"; }
    else { mydiv.style.left = left + "px"; }
}

function convertbool(value) {
    if (value == "True") { return true; }
    else if (value == "False") { return false; }
    else {
        var i = parseInt(value);
        if (i > 0) { return true; }
        else { return false; }
    }
}

function setvisible(obj, value) {
    var v = obj.css("display");
    var b = convertbool(value);
    if (b) {
        if (v != "block") { obj.css("display", "block"); }
    }
    else {
        if (v != "none") { obj.css("display", "none"); }
    }
}

function wpfObj(img) {
    var obj = $("#" + img);
    this.show = null;
    this.update = function (tag) {
        if (this.show != null) { this.show(obj, tag); }
    }
}

function tagObj(tagname) {
    var strname = tagname;
    this.callback = null;
    this.update = function (tag) {
        if (this.callback != null && tag != null) {
            this.callback(tag);
        }
    }
}

function imgObj(img) {
    var obj = $("#" + img);
    this.show = null;
    this.update = function (tag) { setvisible(obj, tag.value); }
}

function swimgObj(img, s1, s2) {
    var obj = $("#" + img);
    var url1 = s1;
    var url2 = s2;
    this.update = function (tag) {
        var src = obj.attr("src");
        var b = convertbool(tag.value);
        if (b) {
            if (src != url1) { obj.attr("src", url1); }
        }
        else {
            if (src != url2) { obj.attr("src", url2); }
        }
    };
}

function progressbarObj(borderdiv, div, hor, max, min, width, height) {
    var borderobj = $("#" + borderdiv);
    var obj = $("#" + div);
    var horizontal = hor;
    var maxvalue = max;
    var minvalue = min;
    var borderwidth = width;
    var borderheight = height;
    this.show = null;
    this.update = function (tag) {
        if (obj != null && obj != "undefined") {
            var v = 0;
            v = parseFloat(tag.value);
            if (horizontal) {
                v = (v - minvalue) / (maxvalue - minvalue) * borderwidth;
                obj.css("width", v + "px");
            }
            else {
                v = (v - minvalue) / (maxvalue - minvalue) * borderheight;
                obj.css("height", v + "px");
                obj.css("top", (borderheight - v) + "px");
            }
            if (this.show != null) { this.show(obj, tag); }
        }
    };
}

function analogObj(div, dig, unit) {
    var obj = $("#" + div);
    obj.html("");
    var d = dig;
    var u = unit;
    this.show = null;
    this.update = function (tag) {
        if (obj != null && obj != "undefined") {
            if (d == 0) {
                obj.html(tag.value + unit);
            }
            else {
                var v = parseFloat(tag.value);
                obj.html(v.toFixed(dig) + unit);
            }
            if (this.show != null) { this.show(obj, tag); }
        }
    };
}

function digitalObj(div, on_text, off_text, on_css, off_css) {
    var obj = $("#" + div);
    obj.html("");
    var ontext = on_text;
    var offtext = off_text;
    var oncss = on_css;
    var offcss = off_css;
    this.show = null;
    this.update = function (tag) {
        if (obj != null && obj != "undefined") {
            var b = convertbool(tag.value);
            if (b) {
                obj.html(ontext);
                if (oncss != "")
                { obj.css(oncss); }
            }
            else {
                obj.html(offtext);
                if (off_css != "")
                { obj.css(offcss); }
            }
            if (this.show != null) { this.show(obj, tag); }
        }
    };
}

function getinputvalue(display, value) {
    var v = prompt(display, value);
    return v;
}

function questionbox(msg) { return confirm(msg); };

function getpostvalues(adr, values) {
    $.post(adr, values, function (data) {
        if (data.login==1) {
            if (data.total>0){
            var rows = data.rows;
            for (var i in rows) {
                var tag = rows[i];
                var id = tag.id;
                var dbtag = db[id];
                if (dbtag != null) {
                    dbtag.type = tag.type;
                    dbtag.value = tag.value;
                    dbtag.state = tag.status;
                    dbtag.alarm = tag.alarm;
                    for (var i = 0; i < db[id].htmlobj.length; i++) {
                        db[id].htmlobj[i].update(tag);
                    }
                }
                if (valuechangedcallback != null) { valuechangedcallback(tag); }
            }
            }
        }
        else { location.href = "../login.html"; return;}
    }, "json");
    setTimeout(postupdate, updatetimer);
}

function postupdate() {
    if (tags == "") { return; }
    {
        var post = {tags:tags};
        getpostvalues("../getvalues.ashx", post);
    }
}
function display(name) { location.href = name + ".aspx"; };

function openvariables() { location.href = "../database.aspx"; };

function writetag(tag, v) {
    if (tag == "") { return; }
    if (v == "") {v = getinputvalue("Please input value", "0");}
    if (v != null && v != "") {
        var tagvalue = { command: "writetag", tagname: tag, value: v };
        $.post("../command.ashx", tagvalue, function (data) { }, "json");
    }
}
function addtagvalue(tag, v) {
    if (tag == "") { return; }
    var tagvalue = {command:"addtagvalue",tagname:tag,value:v};
    $.post("../command.ashx", tagvalue, function (data) { }, "json");
}

function toogletag(tag) {
    if (tag == "") { return; }
    var tagvalue = { command: "toogletag", tagname: tag };
    $.post("../command.ashx", tagvalue, function (data) { }, "json");
}