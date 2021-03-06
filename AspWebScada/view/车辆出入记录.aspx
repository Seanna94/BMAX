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
<meta name="viewport" content="width=1865,height=700,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>车辆出入记录</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 1865;
grfheight = 700;
var tagcount = 0;
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
<img src="Images/车辆出入记录.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>停车管理系统 >>> 车辆出入记录</div>
<div id="xianshi3" style="position:absolute;line-height:40px;left:209px;width:115px;height:40px;top:112px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >车牌号:</div>
<input type="text" id="textbox1" style="position:absolute;left:312px;width:208px;height:47px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(255,255,255);color:rgb(0,0,0);"  value=""/>
<div id="xianshi4" style="position:absolute;line-height:40px;left:545px;width:138px;height:40px;top:120px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >开始时间:</div>
<input type="text" id="textbox2" style="position:absolute;left:672px;width:208px;height:47px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(255,255,255);color:rgb(0,0,0);"  value=""/>
<div id="xianshi5" style="position:absolute;line-height:40px;left:928px;width:138px;height:40px;top:118px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >结束时间:</div>
<input type="text" id="textbox3" style="position:absolute;left:1064px;width:208px;height:47px;top:104px;font-family:'楷体','Serif';font-style:normal;font-size:25px;font-weight:normal;background-color:rgb(255,255,255);color:rgb(0,0,0);"  value=""/>
<button id="button4" style="position:absolute;cursor:pointer;left:1336px;width:102px;height:58px;top:99px;font-family:'楷体','Serif';font-style:normal;font-size:30px;font-weight:normal;background-color:rgb(0,0,255);color:rgb(255,255,255);" >查询</button>

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
