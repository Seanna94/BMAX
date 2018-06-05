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
<meta name="viewport" content="width=3000,height=2000,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>测试2</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 3000;
grfheight = 2000;
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
<img src="Images/测试2.png" border="0" />
<div id="xianshi3" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电梯管理系统 >>> 西楼状态</div>
<button id="button1" style="position:absolute;cursor:pointer;left:480px;width:176px;height:80px;top:152px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;color:rgb(0,0,0);" >Text</button>
<button id="button2" style="position:absolute;cursor:pointer;left:472px;width:176px;height:80px;top:392px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;color:rgb(0,0,0);" >Text</button>
<button id="button3" style="position:absolute;cursor:pointer;left:800px;width:176px;height:80px;top:624px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;color:rgb(0,0,0);" >Text</button>
<button id="button4" style="position:absolute;cursor:pointer;left:872px;width:176px;height:80px;top:856px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;color:rgb(0,0,0);" >Text</button>
<button id="button5" style="position:absolute;cursor:pointer;left:864px;width:176px;height:80px;top:1136px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;color:rgb(0,0,0);" >Text</button>
<button id="button6" style="position:absolute;cursor:pointer;left:352px;width:176px;height:80px;top:1392px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;color:rgb(0,0,0);" >Text</button>
<button id="button7" style="position:absolute;cursor:pointer;left:392px;width:176px;height:80px;top:1648px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;color:rgb(0,0,0);" >Text</button>
<button id="button8" style="position:absolute;cursor:pointer;left:456px;width:176px;height:80px;top:1848px;font-family:'宋体','Serif';font-style:normal;font-size:12px;font-weight:normal;color:rgb(0,0,0);" >Text</button>

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
