﻿<%@ Page Language="C#"%>
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
<meta name="viewport" content="width=1865,height=996,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>巡更线路</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 996;
var tagcount = 0;
function image6_js(){
$("#image1").toggle();
$("#image3").toggle();
}
function image7_js(){
$("#image1").toggle();
$("#image3").toggle();
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

<body leftmargin="0" topmargin="0" rightmargin="0" bottommargin="0" bgcolor="#26425B">
<div id="fscada">
<img src="Images/巡更线路.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>巡更管理系统 >>> 巡更线路</div>
<img id="imageex1" style="position:absolute;border:0px;left:8px;top:56px;width:1865px;height:946px;" src="images/主楼1F.jpg" />
<img id="image6" style="position:absolute;border:0px;left:208px;top:336px;cursor:pointer;" src="巡更线路/1.png" onclick="javascript:image6_js();"/>
<img id="image7" style="position:absolute;border:0px;left:1116px;top:377px;cursor:pointer;" src="巡更线路/2.png" onclick="javascript:image7_js();"/>
<img id="xun1" style="position:absolute;border:0px;left:448px;top:392px;width:60px;height:60px;" src="images/巡更.png" />
<img id="xun2" style="position:absolute;border:0px;left:1072px;top:400px;width:60px;height:60px;" src="images/巡更.png" />

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
