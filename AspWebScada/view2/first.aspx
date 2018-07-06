<%@ Page Language="C#"%>
<%@ Import Namespace="WebScada"%>
<%
    if (Global.NeedLogin)
    {
        if (Session["user"] == null)
        {
            if (Global.IsMoblie(Request.UserAgent))
                Response.Redirect("mlogin.html");
            else
                Response.Redirect("login.html");
        }
    }
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=1000,height=600,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>first</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1000;
grfheight = 600;
var tagcount = 0;
function button1_js(){
$("#aa").attr("src","../view/first11.aspx");

}
function button2_js(){
$("#aa").attr("src","../view/first22.aspx");

}
function button3_js(){
$("#aa").attr("left","300px");
}
var updatetimer=1000;
divcenter = true;

var tags = "";
if (tagcount>0){for (var i in db){if (tags == ""){tags = i;}else{tags = tags + "," + i;}}}

$(document).ready(function(){


if (tagcount>0){postupdate();}
for (i in document.images){document.images[i].ondragstart = imgdragstart;}
});

function imgdragstart(){return false;}
</script>
</head>

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#FFFFFF">
<div id="fscada">
<img src="Images/first.png" border="0" />
<iframe src="http://www.weather.com.cn/html/weather/101280301.shtml" id="aa" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="position:absolute;left:120px;width:936px;height:488px;top:40px;"></iframe>
<button id="button1" style="position:absolute;cursor:pointer;left:16px;width:64px;height:24px;top:120px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(221,221,221);color:rgb(0,0,0);" onclick="javascript:button1_js();">Text</button>
<button id="button2" style="position:absolute;cursor:pointer;left:16px;width:64px;height:24px;top:168px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(221,221,221);color:rgb(0,0,0);" onclick="javascript:button2_js();">Text</button>
<button id="button3" style="position:absolute;cursor:pointer;left:16px;width:64px;height:24px;top:208px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;background-color:rgb(221,221,221);color:rgb(0,0,0);" onclick="javascript:button3_js();">Text</button>

</div>

<script type="text/javascript">    

    if (divcenter){
        var mydiv = document.getElementById("fscada");
        mydiv_resize();
        window.onresize = mydiv_resize;
    }
</script>

</body>
</html>
