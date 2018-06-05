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
<meta name="viewport" content="width=2060,height=1250,initial-scale=0.5,minimum-scale=0.5,maximum-scale=5,user-scalable=yes" />
<title>主楼13F</title>
<link href="../styles/style.css" rel="stylesheet" />
<script src="../js/jquery.min.js"></script>
<script src="../js/scada.js"></script>


<script type="text/javascript">
grfwidth = 2060;
grfheight = 1250;
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
<img src="Images/主楼13F.png" border="0" />
<div id="xianshi2" style="position:absolute;line-height:40px;left:1px;width:548px;height:40px;top:16px;font-family:'楷体','Serif';font-style:normal;font-size:28px;font-weight:normal;color:rgb(255,255,255);" >>>电子地图 >>> 主楼13F</div>
<img id="imageex1" style="position:absolute;border:0px;left:0px;top:60px;width:2060px;height:1250px;" src="images/13F.jpg" />

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
